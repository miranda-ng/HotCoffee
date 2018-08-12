local clist = require("m_clist")
local icolib = require("m_icolib")
local winapi = require("winapi")

m.CreateServiceFunction("Scripts/Restart", function()
  local state = winapi.GetKeyState(0x11)
  local showPM = ((state & 0x800) == 0) and 1 or 0
  m.CallService("Miranda/System/Restart", showPM, 0)
end)

local hIcon = icolib.AddIcon('Restart', 'Restart')

clist.AddMainMenuItem{
  Name = "Restart",
  Service = "Scripts/Restart",
  Icon = hIcon,
  Uid = 'A3C2B3B9-CCF7-4AC1-AC04-6222EDCDE30B'
}

clist.AddTrayMenuItem({
  Name = "Restart",
  Service = "Scripts/Restart",
  Icon = hIcon,
  Uid = '67E793D9-23FE-4C4D-AE20-E855AB12C5C9'
})