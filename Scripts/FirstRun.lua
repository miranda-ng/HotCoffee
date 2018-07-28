assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
hasAccess = require('HasAccess')
assert(hasAccess)

local hSystemModulesLoadedHook = m.HookEvent("Miranda/System/ModulesLoaded", function()
  if (db.GetSetting(_, 'FirstRun', 'MirLua')) then
    return
  end

  local mCurrencyRatesXmlPath = toansi(m.Parse('%miranda_path%\\UserSet\\CurrencyRates\\CR.xml'))
  m.CallService('CurrencyRates/Import', 0, mCurrencyRatesXmlPath)

  local mRadioIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\mRadio\\mRadio.ini'))
  m.CallService('mRadio/Import', 0, mRadioIniPath)

  local skin = db.GetSetting(_, 'PackInfo', 'Skin')
  local mImportIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\Skins\\'..skin..'.ini'))
  m.CallService('DB/Ini/ImportFile', mImportIniPath)

  local font = db.GetSetting(_, 'PackInfo', 'Font')
  local mImportIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\Fonts\\'..font..'.ini'))
  m.CallService('DB/Ini/ImportFile', mImportIniPath)

  db.WriteSetting(_, 'CList', 'State', 2, 1)
  db.WriteSetting(_, 'FirstRun', 'AccManager', false)
  db.WriteSetting(_, 'FirstRun', 'MirLua', true)

  db.WriteSetting(_, 'PackInfo', 'MirVer', m.Version, 252)

  db.DeleteModule(_, 'PluginDisable')

  local batch = "timeout /t 10 /nobreak && taskkill /f /pid {processId} && start {processName}" % {
    ["processId"] = winapi.GetCurrentProcessId(),
    ["processName"] = m.GetFullPath()
  }
  winapi.ShellExecute(hasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. batch)
end)
assert(hSystemModulesLoadedHook)