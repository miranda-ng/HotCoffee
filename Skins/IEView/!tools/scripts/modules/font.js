(function()
{
	function setActiveStyleSheet(title)
	{
		for (var i = 0, a, main; (a = document.getElementsByTagName("link")[i]); i++)
		{
			if (a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title")) 
			{
				a.disabled = true;
				if (a.getAttribute("title") == title) a.disabled = false;
			}
		}
		external.db_set(0, "IEView_Template", "FontSize", title);
	}

	var sizeUpObj = { "A--": "A-", "A-": "A", "A": "A+", "A+": "A++", "A++": "A+++", "A+++": "A++++", "A++++": "A++++" };
	var sizeDownObj = { "A++++": "A+++", "A+++": "A++", "A++": "A+", "A+": "A", "A": "A-", "A-": "A--" };

	function fontsizeup()
	{
		active = getActiveStyleSheet();
		setActiveStyleSheet(sizeUpObj[active] || "A");
	}

	function fontsizedown()
	{
		active = getActiveStyleSheet();
		setActiveStyleSheet(sizeDownObj[active] || "A--");
	}

	function getActiveStyleSheet()
	{
		for (var i = 0, a; (a = document.getElementsByTagName("link")[i]); i++) 
		{
			if (a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title") && !a.disabled) 
				return a.getAttribute("title");
		}
		return null;
	}
	
	var module = 
	{
		init: function()
		{
			if(config.font.change_size_button)
			{
				$("<div>")
					.append(
						$("<input>")
							.attr("type", "button")
							.attr("value", "+")
							.click(fontsizeup), 
						$("<br/>"), 
						$("<input>")
							.attr("type", "button")
							.attr("value", "-")
							.click(fontsizedown))
					.attr("id", "fix")
					.appendTo($("body"))
					.css("display", "block");
				
				setActiveStyleSheet(external.db_get(0, "IEView_Template", "FontSize") || "A");
			}
			return config.font.change_size_button;
		}
	}
	RegisterModule("font", module);
})();