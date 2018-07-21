mbb = require('m_srmm')
icolib = require('m_icolib')

module = 'luaLeaveChat'
BBBF_ISCHATBUTTON = 16
BBBF_ISRSIDEBUTTON = 128
bbButton =
{
  Module = module,
  ButtonID = 1,
  Flags = BBBF_ISCHATBUTTON | BBBF_ISRSIDEBUTTON,
  Tooltip = m.Translate('Leave chat'),
  Icon = icolib.AddIcon(module, 'Leave chat')
}

mbb.AddButton(bbButton)

m.HookEvent("TabSRMM/ButtonsBar/ButtonPressed", function(w, l)
  local bcd = CustomButtonClickData(l)
  if bcd.Module == module and bcd.ButtonID == 1 then
    m.CallService('GChat/LeaveChat', bcd.hContact, 0)
  end
end)
