----  Скрипт должен сработать только при первом старте (после создания профиля) Miranda!
---1. Проверяем существует ли сервис 'Miranda/System/ModulesLoaded' если нет, ждем 0,5 секунды и снова проверяем (и так ∞)...
---2. Если сервис существует, то проверяем в БД в секции FirstRun значение ключа Lua_FirstRun (byte), если 1 то брейк, если 0, то едем дальше...
---3. Читаем в БД в секции PackInfo значение ключа Skin (unicode), и импортируем в БД %miranda_path%\\Skins\\Skins\\'значение ключа PackInfo\Skin'.ini, и едем дальше...
---4. Читаем в БД в секции PackInfo значение ключа Font (unicode), и импортируем в БД %miranda_path%\\Skins\\Fonts\\'значение ключа PackInfo\Font'.ini, и едем дальше...
---5. Проверяем существует ли сервис 'SmileyAdd/Reload' если нет, то пропускаем строку '6.' и прыгаем на строку '7.', если существует, то едем дальше...
---6. Читаем в БД в секции PackInfo значение ключа Smileys (unicode), и импортируем в БД %miranda_path%\\Skins\\Smileys\\'значение ключа PackInfo\Smileys'.ini, и едем дальше...
---7. Меняем в БД в секции CList значение ключа State (byte) на 2 (0 - контакт лист свернут, 2 - контакт лист развернут)
---8. Меняем в БД в секции FirstRun значение ключа AccManager (byte) на 0 (0 - при старте Miranda будет открыт диалог "Учетные записи", 1 - не будет)
---9. Меняем в БД в секции FirstRun значение ключа Lua_FirstRun (byte) на 1 (0 - скрипт FirstRun.lua еще не выполнялся, 1 - уже выполнялся)
--10. Меняем в БД в секции PackInfo значение ключа MirVer (unicode) на текущее значение MirVer (текущая версия Miranda)
--11. Удаляем в БД секцию PluginDisable (в этой секции хранятся настройки плагинов, которые должны или не должны быть загружены вместе с Miranda)
--12. Дергаем сервис 'Miranda/System/ModulesLoaded' (Перезагрузка)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
local globals = require('GlobalFunctions')
assert(globals)

if db.GetSetting(_, 'FirstRun', 'Lua_FirstRun', 0) == 1 then
   return
end

local skin = db.GetSetting(_, 'PackInfo', 'Skin')
--print('FirstRun: skin is', skin)
local mImportIniPath = toansi(m.Parse('%miranda_path%\\Skins\\Skins\\'..skin..'.ini'))
m.CallService('DB/Ini/ImportFile', mImportIniPath)

local font = db.GetSetting(_, 'PackInfo', 'Font')
--print('FirstRun: font is', font)
local mImportIniPath = toansi(m.Parse('%miranda_path%\\Skins\\Fonts\\'..font..'.ini'))
m.CallService('DB/Ini/ImportFile', mImportIniPath)

db.WriteSetting(_, 'CList', 'State', 2, db.DBVT_BYTE)
db.WriteSetting(_, 'FirstRun', 'AccManager', 0, db.DBVT_BYTE)
db.WriteSetting(_, 'FirstRun', 'Lua_FirstRun', 1, db.DBVT_BYTE)

db.WriteSetting(_, 'PackInfo', 'MirVer', m.Version, db.DBVT_WCHAR)

db.DeleteModule(_, 'PluginDisable')

globals.Restart(0, 0)