---  Скрипт должен срабатывать при каждом старте Miranda!
--1. Ждем полной загрузки ядра Miranda
--2. Создаем функцию WriteTabSRMMSkin, в которой определяем значение ключа CaptionOffset
---  (ключ отвечает за расположение значка и текста в шапке диалога сообщей) в секции
---  WindowFrame в файле скина *.tsk (TabSRMM) для нескольких перечней скинов.
---  Определяем два перечня скинов: patternLong и patternShort.
---  Определяем шрифты, которые будем поддерживать в сборке: Printing и Handwriting
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

db.WriteSetting(_, 'mRadio', 'Volume', 100, 1)

function WriteTabSRMMSkin(skinName, fontName)
	local pattern_1 = 'Custom_Miranda,Custom_Miranda_Dark,Custom_Miranda_Light,Default_Miranda'
	local pattern_2 = 'Graphite_Brown_Dark,Graphite_Brown_Light,Graphite_Gray_Dark,Graphite_Gray_Light'
	local pattern_3 = 'Glamour_Aqua_Dark,Glamour_Aqua_Light,Glamour_Dark,Glamour_Light,GoldTime_Dark,GoldTime_Light,PhotoOne_Dark,PhotoOne_Light'
	local pattern_4 = 'WinStyle_Classic_Dark,WinStyle_Classic_Light'
	local pattern_5 = 'Diplomat_Dark,Diplomat_Light,Textolite_Brown_Dark,Textolite_Brown_Light,Textolite_Gray_Dark,Textolite_Gray_Light'
	local pattern_6 = 'Surface_Black,Surface_White'

	local result = 0

	if pattern_1:find(skinName) and fontName == 'Printing' then
		result = 5
	elseif pattern_1:find(skinName) and fontName == 'Handwriting' then
		result = 2
	elseif pattern_2:find(skinName) and fontName == 'Printing' then
		result = 6
	elseif pattern_2:find(skinName) and fontName == 'Handwriting' then
		result = 3
	elseif pattern_3:find(skinName) and fontName == 'Printing' then
		result = 7
	elseif pattern_3:find(skinName) and fontName == 'Handwriting' then
		result = 4
	elseif pattern_4:find(skinName) and fontName == 'Printing' then
		result = 8
	elseif pattern_4:find(skinName) and fontName == 'Handwriting' then
		result = 5
	elseif pattern_5:find(skinName) and fontName == 'Printing' then
		result = 9
	elseif pattern_5:find(skinName) and fontName == 'Handwriting' then
		result = 6
	elseif pattern_6:find(skinName) and fontName == 'Printing' then
		result = 12
	elseif pattern_6:find(skinName) and fontName == 'Handwriting' then
		result = 9
	end

	if result > 0 then
		winapi.SetIniValue(m.Parse('%miranda_path%\\Skins\\TabSRMM\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'CaptionOffset', result)
	end
end

WriteTabSRMMSkin(db.GetSetting(_, 'PackInfo', 'Skin'), db.GetSetting(_, 'PackInfo', 'Font'))


function WriteTabSRMMSkinTabCaption(skinName, CaptionSize)
	local pattern_1 = 'Custom_Miranda,Custom_Miranda_Dark,Custom_Miranda_Light,Default_Miranda'
	local pattern_2 = 'Graphite_Brown_Dark,Graphite_Gray_Light'
	local pattern_3 = 'Glamour_Aqua_Dark,Glamour_Aqua_Light,Glamour_Dark,Glamour_Light'
	local pattern_4 = 'WinStyle_Classic_Dark,WinStyle_Classic_Light'
	local pattern_5 = 'Diplomat_Dark,Diplomat_Light'
	local pattern_6 = 'Surface_Black,Surface_White,Textolite_Brown_Dark,Textolite_Brown_Light,Textolite_Gray_Dark,Textolite_Gray_Light'
	local pattern_7 = 'GoldTime_Dark,GoldTime_Light'
	local pattern_8 = 'Graphite_Brown_Light,Graphite_Gray_Dark,PhotoOne_Dark,PhotoOne_Light'

	local result = 0

	if pattern_1:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 15
	elseif pattern_1:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 19

	elseif pattern_2:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 17
	elseif pattern_2:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 21

	elseif pattern_3:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 43
	elseif pattern_3:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 47

	elseif pattern_4:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 19
	elseif pattern_4:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 23

	elseif pattern_5:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 28
	elseif pattern_5:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 32

	elseif pattern_6:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 24
	elseif pattern_6:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 28

	elseif pattern_7:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 29
	elseif pattern_7:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 33

	elseif pattern_8:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 18
	elseif pattern_8:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 22
	end

	if result > 0 then
		winapi.SetIniValue(m.Parse('%miranda_path%\\Skins\\TabSRMM\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'Caption', result)
	end
end

WriteTabSRMMSkinTabCaption(db.GetSetting(_, 'PackInfo', 'Skin'), db.GetSetting(_, 'PackInfo', 'TabCaption'))


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