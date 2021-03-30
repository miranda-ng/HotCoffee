--Скрипт следит за изменением языка в миранде...
--как только язык меняется, сразу импортируем WhenChangeLanguage.ini в БД
--добавлена проверка на русские языки для SplashScreen,
--если используется русский, беларусский или украинский язык то из папки Skins\SplashScreen\ru\
--если используется любой другой язык то из папки Skins\SplashScreen\en\
--копируем с заменой все содержимое в папку Skins\SplashScreen\
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
local globals = require('GlobalFunctions')
assert(globals)

local CyrillicLanpacks = { 'langpack_belarusian.txt', 'langpack_russian.txt', 'langpack_ukrainian.txt' }

local current = db.GetSetting(_, 'Langpack', 'Current')

function IsCurrentLangpackChanged(dbcws)
    if dbcws.Module ~= 'Langpack' or dbcws.Setting ~= 'Current' then
        return false
    end
    if current == dbcws.Value then
        return false
    end
    return true
end

local function IsCyrillicLangpack(langpack)
    for i = 1, #CyrillicLanpacks do
        if CyrillicLanpacks[i] == langpack then
            return true
        end
    end
    return false
 end

function OnLanguageChanged(langpack)
    local mImportIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\ini\\WhenChangeLanguage.ini'))
    m.CallService('DB/Ini/ImportFile', mImportIniPath)

    local splashScreenPathTo = m.Parse('%miranda_path%\\Skins\\SplashScreen')
    local splashScreenPathFrom = splashScreenPathTo
    if IsCyrillicLangpack(langpack) then
        splashScreenPathFrom = splashScreenPathFrom .. '\\' .. 'ru'
    else
        splashScreenPathFrom = splashScreenPathFrom .. '\\' .. 'en'
    end
    local batch = "xcopy /Y {splashScreenPathFrom} {splashScreenPathTo}" % {
        ["splashScreenPathFrom"] = splashScreenPathFrom,
        ["splashScreenPathTo"] = splashScreenPathTo
    }
    winapi.ShellExecute(globals.HasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. batch)

    current = langpack
end

local hSettingChanged = m.HookEvent("DB/Contact/SettingChanged", function(w, l)
    local dbcws = DBCONTACTWRITESETTING(l)
    if not IsCurrentLangpackChanged(dbcws) then
        return
    end
    OnLanguageChanged(dbcws.Value)
end)
assert(hSettingChanged)

OnLanguageChanged(current)