var modules = {}

function RegisterModule(name, module)
{
	if (module.init)
	{
		if (module.init())
			modules[name] = module;
	}
}

(external.db_get(0, "IEView_Template", "Modules") || "context_menu|font|juick|tzers").split("|").forEach(function(item)
{
	loadScript(ToolsPath + "scripts/modules/" + item + ".js", 0);
});

function Modules_MessageBodyWorker(el, p)
{
	for (var i in modules)
	{
		var module = modules[i];
		if (module.MessageBodyHandler)
			if (module.MessageBodyHandler.apply(el, p || []) === false)
				return false;
	}
}