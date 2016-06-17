/**
 * jQuery plugin for Pretty looking right click context menu.
 *
 * Requires popup.js and popup.css to be included in your page. And jQuery, obviously.
 *
 * Usage:
 *
 *   $('.something').contextPopup({
 *     title: 'Some title',
 *     items: [
 *       {label:'My Item', icon:'/some/icon1.png', action:function() { alert('hi'); }},
 *       {label:'Item #2', icon:'/some/icon2.png', action:function() { alert('yo'); }},
 *       null, // divider
 *       {label:'Blahhhh', icon:'/some/icon3.png', action:function() { alert('bye'); }, isEnabled: function() { return false; }},
 *     ]
 *   });
 *
 * Icon needs to be 16x16. I recommend the Fugue icon set from: http://p.yusukekamiyamane.com/ 
 *
 * - Joe Walnes, 2011 http://joewalnes.com/
 *   https://github.com/joewalnes/jquery-simple-context-menu
 *
 * MIT License: https://github.com/joewalnes/jquery-simple-context-menu/blob/master/LICENSE.txt
 */
jQuery.fn.contextPopup = function(menuData)
{
	var settings = 
	{
		contextMenuClass: 'contextMenuPlugin',
		linkClickerClass: 'contextMenuLink',
		gutterLineClass: 'gutterLine',
		headerClass: 'header',
		seperatorClass: 'divider',
		title: '',
		items: []
	};
	$.extend(settings, menuData);
	var self = this;
	function createMenu(e)
	{
		var menu = $('<ul class="' + settings.contextMenuClass + '"><div class="' + settings.gutterLineClass + '"></div></ul>')
			.appendTo(document.body);
		if (settings.title)
		{
			$('<li class="' + settings.headerClass + '"></li>').text(settings.title).appendTo(menu);
		}
		settings.items.forEach(function(item)
		{
			if (item)
			{
				if (!item.isVisible || item.isVisible(e))
				{
					var rowCode = '<li><a href="#" class="' + settings.linkClickerClass + '"><span class="itemTitle"></span></a></li>';

					var row = $(rowCode).appendTo(menu);
					if (item.icon)
					{
						var icon = $('<img>');
						icon.attr('src', item.icon);
						icon.insertBefore(row.find('.itemTitle'));
					}
					row.find('.itemTitle').text(item.label);

					if (item.isEnabled != undefined && !item.isEnabled())
					{
						row.addClass('disabled');
					}
					else if (item.action)
					{
						row.find('.' + settings.linkClickerClass).click(function()
						{
							item.action.call(self, e);
						});
					}
				}

			}
			else
			{
				$('<li class="' + settings.seperatorClass + '"></li>').appendTo(menu);
			}
		});
		menu.find('.' + settings.headerClass).text(settings.title);
		return menu;
	}

	// On contextmenu event (right click)
	this.on('contextmenu', function(e)
	{
		e = e || window.event;

		$("." + settings.contextMenuClass).remove();

		var menu = createMenu(e)
			.show();

		var left = e.pageX + 5,
			top = e.pageY;

		if (top + menu.height() >= $(window).height())
		{
			top -= menu.height();
		}
		if (left + menu.width() >= $(window).width())
		{
			left -= menu.width();
		}

		// Create and show menu
		menu.css(
			{
				zIndex: 1000001,
				left: left,
				top: top
			})
			.on('contextmenu', function()
			{
				return false;
			});

		// Cover rest of page with invisible div that when clicked will cancel the popup.
		var bg = $('<div></div>')
			.css(
			{
				left: 0,
				top: 0,
				width: '100%',
				height: '100%',
				position: 'absolute',
				zIndex: 1000000
			})
			.appendTo(document.body)
			.on('contextmenu click', function()
			{
				// If click or right click anywhere else on page: remove clean up.
				bg.remove();
				menu.remove();
				return false;
			});

		// When clicking on a link in menu: clean up (in addition to handlers on link already)
		menu.find('a').click(function(e)
		{
			bg.remove();
			menu.remove();
			e.stopPropagation();
		});


		$('body').one("click", function()
		{
			bg.remove();
			menu.remove();
		});

		// Cancel event, so real browser popup doesn't appear.
		return false;
	});
	return this;
};

(function($)
{
	var getElementText = function(el) { return el.html().replace(/<img[^>]*alt=\"?([^\s\">]+)\"?[^>]*>/i, "$1").replace(/<br[^>]*>/gi, "\n").replace(/<[^>]*>/g, "").replace(/^\s*|\s*$/gi, ""); }
	
	var getSelectionText = function ()
	{
		if (window.getSelection) return window.getSelection().toString();
		else if (document.selection && document.selection.type != "Control") return document.selection.createRange().text;
		else return "";
	}
	
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
	
	var getPasteText = function(el, text) 
	{  
		return el.attr("nick") + ", " + el.parent().find(".time").text() + ":\n>> " + ((text != undefined && text != "") ? text : getElementText(el).decodeEntities().split("\n").join("\n>> "));
	}

	var GMenu = 
	{
		items: 
		[
			{ 
				label: $.translate("Copy"),  
				icon: "./!tools/icons/copy.png", 
				action: function(e) 
				{ 
					external.win32_CopyToClipboard(getSelectionText() == "" ? getPasteText($(this)) : getSelectionText()); 
				}					
			},
			{ 
				label: $.translate("Copy link"),  
				icon: "./!tools/icons/copy_link.png", 
				action: function(e) 
				{ 
					external.win32_CopyToClipboard($(e.target || e.srcElement).attr("href") || ""); 
				},
				isVisible: function(e)
				{
					return $(e.target || e.srcElement).attr("href");
				}
				
			},
			{ 
				label: $.translate("Quote"),
				icon: "./!tools/icons/quote.png", 
				action: function(e) 
				{ 
					external.mir_CallService("SRMsg/SendCommandW", external.IEView_GetCurrentContact(), getPasteText($(this), getSelectionText())); 
				}
			}
		]
	}

	var module = 
	{
		init: function()
		{
			return config.custom_context_menu;
		},
		MessageBodyHandler: function()
		{
			$(this).contextPopup(GMenu);
		}
	}
	RegisterModule("ContextMenu", module);
	

})(jQuery);