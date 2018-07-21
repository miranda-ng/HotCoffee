local t = {}

t.Check = function(path)
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

local mt = {}

mt.__call = function(v, p)
	return v.Check(p)
end

setmetatable(t, mt)

return t