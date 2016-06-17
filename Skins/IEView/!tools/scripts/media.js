var audioPlayerSettings = "autostart=yes&soundFile=";
var tZer_SWF_path = ToolsPath + "tZersFiles/animationen/";
var tZer_PNG_path = ToolsPath + "tZersFiles/grafiken/"; 


function media(self, tZer_ap)
{
	$("a", self).each(function(i, a)
	{	
		if (/((https?:\/\/)?(.+?\.)+?(.+?\/)+.+?.(mp3))/i.test(this.href))
		{
			var img  = createImage(ImagesPath + "audio.png", null, "icons").attr("title", $.translate("Show/Hide"));
			$(a).before(img);
			audio(a, img);
		}
		else if (/^(https?\:\/\/)?(www\.)?(youtube\.com|youtu\.?be)\/.+$/i.test(this.href))
		{
			var id = Math.floor(Math.random() * 9999);
			
			var div = $("<div class=\"videobox\"></div>");			
			var img = createImage(ImagesPath + "video.png" , null, "icons" )
						.click    (function() { YoutubeInline(a.href, div); })
						.bind("contextmenu", function() { YoutubeWindow(a.href); return false; })
						.attr("title", $.translate("Show/Hide"));
						
			$(a).after(div).before(img);
		}
		else if (/^(http.*\.)(jpe?g|png|[tg]iff?|svg|bmp)/i.test(this.href))
		{
			var img = createImage(ImagesPath + "picture.png", null, "icons").attr("title", $.translate("Show/Hide"));
			picture(a, img, config.media.images_preview);
			
			$(a).before(img);
		}
		//$(self).find("br").css("line-height", "0px");
		$(a).text(ShortLink($(a).text()));
	});
	return self;
}

function picture(a, clickelement, bPreview)
{
	$a = $(a);
	var div = $("<div class=\"imagebox\"></div>").css("display", "none");
	
	$a.attr("class", "Link-Text").after(div);
	if (bPreview) init_picture_preview($a);
	clickelement.click(function() { PictureArea(div.get(0), a.href); });
	return div;
}

function audio(a, clickelement)
{
	$(a).attr("id", Math.random());
	var clck = function()
	{
		var obj = swfobject.createSWF({ data: ToolsPath + "player/audio.swf", width:"290", height:"24", id:"audioplayer" }, { wmode:"transparent", flashvars: audioPlayerSettings + a.href }, a.id);
		clickelement.one("click", function() 
		{ 
			$(obj).replaceWith(a).remove();
			clickelement.one("click", clck);
		});
	};
	clickelement.one("click", clck);
}

function init_picture_preview(a)
{
	var obj = $.extend({}, config.tooltipify);
	obj.content = $("<img>").attr("src", a.get(0).href).attr("style", "max-width:250px; max-height: 250px");
	a.tooltipify(obj);
}

function YoutubeWindow(link)
{
	window.open("http://www.youtube.com/v/" + $.jYoutube(link), "video", "width=" + config.media.video.external_window.width + ", height=" + config.media.video.external_window.height + ", left=25, TOP=50, LOCATION=0, MENUBAR=0, RESIZABLE=1, SCROLLBARS=0, STATUS=0, directories=0");
}

function YoutubeInline(link, $div)
{
	if (!config.media.video.external_window.enable)
	{
		if ($div.is(":empty"))
		{
			var height = document.documentElement.clientHeight * (3 / 4);
			var width = document.documentElement.clientWidth * (3 / 4);
			
			var tb = $("<center>")
						.append(
								createImage(ImagesPath + "/breiter.png", null, "icons")
									.attr({"title": $.translate("Decrease towards") })
									.click(function() { $("#YTVideoInline").proportion(1); }),
								createImage(ImagesPath + "/reset.png", null, "icons")
									.attr({"title": $.translate("Reset") })
									.click(function() { $("#YTVideoInline").proportion(0); }),
								createImage(ImagesPath + "/schmaler.png", null, "icons")
									.attr({"title": $.translate("Increase towards") })
									.click(function() { $("#YTVideoInline").proportion(-1); }),
								"&nbsp;&nbsp;",
								createImage(ImagesPath + "zoom_in.png", null, "icons")
									.click(function () { $("#YTVideoInline").resize(1.1); })
									.attr({ "title": $.translate("Zoom in") }),
								createImage(ImagesPath + "zoom_out.png", null, "icons")
									.click(function () { $("#YTVideoInline").resize(0.9); })
									.attr({ "title": $.translate("Zoom out") })
								);
			
			var swfLink = "http://www.youtube.com/v/" + $.jYoutube(link);
			$div.append(tb, "<object id=\"YTVideoInline\"></object>");
			var obj = swfobject.createSWF({ data: swfLink, width: width, height: height, id: "YTVideoInline" }, {AllowFullscreen: true, movie: swfLink, wmode:"transparent" }, "YTVideoInline");
		}
		else
		{
			$div.empty();
		}
	}
	else
	{
		YoutubeWindow(link);
	}
}

function LinkArea(div, link)
{
	if ($(div).is(":empty"))
		$(div).append("<br/>", $("<center>").append($("<a>").attr({"class": "Link-Text", "href": link}).text(link).click(function() { $.openFile(this.href); return false; })),"<br/>").css("display", "block");
	else $(div).empty().css("display", "none");
}

function PictureArea(div, link)
{
	if ($(div).is(":empty"))
	{
		var image = $("<img class=\"InlineImages\">").attr({"alt": link, "style": "cursor: pointer", "src": link, "href": link });
		var tb = $("<center>")
					.append(
						createImage(ImagesPath + "/arrow_turn_left.png", null, "icons")
							.attr({"title": $.translate("Turn left") })
							.click(function() { image.rotateLeft(); }),
						createImage(ImagesPath + "/arrow_up.png", null, "icons")
							.attr({"title": $.translate("Standard orientation") })
							.click(function() { image.rotate(0, true); }),
						createImage(ImagesPath + "/arrow_turn_right.png", null, "icons")
							.attr({"title": $.translate("Turn right") })
							.click(function() { image.rotateRight(); }),
						"&nbsp;&nbsp;",
						createImage(ImagesPath + "/zoom_in.png", null, "icons")
							.attr({"title": $.translate("Zoom in") })
							.click(function() { image.resize(1.1); }),
						createImage(ImagesPath + "/zoom_out.png", null, "icons")
							.attr({"title": $.translate("Zoom out") })
							.click(function() { image.resize(0.9); })
							);


		$(div).empty().append(tb, image);
		div.style.display = "block";
		image.resize();
	}
	else $(div).empty().css("display", "none");
}
