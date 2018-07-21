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

  local mQuotesXmlPath = toansi(m.Parse('%miranda_path%\\Plugins\\Quotes\\HotCoffee.xml'))
  m.CallService('Quotes/Import', 0, mQuotesXmlPath)

  local mRadioIniPath = toansi(m.Parse('%miranda_path%\\Plugins\\mradio.ini'))
  m.CallService('mRadio/Import', 0, mRadioIniPath)

  local skin = db.GetSetting(_, 'PackInfo', 'Skin')
  local mImportIniPath = toansi(m.Parse('%miranda_path%\\Skins\\'..skin..'.ini'))
  m.CallService('DB/Ini/ImportFile', mImportIniPath)

  local font = db.GetSetting(_, 'PackInfo', 'Font')
  local mImportIniPath = toansi(m.Parse('%miranda_path%\\Skins\\fonts\\'..font..'.ini'))
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