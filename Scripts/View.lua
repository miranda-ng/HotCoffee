assert(m)
db = require('m_database')
assert(db)
clist = require('m_clist')
assert(clist)
icolib = require('m_icolib')
assert(icolib)
genmenu = require('m_genmenu')
assert(genmenu)
winapi = require('winapi')
assert(winapi)
changes = require('Changes')
assert(changes)
local globals = require('GlobalFunctions')
assert(globals)

Icons =
{
	Menu =
	{
		View = icolib.AddIcon('menuView', 'View'),
		Skin = icolib.AddIcon('menuSkin', 'Skin', 'MirLua/View'),
		Icons =
		{
			Root = icolib.AddIcon('menuIcons', 'Icons', 'MirLua/View')
		},
		Smileys = 
		{
			Root = icolib.AddIcon('menuSmileys', 'Smileys', 'MirLua/View'),
			Disabled = icolib.AddIcon('packDisabled', 'Smileys pack disabled', 'MirLua/View/Smileys'),
			Enabled = icolib.AddIcon('packEnabled', 'Smileys pack enabled', 'MirLua/View/Smileys')
		},
		Font =
		{
			Root = icolib.AddIcon('menuFont', 'Font', 'MirLua/View'),
			Disabled = icolib.AddIcon('fontDisabled', 'Font disabled', 'MirLua/View/Font'),
			Enabled = icolib.AddIcon('fontEnabled', 'Font enabled', 'MirLua/View/Font')
		},
		IEView =
		{
			Root = icolib.AddIcon('menuIEView', 'IEView', 'MirLua/View'),
			Enabled = icolib.AddIcon('IEViewCBEnabled', 'Enabled', "MirLua/View/IEView"),
			Disabled = icolib.AddIcon('IEViewCBDisabled', 'Disabled', "MirLua/View/IEView"),
		},
		Chats =
		{
			Root = icolib.AddIcon('menuChats', 'Chats', 'MirLua/View'),
			AutoSize =
			{
				Enabled = icolib.AddIcon('ChatsASEnabled', 'Auto size enabled', "MirLua/View/Chats"),
				Disabled = icolib.AddIcon('ChatsASDisabled', 'Auto size disabled', "MirLua/View/Chats"),
			}
		}
	}
}

----- Global Prebuild main menu array -------------------------------------------------------------
PreBuildMenuFuncs = {}

m.HookEvent("CList/PreBuildMainMenu", function()
	for _, v in pairs(PreBuildMenuFuncs) do v() end
end)
---------------------------------------------------------------------------------------------------

hViewRoot = clist.AddMainMenuItem({
	Name = 'View',
	Icon = Icons.Menu.View,
	Uid = '678268C5-7842-4160-9B36-72DF2F3737DB'
})
assert(hViewRoot)

----- IEView --------------------------------------------------------------------------------------
hIERoot = clist.AddMainMenuItem({
	Name = '&IEView',
	Icon = Icons.Menu.IEView.Root,
	Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f71d',
	Parent = hViewRoot,
	Position = 500
})
assert(hIERoot)

IEViewMenuEntires =
{
	{ Name = "Animation",		Description = "Animation",	Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f721' },
	{ Name = "Avatars",		Description = "Avatars",	Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f71f' },
	{ Name = "ShortLinks",		Description = "Short links",	Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f800' },
	{ Name = "ScrollBar",		Description = "Scroll bar",	Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f801' },
	{ Name = "CustomContextMenu",	Description = "Context menu",	Uid = 'a6bf0371-97ed-48cb-ae2d-586b6036f800' },
}

function IEView_RebuildLog() m.CallService("SRMsg/BroadcastMessage", 0, 1335) end

for i, v in ipairs(IEViewMenuEntires) do
	serviceName = "Scripts/IEView/" .. v.Name
	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Service = serviceName, Uid = v.Uid, Position = i, Icon = Icons.Menu.IEView.Disabled, Parent = hIERoot })
	m.CreateServiceFunction(serviceName, function ()
		db.WriteSetting(_, "IEView_Template", v.Name, 1 - db.GetSetting(_, "IEView_Template", v.Name), 1)
		IEView_RebuildLog()
	end)
end

PreBuildMenuFuncs["IEView"] = function()
	genmenu.ShowMenuItem(hIERoot, m.IsPluginLoaded('0495171b-7137-4ded-97f8-ce6fed67d691') and db.GetSetting(_, "IEView_Template", "Modules"))
	for i, v in ipairs(IEViewMenuEntires) do
		genmenu.ModifyMenuItem(v.hMenuItem, nil, (db.GetSetting(_, "IEView_Template", v.Name) == 1 and Icons.Menu.IEView.Enabled or Icons.Menu.IEView.Disabled), -1)
	end
end

m.HookEvent("LangPack/Changed", function(w,l) IEView_RebuildLog() end)
----- /IEView -------------------------------------------------------------------------------------
----- Skins ---------------------------------------------------------------------------------------
hSkinRoot = clist.AddMainMenuItem({
	Name = 'Skin',
	Parent = hViewRoot,
	Icon = Icons.Menu.Skin,
	Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2A000',
	Position = 100
})
assert(hSkinRoot)

Skins =
{
	{ Name = 'Default_Miranda', Description = 'Default Miranda',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2A001' },
	{ Name = 'Default_Windows', Description = 'Windows style',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2A002' },

	{ Name = 'Custom_Miranda', Description = 'Custom Miranda',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2B001' },
	{ Name = 'Custom_Miranda_Dark', Description = 'Custom Miranda Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2B002' },
	{ Name = 'Custom_Miranda_Light', Description = 'Custom Miranda Light',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2B003' },

	{ Name = 'Native_7_Dark',   Description = 'Native 7 Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C001' },
	{ Name = 'Native_7_Light',   Description = 'Native 7 Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C002' },

	{ Name = 'WinStyle_Dark',   Description = 'WinStyle Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C003' },
	{ Name = 'WinStyle_Light',   Description = 'WinStyle Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C004' },

	{ Name = 'Diplomat_Dark',   Description = 'Diplomat Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AA01' },
	{ Name = 'Diplomat_Light',   Description = 'Diplomat Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AA02' },

	{ Name = 'Glamour_Aqua_Dark',    Description = 'Glamour Aqua Dark',    Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AB01' },
	{ Name = 'Glamour_Aqua_Light',    Description = 'Glamour Aqua Light',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AB02' },

	{ Name = 'Glamour_Dark',    Description = 'Glamour Dark',    Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AB03' },
	{ Name = 'Glamour_Light',    Description = 'Glamour Light',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AB04' },

	{ Name = 'GoldTime_Dark',   Description = 'GoldTime Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AC01' },
	{ Name = 'GoldTime_Light',   Description = 'GoldTime Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AC01' },

	{ Name = 'Graphite_Brown_Dark',   Description = 'Graphite Brown Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AD01' },
	{ Name = 'Graphite_Brown_Light',   Description = 'Graphite Brown Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AD02' },
	{ Name = 'Graphite_Gray_Dark',   Description = 'Graphite Gray Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AD03' },
	{ Name = 'Graphite_Gray_Light',   Description = 'Graphite Gray Light',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AD04' },

	{ Name = 'PhotoOne_Dark',   Description = 'PhotoOne Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AE01' },
	{ Name = 'PhotoOne_Light',   Description = 'PhotoOne Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AE02' },

	{ Name = 'Surface_Black',    Description = 'Surface Black',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AF01' },
	{ Name = 'Surface_White',    Description = 'Surface White',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AF02' },

	{ Name = 'Textolite_Dark',  Description = 'Textolite Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BA01' },
	{ Name = 'Textolite_Light',  Description = 'Textolite Light', Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BA02' },

	{ Name = 'Textolite_Gray_Dark',  Description = 'Textolite Gray Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BB01' },
	{ Name = 'Textolite_Gray_Light',  Description = 'Textolite Gray Light', Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BB02' },
}

function WriteTabSRMMSkin(skinName, fontName)
	local patternCustMir = 'Custom_Miranda,Custom_Miranda_Dark,Custom_Miranda_Light'
	local patternLong = 'Glamour_Aqua_Dark,Glamour_Aqua_Light,Glamour_Dark,Glamour_Light,GoldTime_Dark,GoldTime_Light,PhotoOne_Dark,PhotoOne_Light,Surface_Black,Surface_White'
	local patternShort = 'Graphite_Brown_Dark,Graphite_Brown_Light,Graphite_Gray_Dark,Graphite_Gray_Light,Textolite_Dark,Textolite_Light'
	local patternShortNew = 'Diplomat_Dark,Diplomat_Light,Textolite_Gray_Dark,Textolite_Gray_Light'

	local result = 0

	if patternCustMir:find(skinName) and fontName == 'printing' then
		result = 5
	elseif patternCustMir:find(skinName) and fontName == 'handwriting' then
		result = 2
	elseif patternLong:find(skinName) and fontName == 'printing' then
		result = 7
	elseif patternLong:find(skinName) and fontName == 'handwriting' then
		result = 4
	elseif patternShort:find(skinName) and fontName == 'printing' then
		result = 6
	elseif patternShort:find(skinName) and fontName == 'handwriting' then
		result = 3
	elseif patternShortNew:find(skinName) and fontName == 'printing' then
		result = 9
	elseif patternShortNew:find(skinName) and fontName == 'handwriting' then
		result = 6
	end

	if result > 0 then
		winapi.SetIniValue(m.Parse('%miranda_path%\\Skins\\TabSRMM\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'CaptionOffset', result)
	end
end

function ApplySkin(skinName, fontName)
	db.WriteSetting(_, 'PackInfo', 'Skin', skinName)
	db.DeleteModule(_, 'ModernSkin')

	for setting in db.Settings(_, 'SmileyAdd') do
		if setting:find('*-filename') then
			db.DeleteSetting(_, 'SmileyAdd', setting)
		end
	end
	
	WriteTabSRMMSkin(skinName, fontName)

	local noTipperSkin = "Default_Miranda,Default_Windows,WinStyle_Dark,WinStyle_Light";
	
	m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\Skins\\"..skinName..".ini"), 0)
	m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\UserSet\\Fonts\\"..fontName..".ini"), 0)

	m.CallService("TabSRMsg/ReloadSkin")
	m.CallService("IEView/ReloadOptions")
	m.CallService("mToolTip/ReloadSkin", noTipperSkin:find(skinName) and 0 or 1, skinName)
	m.CallService("Popup/LoadSkin", 0, skinName)
	m.CallService("SmileyAdd/Reload")
	
	m.CallService("Font/ReloadSvc")
	m.CallService("Colour/ReloadSvc")
	
	m.CallService("ModernSkinSel/Apply", 0, m.Parse("%miranda_path%\\Skins\\Modern contact list\\"..skinName..".msf"))
end


for i, v in ipairs(Skins) do
	local serviceName = "MirLua/Scripts/ApplySkin/" .. v.Name

	m.CreateServiceFunction(serviceName, function()
		ApplySkin(v.Name, db.GetSetting(_, 'PackInfo', 'Font'))
	end)

	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Parent = hSkinRoot, Service = serviceName, Position = i, Icon = icolib.AddIcon(v.Name, v.Description, 'MirLua/View/Skin'), Uid = v.Uid })
end

PreBuildMenuFuncs["Skins"] = function()
	for i, v in ipairs(Skins) do
		local file = io.open(m.Parse('%miranda_path%\\Skins\\' .. v.Name .. '.ini'), "r")
		genmenu.ShowMenuItem(v.hMenuItem, file ~= nil)
		if file then io.close(file) end
	end
	
	local skinName = db.GetSetting(_, 'PackInfo', 'Skin')
	genmenu.ModifyMenuItem(hSkinRoot, nil, skinName ~= nil and icolib.GetIcon(skinName) or nil, -1)
end
----- /Skins --------------------------------------------------------------------------------------
----- Fonts ---------------------------------------------------------------------------------------
hFontRoot = clist.AddMainMenuItem({
	Name = 'Font',
	Parent = hViewRoot,
	Icon = Icons.Menu.Font.Root,
	Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E0',
	Position = 400
})
assert(hFontRoot)

Fonts =
{
	{ Name = "handwriting", Description = "Handwriting", Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E1' },
	{ Name = "printing",    Description = "Printing",    Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E1' }
}

function ApplyFont(fontName)
	m.ForkThread(function()
		db.WriteSetting(_, 'PackInfo', 'Font', fontName)
		WriteTabSRMMSkin(db.GetSetting(_, 'PackInfo', 'Skin'), fontName)
		m.CallService("TabSRMsg/ReloadSkin", 0, 0)
		m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\UserSet\\Fonts\\" .. fontName .. ".ini"), 0)
		m.CallService("Font/ReloadSvc", 0, 0)
		m.CallService("Colour/ReloadSvc", 0, 0)
	end)
end

for i, v in ipairs(Fonts) do
	local serviceName = "MirLua/Scripts/ApplyFont/" .. v.Name
	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Service = serviceName, Parent = hFontRoot, Icon = Icons.Menu.Font.Disabled, Position = i, Uid = v.Uid })
	m.CreateServiceFunction(serviceName, function()
		ApplyFont(v.Name)
	end)
end

PreBuildMenuFuncs["Fonts"] = function()
	for i, v in ipairs(Fonts) do
		local fontName = db.GetSetting(_, 'PackInfo', 'Font')
		genmenu.ModifyMenuItem(v.hMenuItem, nil, v.Name == fontName and Icons.Menu.Font.Enabled or Icons.Menu.Font.Disabled, -1)
	end
end
----- /Fonts --------------------------------------------------------------------------------------
----- Icons ---------------------------------------------------------------------------------------
hIconsRoot = clist.AddMainMenuItem({
	Name = 'Icons',
	Parent = hViewRoot,
	Icon = Icons.Menu.Icons.Root,
	Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713100',
	Position = 200
})
assert(hIconsRoot)

IconPacks =
{
	{ Name = 'Fugue', Description = 'Fugue', Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713101' },
	{ Name = 'Nova',  Description = 'Nova',  Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713102' },
	{ Name = 'Xpk',   Description = 'Xpk',   Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713103' },
}

function MakeCmdLine(batch)
	local result = ''
	for i, v in ipairs(batch) do
		result = result .. v.Bin .. ' ' .. (v.Args or '') .. ' & '
	end
	return result
end

function ApplyIconPack(name)
	m.HookEvent("Miranda/System/PShutdown", function()
		local Batch = 
		{
			{
				Bin = "pushd",
				Args = m.Parse('%miranda_path%\\Skins\\IEView\\!tools\\icons\\packs\\')
			},
			{ 
				Bin = "7z.exe",
				Args = string.format('x "%s" -aoa -o"%s"', name .. ".7z", m.Parse("%miranda_path%\\Skins\\IEView\\!tools\\icons"))
			},
			{	
				Bin = "popd"
			},
			{
				Bin = "pushd",
				Args = m.Parse("%miranda_path%\\Skins\\IconPacks")
			},
			{
				Bin = "start /wait IconPatcher.exe",
				Args = string.format("/pid=%d /bin=%q /arc=%s /res=* /silent", winapi.GetCurrentProcessId(), m.GetFullPath(), name)
			},
			{
				Bin = "start /wait IconPatcher.exe",
				Args = string.format("/bin=%q /arc=%s_HotCoffee /res=* /verysilent", m.GetFullPath(), name)
			},
			{
				Bin = "start",
				Args = string.format('"" "%s"', m.GetFullPath())
			}
		}
		winapi.ShellExecute(globals.HasAccess(m.Parse("%miranda_path%\\miranda.test")) and "open" or "runas", 'cmd.exe', '/C '.. MakeCmdLine(Batch))
	end)
	m.CallService("CloseAction")
end

for i, v in ipairs(IconPacks) do
	local serviceName = "MirLua/Scripts/ApplyIconPack/" .. v.Name

	m.CreateServiceFunction(serviceName, function()
		changes.Ask(function()
			ApplyIconPack(v.Name)
		end)
	end)

	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Parent = hIconsRoot, Service = serviceName, Position = i, Icon = icolib.AddIcon(v.Name, v.Description, 'MirLua/View/Icons'), Uid = v.Uid })
end

PreBuildMenuFuncs["Icons"] =  function()
	for i, v in ipairs(IconPacks) do
		local file = m.Parse('%miranda_path%\\Skins\\IconPacks\\'..v.Name..'_HotCoffee.7z')
		genmenu.ShowMenuItem(v.hMenuItem, os.rename(file, file))
	end	
end
----- /Icons --------------------------------------------------------------------------------------
----- Smileys -------------------------------------------------------------------------------------
hSmileysRoot = clist.AddMainMenuItem({
	Name = 'Smileys',
	Parent = hViewRoot,
	Icon = Icons.Menu.Smileys.Root,
	Uid = '807EBF36-8A4B-472B-856A-FE4DB4EEF7E0',
	Position = 300
})
assert(hSmileysRoot)

function ApplySmilePack(name, type, background)
	local smilesRoot = m.Parse("%miranda_path%\\Skins\\Smileys")
	winapi.CopyFile(string.format("%s\\%s\\%s\\%s_%s_pack.msl", smilesRoot, background, type, type, name), string.format("%s\\%s\\%s\\%s.msl", smilesRoot, background, type, type))
end

SmileyPacks = 
{
	{ Name = 'big',   Description = 'Big pack',   Uid = '807EBF36-8A4B-472B-856A-FE4DB4EEF7E1' },
	{ Name = 'small', Description = 'Small pack', Uid = '807EBF36-8A4B-472B-856A-FE4DB4EEF7E2' }
}

for i, v in ipairs(SmileyPacks) do
	local serviceName = "MirLua/Scripts/ApplySmileyPack/" .. v.Name

	m.CreateServiceFunction(serviceName, function()
		local fileName = string.format(m.Parse("%miranda_path%\\%s"), db.GetSetting(_, 'SmileyAdd', 'clist-filename'))
		local file = io.open(fileName, "r")
		if not file then return end
		local line = file:read('*l')
		if line:lower():find(v.Name) then
			io.close(file)
			return
		end
		io.close(file)

		local types = { 'emoji', 'kolobok', 'mra', 'skype' }
		for i, type in pairs(types) do
			ApplySmilePack(v.Name, type, '_dark')
			ApplySmilePack(v.Name, type, '_light')
		end
		m.CallService("SmileyAdd/Reload")
	end)

	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Parent = hSmileysRoot, Service = serviceName, Position = i, Uid = v.Uid })
end	

PreBuildMenuFuncs["Smileys"] = function()
	local fileName = m.Parse('%miranda_path%\\Skins\\Smileys\\_light\\emoji\\emoji.msl')
	
	genmenu.ShowMenuItem(hSmileysRoot, (os.rename(fileName, fileName) and m.IsPluginLoaded('bd542bb4-5ae4-4d0e-a435-ba8dbe39607f')))

	local file = io.open(fileName, "r")
	local line = file:read('*l'):lower()
	
	for i, v in ipairs(SmileyPacks) do
		genmenu.ModifyMenuItem(v.hMenuItem, nil, line:find(v.Name) and Icons.Menu.Smileys.Enabled or Icons.Menu.Smileys.Disabled, -1)
	end
	io.close(file)
end
----- /Smileys ------------------------------------------------------------------------------------
----- Chats ---------------------------------------------------------------------------------------
hChatsRoot = clist.AddMainMenuItem({
	Name = 'Chats',
	Icon = Icons.Menu.Chats.Root,
	Uid = 'a6bf0371-97ed-48cb-ae2d-496b6036f71d',
	Parent = hViewRoot,
	Position = 600
})
assert(hChatsRoot)

hChatsAutoSizeInput = clist.AddMainMenuItem({
	Name = 'Auto-size input area',
	Icon = Icons.Menu.Chats.AutoSize.Disabled,
	Uid = 'a6bf0371-97ed-48cb-ae2d-497b6036f71d',
	Parent = hChatsRoot,
	Service = 'Scripts/View/AutoSizeArea',
	Position = 100
})
assert(hChatsAutoSizeInput)

m.CreateServiceFunction('Scripts/View/AutoSizeArea', function()
--	if winapi.MessageBox(m.NULL, m.Translate('The changes will take effect only after closing all dialog windows. Continue?'), m.Translate('Changes...'), 36) ~= 6 then
--	  return
--	end
 	local blob = db.GetSetting(_, "Tab_SRMsg", "CNTW_Def_Flags")
	  if blob & 16384 ~= 0 then
	    blob = blob & (~16384)
	  else
	    blob = blob | 16384
	end  
	db.WriteSetting(_, "Tab_SRMsg", "CNTW_Def_Flags", blob, db.DBVT_DWORD)
--	m.CallService("SRMsg/BroadcastMessage", 0, 16)
	m.CallService("TabSRMsg/ReloadSettings", 0, 0)
	m.CallService("TabSRMsg/ReloadSkin", 0, 0)
end)

PreBuildMenuFuncs["Chats"] = function()
	genmenu.ShowMenuItem(hChatsRoot, m.IsPluginLoaded('6ca5f042-7a7f-47cc-a715-fc8c46fbf434'))
	genmenu.ModifyMenuItem(hChatsAutoSizeInput, nil, ((db.GetSetting(_, "Tab_SRMsg", "CNTW_Def_Flags") & 16384) == 0) and Icons.Menu.Chats.AutoSize.Disabled or Icons.Menu.Chats.AutoSize.Enabled , -1)
end
----- /Chats --------------------------------------------------------------------------------------