local db = require('m_database')
local winapi = require('winapi')

local exitServiceName = 'Scripts/Exit'

m.CreateServiceFunction(exitServiceName, function()
  local IDYES = 6
  local MB_YESNO = 0x00000004
  local MB_ICONQUESTION = 0x00000020

  local caption = m.Translate('Exit')
  local text = string.format("%s %s?",  m.Translate('Do you really want to close'), db.GetSetting(0, 'PackInfo', 'Name'))
  local result = winapi.MessageBox(m.NULL, text, caption, MB_YESNO | MB_ICONQUESTION)
  if result == IDYES then
    m.CallService('CloseAction', 0, 0)
  end
end)
