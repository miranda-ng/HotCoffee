---  Скрипт должен срабатывать при каждом старте Miranda!
--1. Ждем полной загрузки ядра Miranda
--2. Создаем функцию WriteTabSRMMSkin, в которой определяем значение ключа CaptionOffset
---  (ключ отвечает за расположение значка и текста в шапке диалога сообщей) в секции
---  WindowFrame в файле скина *.tsk (TabSRMM) для нескольких перечней скинов.
---  Определяем два перечня скинов: patternLong и patternShort.
---  Определяем шрифты, которые будем поддерживать в сборке: printing и handwriting
--2. Читаем в БД в секции PackInfo значение ключа Font (unicode)
--3. Пишем во все файлы (только в существующие) *.tsk в секцию WindowFrame,
---  ключ CaptionOffset, значение определенное функцией WriteTabSRMMSkin
--4. 

assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
local globals = require('GlobalFunctions')
assert(globals)

function WriteTabSRMMSkin(skinName, fontName)
	local patternCustMir = 'Custom_Miranda,Custom_Miranda_Dark,Custom_Miranda_Light'
	local patternLong = 'Glamour_Aqua_Dark,Glamour_Aqua_Light,Glamour_Dark,Glamour_Light,GoldTime_Dark,GoldTime_Light,PhotoOne_Dark,PhotoOne_Light,Surface_Black,Surface_White'
	local patternShort = 'Graphite_Gray_Dark,Graphite_Gray_Light,Graphite_Brown_Light,Textolite_Dark,Textolite_Light'
	local patternShortNew = 'Diplomat_Dark,Diplomat_Light,Textolite_Gray_Dark,Textolite_Gray_Light'

	local result = 0

	if patternCustMir:find(skinName) and fontName == 'printing' then
		result = 5
	elseif patternCustMir:find(skinName) and fontName == 'handwriting' then
		result = 2
	elseif patternLong:find(skinName) and fontName == 'printing' then
		result = 7
	elseif patternLong:find(skinName) and fontName == 'handwriting' then
		result = 4
	elseif patternShort:find(skinName) and fontName == 'printing' then
		result = 6
	elseif patternShort:find(skinName) and fontName == 'handwriting' then
		result = 3
	elseif patternShortNew:find(skinName) and fontName == 'printing' then
		result = 9
	elseif patternShortNew:find(skinName) and fontName == 'handwriting' then
		result = 6
	end

	if result > 0 then
		winapi.SetIniValue(m.Parse('%miranda_path%\\Skins\\TabSRMM\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'CaptionOffset', result)
	end
end

WriteTabSRMMSkin(db.GetSetting(_, 'PackInfo', 'Skin'), db.GetSetting(_, 'PackInfo', 'Font'))

if db.GetSetting(_, 'FirstRun', 'Lua_FirstRun') == 1 then
  local path = m.Parse('%miranda_path%\\Profiles\\update.ini')
  local hFile = io.open(path, "r")
  if not hFile then
    if db.GetSetting(_, 'FirstRun', 'AccManager', 1) == 0 then
       m.CallService("Protos/ShowAccountManager")
       db.WriteSetting(_, 'FirstRun', 'AccManager', 1, 1)
    end
  elseif db.GetSetting(_, 'PackInfo', 'MirVer') == m.Version then
    io.close(hFile)
    if db.GetSetting(_, 'FirstRun', 'AccManager', 1) == 0 then
       m.CallService("Protos/ShowAccountManager")
       db.WriteSetting(_, 'FirstRun', 'AccManager', 1, 1)
    end
  else
    io.close(hFile)
    m.CallService('DB/Ini/ImportFile', path)
    db.WriteSetting(_, 'PackInfo', 'MirVer', m.Version, 252)
    globals.Restart(1, 0)
  end
end