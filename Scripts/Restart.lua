assert(m)
local clist = require("m_clist")
assert(clist)
local icolib = require("m_icolib")
assert(icolib)
local winapi = require("winapi")
assert(winapi)
local globals = require('GlobalFunctions')
assert(globals)

local hSystemModulesLoadedHook = m.HookEvent("Miranda/System/ModulesLoaded", function()
  m.CreateServiceFunction("Scripts/Restart", function()
    local state = winapi.GetKeyState(0x11) -- ctrl pressed
    local showPM = ((state & 0x800) == 0) and 1 or 0
    globals.Restart(showPM, 0)
  end)

  local menuItem = {
    Name = "Restart",
    Service = "Scripts/Restart",
    Icon = icolib.AddIcon('Restart', 'Restart'),
    Uid = 'A3C2B3B9-CCF7-4AC1-AC04-6222EDCDE30B'
  }

  clist.AddMainMenuItem(menuItem)
  clist.AddTrayMenuItem(menuItem)
end)
assert(hSystemModulesLoadedHook)
