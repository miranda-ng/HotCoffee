// Version 0.1.1.1:   Variable Popupfenster entfernt wird nun im Funktionsaufruf verwendet
// Version 0.1.1.0:   1. Stable

function videoplay(message,idname,hoch,breit,popupfenster) {

einstellungspruefung_videos(Videobutton,1,'Videobutton','config.js','\"0\" -> Beide Buttons öffnen und schließen den Anzeigebereich\n\"1\" -> Beide Buttons öffnen ein neues Anzeigefenster\n\"2\" -> Unterschiedliches Verhalten der Buttons');

//----------------------------------------------SCRIPTTEIL------------------------------------
// replace all '&amp;'s by '&'s
var tidy_message  = message.replace(/\&amp\;/g,'&');
var my_regexps    = new Array();
var my_templates  = new Array();
var my_indices    = new Array();
var fensterbreite = new Array();
var fensterhoehe  = new Array();
 
my_regexps[0]   = new RegExp('(http\\:\\/\\/)?(\\w+\\.)*youtube\\.com/watch\\?[\\w\\=\\&\\-]*v\\=([\\w\\-]*)', 'i');
my_indices[0]   = 3;
my_regexps[1]   = new RegExp('(http\\:\\/\\/)?video.google(\\.\\w+)+/(\\w+)\\?docid\\=([\\-\\d]+)', 'i');
my_indices[1]   = 4;
my_regexps[2]   = new RegExp('(http\\:\\/\\/)?(\\w+\\.)*rutube\\.ru\\/tracks\\/\\d+\\.html\\?[\\w\\=\\&\\-]*v\\=([\\w\\-]*)', 'i');
my_indices[2]   = 3;
my_regexps[3]   = new RegExp('(http\\:\\/\\/)?(\\w+\\.)*myvideo\\.de\\/watch\\/(\\d+)[\\?\\w\\=\\&\\-]*', 'i');
my_indices[3]   = 3;
my_regexps[4]   = new RegExp('(http\\:\\/\\/)?video.golem(\\.\\w+)+/(\\w+)\\/([\\-\\d]+)', 'i');
my_indices[4]   = 4;
my_regexps[5]   = new RegExp('(http\\:\\/\\/)?(\w+\\.)*clipfish\\.de(\\/\\w+\\.\\w+\\/\\w+\\/\\d+\\/\\w+\\/)(\\d+)', 'i');
my_indices[5]   = 4;
my_regexps[6]   = new RegExp('(http\\:\\/\\/)?(\w+\\.)*metacafe\\.com/watch\\/([a-zA-Z0-9._% -]*\\/\\w+)(\\/)', 'i');
my_indices[6]   = 3;

if(popupfenster == 0) {
  // youtube
  my_templates[0] = '<object id="'+idname+'video" width="'+breit+'" height="'+hoch+'">'
                    +'<param name="movie" value="http://www.youtube.com/v/THISisTHEvideoID" />'
                    +'<param name="wmode" value="transparent" />'
                    +'<param name="AllowFullscreen" value="true" />'
                    +'<embed id="'+idname+'video" src="http://www.youtube.com/v/THISisTHEvideoID" type="application/x-shockwave-flash" wmode="transparent" width="'+breit+'" height="'+hoch+'"></embed></object>';
  
  //google video
  my_templates[1] = '<object id="'+idname+'video" width="'+breit+'" height="'+hoch+'">'
                    +'<param name="movie" value="http://video.google.com/googleplayer.swf?docId=THISisTHEvideoID"/>'
                    +'<param name="wmode" value="transparent" />'
                    +'<param name="AllowFullscreen" value="true" />'
                    +'<embed id="'+idname+'video" src="http://video.google.com/googleplayer.swf?docId=THISisTHEvideoID" type="application/x-shockwave-flash" wmode="transparent" width="'+breit+'" height="'+hoch+'"></embed></object>';
  
  // rutube
  my_templates[2] = '<OBJECT id="'+idname+'video" width="'+breit+'" height="'+hoch+'">'
                    +'<PARAM name="movie" value="http://video.rutube.ru/THISisTHEvideoID">'
                    +'</PARAM><PARAM name="wmode" value="window">'
                    +'</PARAM><PARAM name="allowFullScreen" value="true"></PARAM>'
                    +'<EMBED id="'+idname+'video" src="http://video.rutube.ru/THISisTHEvideoID" type="application/x-shockwave-flash" wmode="window" width="'+breit+'" height="'+hoch+'" allowFullScreen="true" ></EMBED></OBJECT>';
  
  // myvideo.de
  my_templates[3] = '<object id="'+idname+'video" width="'+breit+'" height="'+hoch+'">'
                    +'<param name="movie" value="http://www.myvideo.de/movie/THISisTHEvideoID"/>'
                    +'<param name="wmode" value="transparent" />'
                    +'<param name="AllowFullscreen" value="true" />'
                    +'<embed id="'+idname+'video" src="http://www.myvideo.de/movie/THISisTHEvideoID" type="application/x-shockwave-flash" wmode="transparent" width="'+breit+'" height="'+hoch+'"></embed></object>';
  
  //Golem.de 
  my_templates[4] = '<object id="'+idname+'video" width="'+breit+'" height="'+hoch+'">'
                    +'<param name="movie" value="http://video.golem.de/player/videoplayer.swf?id=THISisTHEvideoID&autoPl=false"></param>'
                    +'<param name="allowFullScreen" value="true"></param>'
                    +'<param name="AllowScriptAccess" value="always">'
                    +'<embed id="'+idname+'video" src="http://video.golem.de/player/videoplayer.swf?id=THISisTHEvideoID&autoPl=false" type="application/x-shockwave-flash" allowfullscreen="true" AllowScriptAccess="always" width="'+breit+'" height="'+hoch+'"></embed></object>';

  //Clipfish.de
  my_templates[5] = '<object id="'+idname+'" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+breit+'" height="'+hoch+'" id="player" align="middle">'
                    +'<param name="allowScriptAccess" value="always" />'
                    +'<param name="movie" value="http://www.clipfish.de/videoplayer.swf?as=0&vid=THISisTHEvideoID&r=1" />'
                    +'<param name="quality" value="high" />'
                    +'<param name="bgcolor" value="#FFF" />'
                    +'<param name="allowFullScreen" value="true" />'
                    +'<embed src="http://www.clipfish.de/videoplayer.swf?as=0&videoid=THISisTHEvideoID&r=1" quality="high" bgcolor="#FFF" width="'+breit+'" height="'+hoch+'" name="player" align="middle" allowFullScreen="true" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">'
                    +'</embed></object>';

  //metacafe.com
  my_templates[6]  = '<embed id="'+idname+'video" src="http://www.metacafe.com/fplayer/THISisTHEvideoID.swf" width="'+breit+'" height="'+hoch+'" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed>';
  
}
else {
  //Youtube 
  my_templates[0] = "http://www.youtube.com/v/THISisTHEvideoID"; fensterbreite[0] = "425"; fensterhoehe[0] = "344";
  //GoogleVideo 
  my_templates[1] = "http://video.google.com/googleplayer.swf?docId=THISisTHEvideoID"; fensterbreite[1] = "400"; fensterhoehe[1] = "326";
  //RuTube
  my_templates[2] = "http://video.rutube.ru/THISisTHEvideoID"; fensterbreite[2] = "470"; fensterhoehe[2] = "353";
  //MyVideo  
  my_templates[3] = "http://www.myvideo.de/movie/THISisTHEvideoID"; fensterbreite[3] = "470"; fensterhoehe[3] = "406";
  //Golem.de
  my_templates[4] = "http://video.golem.de/player/videoplayer.swf?id=THISisTHEvideoID"; fensterbreite[4] = "480"; fensterhoehe[4] = "270";
  //Clipfish.de
  my_templates[5] = "http://www.clipfish.de/videoplayer.swf?as=0&vid=THISisTHEvideoID"; fensterbreite[5] = "464"; fensterhoehe[5] = "380";
  //metacafe.com
  my_templates[6] = "http://www.metacafe.com/fplayer/THISisTHEvideoID.swf";  fensterbreite[6] ="498", fensterhoehe[6] = "423";
}
  
for (var my_counter = 0; my_counter < my_regexps.length; my_counter++) {
  var my_regexp   = my_regexps[my_counter];    
  var my_template = my_templates[my_counter];
  var my_index    = my_indices[my_counter];
  var re_result = tidy_message.match(my_regexp);
  if (re_result == null) {
    continue;
  }
  if (popupfenster == 0) {
    text_to_display = my_template.replace(/THISisTHEvideoID/g,re_result[my_index]);
    return (text_to_display); 
  }
  else {
    file = my_template.replace(/THISisTHEvideoID/g,re_result[my_index]);
    description = 'video'; 
    properties  = 'width='+fensterbreite[my_counter]+', height='+fensterhoehe[my_counter]+', left=25, TOP=50, LOCATION=0, MENUBAR=0, RESIZABLE=0, SCROLLBARS=0, STATUS=0, directories=0'; 
    window.open(file,description,properties);
    return "";
  }
 }
}
// end function