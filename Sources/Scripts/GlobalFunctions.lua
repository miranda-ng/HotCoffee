assert(m)
local winapi = require("winapi")
assert(winapi)

local t = {}

t.Restart = function(w, l)
  m.CallService('Miranda/System/Restart', w, l)
  local batch = "timeout /t 15 /nobreak && taskkill /f /pid {processId} && start \"\" \"{processName}\"" % {
    ["processId"] = winapi.GetCurrentProcessId(),
    ["processName"] = m.GetFullPath()
  }
  winapi.ShellExecute(t.HasAccess() and "open" or "runas", 'cmd.exe', '/C '.. batch)
end

t.HasAccess = function(path)
	if not path then
		path = m.Parse("%miranda_path%\\miranda.test")
	end
	local file = io.open(path, 'w')
	if file then
		file:close()
		os.remove(path)
		return true
	end
	return false
end

t.FileExists = function(path)
	if not path then
		return false
	end
	local file = io.open(path, 'r')
	if file then
		file:close()
		return true
	end
	return false
end

return t