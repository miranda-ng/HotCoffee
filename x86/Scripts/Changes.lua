assert(m)
local winapi = require('winapi')
assert(winapi)

local changes = {}

function changes.Ask(callback, ...)
  local IDYES = 6
  local MB_YESNO = 0x00000004
  local MB_ICONQUESTION = 0x00000020

  local caption = m.Translate('Changes...')
  local text = m.Translate('The changes will take effect only after restarting program. Continue?')
  local result = winapi.MessageBox(m.NULL, text, caption, MB_YESNO | MB_ICONQUESTION)
  if result == IDYES then
    callback(...)
  end
end

return changes