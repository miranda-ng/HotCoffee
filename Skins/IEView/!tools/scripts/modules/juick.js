(function($)
{

	var getElementText = function(el) { return el.html().replace(/<img[^>]*alt=\"(.+)\"\s*\/?>/, "$1").replace(/<br[^>]*>/gi, "\n").replace(/<[^>]*>/g, "").replace(/^\s*|\s*$/gi, ""); }
	
	String.prototype.decodeEntities = (function()
	{
		var element = document.createElement('div');
		var entity = /&(?:#x[a-f0-9]+|#[0-9]+|[a-z0-9]+);?/ig;

		return function decodeHTMLEntities() 
		{
			str = this.replace(entity, function(m) 
			{
				element.innerHTML = m;
				return element.textContent || element.innerText;
			});
			element.innerHTML = '';
			return str;
		}
	})();

	function SendContactMessage(text)
	{external.mir_CallContactService('U', 'W', external.IEView_GetCurrentContact(), "/SendMsg", 0, text);
	}

	function ToInputArea(text)
	{external.mir_CallService("SRMsg/SendCommandW", external.IEView_GetCurrentContact(), text); 
	}
	

	var module = 
	{
		init: function()
		{		
			if ($("head>contact").attr("uid") == "juick@juick.com")
			{
				$("<div>")
					.append(
						$("<img>")
							.attr({"src": "./!tools/icons/juick/home.png", "title": $.translate("Show last messages from your feed")})
							.click(function() { SendContactMessage("#"); }), 
						$("<img>")
							.attr({"src": "./!tools/icons/juick/recommend.png", "title": $.translate("Show recomendations and popular personal blogs")})
							.click(function() { SendContactMessage("@"); }),
						$("<img>")
							.attr({"src": "./!tools/icons/juick/delete.png", "title": $.translate("Delete last massage")})
							.click(function() { SendContactMessage("DL"); }))
					.attr("id", "juick_toolbar")
					.appendTo($("body"))
					.css("display", "block");
				return true;
			}
			return false;
		},
		MessageBodyHandler: function()
		{
			var self = this, $this = $(this);
			
			var regexp = /^(@[^:]+):\s(\*[^\r\n]+)?([^@]+)(#[\d\\\/]+)/gim;
			var mathRes = getElementText($(this)).decodeEntities().match(regexp);
			
			if (mathRes == null) return;
			$(this).empty();
			if (config.avatars.enable) $(this).parent().parent().find(".avatar").remove();
			mathRes.forEach(function(item)
			{
				var m = item.match(/^(@[^:]+):\s(\*[^\r\n]+)?([^@]+)(#[\d\/\\]+)/im);
				$(self).append
				(	$("<div>").append
					(
						(config.avatars.enable 
							? $('<div class="avatar"><img src="http://api.juick.com/avatar?uname=' + m[1].replace(/^@/, "") + '&size=32"></div>').css({"display": "inline", "margin-top": 6})
							: ""),
						$("<a>").attr("href", "http://juick.com/" + m[1].replace(/^@/, "")).text(m[1]),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/subscribe.png", "title": $.translate("Subscribe to user")}).click(function() { SendContactMessage("S " + m[1] + " ") } ),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/unsubscribe.png", "title": $.translate("Unsubscribe from user")}).click(function() { SendContactMessage("U " + m[1] + " ") } ),
						'<br/>',
						$("<div>").html(m[3].replace(/((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/gi, 
							function(m)
							{
								return "<a href=\"" + m + "\">" + m + "</a>"
							}
						).replace(/\n/g, "<br/>").replace(/^<br\/>/, "")),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/recommend.png", "title": $.translate("Like")}).click(function() { SendContactMessage("!" + m[4]) } ),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/comments.png", "title": $.translate("Comments")}).click(function() { SendContactMessage(m[4] + "+") } ),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/reply.png", "title": $.translate("Reply")}).click(function() { ToInputArea(m[4] + " ") } ),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/subscribe.png", "title": $.translate("Subscribe to comments")}).click(function() { SendContactMessage("S " + m[4] + " ") } ),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/unsubscribe.png", "title": $.translate("Unsubscribe from comments")}).click(function() { SendContactMessage("U " + m[4] + " ") } ),
						$("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/link.png", "title": $.translate("Web"), "href": "http://juick.com/" + m[4].replace(/^#/, "")}),
						( ~($("head>contact").attr("out").indexOf(m[1].replace(/^@/, "")))
							? $("<img class=\"juick-icons\">").attr({"src": "./!tools/icons/juick/delete.png", "title": $.translate("Delete")}).click(function() { SendContactMessage("D " + m[4] + " ") })
							: ""),
						"<br/><br/>"
					)
				);
			});
		}
	}
	RegisterModule("juick", module);
})(jQuery);


