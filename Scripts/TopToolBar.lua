local icolib = require('m_icolib')
local ttb = require('m_toptoolbar')

local TTBBF_VISIBLE = 0x0002
local TTBBF_ISSBUTTON = 0x0100

local TopToolBarButtons = 
{
	{ Name = m.Translate("View/Change my details"), Service = 'UserInfo/ShowDialog', Flags = TTBBF_VISIBLE, Icon = icolib.AddIcon('viewUserDetails', m.Translate("View/Change my details")), Tooltip = m.Translate("View/Change my details") }
}

m.HookEvent("TopToolBar/ModuleLoaded", function()
	for _, v in ipairs(TopToolBarButtons) do
		v.hButton = ttb.AddButton({
			Name = v.Name,
			Service = v.Service,
			Flags = v.Flags,
			IconUp = v.IconUp or v.Icon,
			IconDown = v.IconDown or v.Icon,
			TooltipUp = v.TooltipUp or v.Tooltip,
			TooltipDown = v.TooltipDown or v.Tooltip,
		})
	end
end)
