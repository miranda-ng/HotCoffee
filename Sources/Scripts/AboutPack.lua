assert(m)
local db = require('m_database')
assert(db)
local clist = require('m_clist')
assert(clist)
local icolib = require('m_icolib')
assert(icolib)
local genmenu = require('m_genmenu')
assert(genmenu)
local winapi = require('winapi')
assert(winapi)
local changes = require('Changes')
assert(changes)

local hRoot = clist.AddMainMenuItem({
  Name = 'About pack',
  Icon = icolib.AddIcon('menuAboutPack', 'About pack'),
  Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98370'
})
assert(hRoot)

local goToWiki = function()
  local value = db.GetSetting(_, 'Langpack', 'Current')
  if value == 'langpack_russian.txt' then
    winapi.ShellExecute('open', 'http://wiki.miranda-ng.org/index.php?title=%D0%A1%D0%B1%D0%BE%D1%80%D0%BA%D0%B8/Miranda_NG_HotCoffee')
  elseif value == 'langpack_polish.txt' then
     winapi.ShellExecute('open', 'http://wiki.miranda-ng.org/index.php?title=Paczki/Miranda_NG_HotCoffee')
   else
     winapi.ShellExecute('open', 'http://wiki.miranda-ng.org/index.php?title=Packs_(en)/Miranda_NG_HotCoffee')
   end
end

local goToRuboard = function()
  winapi.ShellExecute('open', 'http://forum.ru-board.com/topic.cgi?forum=5&topic=16720&glp#lt')
end

local goToForum = function()
  winapi.ShellExecute('open', 'http://forum.miranda-ng.org/index.php?topic=45.50000')
end

local goToHomepage = function()
  winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee')
end

local goToBlog = function()
  local value = db.GetSetting(_, 'Langpack', 'Current')
  if value == 'langpack_russian.txt' then
    winapi.ShellExecute('open', 'http://hotcoffee-im.blogspot.com')
  elseif value == 'langpack_polish.txt' then
    winapi.ShellExecute('open', 'http://im-hotcoffee.blogspot.com')
  else
    winapi.ShellExecute('open', 'http://im-hotcoffee.blogspot.com')
  end
end

local goToFaq = function()
  local value = db.GetSetting(_, 'Langpack', 'Current')
  if value == 'langpack_russian.txt' then
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/faq')
  elseif value == 'langpack_polish.txt' then
      winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/faq')
  else
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/faq')
  end
end

local goToUseful = function()
  local value = db.GetSetting(_, 'Langpack', 'Current')
  if value == 'langpack_russian.txt' then
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/useful')
  elseif value == 'langpack_polish.txt' then
      winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/useful')
  else
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/useful')
  end
end

local goToCopyright = function()
  local value = db.GetSetting(_, 'Langpack', 'Current')
  if value == 'langpack_russian.txt' then
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/licenses')
  elseif value == 'langpack_polish.txt' then
      winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/licenses')
  else
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/licenses')
  end
end

local goToDonate = function()
  local value = db.GetSetting(_, 'Langpack', 'Current')
  if value == 'langpack_russian.txt' then
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/donate')
  elseif value == 'langpack_polish.txt' then
      winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/donate')
  else
    winapi.ShellExecute('open', 'https://www.miranda-ng.org/hotcoffee/donate')
  end
end

local openAbout = function()
  local text = ''
    .. m.Translate('Handle') .. ': ' .. db.GetSetting(_, 'PackInfo', 'Name') .. '\r\n'
    .. m.Translate('Version') .. ': ' .. db.GetSetting(_, 'PackInfo', 'Version') .. '\r\n'
    .. m.Translate('Release date') .. ': ' .. db.GetSetting(_, 'PackInfo', 'ReleaseDate') .. '\r\n'
    .. m.Translate('Core') .. ': ' .. m.Version .. '\r\n' .. '\r\n'
    .. m.Translate('Production') .. ': ' .. db.GetSetting(_, 'PackInfo', 'Production') .. '\r\n'
    .. m.Translate('Contacts') .. ': ' .. db.GetSetting(_, 'PackInfo', 'Contacts')
  winapi.MessageBox(_, text, m.Translate('About pack'))
end

local items =
{
  { Name = 'wiki', Description = 'Wiki on Miranda NG', Position = 1, Service = goToWiki, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98371' },
  { Name = 'ruboard', Description = 'Support on Ru-Board', Position = 100002, Service = goToRuboard, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98372' },
  { Name = 'forum', Description = 'Support on Miranda NG', Position = 100003, Service = goToForum, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98373' },
  { Name = 'homepage', Description = 'Homepage', Position = 200004, Service = goToHomepage, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98374' },
  { Name = 'blog', Description = 'Blog', Position = 200005, Service = goToBlog, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98375' },
  { Name = 'faq', Description = 'FAQ', Position = 200006, Service = goToFaq, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98376' },
  { Name = 'useful', Description = 'Useful to know', Position = 200007, Service = goToUseful, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98377' },
  { Name = 'copyright', Description = 'Copyright', Position = 200008, Service = goToCopyright, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98378' },
  { Name = 'donate', Description = 'Donate', Position = 200009, Service = goToDonate, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B98379' },
  { Name = 'about', Description = 'About pack', Position = 300010, Service = openAbout, Uid = '7BA9CD40-B6DC-43DA-AEA9-C863A2B9837A' },
}

local function registerMenuItem(name, description, position, serviceFunc, uid)
  local serviceName = "Scripts/About/"..name
  local hService = m.CreateServiceFunction(serviceName, serviceFunc)
  assert(hService)

  local hMenuItem = clist.AddMainMenuItem({
    Name = description,
    Parent = hRoot,
    Service = serviceName,
    Position = position,
    Icon = icolib.AddIcon(name, description, m.Translate('MirLua/About pack')),
    Uid = uid
  })
  assert(hMenuItem)
end

for k, v in pairs(items) do
  registerMenuItem(v.Name, v.Description, v.Position, v.Service, v.Uid)
end
