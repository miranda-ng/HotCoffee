function file(_self)
{
	var self = $(_self);
	var isOut = /(21|22)/.test(self.attr("type"));
	var link = "";
	if (isOut)
	{
		if (/(\w:)\\+.+?/gi.test(self.text().replace(/^\s+|\s+$/, "")))
			link = self.text().replace(/^\s+|\s+$/, "");
		else return;
	}
	else
	{
		link = base.replace(/\/Skins\/IEView\/?(HotCoffee\/)?/i, "").replace("file://", "") + config.files.inbox + self.attr("uin") + " (" + self.attr("nick") + ")/" + self.text().replace(/^\s+|\s+$/, "");
	}
	
	link = link.replace(/\//g, "\\");
	var linkMR = link.match(/(.+)[\/\\](.+\..+)$/);
	var a = $("<a>").attr( {"href":link, "title": link })
			.text(linkMR[2])
			.click(function(){ $.openFile(link); return false; } );
	var image = "./!tools/filetypes/" + getFileIcon(link.match( /(.*)\.(.*)$/)[2]);
	var _img = createImage(image + ".png", image + "_d.png").attr("class", "icons");
	var div = null;
	self.empty();
	if (/.+\.(jpe?g|png|[tg]iff?|svg|bmp|ico)/gi.test(a.get(0).href))	div = picture(a.get(0), _img);
	else if (/.+\.(mp3|ogg)/i.test(a.get(0).href))						audio(a.get(0), _img);
	else
	{
		div = $("<div>").attr("class", "otherbox");
		self.append(div);
		_img.click(function() { LinkArea(div.get(0), link); } );
	}
	if (isOut)
	{
		self.append(_img,
					$.translate("File ") + "[", a, "]" + $.translate(" from folder ") + "[", 
					$("<a></a>").attr({"path": linkMR[1], 
									   "title": linkMR[1]} )
								.text(ShortLocalLink(linkMR[1]))
								.click(function()
								{ 
									$.openFolder(link);
								} ), "]" + 
					$.translate(" was sent"));
	}
	else 
	{
		self.append(_img,
					$.translate("File ") + "[", a, "]" + $.translate(" by "), 
					$("<a>").attr( 
								{"href": config.files.inbox + self.attr("uin") + "/", 
								 "title": (base.replace(/\/Skins\/IEView\/?(HotCoffee\/)?/i, "") + config.files.inbox + self.attr("uin") + " (" + self.attr("nick") + ")" + "\\").replace(/\//g, "\\") } )
							.text(self.attr("nick") + " (" + self.attr("uin") + ")")
							.click(function()
							{ 
								$.openFolder(link);
								return false
							} ),	
					$.translate(" was received"));
	}
	_img.attr("title", $.translate("Show/Hide"));
	if (div != null) self.append(div);
}