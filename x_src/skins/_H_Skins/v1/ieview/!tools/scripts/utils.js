function createImage(_img, _img_hover, cssClass)
{
	var obj = $(cssClass == undefined ? "<img>" : "<img class=\"" + cssClass + "\">").attr("src", _img);
	if (_img_hover != null)
		obj.mouseover(function() { this.src = _img_hover }).mouseout (function() { this.src = _img });
	return obj;
}

function getFileIcon(ext)
{
	return filetypes_icons[ext.toLowerCase()] || filetypes_icons["default"];
}

function ShortLink(link)
{
	return config.shortlink.global ? 
		link.replace(/(\/\/[a-zA-Z0-9._% -]*\/)([a-zA-Z0-9._% -~\/]*)(\/[a-zA-Z0-9._% -~]*)/g, "$1...$3").replace(/(\/\/[a-zA-Z0-9._% -~:\/]*).php([a-zA-Z0-9._% -~:\/]*)/g, "$1.php?...")
		: link;
}

function ShortLocalLink(link)
{
	return config.shortlink.localy ? link.replace(/([a-zA-Z]:)\\[a-zA-Z0-9._% -~:]*\\(.*)/g, "$1\\...\\$2") : link; 
}

$.extend(
{ 
	jYoutube: function(url) { return (url.match(/^.*(youtu.be\/|v\/|e\/|u\/\w+\/|embed\/|v=)([^#\&\?]*).*/)[2] || "" ); },
	openFile: function(path) { return external.win32_ShellExecute("open", "explorer.exe", path, 0, 1); },
	openFolder: function(path) { return external.win32_ShellExecute("open", "explorer.exe", "/select, \"" + path + "\"", 0, 1); }
});

$.fn.resize = function(k)
{
	var img = this.get(0);
	if (k != undefined)
	{
		img.style.height = k * img.height;
		img.style.width = k * img.width;
	}
	else
	{
		if(img.width > config.media.inline_images.maxwidth) 
		{
			img.style.height = (img.height * config.media.inline_images.maxwidth / img.width); 
			img.style.width = config.media.inline_images.maxwidth; 
		} 
		if(img.height > config.media.inline_images.maxheight) 
		{
			img.style.width = (img.width * config.media.inline_images.maxheight / img.height) 
			img.style.height = config.media.inline_images.maxheight;
		}
	}

	return this;
}

var tmpProportion = 4/3;

$.fn.proportion = function(m)
{
	var obj = this.get(0);
	switch(m)
	{
		case 1:
			if (tmpProportion < 20 / 9)
			{
				tmpProportion += 1 / 18;
				obj.width = obj.width * tmpProportion / (tmpProportion - 1 / 18);
			}
			break;
		case -1:
			if (tmpProportion > 9 / 9)
			{
				tmpProportion -= 1 / 18;
				obj.width = obj.width * tmpProportion / (tmpProportion + 1 / 18);
			}
			break;
		default:
			tmpProportion = 4/3;
			obj.width = obj.height * tmpProportion;
	}
	return this;
}
