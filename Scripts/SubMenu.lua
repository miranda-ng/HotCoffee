clist = require('m_clist')
icolib = require('m_icolib')
genmenu = require('m_genmenu')
db = require('m_database')

MainMenuItems = 
{
	{ Name = 'History', Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f71c', IsVisible = function() return m.IsPluginLoaded('B92282AC-686B-4541-A12D-6E9971A253B7') end },
	{ Name = 'Update', Uid = 'e58086a7-78bc-4f13-97f2-9d18627c0944', IsVisible = function() return m.IsPluginLoaded('29517be5-779a-48e5-8950-cb4de1d43172') or m.IsPluginLoaded('968def4a-bc60-4266-ac08-754ce721db5f') end }
}

ContactMenuItems = 
{
	{ Name = 'Settings', Uid = '299D3276-02BF-40B3-8D2E-63DA2F663CF3' },
	{ Name = 'History', Uid = 'a6bf0371-97ed-48cb-ae2d-486b6036f71c', IsVisible = function(w, l) local hContact = tonumber(w); return db.GetEventCount(hContact) ~= 0 or db.GetSetting(hContact, db.GetSetting(hContact, "Protocol", "p"), "ChatRoom", 0) ~= 0 end },
	{ Name = 'Visibility', Uid = '998a216e-aa88-4fb7-a9c5-fca4ff47dc51' }
}

m.HookEvent("CList/PreBuildMainMenu", function(w, l)
	for _, v in ipairs(MainMenuItems) do
		if v.IsVisible then
			genmenu.ShowMenuItem(v.hMenuItem, v.IsVisible(w, l))
		end
	end
end)

m.HookEvent("CList/PreBuildContactMenu", function(w, l)
	for _, v in ipairs(ContactMenuItems) do
		if v.IsVisible then
			genmenu.ShowMenuItem(v.hMenuItem, v.IsVisible(w, l))
		end
	end
end)

for _, v in ipairs(MainMenuItems) do
	v.hMenuItem = clist.AddMainMenuItem({ Name = v.Name, Uid = v.Uid, Icon = icolib.AddIcon('menu'..v.Name, v.Name) })
end

for _, v in ipairs(ContactMenuItems) do
	v.hMenuItem = clist.AddContactMenuItem({ Name = v.Name, Uid = v.Uid, Icon = icolib.AddIcon('menu'..v.Name, v.Name) })
end