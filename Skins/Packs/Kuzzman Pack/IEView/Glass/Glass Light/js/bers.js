function video(message, get_or_send) {
  // adjust here  if you like to have converted received and/or sent links.
  var convert_modes = new Array();
  convert_modes['act_V']  = 1;
  convert_modes['dis_V'] = 0;

  if (convert_modes[get_or_send]) {
	var my_regexps   = new Array();
    var my_templates = new Array();
    var my_indices   = new Array();
    // youtube
    my_regexps[0]   = new RegExp('<a class="link" target="_self" href="(?:http://)?(?:\\w+\\.)*youtube\\.com/watch\\?v=([\\w,-]+)(?:&amp;feature=related)?">(?:http://)?(?:\\w+\\.)*youtube\\.com/watch\\?v=(?:[\\w,-]+)(?:&amp;feature=related)?</a>','i');
    my_templates[0] = '<object width="90%" height="350px"><param name="movie" value="http://youtube.com/swf/l.swf?video_id=THISisTHEvideoID"></param><param name="wmode" value="transparent"></param><embed src="http://youtube.com/swf/l.swf?video_id=THISisTHEvideoID" type="application/x-shockwave-flash" wmode="transparent" width="90%" height="350px"></embed></object>';

    //google video
    my_regexps[1]   = new RegExp('<a class="link" target="_self" href="(?:http://)?video\\.google\\.com/videoplay\\?docid=(-\\d+)(?:&amp;hl=[a-z,A-Z]{2})?">(?:http://)?video\\.google\\.com/videoplay\\?docid=(?:-\\d+)(?:&amp;hl=[a-z,A-Z]{2})?</a>');
    my_templates[1] = '<embed style="width:100%; height:350px;" id="VideoPlayback" type="application/x-shockwave-flash" src="http://video.google.com/googleplayer.swf?docId=THISisTHEvideoID&hl=en" flashvars=""></embed>';
    //for it to work with all videos, even non-downloadable ones, we would need the 'secureurl' from the deeplink :(

    /*//yahoo video   noTomku, ocTa/|ocb Bam
    my_regexps[3]   = new RegExp('(?:http://)?video.yahoo.com/watch/(\\d+/\\d+)');
    my_templates[3] = '<object width="400" height="323"><param name="movie" value="http://d.yimg.com/static.video.yahoo.com/yep/YV_YEP.swf?ver=2.0.45" /><param name="allowFullScreen" value="true" /><param name="flashVars" value="id=THISisTHEvideoID&vid=THISisTHEvideoVID" /><embed src="http://d.yimg.com/static.video.yahoo.com/yep/YV_YEP.swf?ver=2.0.45" type="application/x-shockwave-flash" width="512" height="323" allowFullScreen="true" flashVars="id=THISisTHEvideoID&vid=THISisTHEvideoVID" ></embed></object>';
    //yes, you need this fucking 'id' - and it's neither 'vid' nor 'gid' :(*/

	// rutube
    my_regexps[2]   = new RegExp('<a class="link" target="_self" href="(?:http://)?rutube\\.ru/tracks/[\\d]{6}\\.html\\?v=([\\w\\d]{32})">(?:http://)?rutube\\.ru/tracks/\\d+\\.html\\?v=(?:[\\w\\d]{32})</a>','i');
    my_templates[2] = '<object width="100%" height="350px"><param name="movie" value="http://video.rutube.ru/THISisTHEvideoID"></param><param name="wmode" value="transparent"></param><embed src="http://video.rutube.ru/THISisTHEvideoID" type="application/x-shockwave-flash" wmode="transparent" width="100%" height="350px"></embed></object>';
    
    /*/ teledu   
    my_regexps[2]   = new RegExp('<a class="link" target="_self" href="(?:http://)?teledu.ru/video/(\\w+-\\w\\w\\w\\w-\\w\\w\\w\\w-\\w\\w\\w\\w-\\w+)">(?:http://)?teledu.ru/video/(?:\\w+-\\w\\w\\w\\w-\\w\\w\\w\\w-\\w\\w\\w\\w-\\w+)</a>','i');
    my_templates[2] = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="440" height="420" align="middle"><param name="allowScriptAccess" value="sameDomain"/><param name="movie" value="http://teledu.ru/embed/teleduru.swf"/><param name="quality" value="high"/><param name="allowFullScreen" value="true"/><param name="FlashVars" value="videoid=THISisTHEvideoID&appurl=http://teledu.ru/"/><embed src="http://teledu.ru/embed/teleduru.swf" allowFullScreen="true" quality="high" width="440" height="420" align="middle" flashvars="videoid=THISisTHEvideoID&appurl=http://teledu.ru/" allowscriptaccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed></object>';*/
	
	//vkadre
	//http://vkadre.ru/videos/8796134
	my_regexps[5]   = new RegExp('<a class="link" target="_self" href="(?:http://)?vkadre.ru/videos/([\\d]+)">(?:http://)?vkadre.ru/videos/(?:[\\d]+)</a>','i');
    my_templates[5] = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="460" height="345" ><param name="movie" value="http://vkadre.ru/swf/VkadrePlayer.swf?1" /><param name="allowfullscreen" value="true" /><param name="flashvars" value="aspect=0.75&vid=THISisTHEvideoID&overstretch=false&link=http://vkadre.ru/videos/8796134&vtag=5f566741&host=195.218.180.214&vkid=44958594" /><embed type="application/x-shockwave-flash" src="http://vkadre.ru/swf/VkadrePlayer.swf?1" width="460" height="345" allowfullscreen="true" flashvars="aspect=0.75&vid=THISisTHEvideoID&overstretch=false&link=http://vkadre.ru/videos/8796134&vtag=5f566741&host=195.218.180.214&vkid=44958594" /></object>';
	
	//mail.ru
	//http://video.mail.ru/list/afina_jazz/Ballantines/2.html
	my_regexps[4]   = new RegExp('<a class="link" target="_self" href="(?:http://)?vkadre.ru/videos/([\\d]+)">(?:http://)?vkadre.ru/videos/(?:[\\d]+)</a>','i');
    my_templates[4] = '<object width="452" height="385"><param name="flashvars" value="imaginehost=video.mail.ru&perlhost=video.mail.ru&alias=list&username=afina_jazz&albumid=Ballantines&id=2&catalogurl=http://video.mail.ru/themes/reklama&tagurl=" /><param name="allowScriptAccess" value="always" /><param name="movie" value="http://img.mail.ru/r/video2/player_v2.swf?par=http://content.video.mail.ru/list/afina_jazz/Ballantines/$2$0$101" /><embed src="http://img.mail.ru/r/video2/player_v2.swf?par=http://content.video.mail.ru/list/afina_jazz/Ballantines/$2$0$101" type="application/x-shockwave-flash" width="452" height="385" flashvars="imaginehost=video.mail.ru&perlhost=video.mail.ru&alias=list&username=afina_jazz&albumid=Ballantines&id=2&catalogurl=http://video.mail.ru/themes/reklama" allowScriptAccess="always"></embed></object>';
	
	/*<object width="452" height="385"><param name="flashvars" value="imaginehost=video.mail.ru&perlhost=video.mail.ru&alias=mail&username=stv-202&albumid=475&id=1749&catalogurl=http://video.mail.ru/themes/clips&tagurl=" /><param name="allowScriptAccess" value="always" /><param name="movie" value="http://img.mail.ru/r/video2/player_v2.swf?par=http://content.video.mail.ru/mail/stv-202/475/$1749$0$204" /><embed src="http://img.mail.ru/r/video2/player_v2.swf?par=http://content.video.mail.ru/mail/stv-202/475/$1749$0$204" type="application/x-shockwave-flash" width="452" height="385" flashvars="imaginehost=video.mail.ru&perlhost=video.mail.ru&alias=mail&username=stv-202&albumid=475&id=1749&catalogurl=http://video.mail.ru/themes/clips" allowScriptAccess="always"></embed></object>*/
	
		for (var my_counter = 0; my_counter < 3; my_counter++) {
			var my_regexp   = my_regexps[my_counter];    
			var my_template = my_templates[my_counter];
			var re_result = my_regexp.exec(message);
			if (re_result != null) {
				for (var j = 0; j < re_result.length; j = j + 2) {
					/*if (my_counter != 3) {
						video_text = '<br /><br />&nbsp;&nbsp;&nbsp;' + my_template.replace(/THISisTHEvideoID/g,re_result[j + 1]) + '<br /><br />';
					} else {
						IdVid = re_result[j+1].split('/');
						my_template.replace(/THISisTHEvideoVID/g,IdVid[0]);
						video_text = '<br /><br />&nbsp;&nbsp;&nbsp;' + my_template.replace(/THISisTHEvideoID/g,IdVid[1]) + '<br /><br />';
					}*/
					video_text = '<br /><br />&nbsp;&nbsp;&nbsp;' + my_template.replace(/THISisTHEvideoID/g,re_result[j + 1]) + '<br /><br />';
					message = message.replace(re_result[j],video_text + re_result[j]);
				}
			}

		} // end for

  } // end if
  
  return  message;
} // end function
