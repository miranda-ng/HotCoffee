----  Скрипт должен срабатывать при каждом старте Miranda, кроме первого!
---1. Ждем полной загрузки ядра Miranda
---2. Создаем функцию WriteTabSRMMSkin, в которой определяем значение ключа CaptionOffset
----  (ключ отвечает за расположение значка и текста в шапке диалога сообщей) в секции
----  WindowFrame в файле скина *.tsk (TabSRMM) для нескольких перечней скинов.
----  Определяем два перечня скинов: patternLong и patternShort.
----  Определяем шрифты, которые будем поддерживать в сборке: Tahoma, Verdana и Segoe Print
---2. Читаем в БД в секции PackInfo значение ключа Font (unicode), и согласно функции WriteTabSRMMSkin
---3. пишем в файлы (только в существующие) *.tsk значения определенные этой функцией
---4. 

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

if db.GetSetting(_, 'FirstRun', 'Lua_FirstRun') then
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