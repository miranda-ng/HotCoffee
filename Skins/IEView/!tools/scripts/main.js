function loadCSS(href, title, type) {
  var cssLink = $("<link>");
  $("head").append(cssLink); //IE hack: append before setting href
  cssLink.attr({ rel:  type ? "stylesheet" : "alternate stylesheet", type: "text/css", href: href, title : title });
}

config.skin = document.title;

var cssLink = $("<link>");
$("head").append(cssLink);
cssLink.attr({ rel: "stylesheet", type: "text/css", href: "styles/" + config.skin + ".css", media: "screen" });
	
loadCSS("./!tools/fonts/" + config.font.name + ".css", "", 1);
loadCSS("./!tools/fonts/" + config.font.name + "/big.css", "A++++", 0);
loadCSS("./!tools/fonts/" + config.font.name + "/great.css", "A+++", 0);
loadCSS("./!tools/fonts/" + config.font.name + "/large.css", "A++", 0);
loadCSS("./!tools/fonts/" + config.font.name + "/medium.css", "A+", 0);
loadCSS("./!tools/fonts/" + config.font.name + "/norm.css", "A", 1);
loadCSS("./!tools/fonts/" + config.font.name + "/small.css", "A-", 0);
loadCSS("./!tools/fonts/" + config.font.name + "/xsmall.css", "A--", 0);

function loaded()
{
	if (config.avatars.enable)
		$("div.avatar").css("display", "inline-block");
		
	if (config.media.enable)
		$($("div#messagebody").get().reverse()).each(function()
		{
			var type = Number($(this).attr("type"));
			if (type == 9  || 
				type == 10 || 
				type == 11 || 
				type == 12 || 
				type == 13 || 
				type == 14 || 
				type == 15 || 
				type == 16 || 
				type == 24 || 
				type == 26)
			{
				Modules_MessageBodyWorker(this);
				media(this); 
			}
		});
	
	$("div#filebody").each(function ()
	{
		if (/(20|22)/i.test($(this).attr("type")))
		{
			file(this);
		}
	});
}

function loadScript(path, async)
{
	var script = document.createElement('script');
	script.src = path;
	script.async = async;
	document.getElementsByTagName("head")[0].appendChild(script);
	return script;
}

["animation", "modules", "data", "translation", "utils", "media", "files"]
.forEach(function(item, i, arr)
{
	var script = loadScript(ToolsPath + "scripts/" + item + ".js", i);
	if (i == arr.length - 1)
	{
		script.onreadystatechange = loaded;
	}
});

function OnNewMessage()
{
	var self = $("div#messagebody:last");
	var type = Number(self.attr("type"));
	Modules_MessageBodyWorker(self, [(config.tZers.autoplay && (type == 1 || type == 3 || type == 4 || type == 5 || type == 23))]);
	media(self.get());
	
	if (config.avatars.enable) $("div.avatar:last").css("display", "inline-block");
}

function OnNewFile()
{
	var self = $("div#filebody:last");
	file(self);
}
