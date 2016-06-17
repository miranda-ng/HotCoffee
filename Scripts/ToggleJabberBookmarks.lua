db = require('m_database')
hotkey = require('m_hotkeys')
protos = require('m_protocols')
winapi = require('winapi')

if m.IsPluginLoaded('144E80A2-D198-428b-ACBE-9D55DACC7FDE') then
  local moduleName = 'ToggleJabberBookmarks'
  local serviceName = 'MirLua/'..moduleName

  local HOTKEYF_SHIFT = 1
  local HOTKEYF_CONTROL = 2
  local VK_LWIN = 0x5B
  local HKF_MIRANDA_LOCAL = 0x8000
  local defaultHotkey =
    hotkey.MakeHotkey(HOTKEYF_SHIFT|HOTKEYF_CONTROL|VK_LWIN, string.byte('A')) | HKF_MIRANDA_LOCAL

  hotkey.Register({
    Name = moduleName,
    Description = 'Autologin bookmarks and conferences',
    Hotkey = defaultHotkey,
    Service = serviceName
  })

  m.CreateServiceFunction(serviceName, function()
    local value = 1 - db.GetSetting(_, 'JABBER', 'AutoJoinBookmarks', 0)
    db.WriteSetting(_, 'JABBER', 'AutoJoinBookmarks', value)
    db.WriteSetting(_, 'JABBER', 'AutoJoinConferences', value)
    for account in protos.Accounts() do
      if account.ProtoName == 'JABBER' then
        db.WriteSetting(_, account.ModuleName, 'AutoJoinConferences', value)
        db.WriteSetting(_, account.ModuleName, 'AutoJoinBookmarks', value)
      end
    end
    local message = value == 1
      and m.Translate('Autologin bookmarks and conferences enabled')
      or m.Translate('Autologin bookmarks and conferences disabled')
    if m.ServiceExists('Popup/ShowMessageW') then
      m.CallService('Popup/ShowMessageW', m.Utf8DecodeW(message), 2)
    else
      local MB_ICONEXCLAMATION = tonumber('00000040', 16)
      winapi.MessageBox(_, message, m.Translate('Autologin'), MB_ICONEXCLAMATION, 4000)
    end
  end)
end
