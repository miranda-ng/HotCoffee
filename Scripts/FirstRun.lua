local db = require('m_database')
local winapi = require('winapi')

if(not db.GetSetting(_, 'FirstRun', 'MirLua')) then
  local mQuotesXmlPath = m.Utf8DecodeA(m.Parse('%miranda_path%\\Plugins\\quotes\\quotes.xml'))
  m.CallService('Quotes/Import', 0, mQuotesXmlPath)

  local mRadioIniPath = m.Utf8DecodeA(m.Parse('%miranda_path%\\Plugins\\mradio.ini'))
  m.CallService('mRadio/Import', 0, mRadioIniPath)

  local skin = db.GetSetting(_, 'PackInfo', 'Skin')
  local mImportIniPath = m.Utf8DecodeA(m.Parse('%miranda_path%\\Skins\\'..skin..'.ini'))
  m.CallService('DB/Ini/ImportFile', mImportIniPath)

  local font = db.GetSetting(_, 'PackInfo', 'Font')
  local mImportIniPath = m.Utf8DecodeA(m.Parse('%miranda_path%\\Skins\\fonts\\'..font..'.ini'))
  m.CallService('DB/Ini/ImportFile', mImportIniPath)

  db.WriteSetting(_, 'CList', 'State', 2, 1)
  db.WriteSetting(_, 'FirstRun', 'AccManager', false)
  db.WriteSetting(_, 'FirstRun', 'MirLua', true)

  db.WriteSetting(_, 'PackInfo', 'MirVer', m.Version, 252)

  db.DeleteModule(_, 'PluginDisable')

  m.CallService('Miranda/System/Restart', 1, 0)
end
