assert(m)
clist = require('m_clist')
assert(clist)
db = require('m_database')
assert(db)
icolib = require('m_icolib')
assert(icolib)
genmenu = require('m_genmenu')
assert(genmenu)
options = require('m_options')
assert(options)
winapi = require('winapi')
assert(winapi)
changes = require('Changes')
assert(changes)

hRoot = clist.AddMainMenuItem({ Name = 'Settings', Icon = icolib.GetIcon("core_main_13"), Uid = '299D3276-02BF-40B3-8D2E-63DA2F663CF3' })

IDCANCEL = 2
IDYES = 6
IDNO = 7
MB_YESNOCANCEL = 0x00000003
MB_ICONQUESTION = 0x00000020
MB_ICONEXCLAMATION = 0x00000030

function GetProfilesCount()
	local searchPath = m.Parse('%miranda_profilesdir%\\*')
	local result = 0
	for file in winapi.Find(searchPath) do
		if file.IsDirectory then
			local profilePath = m.Parse('%miranda_profilesdir%\\') .. file.Name .. '\\' .. file.Name .. '.dat'
			local f = io.open(profilePath, "r")
			if f then
				io.close(f)
				result = result + 1
			end
		end
	end
	return result
end

function AddToAutostart()
	local value = m.GetFullPath()
	if GetProfilesCount() > 1 then
		local result = winapi.MessageBox
		(
			_, 
			m.Translate("You're using a few profiles, would you like to enable autostart for the current profile?")
				.. '\r\n' .. m.Translate('Yes - while loading the profile will be enabled')
				.. '\r\n' .. m.Translate('No - while loading as usually will be opened profile manager'),
			m.Translate('A few profiles have been found'),
			MB_YESNOCANCEL | MB_ICONQUESTION
		)
		if result == IDCANCEL then
			return
		end
		if result == IDYES then
			value = value .. ' /profile:' .. m.Parse('%miranda_profilename%')
		end
	end
	winapi.RegSetValueEx(winapi.HKEY_CURRENT_USER, 'Software\\Microsoft\\Windows\\CurrentVersion\\Run', db.GetSetting(_, 'PackInfo', 'Pack'), value, winapi.REG_SZ)
end

function RemoveFromAutostart()
	winapi.RegDeleteValue(winapi.HKEY_CURRENT_USER, 'Software\\Microsoft\\Windows\\CurrentVersion\\Run', db.GetSetting(_, 'PackInfo', 'Pack'))
end

function ChangeAutoStart()
	local res = winapi.MessageBox(_,
		m.Translate("The registry record for Miranda's autorun already exists, but it differs from the path to launched Miranda.")
		.. '\r\n' .. m.Translate('Yes - rewrite on the current profile?')
		.. '\r\n' .. m.Translate('No - remove the key'),
		m.Translate('Warning!'),
		MB_YESNOCANCEL | MB_ICONEXCLAMATION) 
	if res == IDYES then
		AddToAutostart()
	elseif res == IDNO then
		RemoveFromAutostart()
	end
end

function GetAutoStartMode()
	local RegPackPath = winapi.RegQueryValueEx(winapi.HKEY_CURRENT_USER, 'Software\\Microsoft\\Windows\\CurrentVersion\\Run', db.GetSetting(_, 'PackInfo', 'Pack'))
	local curPackPath = m.GetFullPath()
	if GetProfilesCount() > 1 then
		curPackPath = curPackPath .. ' /profile:' .. m.Parse('%miranda_profilename%')
	end
	if not RegPackPath then
		return 1
	elseif RegPackPath:lower() ~= curPackPath:lower() then
		return 2
	else
		return 3
	end
end

MainMenuItems = 
{
	{
		Name = "AutoStart",
		Uid = 'A80CAFE0-17A0-44EC-849D-E760462E297F',
		Icons = 
		{
			Add = icolib.AddIcon('addToAutostartMenuItemIcon', 'Add to autostart', 'MirLua/Settings'),
			Change = icolib.AddIcon('changeAutostartMenuItemIcon', 'Change autostart', 'MirLua/Settings'),
			Remove = icolib.AddIcon('removeFromAutostartMenuItemIcon', 'Remove from autostart', 'MirLua/Settings')
		},
		Icon = function(this) 
			local mode = GetAutoStartMode()
			return mode == 1 and this.Icons.Add or (mode == 2 and this.Icons.Change or this.Icons.Remove)
		end,
		Description = function(this)
			local mode = GetAutoStartMode()
			return mode == 1 and 'Add to autostart' or (mode == 2 and 'Change autostart' or 'Remove from autostart')
		end,
		ServiceFunction = function()
			local mode = GetAutoStartMode()
			if mode == 1 then AddToAutostart() elseif mode == 2 then ChangeAutoStart() elseif mode == 3 then RemoveFromAutostart() end
		end
	},
	{
		Name = "AlwaysOnTop",
		Uid = '6C23530D-125E-4E6C-82E8-8C47FA10E604',
		Icons = 
		{
			Enable = icolib.AddIcon('alwaysOnTopDisabled', 'Enable Always on top', 'MirLua/Settings'),
			Disable = icolib.AddIcon('alwaysOnTopEnabled', 'Disable Always on top', 'MirLua/Settings')
		},
		Icon = function(this)
			return db.GetSetting(_, 'CList', 'OnTop', 0) ~= 0 and this.Icons.Disable or this.Icons.Enable
		end,
		Description = function()
			return db.GetSetting(_, 'CList', 'OnTop', 0) ~= 0 and 'Disable Always on top' or "Enable Always on top"
		end,
		ServiceFunction = function ()
			db.WriteSetting(_, 'CList', 'OnTop', 1 - db.GetSetting(_, 'CList', 'OnTop', 0))
		end
	},
	{
		Name = "AutoFileAccept",
		Uid = '54C0529C-E7CE-4564-89E3-C405EEEEC55A',
		Icons = 
		{
			Enable = icolib.AddIcon('autoAcceptDisabled', 'Receive files automatically', 'MirLua/Settings'),
			Disable = icolib.AddIcon('autoAcceptEnabled', 'Receive files asking', 'MirLua/Settings')
		},
		Icon = function(this)
			return db.GetSetting(_, 'SRFile', 'AutoAccept', 0) ~= 0 and this.Icons.Disable or this.Icons.Enable
		end,
		Description = function(this)
			return db.GetSetting(_, 'SRFile', 'AutoAccept', 0) ~= 0 and 'Receive files asking' or 'Receive files automatically'
		end,
		ServiceFunction = function()
			db.WriteSetting(_, 'SRFile', 'AutoAccept', 1 - db.GetSetting(_, 'SRFile', 'AutoAccept', 0))
		end
	},
	{
		Name = "StatusMessageDialogs",
		Uid = '2E67F384-A7D2-4CB4-A84C-CA495AC5FBD2',
		Icons = 
		{
			Enable = icolib.AddIcon('hideStatusMessageDialogs', 'Show status message dialog', 'MirLua/Settings'),
			Disable = icolib.AddIcon('showStatusMessageDialogs', 'Hide status message dialog', 'MirLua/Settings')
		},
		Icon = function(this)
			return db.GetSetting(_, 'SRAway', 'DndNoDlg', 0) == 1 and this.Icons.Disable or this.Icons.Enable
		end,
		Description = function()
			return db.GetSetting(_, 'SRAway', 'DndNoDlg', 0) == 1 and 'Show status message dialog' or 'Hide status message dialog'
		end,
		ServiceFunction = function()
			local awayDlgSettings = { 'IdlNoDlg', 'OtpNoDlg', 'OtlNoDlg', 'InvNoDlg', 'FreeChatNoDlg', 'DndNoDlg', 'OccupiedNoDlg', 'NaNoDlg', 'AwayNoDlg', 'OnNoDlg' }
			local value = 1 - db.GetSetting(_, 'SRAway', 'DndNoDlg', 0)
			for i, setting in pairs(awayDlgSettings) do
				db.WriteSetting(_, 'SRAway', setting, value)
			end
			db.WriteSetting(_, 'NewAwaySys', 'DontPopDlg', 1022 - db.GetSetting(_, 'NewAwaySys', 'DontPopDlg', 0))
		end
	},
--	{
--		Name = "AutoReply",
--		Uid = 'EC451E08-158E-42B3-AD4C-615CF21CCF0D',
--		Icons = 
--		{
--			Enable = icolib.AddIcon('autoreplayDisabled', 'Enable autoreply', 'MirLua/Settings'),
--			Disable = icolib.AddIcon('autoreplayEnabled', 'Disable autoreply', 'MirLua/Settings')
--		},
--		Icon = function(this)
--			return db.GetSetting(_, 'NewAwaySys', 'EnableReply', 0) ~= 0 and this.Icons.Disable or this.Icons.Enable
--		end,
--		Description = function()
--			return db.GetSetting(_, 'NewAwaySys', 'EnableReply', 0) ~= 0 and 'Disable autoreply' or 'Enable autoreply'
--		end,
--		IsVisible = function()
--			return m.ServiceExists("AwaySys/AutoreplyToggle")
--		end,
--		ServiceFunction = function() m.CallService("AwaySys/AutoreplyToggle") end
--	},
	{
		Name = "AutoAway",
		Uid = 'D842B308-8DC3-4B25-A154-80CEB38A67A9',
		Icons = 
		{
			Enable = icolib.AddIcon('autoAwayDetectionDisabled', 'Enable auto-away detection', 'MirLua/Settings'),
			Disable = icolib.AddIcon('autoAwayDetectionEnabled', 'Disable auto-away detection', 'MirLua/Settings')
		},
		Icon = function(this)
			return db.GetSetting(_, 'AdvancedAutoAway', 'ALLPROTOS_OptionFlags', 0) ~= 52 and this.Icons.Disable or this.Icons.Enable
		end,
		Description = function()
			return db.GetSetting(_, 'AdvancedAutoAway', 'ALLPROTOS_OptionFlags', 0) ~= 52 and 'Disable auto-away detection' or 'Enable auto-away detection'
		end,
		IsVisible = function()
			return m.IsPluginLoaded('fadd4a8a-1fd0-4398-83bd-e378b85ed8f1') and db.GetSetting(_, 'StatusManager', 'AdvancedAutoAway_enabled', 0) ~= 0
		end,
		ServiceFunction = function()
			changes.Ask(function()
				local value = db.GetSetting(_, 'AdvancedAutoAway', 'ALLPROTOS_OptionFlags')
				if value == 52 then
					local packValue = db.GetSetting(_, 'AdvancedAutoAway', 'AdvancedAutoAway')
					db.WriteSetting(_, 'AdvancedAutoAway', 'ALLPROTOS_OptionFlags', packValue or 0, db.DBVT_WORD)
				else
					db.WriteSetting(_, 'AdvancedAutoAway', 'AdvancedAutoAway', value, db.DBVT_WORD)
					db.WriteSetting(_, 'AdvancedAutoAway', 'ALLPROTOS_OptionFlags', 52, db.DBVT_WORD)
				end
				m.CallService("Miranda/System/Restart", 1, 0)
			end)
		end
	},
	{
		Name = "AutoIdle",
		Uid = '0CE0D3B3-89A5-49BF-9231-A610E2B4C0C9',
		Icons = 
		{
			Enable = icolib.AddIcon('autoIdleDetectionDisabled', 'Enable auto-idle detection', 'MirLua/Settings'),
			Disable = icolib.AddIcon('autoIdleDetectionEnabled', 'Disable auto-idle detection', 'MirLua/Settings')
		},
		Icon = function(this)
			return db.GetSetting(_, 'Idle', 'UserIdleCheck', 0) ~= 0 and this.Icons.Disable or this.Icons.Enable
		end,
		Description = function()
			return db.GetSetting(_, 'Idle', 'UserIdleCheck', 0) ~= 0 and 'Disable auto-idle detection' or 'Enable auto-idle detection'
		end,
		ServiceFunction = function()
			changes.Ask(function()
				local value = 1 - db.GetSetting(_, 'Idle', 'UserIdleCheck')
				db.WriteSetting(_, 'Idle', 'IdleOnFullScr', value)
				db.WriteSetting(_, 'Idle', 'IdleOnLock', value)
				db.WriteSetting(_, 'Idle', 'IdleOnSaver', value)
				db.WriteSetting(_, 'Idle', 'IdleOnTerminalDisconnect', value)
				db.WriteSetting(_, 'Idle', 'UserIdleCheck', value)
				m.CallService("Miranda/System/Restart", 1, 0)
			end)
		end
	},
	{ 
		Name = "OpenProgramFolder", 
		Description = function () return 'Open program folder' end, 
		Icon = function() return icolib.AddIcon('OpenProgramFolder', 'Open program folder', 'MirLua/Settings') end, 
		Uid = 'C0D9E95F-5D7E-4B21-9ABD-DFB7CDCEED72',
		ServiceFunction = function()
			winapi.ShellExecute('open', m.Parse("%miranda_path%"), nil, 10)
		end
	},
	{
		Name = "OpenInboxFolder",
		Description = function() return 'Open received files folder' end,
		Icon = function () return icolib.AddIcon('OpenReceivedFilesFolder', 'Open received files folder', 'MirLua/Settings') end,
		Uid = '3ED70B42-6E5C-4545-B1B4-88533476187F',
		ServiceFunction = function()
			m.CallService("MirLua/Script/OpenContactInboxDir", 0, 0)
		end
	},
	{
		Name = "Language",
		Description = function() return 'Open language options' end,
		Icon = function () return icolib.AddIcon('OpenLanguagesOptionPage', 'Open language options', 'MirLua/Settings') end,
		Uid = '3D8C42DC-BB9E-4E18-A2A8-44D0278CFEEB',
		ServiceFunction = function()
			options.OpenPage('Customize', 'Languages')
		end
	}
}

for i, v in ipairs(MainMenuItems) do
	local ServiceName = "MirLua/Scripts/Settings/"..v.Name
	v.hMenuItem = clist.AddMainMenuItem({ Name = v:Description(), Uid = v.Uid, Service = ServiceName, Parent = hRoot, Position = i, Icon = v:Icon() })
	m.CreateServiceFunction(ServiceName, function (w, l) v.ServiceFunction(v, w, l) end)
end

m.HookEvent("CList/PreBuildMainMenu", function()
	for i, v in pairs(MainMenuItems) do
		if v.IsVisible then genmenu.ShowMenuItem(v.hMenuItem, v:IsVisible()) end
		genmenu.ModifyMenuItem(v.hMenuItem, v:Description(), v:Icon(), -1)
	end
end)
