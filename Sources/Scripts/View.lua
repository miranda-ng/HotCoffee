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
			Disabled = icolib.AddIcon('IEViewCBDisabled', 'Disabled', "MirLua/View/IEView"),
			Enabled = icolib.AddIcon('IEViewCBEnabled', 'Enabled', "MirLua/View/IEView"),
		},
		Chats =
		{
			Root = icolib.AddIcon('menuChats', 'Chats', 'MirLua/View'),
			AutoSize =
			{
				Disabled = icolib.AddIcon('ChatsASDisabled', 'Auto size disabled', "MirLua/View/Chats"),
				Enabled = icolib.AddIcon('ChatsASEnabled', 'Auto size enabled', "MirLua/View/Chats"),
			},
			TabCaption =
			{
				Disabled = icolib.AddIcon('TabCaptionDisabled', 'Caption frame disabled', 'MirLua/View/Chats'),
				Enabled = icolib.AddIcon('TabCaptionEnabled', 'Caption frame enabled', 'MirLua/View/Chats')
			},
			ScrollBar =
			{
				Disabled = icolib.AddIcon('ScrollBarDisabled', 'Scroll bar disabled', 'MirLua/View/Chats'),
				Enabled = icolib.AddIcon('ScrollBarEnabled', 'Scroll bar enabled', 'MirLua/View/Chats')
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
	{ Name = 'Current_Windows', Description = 'Current Windows',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2A002' },

	{ Name = 'Custom_Miranda', Description = 'Custom Miranda',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2B001' },
	{ Name = 'Custom_Miranda_Dark', Description = 'Custom Miranda Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2B002' },
	{ Name = 'Custom_Miranda_Light', Description = 'Custom Miranda Light',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2B003' },

	{ Name = 'Native_7_Dark',   Description = 'Native 7 Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C001' },
	{ Name = 'Native_7_Light',   Description = 'Native 7 Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C002' },

	{ Name = 'WinStyle_Classic_Dark',   Description = 'WinStyle Classic Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C003' },
	{ Name = 'WinStyle_Classic_Light',   Description = 'WinStyle Classic Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C004' },

	{ Name = 'WinStyle_Dark',   Description = 'WinStyle Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C005' },
	{ Name = 'WinStyle_Light',   Description = 'WinStyle Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2C006' },

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

	{ Name = 'Notepad_Dark',   Description = 'Notepad Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D3AE01' },
	{ Name = 'Notepad_Light',   Description = 'Notepad Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D3AE02' },

	{ Name = 'PhotoOne_Dark',   Description = 'PhotoOne Dark',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AE01' },
	{ Name = 'PhotoOne_Light',   Description = 'PhotoOne Light',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AE02' },

	{ Name = 'Surface_Black',    Description = 'Surface Black',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AF01' },
	{ Name = 'Surface_White',    Description = 'Surface White',   Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2AF02' },

	{ Name = 'Textolite_Brown_Dark',  Description = 'Textolite Brown Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BA01' },
	{ Name = 'Textolite_Brown_Light',  Description = 'Textolite Brown Light', Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BA02' },
	{ Name = 'Textolite_Gray_Dark',  Description = 'Textolite Gray Dark',  Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BA03' },
	{ Name = 'Textolite_Gray_Light',  Description = 'Textolite Gray Light', Uid = 'D34F56EC-3E9D-4502-B700-5F49A6D2BA04' },
}

function WriteTabSRMMSkin(skinName, fontName)
	local pattern_1 = 'Custom_Miranda,Custom_Miranda_Dark,Custom_Miranda_Light,Default_Miranda'
	local pattern_2 = 'Graphite_Brown_Dark,Graphite_Brown_Light,Graphite_Gray_Dark,Graphite_Gray_Light'
	local pattern_3 = 'Glamour_Aqua_Dark,Glamour_Aqua_Light,Glamour_Dark,Glamour_Light,GoldTime_Dark,GoldTime_Light,PhotoOne_Dark,PhotoOne_Light'
	local pattern_4 = 'WinStyle_Classic_Dark,WinStyle_Classic_Light'
	local pattern_5 = 'Diplomat_Dark,Diplomat_Light,Textolite_Brown_Dark,Textolite_Brown_Light,Textolite_Gray_Dark,Textolite_Gray_Light'
	local pattern_6 = 'Surface_Black,Surface_White'
	local pattern_7 = 'Notepad_Dark,Notepad_Light'

	local result = 0

	if pattern_1:find(skinName) and fontName == 'Printing' then
		result = 5
	elseif pattern_1:find(skinName) and fontName == 'Handwriting' then
		result = 2
	elseif pattern_2:find(skinName) and fontName == 'Printing' then
		result = 6
	elseif pattern_2:find(skinName) and fontName == 'Handwriting' then
		result = 3
	elseif pattern_3:find(skinName) and fontName == 'Printing' then
		result = 7
	elseif pattern_3:find(skinName) and fontName == 'Handwriting' then
		result = 4
	elseif pattern_4:find(skinName) and fontName == 'Printing' then
		result = 8
	elseif pattern_4:find(skinName) and fontName == 'Handwriting' then
		result = 5
	elseif pattern_5:find(skinName) and fontName == 'Printing' then
		result = 9
	elseif pattern_5:find(skinName) and fontName == 'Handwriting' then
		result = 6
	elseif pattern_6:find(skinName) and fontName == 'Printing' then
		result = 12
	elseif pattern_6:find(skinName) and fontName == 'Handwriting' then
		result = 9
	elseif pattern_7:find(skinName) and fontName == 'Printing' then
		result = 13
	elseif pattern_7:find(skinName) and fontName == 'Handwriting' then
		result = 10
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

	local noTipperSkin = "Current_Windows,Current_Windows_Dark";
	
	m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\Skins\\"..skinName..".ini"), 0)
	m.CallService("DB/Ini/ImportFile", m.Parse("%miranda_path%\\UserSet\\Fonts\\"..fontName..".ini"), 0)
	WriteTabSRMMSkinTabCaption(db.GetSetting(_, 'PackInfo', 'Skin'), db.GetSetting(_, 'PackInfo', 'TabCaption'))
	WriteScrollBar(db.GetSetting(_, "PackInfo", "TabScrollBar", 1))

	m.CallService("TabSRMsg/ReloadSkin")
	m.CallService("IEView/ReloadOptions")
	m.CallService("mToolTip/ReloadSkin", noTipperSkin:find(skinName) and 0 or 1, skinName)
	m.CallService("Popup/LoadSkin", 0, skinName)
	m.CallService("SmileyAdd/Reload")
	
	m.CallService("Font/ReloadSvc")
	m.CallService("Colour/ReloadSvc")
	
	m.CallService("ModernSkinSel/Apply", 0, m.Parse("%miranda_path%\\Skins\\Modern contact list\\"..skinName..".msf"))

	local skinExec = "/C copy "
	  ..m.Parse("\"%miranda_path%\\Skins\\"..skinName..".ini\" ")
	  ..m.Parse("\"%miranda_path%\\Profiles\\autoexec_skin.ini\"")
	winapi.ShellExecute('open', 'cmd.exe', skinExec)
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
	{ Name = "Handwriting", Description = "Handwriting", Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E1' },
	{ Name = "Printing",    Description = "Printing",    Uid = '807EBF36-8A4B-472B-856A-FF4DB4EEF7E1' }
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
	{ Name = 'Ice',   Description = 'Ice',   Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713102' },
	{ Name = 'Nova',  Description = 'Nova',  Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713103' },
	{ Name = 'Xpk',   Description = 'Xpk',   Uid = '332BB7E0-B39A-4938-AEA1-A6A8FE713104' },
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
	Position = 100300
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
----- ScrollBar -----------------------------------------------------------------------------------
hScrollBarEnabled = clist.AddMainMenuItem({
	Name = 'Scroll bar',
	Icon = Icons.Menu.Chats.ScrollBar.Disabled,
	Uid = 'a6bf0fff-97ed-48cb-ae2d-497b6036f71d',
	Parent = hChatsRoot,
	Service = 'Scripts/View/ScrollBar',
	Position = 200400
})
assert(hScrollBarEnabled)

function WriteScrollBar(new)
    db.WriteSetting(_, "Tab_SRMsg", "disableVScroll", 1 - new, db.DBVT_BYTE)
    db.WriteSetting(_, "HistoryPlusPlus", "NoLogScrollBar", 1 - new, db.DBVT_BYTE)
    db.WriteSetting(_, "PackInfo", "TabScrollBar", new, db.DBVT_BYTE)
    
    local skinName = db.GetSetting(_, 'PackInfo', 'Skin')
    winapi.SetIniValue(m.Parse('%miranda_path%\\Skins\\TabSRMM\\'..skinName..'\\'..skinName..'.tsk'), 'Global', 'NoScrollbars', 1 - new)
    
    m.CallService("TabSRMsg/ReloadSkin", 0, 0)
end

m.CreateServiceFunction('Scripts/View/ScrollBar', function()
    local current = db.GetSetting(_, "PackInfo", "TabScrollBar", 1)
    local new = 1 - (current or 1)
    
    WriteScrollBar(new)
end)

PreBuildMenuFuncs["ScrollBar"] = function()
	genmenu.ModifyMenuItem(hScrollBarEnabled, nil, db.GetSetting(_, "PackInfo", "TabScrollBar") == 1 and Icons.Menu.Chats.ScrollBar.Enabled or Icons.Menu.Chats.ScrollBar.Disabled , -1)
end
----- /ScrollBar ----------------------------------------------------------------------------------
----- TabCaption ----------------------------------------------------------------------------------
function WriteTabSRMMSkinTabCaption(skinName, CaptionSize)
	local pattern_1 = 'Custom_Miranda,Custom_Miranda_Dark,Custom_Miranda_Light,Default_Miranda'
	local pattern_2 = 'Graphite_Brown_Dark,Graphite_Gray_Light'
	local pattern_3 = 'Glamour_Aqua_Dark,Glamour_Aqua_Light,Glamour_Dark,Glamour_Light'
	local pattern_4 = 'WinStyle_Classic_Dark,WinStyle_Classic_Light'
	local pattern_5 = 'Diplomat_Dark,Diplomat_Light'
	local pattern_6 = 'Surface_Black,Surface_White,Textolite_Brown_Dark,Textolite_Brown_Light,Textolite_Gray_Dark,Textolite_Gray_Light'
	local pattern_7 = 'GoldTime_Dark,GoldTime_Light'
	local pattern_8 = 'Graphite_Brown_Light,Graphite_Gray_Dark,PhotoOne_Dark,PhotoOne_Light'
	local pattern_9 = 'Notepad_Dark,Notepad_Light'

	local result = 0

	if pattern_1:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 15
	elseif pattern_1:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 19

	elseif pattern_2:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 17
	elseif pattern_2:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 21

	elseif pattern_3:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 43
	elseif pattern_3:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 47

	elseif pattern_4:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 19
	elseif pattern_4:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 23

	elseif pattern_5:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 28
	elseif pattern_5:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 32

	elseif pattern_6:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 24
	elseif pattern_6:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 28

	elseif pattern_7:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 29
	elseif pattern_7:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 33

	elseif pattern_8:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 18
	elseif pattern_8:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 22

	elseif pattern_9:find(skinName) and CaptionSize == 'CaptionLow' then
		result = 51
	elseif pattern_9:find(skinName) and CaptionSize == 'CaptionHigh' then
		result = 55
	end

	if result > 0 then
		winapi.SetIniValue(m.Parse('%miranda_path%\\Skins\\TabSRMM\\'..skinName..'\\'..skinName..'.tsk'), 'WindowFrame', 'Caption', result)
	end
end

TabCaptions =
{
	{ Name = "CaptionLow",  Description = "Caption frame low",     Uid = '808EBF36-8A4B-472B-956A-FF4DB4EEF7E1' },
	{ Name = "CaptionHigh", Description = "Caption frame high",    Uid = '801EBF36-8A4B-472B-956A-FF4DB4EEF7E1' }
}

function ApplyTabCaption(fontName)
	m.ForkThread(function()
		db.WriteSetting(_, 'PackInfo', 'TabCaption', fontName)
		WriteTabSRMMSkinTabCaption(db.GetSetting(_, 'PackInfo', 'Skin'), fontName)
		m.CallService("TabSRMsg/ReloadSkin", 0, 0)
		m.CallService("Font/ReloadSvc", 0, 0)
		m.CallService("Colour/ReloadSvc", 0, 0)
	end)
end

for i, v in ipairs(TabCaptions) do
	local serviceName = "MirLua/Scripts/ApplyTabCaption/" .. v.Name
	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Description, Service = serviceName, Parent = hChatsRoot, Icon = Icons.Menu.Chats.TabCaption.Disabled, Position = i, Uid = v.Uid })
	m.CreateServiceFunction(serviceName, function()
		ApplyTabCaption(v.Name)
	end)
end

PreBuildMenuFuncs["TabCaption"] = function()
	for i, v in ipairs(TabCaptions) do
		local fontName = db.GetSetting(_, 'PackInfo', 'TabCaption')
		genmenu.ModifyMenuItem(v.hMenuItem, nil, v.Name == fontName and Icons.Menu.Chats.TabCaption.Enabled or Icons.Menu.Chats.TabCaption.Disabled, -1)
	end
end
----- /TabCaption ---------------------------------------------------------------------------------
