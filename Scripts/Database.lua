local clist = require('m_clist')
local icolib = require('m_icolib')
local winapi = require('winapi')

local hRoot = clist.AddMainMenuRoot('Database')

local CMIF_HIDDEN = 4
local IDYES = 6
local IDNO = 7
local MB_YESNO = 0x04
local MB_ICONQUESTION = 0x20

local MenuItems = 
{
	{ 
		Name = "changeProfile", Description = 'Change profile', Uid = 'C3D2809D-EDD6-4DE9-B51C-D8BFBCB92A00', 
		ServiceFunction = function()
			if winapi.MessageBox(_,
				m.Translate('To continue the program should be closed. Continue?'),
				m.Translate('Change profile'),
				MB_YESNO | MB_ICONQUESTION
			) == IDYES then
				winapi.ShellExecute('open', m.GetFullPath(), '/ForceShowPM', 5)
				m.CallService("CloseAction")
			end
		end
	},
	{ 
		Name = "loadProfile", Description = 'Load profile', Uid = '152EC688-741D-42A0-962B-D1A474A9CF53',
		ServiceFunction = function()
			if winapi.MessageBox(_,
				m.Translate('Some modules will not be able to work simultaneously in two or more advanced profiles. Continue?'),
				m.Translate('Load profile'),
				MB_YESNO | MB_ICONQUESTION
			) == IDYES then
				winapi.ShellExecute('open', m.GetFullPath(), '/profile:fake_profile', 5)
			end
		end
	},
	{
		Name = "checkDatabase", Description = 'Check database', Uid = 'D5E5D9C5-F25E-4F33-9586-E51BE3D23888',
		ServiceFunction = function()
			if winapi.MessageBox(_,
				m.Translate('To continue the program should be closed. Continue?'),
				m.Translate('Check database'),
				MB_YESNO | MB_ICONQUESTION
			) == IDYES then
				winapi.ShellExecute('open', m.GetFullPath(), '/svc:dbchecker', 5)
				m.CallService("CloseAction")
			end
		end
	},
	{
		Name = "openProfileFolder", Description = 'Open profile folder', Uid = '63511F6A-3454-46EB-A862-E343B1EBF6C6',
		ServiceFunction = function()
			winapi.ShellExecute('open', m.Parse("%miranda_userdata%"), nil, 5)
		end
	}
}

for i, v in ipairs(MenuItems) do
	local ServiceName = "MirLua/Scripts/" .. v.Name
	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Parent = hRoot, Service = ServiceName, Position = 100000 + i, Uid = v.Uid, Icon = icolib.AddIcon(v.Name, v.Description, 'MirLua/Database') })
	m.CreateServiceFunction(ServiceName, v.ServiceFunction)
end