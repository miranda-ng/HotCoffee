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

local CyrillicLangpacks = { 'langpack_belarusian.txt', 'langpack_russian.txt', 'langpack_ukrainian.txt' }

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
    for i = 1, #CyrillicLangpacks do
        if CyrillicLangpacks[i] == langpack then
            return true
        end
    end
    return false
end

function OnLanguageChanged(langpack)
    local mImportIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\ini\\WhenChangeLanguage.ini'))
    m.CallService('DB/Ini/ImportFile', mImportIniPath)

    local JabberConfigPathTo = m.Parse('%miranda_path%\\Plugins\\Jabber')
    local JabberConfigPathFrom = JabberConfigPathTo
    if IsCyrillicLangpack(langpack) then
        JabberConfigPathFrom = JabberConfigPathFrom .. '\\' .. 'ru'
    else
        JabberConfigPathFrom = JabberConfigPathFrom .. '\\' .. 'en'
    end
    local batch = "xcopy /Y \"{JabberConfigPathFrom}\" \"{JabberConfigPathTo}\"" % {
        ["JabberConfigPathFrom"] = JabberConfigPathFrom,
        ["JabberConfigPathTo"] = JabberConfigPathTo
    }
    if IsCyrillicLangpack(langpack) then
        JabberIniPathFrom = toansi(m.Parse('%miranda_path%\\Plugins\\Jabber\\ru\\Jabber.ini'))
    else
        JabberIniPathFrom = toansi(m.Parse('%miranda_path%\\Plugins\\Jabber\\en\\Jabber.ini'))
    end
    m.CallService('DBEditorpp/Import', 0, JabberIniPathFrom)

    winapi.ShellExecute(globals.HasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. batch)

    local mRadioConfigPathTo = m.Parse('%miranda_path%\\Plugins\\mRadio')
    local mRadioConfigPathFrom = mRadioConfigPathTo
    if IsCyrillicLangpack(langpack) then
        mRadioConfigPathFrom = mRadioConfigPathFrom .. '\\' .. 'ru'
    else
        mRadioConfigPathFrom = mRadioConfigPathFrom .. '\\' .. 'en'
    end
    local batch = "xcopy /Y \"{mRadioConfigPathFrom}\" \"{mRadioConfigPathTo}\"" % {
        ["mRadioConfigPathFrom"] = mRadioConfigPathFrom,
        ["mRadioConfigPathTo"] = mRadioConfigPathTo
    }

    winapi.ShellExecute(globals.HasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. batch)

    local NewsAggregatorConfigPathTo = m.Parse('%miranda_path%\\Plugins\\NewsAggregator')
    local NewsAggregatorConfigPathFrom = NewsAggregatorConfigPathTo
    if IsCyrillicLangpack(langpack) then
        NewsAggregatorConfigPathFrom = NewsAggregatorConfigPathFrom .. '\\' .. 'ru'
    else
        NewsAggregatorConfigPathFrom = NewsAggregatorConfigPathFrom .. '\\' .. 'en'
    end
    local batch = "xcopy /Y \"{NewsAggregatorConfigPathFrom}\" \"{NewsAggregatorConfigPathTo}\"" % {
        ["NewsAggregatorConfigPathFrom"] = NewsAggregatorConfigPathFrom,
        ["NewsAggregatorConfigPathTo"] = NewsAggregatorConfigPathTo
    }

    winapi.ShellExecute(globals.HasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. batch)

    local SplashScreenPathTo = m.Parse('%miranda_path%\\Skins\\SplashScreen')
    local SplashScreenPathFrom = SplashScreenPathTo
    if IsCyrillicLangpack(langpack) then
        SplashScreenPathFrom = SplashScreenPathFrom .. '\\' .. 'ru'
    else
        SplashScreenPathFrom = SplashScreenPathFrom .. '\\' .. 'en'
    end
    local batch = "xcopy /Y \"{SplashScreenPathFrom}\" \"{SplashScreenPathTo}\"" % {
        ["SplashScreenPathFrom"] = SplashScreenPathFrom,
        ["SplashScreenPathTo"] = SplashScreenPathTo
    }

    winapi.ShellExecute(globals.HasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. batch)

    local WeatherConfigPathTo = m.Parse('%miranda_path%\\Plugins\\Weather')
    local WeatherConfigPathFrom = WeatherConfigPathTo
    if IsCyrillicLangpack(langpack) then
        WeatherConfigPathFrom = WeatherConfigPathFrom .. '\\' .. 'ru'
    else
        WeatherConfigPathFrom = WeatherConfigPathFrom .. '\\' .. 'en'
    end
    local batch = "xcopy /Y \"{WeatherConfigPathFrom}\" \"{WeatherConfigPathTo}\"" % {
        ["WeatherConfigPathFrom"] = WeatherConfigPathFrom,
        ["WeatherConfigPathTo"] = WeatherConfigPathTo
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