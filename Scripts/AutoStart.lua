----  Скрипт должен срабатывать при каждом старте Miranda, кроме первого!
---1. Ждем полной загрузки ядра Miranda
---2. Создаем функцию WriteTabSRMMSkin, в которой определяем значение ключа CaptionOffset в секции WindowFrame в файле скина *.tsk (TabSRMM) для определенного перечня скинов:
----  
---2. Читаем в БД в секции PackInfo значение ключа Font (unicode), если Tahoma, то
---3. пишем в файл (но только если такой файл существует) текущего скина TabSRMM значение определенное функцией WriteTabSRMMSkin
---3. 

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
assert(m)
local winapi = require('winapi')
assert(m)

function WriteTabSRMMSkin(skinName, fontName)
  local patternLong = 'diplomatd,diplomatl,glamourd,glamourl,goldtimed,goldtimel,photooned,photoonel,surfaceb,surfacew'
  local patternShort = 'graphited,graphitel,textolited,textolitel'

  local result = 0

  if patternLong:find(skinName) and fontName == 'printing' then
    result = 7
  elseif patternLong:find(skinName) and fontName == 'handwriting' then
    result = 4
  elseif patternShort:find(skinName) and fontName == 'printing' then
    result = 6
  elseif patternShort:find(skinName) and fontName == 'handwriting' then
    result = 3
  end

  if result > 0 then
    winapi.SetIniValue(m.Parse('%miranda_path%\\UserSet\\Skins\\TabSRMM\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'CaptionOffset', result)
  end
end

WriteTabSRMMSkin(db.GetSetting(_, 'PackInfo', 'Skin'), db.GetSetting(_, 'PackInfo', 'Font'))

if db.GetSetting(_, 'FirstRun', 'MirLua') then
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
    m.CallService('Miranda/System/Restart', 1, 0)
  end
end
