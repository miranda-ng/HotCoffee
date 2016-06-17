local db = require('m_database')
local winapi = require('winapi')

db.WriteSetting(_, 'mRadio', 'Volume', 100, 1)

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
    winapi.SetIniValue(m.Parse('%miranda_path%\\skins\\tabsrmm\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'CaptionOffset', result)
  end
end

WriteTabSRMMSkin(db.GetSetting(_, 'PackInfo', 'Skin'), db.GetSetting(_, 'PackInfo', 'Font'))

if db.GetSetting(_, 'FirstRun', 'MirLua') then
  local path = m.Parse('%miranda_path%\\profiles\\update.ini')
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
