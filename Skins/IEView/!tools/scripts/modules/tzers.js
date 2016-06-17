(function($)
{
	var tZers_translation = 
	{
		"guby": "Kiss",
		"beer": "Some beer?;)",
		"zadolbal": "Sick of you!",
		"sobaka": "Want to be with you!",
		"devochka": "Sob...!",
		"bodun": "Hangover...",
		"serdze": "Heart",
		"smeh": "Wicked!",
		"mad_dog": "And I've gone mad...",
		"rosy": "Million red roses!",
		"sobaka_strelyaet": "I'll shoot you down!",
		"rabotaet": "I'm busy",
		"kot_cool": "Cool!",
		"kot_goodbye": "See you",
		"kot_spasibo": "Thanks!",
		"kot_nedutza": "Don't be sulky!",
		"kot_obida": "Offended",
		"kot_wow": "Wow!",
		"bad_cold": "I am ill",
		"information": "Mental explosion",
		"joy": "Happy",
		"krizis": "Broke",
		"missyou": "Miss you",
		"tank": "We'll do it!",
		"gangsta": "Gangsta",
		"gangsterSheep": "Gangsta",
		"canthearu": "Can't Hear U",
		"cant_hear": "Can't Hear U",
		"skratch": "Scratch",
		"scratch": "Scratch",
		"boo": "Booooo",
		"kisses": "Kisses",
		"chillout":	"Chill Out",
		"rastamab": "Chill Out",
		"akitaka":	"Akitaka",
		"sappuko": "Akitaka",
		"laugh": "Hilaaarious",
		"duh": "Like Duh!",
		"dahh": "Like Duh!",
		"beback": "L8R",
		"beBack": "L8R",
		"likeu": "Like U!",
		"iLikeU": "Like U!",
		"sorry": "I'm Sorry",
		"drako_bolnoy": "Bless you!",
		"drako_koster": "Lunch",
		"drako_love": "Thinking of you",
		"drako_opyatnica": "Friday",
		"drako_snegyrka": "Love people",
		"drako_zombie": "Zombie",
		"love_bear_hugs": "Hugs",
		"love_bear_kiss": "Kisses",
		"love_bear_rose": "With love",
		"angel": "I choose you",
		"wf_love_sdaus": "I surrender",
		"wf_love_srazila": "I am smitten",
		"gntm_icq_tZer_01_dubist": "TopModel",
		"gntm_icq_tZer_02_dusiehstaus": "Aussehen",
		"gntm_icq_tZer_03_drama": "Drama",
		"gntm_icq_tZer_04_competition": "Competition",
		"santa": "Santa"
	}

	var MailRu_tZers = 
	{
		'49': 'wf_love_srazila',
		'48': 'wf_love_sdaus',
		'47': 'angel',
		'46': 'love_bear_rose',
		'45': 'love_bear_kiss',
		'44': 'love_bear_hugs',
		'43': 'drako_zombie',
		'42': 'drako_snegyrka',
		'41': 'drako_opyatnica',
		'40': 'drako_love',
		'39': 'drako_koster',
		'38': 'drako_bolnoy',
		'37': 'sorry',
		'36': 'likeu',
		'35': 'beback',
		'34': 'duh',
		'33': 'laugh',
		'32': 'akitaka',
		'31': 'chillout',
		'30': 'kisses',
		'29': 'boo',
		'28': 'skratch',
		'27': 'canthearu',
		'26': 'gangsta',
		'25': 'tank',
		'24': 'missyou',
		'23': 'krizis',
		'22': 'joy',
		'21': 'information',
		'20': 'bad_cold',
		'17': 'kot_wow',
		'16': 'kot_obida',
		'15': 'kot_nedutza',
		'14': 'kot_spasibo',
		'13': 'kot_goodbye',
		'12': 'kot_cool',
		'11': 'rabotaet',
		'10': 'sobaka_strelyaet',
		'9': 'rosy',
		'8': 'mad_dog',
		'7': 'smeh',
		'6': 'serdze',
		'5': 'bodun',
		'4': 'devochka',
		'3': 'sobaka',
		'2': 'zadolbal',
		'1': 'beer',
		'1': 'beer',
		'0': 'guby',
		'gntm_icq_tZer_01_dubist': 'gntm_icq_tZer_01_dubist',
		'gntm_icq_tZer_02_dusiehstaus': 'gntm_icq_tZer_02_dusiehstaus',
		'gntm_icq_tZer_03_drama': 'gntm_icq_tZer_03_drama',
		'gntm_icq_tZer_04_competition': 'gntm_icq_tZer_04_competition',
		'santa': 'santa'
	}

	var tZer_timeouts = 
	{
		"guby": 4500,
		"beer": 5610,
		"zadolbal": 7570,
		"sobaka": 16850,
		"devochka": 6410,
		"bodun": 10680,
		"serdze": 6580,
		"smeh": 13250,
		"mad_dog": 8660,
		"rosy": 12580,
		"sobaka_strelyaet": 8110,
		"rabotaet": 11660,
		"kot_cool": 10660,
		"kot_goodbye": 9330,
		"kot_spasibo": 7730,
		"kot_nedutza": 7660,
		"kot_obida": 7330,
		"kot_wow": 9060,
		"bad_cold": 5660,
		"information": 6400,
		"joy": 7200,
		"krizis": 6700,
		"missyou": 6750,
		"tank": 12120,
		"gangsta": 10000,
		'gangsterSheep': 10000,
		"canthearu": 16200,
		'cant_hear': 16200,
		"skratch": 8450,
		'scratch': 8450,
		"boo": 9000,
		"kisses": 6750,
		"chillout": 12750,
		'rastamab': 12750,
		"akitaka": 17000,
		'sappuko': 17000,
		"laugh": 8400,
		"duh": 6000,
		'dahh': 6000,
		"beback":9500,
		'beBack': 9500,
		"likeu":10080,
		'iLikeU': 10080,
		"sorry": 12100,
		"drako_bolnoy": 9300,
		"drako_koster": 7660,
		"drako_love": 7060,
		"drako_opyatnica": 10000,
		"drako_snegyrka": 6660,
		"drako_zombie": 7330,
		"love_bear_hugs": 10000,
		"love_bear_kiss": 10000,
		"love_bear_rose": 10000,
		"angel": 13260,
		"wf_love_sdaus": 10000,
		"wf_love_srazila": 10000,
		"gntm_icq_tZer_01_dubist": 6000,
		"gntm_icq_tZer_02_dusiehstaus": 6000,
		"gntm_icq_tZer_03_drama": 6000,
		"gntm_icq_tZer_04_competition": 6000,
		"santa": 8500
	}

	var stopTimeout = 0;

	function tZerStop()
	{
		$("#tZersImg").hide();
		$("#tZersDiv").empty().hide();
	}

	function tZerPlay(swflink)
	{
		clearTimeout(stopTimeout); $("#tZersDiv").empty();
		$("#tZersDiv").append("<object id=\"tZersObject\"></object>");
		var obj = swfobject.createSWF({ data: swflink, width:"100%", height:"100%", id: "tZersObject" }, { wmode:"transparent", loop: "false" }, "tZersObject");
		var swfname = swflink.match(/.+[\/\\](.+)\.swf$/)[1];
		
		$("#tZersDiv").show();
		$("#tZersImg").show();
		obj.Play();
		
		stopTimeout = setTimeout(tZerStop, tZer_timeouts[swfname] || 18000);
	}

	function MailRu_Map(id) { return MailRu_tZers[id] || id; }
	function translate_tZer(id) { return tZers_translation[id] != undefined ? $.translate(tZers_translation[id]) : id; }

	function tZerWorker ( a, self, t_name, autoplay )
	{
		var tZerName = ( a == null ? t_name : a.href.match(/https?:\/\/.+\/(.+?)\.swf/)[1]);
		var SWFLink = tZer_SWF_path + tZerName + ".swf";
		var PNGLink = tZer_PNG_path + tZerName + ".png";
		var messageType = Number(self.attr("type"));
		if (messageType == 1 || messageType == 3 || messageType == 4 || messageType == 9 || messageType == 11 || messageType == 12)
		{
			var username = self.attr("name");
			self.empty()
				.append(username + $.translate(" sent you cartoon "),
						 $("<font>")
							.attr("class", "tzerlink")
							.click(function() { tZerPlay(SWFLink); })
							.text(translate_tZer(tZerName))
						);
		}
		else if (messageType == 2 || messageType == 6 || messageType == 7 || messageType == 10 || messageType == 14 || messageType == 15)
		{
			self.empty()
				.append($.translate("You sent cartoon "), 
						 $("<font>")
							.attr("class", "tzerlink")
							.click(function() { tZerPlay(SWFLink); })
							.text(translate_tZer(tZerName))
						);
		}
		
		var div = $("<div class=\"tzerbildbereich\"><img class=\"tzerbild\"</div>");
		$("img", div).attr("src", PNGLink)
			.attr("alt", tZerName)
			.attr("title",  translate_tZer(tZerName))
			.click(function() { tZerPlay(SWFLink) } );
		self.append(div);
		
		if (autoplay)
			setTimeout(function () { tZerPlay(SWFLink); }, 200);
	}

	var module = 
	{
		init: function()
		{
			if (config.tZers.only_supported_protos ? /.*icq.*|.*mail.*|.*agent.*|.*mra.*/gi.test($("head > protocol").attr("name")) : 1)
			{			
				var CloseButton = $("<img class=\"icons\" id=\"tZersImg\">")
									.attr({ "src": ImagesPath + "close.png", "title": $.translate("Close"), "alt": $.translate("Close") })
									.click(tZerStop);
			
				$("body").append(CloseButton , $('<div id="tZersDiv" align="right">'));
				return true;
			}
		},
		MessageBodyHandler: function(tZer_ap)
		{
			var founded = false, self = this;
			
			$("a", this).each(function(i, a)
			{
				if (/(https?:\/\/).*icq.*\/(.*)\.swf/.test(this.href))
				{
					tZerWorker(a, $(self), (tZer_ap != undefined && config.tZers.autoplay));	
					founded = true;
					return false;
				}
			});
			
			if (founded) return false;
			
			if (/<SMILE>(.*)<\/SMILE>/gi.test($(this).text()))
			{
				var id = $(this).text().replace(/<SMILE>\s*id=flash?_(.+)\s+alt=\'(.+)\'\s*<\/SMILE>/gi, "$1").replace(/^\s+|\s+$/g, "");
				tZerWorker(null, $(this), MailRu_Map(id), (tZer_ap != undefined && config.tZers.autoplay));
				return false;
			}
			else 
			$("img", this).each(function(i, img)
			{
				var title = $(img).attr("title");
				if (/<SMILE>(.*)<\/SMILE>/gi.test(title))
				{
					var id = title.replace(/<SMILE>\s*id=flash?_(.+)\s+alt=\'(.+)\'\s*<\/SMILE>/gi, "$1").replace(/^\s+|\s+$/g, "");
					tZerWorker(null, $(self), MailRu_Map(id), (tZer_ap != undefined && config.tZers.autoplay));
					founded = true;
					return false;
				}
			});
			
			if (founded) return false;
		}
	}
	RegisterModule("tZers", module);
})(jQuery);