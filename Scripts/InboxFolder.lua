local popup = require("m_popup")
local db = require('m_database')
local w32 = require("winapi")
local sounds = require("m_sounds")
----------------------------------------------
function isFile(name)
    if not os.rename(name, name) then return false end
    local f = io.open(name)
    if f then
        f:close()
        return true
    end
    return false
end

function isDir(name)	return (os.rename(name,name) and not isFile(name))	end
----------------------------------------------

function ShowNotification(text)
	m.CallService('Popup/ShowMessageW', m.Utf8DecodeW(text), 2)
end

function OpenFailed(isGlobalFolder)
	ShowNotification(m.Translate(isGlobalFolder and "Common folder for received files doesn't exist." or "Contact's folder doesn't exist.\nOpening common folder for received files."))
	sounds.PlaySound("FileDenied")
end

function OpenDirIfExist(dir, isGlobalFolder)
	--print(dir)
	if isDir(dir) then
		w32.ShellExecute("open", "explorer.exe", dir, 1)
		return true
	end
	OpenFailed(isGlobalFolder)
	return false
end


m.CreateServiceFunction("MirLua/Script/OpenContactInboxDir", function(hContact, lParam)
	local inboxPath = m.Parse(db.GetSetting(0, "SRFile", "RecvFilesDirAdv")):gsub("%%", "%%%%"):match("^(.*)[/\\](.*[/\\])$", 1)
	if hContact ~= m.NULL then
		local cInboxPath = string.format("%s\\%s (%s)\\", inboxPath, db.GetContactInfo(tonumber(hContact), "Uid"), db.GetContactInfo(tonumber(hContact), "DisplayName"))
		if not OpenDirIfExist(cInboxPath, false) then
			OpenDirIfExist(inboxPath, true)
		end
	else
		OpenDirIfExist(inboxPath, true)
	end
end)