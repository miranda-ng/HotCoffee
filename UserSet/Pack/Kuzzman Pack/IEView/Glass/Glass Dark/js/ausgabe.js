// Hier wird ein DIV-Tag namens "tZersDiv" mit eingebetteten Object-Child erzeugt, das durch die Funktion "neubestimmen()"
// immer im Sichtbereich, auch beim Scrollen, gehalten und mit der Funktion "ausblenden()" nach einigen Sekunden versteckt wird
// There will be create a DIV-Tag with the name "tZersDiv". It have a child-object, through the function "neubestimmen()" it is ever in the view-area
// With the function "ausblenden()" the "tZersDiv"-DIV-tag will be hidden after some seconds.
<!--
document.write('<div id="tZersDiv" align=\"right\" style=\"position:absolute; top:0; overflow:hidden; visibility:hide; z-index: 200;\">');
document.write('<input type=radio name="closetzer">');
document.write('</div>');
setInterval("neubestimmen()", 10);
document.getElementById("tZersDiv").style.visibility = "hidden";


// Der DIV-Tag wird nach einigen Sekunden ausgeblendet
// The DIV-tag will be hidden after some seconds.
function ausblenden()
{
  document.getElementById("tZersDiv").style.visibility = "hidden";
}

// Der DIV-Tag wird beim Scrollen nach ein paar Millisekunden auf die neue Position innerhalb des Blickberechs gesetzt
// The new position from the DIV-Tag will be calculate after few milliseconds and it will set an the new position
function neubestimmen()
{
  // tZersHoehenAnpassung verhindert beim tZers-Empfang das vertikale Scrollen ins Unendliche; muss ggf. mit einem grˆﬂeren Wert angepasst werden.
  // tZersBreitenAnpassung paﬂt die Breite des Ausgabefensters an, dadurch kann das horizontale Scrollen verhindert werden, muss ggf. mit einem grˆﬂeren Wert angepasst werden.
  // With the variable "tZersHoehenAnpassung" the endless vertical scroll will prevent, sometimes a greater number is required
  // With the variable "tZersBreitenAnpassung" the horizontal scroll will prevent, sometimes a greater number is required
  tZersHoehenAnpassung  = 3;
  tZersBreitenAnpassung = 32;
  	
  // Je nach <!DOCTYPE> in der .ivt-Datei wird eine andere IF-Anweisung durchgef¸hrt.  
  // 
  var scrollPos;
  var bildbreite;
  var bildhoehe;
  if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
	scrollPos = document.documentElement.scrollTop;
	bildbreite = document.documentElement.offsetWidth - tZersBreitenAnpassung;
	bildhoehe  = document.documentElement.offsetHeight - tZersHoehenAnpassung;
    if (document.documentElement.closetzer.checked == true) {
	  document.getElementById("tZersDiv").innerHTML = '<input type=checkbox name="closetzer">';
	  document.getElementById("tZersDiv").style.visibility = "hidden";
	}
  }
  else 
	if (typeof document.body != 'undefined') {
	  scrollPos = document.body.scrollTop;
	  bildbreite = document.all.body.offsetWidth - tZersBreitenAnpassung;
	  bildhoehe  = document.all.body.offsetHeight - tZersHoehenAnpassung;
      if (document.all.closetzer.checked == true) {
	    document.getElementById("tZersDiv").innerHTML = '<input type=checkbox name="closetzer">';
		document.getElementById("tZersDiv").style.visibility = "hidden";
	  }
    }
  document.getElementById("tZersDiv").style.Width = bildbreite;
  document.getElementById("tZersDiv").style.top = scrollPos;
  document.getElementById("tZersDiv").style.left = 0;
  document.getElementById("tZersDiv").style.height = bildhoehe;
}


// Hier wird die Ausgabe vorbereitet und je nach Wert angezeigt
// Der Parameter "durchreichwert" wird einfach nur weitergereicht
//tzersoderbild,ausrichtung,zeigetzersname,bekommensenden,chatpartner,durchreichwert
function TzersOutput (eingangsmeldung,params) {
  param = params.split("+");
  tzersoderbild = param[0];
  ausrichtung = param[1];
  zeigetzersname = param[2];
  bekommensenden = param[3];
  chatpartner = param[4];
  durchreichwert = param[5];
  link = eingangsmeldung;
  link = link.split("swf");
  if (link[1] && (link[0].substr(0,4)=="tZer" || link[0].substr(54,5)=="xtraz" || link[0].substr(55,5)=="xtraz")) {
    link = link[1].split("http://");
   
    //-------------------------------------------------------------------------------------
    // Hier muss der Pfad zu den tZers (.swf- und .png-Dateien) angepaﬂt werden, damit diese gefunden werden.
	// Standardm‰ﬂig ist hier das "tZersFiles"-Verzeichnis gew‰hlt, das, von der .ivt-Datei aus gesehen, eine Ebene hˆher liegt.
    //-------------------------------------------------------------------------------------
    swfname = link[1].substring(link[1].lastIndexOf('/')+1,link[1].length-1);
    bildlink= 'tZersFiles/'+swfname+'.png';
    swflink = 'tZersFiles/'+swfname+'.swf';

    //-------------------------------------------------------------------------------------
    // Die folgende IF-Anweisung erzeugt und gibt den tZers-Namen aus, wenn ein tZer empfangen wird. Kann auch weggelassen oder durch einen anderen
	// document.write-Befehl ersetzt werden. Der erzeugte Name wird nicht in der History gespeichert. Es wird lediglich der unver‰nderte Ausdruck gespeichert.
    //-------------------------------------------------------------------------------------
    if (zeigetzersname == 'yes') {
      tzersname = eingangsmeldung;
	  if ((eingangsmeldung.substr(54,5)=='xtraz') || (eingangsmeldung.substr(55,5)=='xtraz')) {
        tzersname =  tzersname.split('.');
        tzersname =  tzersname[2].substring(tzersname[2].lastIndexOf('/')+1,tzersname[2].length)+'<br>';
      }
      else {
        tzersname = tzersname.split("tZer received:");
		tzersname = tzersname[1].split('"');
        tzersname = tzersname[0].split('http://');
        tzersname = tzersname[0].substring(1,tzersname[0].length-6);
      }
     if (bekommensenden == 'get') {
        //document.write('<div class="tz"></div>');
        document.write(chatpartner + ' –ø—Ä–∏—Å–ª–∞–ª —Ç–µ–±–µ ' + tzersname);
      }/*  
      else {
        document.write('You tZer '+chatpartner+' with <a href=http://'+link[1]+'swf>'+tzersname+'</a>');
      } */
    }

    switch (tzersoderbild) {
      case "tzers":
        // document.write('<i>(press ALT-B to show the tZer again)</i>');
        document.getElementById("tZersDiv").innerHTML =
		   '<input type=radio name="closetzer">'
          +'<object id="tZersObject" classid="CLSID:D27CDB6E-AE6D-11cf-96B8-444553540000" Width=100% height=100% border=0 codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=4,0,0,0">'
          +'<param name="movie" value="'+swflink+'">'
          +'<PARAM NAME=wmode VALUE=transparent>' // -- diesen Teil ggf. weglassen --
          +'</object>';
        document.getElementById("tZersDiv").style.visibility = "visible";
		window.setTimeout("ausblenden();",15000);
		return "";
        break;
      case "picture":
        document.write('<div align="'+ausrichtung+'">');
        document.write('<a href=http://'+link[1]+'swf><img src="'+bildlink+'" border="0" alt="'+swfname+'-Bild"></a>');
        document.write('</div>'); 
        break;
      default:
        break;
    }	
  }
  return eingangsmeldung;
}
-->