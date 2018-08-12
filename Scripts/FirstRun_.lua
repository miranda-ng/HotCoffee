----  Скрипт должен сработать только при первом старте (после создания профиля) Miranda!
---1. Проверяем существует ли сервис 'Miranda/System/ModulesLoaded' если нет, ждем 0,5 секунды и снова проверяем (и так ∞)...
---2. Если сервис существует, то проверяем в БД в секции FirstRun значение ключа Lua_FirstRun (byte), если 1 то брейк, если 0, то едем дальше...
---3. Читаем в БД в секции PackInfo значение ключа Skin (unicode), и импортируем в БД %miranda_path%\\UserSet\\Skins\\'значение ключа PackInfo\Skin'.ini, и едем дальше...
---4. Читаем в БД в секции PackInfo значение ключа Font (unicode), и импортируем в БД %miranda_path%\\UserSet\\Fonts\\'значение ключа PackInfo\Font'.ini, и едем дальше...
---5. Проверяем существует ли сервис 'SmileyAdd/Reload' если нет, то пропускаем строку '6.' и прыгаем на строку '7.', если существует, то едем дальше...
---6. Читаем в БД в секции PackInfo значение ключа Smileys (unicode), и импортируем в БД %miranda_path%\\UserSet\\Smileys\\'значение ключа PackInfo\Smileys'.ini, и едем дальше...
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
hasAccess = require('HasAccess')
assert(hasAccess)
schedule = require('m_schedule')
assert(schedule)

if (db.GetSetting(_, 'FirstRun', 'Lua_FirstRun')) then
   return 0
end

m.WaitOnHandle(function()
  local skin = db.GetSetting(_, 'PackInfo', 'Skin')
  local mImportIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\Skins\\'..skin..'.ini'))
  m.CallService('DB/Ini/ImportFile', mImportIniPath)

  local font = db.GetSetting(_, 'PackInfo', 'Font')
  local mImportIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\Fonts\\'..font..'.ini'))
  m.CallService('DB/Ini/ImportFile', mImportIniPath)

  db.WriteSetting(_, 'CList', 'State', 2, 1)
  db.WriteSetting(_, 'FirstRun', 'AccManager', false)
  db.WriteSetting(_, 'FirstRun', 'Lua_FirstRun', true)

  db.WriteSetting(_, 'PackInfo', 'MirVer', m.Version, 252)

  db.DeleteModule(_, 'PluginDisable')

  local batch = "timeout /t 3 /nobreak && taskkill /f /pid {processId} && start {processName}" % {
    ["processId"] = winapi.GetCurrentProcessId(),
    ["processName"] = m.GetFullPath()
  }
  winapi.ShellExecute(hasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. batch)
end)