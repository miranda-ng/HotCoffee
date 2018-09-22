// Version 0.1.3.2:   Bestimmung des Browsertypes wird nun von der globalfunction.js durchgefьhrt
// Version 0.1.3.1:   Codeoptimierung: Namenssuche nun immer per Regulдrem Ausdruck
// Version 0.1.3.0:   4 neue tZers integriert; Namenssuche per Regulдrem Ausdruck bei direkten URLs
// Version 0.1.2.1:   Anpassung auf ICQOscarJ alpha [2009.03.21 22:38:20]
// Version 0.1.2.0:   Auswahl des ICQPlugins in die Config.js verschoben
// Version 0.1.1.10:   Problem mit Darstellung wenn tzername=no gewдhlt wurde behoben
// Version 0.1.1.9:   Pfadermittlung zu den Animationen und den Bildern anhand einer Variablen in der Config.js
// Version 0.1.1.8:   Pfade zu den Animationen und Grafiken werden anhand einer Variablen in der Config.js ermittelt
// Version 0.1.1.7:   Ausrichtung fьr CENTER, LEFT und RIGHT entfernt, dafьr Class tzerbildbereich eingefьhrt, die die Positionsvergabe in der CSS realisieren lдsst
// Version 0.1.1.6:   CloseButton wird nun beim Ьberfahren grьn;   Mauszeiger verдndert sich beim Ьberfahren
// Version 0.1.1.5:   Class tzerlink2 hinzugefьgt fьr Mouseovereffekte;   Im Stykle vom tZersDiv-DIV sind margin-top: 2px; und margin-left: 2px; von der CSS her eingewandert
// Version 0.1.1.4:   Funktion getavatar ausgelagert
// Version 0.1.1.3:   Closebild ist mit in das tZerBild-Verzeichnis gewandert
// Version 0.1.1.2:   Eigene Cursor kцnnen in der CSS gewдhlt werden
// Version 0.1.1.1:   Variabler Pfad zu den Bildern und den Animationen 
// Version 0.1.1.0:   1. Stable

var tzeranimpfad = ToolPfad+'tZersFiles/animationen/';   // Hier den Pfad zu den tZers-Images eintragen
var tzerbildpfad = ToolPfad+'tZersFiles/grafiken/';      // Hier den Pfad zu den tZers-Animationen eintragen

//-------------------------------------------------------------------------------------
// hier wird ein DIV-Tag namens "tZersDiv" mit eingebetteten Object-Child erzeugt, das durch die Funktion "neubestimmen()"
// immer im Sichtbereich, auch beim Scrollen, gehalten und mit der Funktion "ausblenden()" nach einigen Sekunden versteckt wird
//-------------------------------------------------------------------------------------
<!--
// hier kann die GrцЯe und ggf der Name des Closebuttons - der parallel zur ivt-Datei liegt - verдndert werden 
document.write('<img src="'+tzerbildpfad+'close.png" class="icons" onmouseover="src=\''+tzerbildpfad+'/close_d.png\';" onmouseout="src=\''+tzerbildpfad+'/close.png\';" style=\"height:16px; width:16px; position:absolute; visibility:hidden; z-index:30000;\" id="closeButton" onclick="ausblenden()" title="close" alt="Close">');
document.write('<div id="tZersDiv" align=\"right\" style=\" margin-top: 2px; margin-left: 2px; overflow:hidden; position:absolute; top:0; visibility:hidden; z-index:200;\"></div>');
TimeoutClear = 0;  

//-------------------------------------------------------------------------------------
// Der DIV-Tag wird nach einigen Sekunden ausgeblendet
//-------------------------------------------------------------------------------------
function ausblenden() {
  document.getElementById("tZersDiv").style.visibility = "hidden";
  document.getElementById("closeButton").style.visibility = "hidden";
  document.getElementById("tZersDiv").innerHTML = "";
}

//-------------------------------------------------------------------------------------
// Der DIV-Tag wird beim Scrollen nach ein paar Millisekunden auf die neue Position innerhalb des Blickberechs gesetzt
//-------------------------------------------------------------------------------------
function neubestimmen() {
  //-------------------------------------------------------------------------------------
  // tZersHoehenAnpassung verhindert beim tZers-Empfang das vertikale Scrollen ins Unendliche; muss ggf. mit einem grцЯeren Wert angepasst werden.
  // tZersBreitenAnpassung passt die Breite des Ausgabefensters an, dadurch kann das horizontale Scrollen verhindert werden, muss ggf. mit einem grцЯeren Wert angepasst werden.
  //-------------------------------------------------------------------------------------
  tZersHoehenAnpassung  = 4;
  tZersBreitenAnpassung = 21;

  var scrollPos  = getDocElement().scrollTop;
  var bildbreite = getDocElement().offsetWidth;
  var bildhoehe  = getDocElement().offsetHeight;
	
  document.getElementById("closeButton").style.top = scrollPos+7;
  document.getElementById("closeButton").style.left = bildbreite - tZersBreitenAnpassung - document.getElementById("closeButton").style.width.substr(0,2) - 13;
  
  document.getElementById("tZersDiv").style.height = bildhoehe - tZersHoehenAnpassung;
  document.getElementById("tZersDiv").style.width  = bildbreite - tZersBreitenAnpassung;
  document.getElementById("tZersDiv").style.left = 0;
  document.getElementById("tZersDiv").style.top = scrollPos;
  
  if (document.getElementById("tZersDiv").innerHTML != "") { //Diese Abfrage ist nцtig, da es sonst nach Ende des tZers eine Fehlermeldung gibt
    tzerzoom(150); //das berechnet den Zoom immer wieder neu
  }

}

function tzerzoom(grundwert) {
  document.getElementById("tZersObject").Zoom(0); //das setzt den Zoom auf 0
  switch (swfname) {
    // Jeder tZer kann seinen eigenen Zoom mit (wert = grundwert - XX;) - der nicht auf Null sinken darf - bekommen; es gilt: je grцЯer XX, um so grцЯer die Animation
	case "gangsta":		case 'gangsterSheep':	wert = grundwert - 40;		break;
	case "canthearu":	case 'cant_hear':	wert = grundwert - 40;		break;
	case "skratch":		case 'scratch':		wert = grundwert - 40;		break;
	case "boo":					wert = grundwert - 10;		break;
	case "kisses":					wert = grundwert - 25;		break;
	case "chillout":	case 'rastamab':	wert = grundwert - 15;		break;
	case "akitaka":		case 'sappuko':		wert = grundwert - 40;		break;
	case "laugh":					wert = grundwert - 50;		break;
	case "duh":		case 'dahh':		wert = grundwert - 00;		break;
	case "beback":		case 'beBack':		wert = grundwert - 15;		break;
	case "likeu":		case 'iLikeU':		wert = grundwert - 60;		break;
	case "sorry":					wert = grundwert - 58;		break;
	case "gntm_icq_tZer_01_dubist":			wert = grundwert - 60;		break;
	case "gntm_icq_tZer_02_dusiehstaus":		wert = grundwert - 60;		break;
	case "gntm_icq_tZer_03_drama":			wert = grundwert - 60;		break;
	case "gntm_icq_tZer_04_competition":		wert = grundwert - 60;		break;
	case "santa":					wert = grundwert - 60;		break;
	default:					wert = grundwert - 30;		break;
  }
  document.getElementById("tZersObject").Zoom(wert);
}

function tzersabspielen(swflink) {
  setInterval("neubestimmen()", 1);
  document.getElementById("tZersDiv").innerHTML =
  '<object id="tZersObject" classid="CLSID:D27CDB6E-AE6D-11cf-96B8-444553540000" Width=100% height=100% border=0 codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=4,0,0,0">'
  +'<param name="movie" value="'+swflink+'">'
  +'<PARAM NAME=wmode VALUE=transparent>'
  +'</object>';
  window.clearTimeout(TimeoutClear);

  link = swflink.split("swf");
  swfname = link[0].substring(link[0].lastIndexOf('/')+1,link[0].length-1);
  
	switch (swfname.replace(/^\s+|\s+$/g,"")) {
	   case "guby":					timeout = 4500;				break;
	   case "beer":					timeout = 5610;				break;
	   case "zadolbal":				timeout = 7570;				break;
	   case "sobaka":				timeout = 16850;			break;
	   case "devochka":				timeout = 6410;				break;
	   case "bodun":				timeout = 10680;			break;
	   case "serdze":				timeout = 6580;				break;
	   case "smeh":					timeout = 13250;			break;
	   case "mad_dog":				timeout = 8660;				break;
	   case "rosy":					timeout = 12580;			break;
	   case "sobaka_strelyaet":			timeout = 8110;				break;
	   case "rabotaet":				timeout = 11660;			break;
	   case "kot_cool":				timeout = 10660;			break;
	   case "kot_goodbye":				timeout = 9330;				break;
	   case "kot_spasibo":				timeout = 7730;				break;
	   case "kot_nedutza":				timeout = 7660;				break;
	   case "kot_obida":				timeout = 7330;				break;
	   case "kot_wow":				timeout = 9060;				break;
	   case "bad_cold":				timeout = 5660;				break;
	   case "information":				timeout = 6400;				break;
	   case "joy":					timeout = 7200;				break;
	   case "krizis":				timeout = 6700;				break;
	   case "missyou":				timeout = 6750;				break;
	   case "tank":					timeout = 12120;			break;

	   case "gangsta":	case 'gangsterSheep':	timeout = 10000;			break;
	   case "canthearu":	case 'cant_hear':	timeout = 16200;			break;
	   case "skratch":	case 'scratch':		timeout = 8450;				break;
	   case "boo":					timeout = 9000;				break;
	   case "kisses":				timeout = 6750;				break;
	   case "chillout":	case 'rastamab':	timeout = 12750;			break;
	   case "akitaka":	case 'sappuko':		timeout = 17000;			break;
	   case "laugh":				timeout = 8400;				break;
	   case "duh":		case 'dahh':		timeout = 6000;				break;
	   case "beback":	case 'beBack':		timeout = 9500;				break;
	   case "likeu":	case 'iLikeU':		timeout = 10080;			break;
	   case "sorry":				timeout = 12100;			break;

	   case "drako_bolnoy":				timeout = 9300;				break;
	   case "drako_koster":				timeout = 7660;				break;
	   case "drako_love":				timeout = 7060;				break;
	   case "drako_opyatnica":			timeout = 10000;			break;
	   case "drako_snegyrka":			timeout = 6660;				break;
	   case "drako_zombie":				timeout = 7330;				break;
	   case "love_bear_hugs":			timeout = 10000;			break;
	   case "love_bear_kiss":			timeout = 10000;			break;
	   case "love_bear_rose":			timeout = 10000;			break;
	   case "angel":				timeout = 13260;			break;
	   case "wf_love_sdaus":			timeout = 10000;			break;
	   case "wf_love_srazila":			timeout = 10000;			break;

	   case "gntm_icq_tZer_01_dubist":		timeout = 6000;				break;
	   case "gntm_icq_tZer_02_dusiehstaus":		timeout = 6000;				break;
	   case "gntm_icq_tZer_03_drama":		timeout = 6000;				break;
	   case "gntm_icq_tZer_04_competition":		timeout = 6000;				break;
	   case "santa":				timeout = 8500;				break;
	   default:					timeout = 18000;
	}
  TimeoutClear = window.setTimeout("ausblenden();",timeout);
  document.getElementById("tZersObject").StopPlay();
  document.getElementById("tZersDiv").style.visibility = "visible";
  document.getElementById("closeButton").style.visibility = "visible";
  document.getElementById("tZersObject").Play();
}

//-------------------------------------------------------------------------------------
// hier wird die Ausgabe vorbereitet und je nach Wert angezeigt
// der Parameter "durchreichwert" wird einfach nur an verschiedene Erweiterungen weitergereicht
//-------------------------------------------------------------------------------------

function checkTzer(link)
{
	//link[1] && (link[0].substr(0,4)=="tZer" || link[0].substr(54,5)=="xtraz" || link[0].substr(55,5)=="xtraz" || link[0].substr(68,5)=="tzers" || link[0].substr(69,5)=="tzers")
	linkSplit = link[0].split("http://");
	if (linkSplit[1])
	{
		if (linkSplit[1].substr(10, 5)=="xtraz") return 1;
		else if (linkSplit[1].substr(24, 5) == "tzers") return 1;
	}
	else 
	{
		if (link[0].substr(0,4)=="tZer") return 1;
	}
	
	return 0;

}

function tZersOutput (eingangsmeldung,chatpartner,tzersoderbild,zeigetzersname,bekommensenden) {
  einstellungspruefung_tzerausgabe(tzeranimpfad,1,'tzeranimpfad','config.js','\"DeinPfad/\"');
  einstellungspruefung_tzerausgabe(tzerbildpfad,1,'tzerbildpfad','config.js','\"DeinPfad/\"');
  link = mailru(eingangsmeldung);
	eingangsmeldung = mailru(eingangsmeldung);
  link = link.split("swf");
  if (checkTzer(link)) {
    link = link[1].split("http://");
     
    //-------------------------------------------------------------------------------------
    // hier muss der Pfad zu den tZers (.swf- und .png-Dateien) angepasst werden, damit diese gefunden werden
    // StandardmдЯig ist hier das "tZersFiles"-Verzeichnis gewдhlt, das, von der .ivt-Datei aus gesehen, eine Ebene hцher liegt.
    //-------------------------------------------------------------------------------------
    swfname = link[1].substring(link[1].lastIndexOf('/')+1,link[1].length-1);
    bildlink= tzerbildpfad+swfname+'.png';
    swflink = tzeranimpfad+swfname+'.swf';
    tzersname = eingangsmeldung;
	
	tzersname = tzersname.replace(/tZer received: ([ '\/.:_!a-zA-Z0-9]*)<br>[<>= \"_.:\/a-zA-Z0-9]*/g,'$1');                  // tZers als direkte URL 
	tzersname = tzersname.replace(/<a[\/ _.:="a-zA-Z0-9]*>http:[\/ _.:="a-zA-Z0-9]*\/([\/ _.:="a-zA-Z0-9]*).swf<\/a>/g,'$1'); // tZers ьber ICQJ Plus 0.3.8.105 ab Build #94
	switch (tzersname.replace(/^\s+|\s+$/g,"")) {
	   case "guby":					tzersname = "Kiss";			break;
	   case "beer":					tzersname = "Some beer?;)";		break;
	   case "zadolbal":				tzersname = "Sick of you!";		break;
	   case "sobaka":				tzersname = "Want to be with you!";	break;
	   case "devochka":				tzersname = "Sob...!";			break;
	   case "bodun":				tzersname = "Hangover...";		break;
	   case "serdze":				tzersname = "Heart";			break;
	   case "smeh":					tzersname = "Wicked!";			break;
	   case "mad_dog":				tzersname = "And I've gone mad...";	break;
	   case "rosy":					tzersname = "Million red roses!";	break;
	   case "sobaka_strelyaet":			tzersname = "I'll shoot you down!";	break;
	   case "rabotaet":				tzersname = "I'm busy";			break;
	   case "kot_cool":				tzersname = "Cool!";			break;
	   case "kot_goodbye":				tzersname = "See you";			break;
	   case "kot_spasibo":				tzersname = "Thanks!";			break;
	   case "kot_nedutza":				tzersname = "Don't be sulky!";		break;
	   case "kot_obida":				tzersname = "Offended";			break;
	   case "kot_wow":				tzersname = "Wow!";			break;
	   case "bad_cold":				tzersname = "I am ill";			break;
	   case "information":				tzersname = "Mental explosion";		break;
	   case "joy":					tzersname = "Happy";			break;
	   case "krizis":				tzersname = "Broke";			break;
	   case "missyou":				tzersname = "Miss you";			break;
	   case "tank":					tzersname = "We'll do it!";		break;

	   case "gangsta":	case 'gangsterSheep':	tzersname = "Gangsta";			break;
	   case "canthearu":	case 'cant_hear':	tzersname = "Can't Hear U";		break;
	   case "skratch":	case 'scratch':		tzersname = "Scratch";			break;
	   case "boo":					tzersname = "Booooo";			break;
	   case "kisses":				tzersname = "Kisses";			break;
	   case "chillout":	case 'rastamab':	tzersname = "Chill Out";		break;
	   case "akitaka":	case 'sappuko':		tzersname = "Akitaka";			break;
	   case "laugh":				tzersname = "Hilaaarious";		break;
	   case "duh":		case 'dahh':		tzersname = "Like Duh!";		break;
	   case "beback":	case 'beBack':		tzersname = "L8R";			break;
	   case "likeu":	case 'iLikeU':		tzersname = "Like U!";			break;
	   case "sorry":				tzersname = "I'm Sorry";		break;

	   case "drako_bolnoy":				tzersname = "Bless you!";		break;
	   case "drako_koster":				tzersname = "Lunch";			break;
	   case "drako_love":				tzersname = "Thinking of you";		break;
	   case "drako_opyatnica":			tzersname = "Friday";			break;
	   case "drako_snegyrka":			tzersname = "Love people";		break;
	   case "drako_zombie":				tzersname = "Zombie";			break;
	   case "love_bear_hugs":			tzersname = "Hugs";			break;
	   case "love_bear_kiss":			tzersname = "Kisses";			break;
	   case "love_bear_rose":			tzersname = "With love";		break;
	   case "angel":				tzersname = "I choose you";		break;
	   case "wf_love_sdaus":			tzersname = "I surrender";		break;
	   case "wf_love_srazila":			tzersname = "I am smitten";		break;

	   case "gntm_icq_tZer_01_dubist":		tzersname = "TopModel";			break;
	   case "gntm_icq_tZer_02_dusiehstaus":		tzersname = "Aussehen";			break;
	   case "gntm_icq_tZer_03_drama":		tzersname = "Drama";			break;
	   case "gntm_icq_tZer_04_competition":		tzersname = "Competition";		break;
	   case "santa":				tzersname = "Santa";			break;
	   default:										break;
	}
      
    if (zeigetzersname == 'yes') {
      //-------------------------------------------------------------------------------------
      // die folgende IF-Anweisung erzeugt und gibt den tZers-Namen aus, wenn ein tZer empfangen wird. Kann auch weggelassen oder durch einen anderen
      // document.write-Befehl ersetzt werden. Der erzeugte Name wird nicht in der History gespeichert. Dort wird lediglich der unverдnderte Ausdruck gespeichert.
      //-------------------------------------------------------------------------------------
      if (bekommensenden == 'get') {
        document.write(chatpartner+' sent you toon <font class="tzerlink" onmouseout="this.className=\'tzerlink\'" onmouseover="this.className=\'tzerlink2\'" onclick="tzersabspielen(&quot;'+swflink+'&quot;)">'+tzersname+'</font>');
      }  
      else {
        document.write('You sent toon <font class="tzerlink" onmouseout="this.className=\'tzerlink\'" onmouseover="this.className=\'tzerlink2\'" onclick="tzersabspielen(&quot;'+swflink+'&quot;)">'+tzersname+'</font>');
      }
    }

    if (tzersoderbild=="tzers" || tzersoderbild=="both") {
      tzersabspielen(swflink);
    }
    if (tzersoderbild=="picture" || tzersoderbild=="both") {
      document.write('<div class="tzerbildbereich">');
      document.write('<img class="tzerbild" src="'+bildlink+'" alt="'+tzersname+'" title="'+tzersname+'" onclick="tzersabspielen(&quot;'+swflink+'&quot;)">'); 
      document.write('</div>');
    }
    return eingangsmeldung.split("</a>")[1];
  }

  else {
    return eingangsmeldung;
  }
}

function mailru(text)
{
  if (text.indexOf("&lt;SMILE&gt;id=flas")!= -1)
  {
		var tzstr = "";
		if (text.indexOf('id=flash_49')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/wf_love_srazila.swf';
		}
		else if (text.indexOf('id=flash_48')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/wf_love_sdaus.swf';
		}
		else if (text.indexOf('id=flash_47')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/angel.swf';
		}
		else if (text.indexOf('id=flash_46')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/love_bear_rose.swf';
		}
		else if (text.indexOf('id=flash_45')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/love_bear_kiss.swf';
		}
		else if (text.indexOf('id=flash_44')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/love_bear_hugs.swf';
		}
		else if (text.indexOf('id=flash_43')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/drako_zombie.swf';
		}
		else if (text.indexOf('id=flash_42')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/drako_snegyrka.swf';
		}
		else if (text.indexOf('id=flash_41')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/drako_opyatnica.swf';
		}
		else if (text.indexOf('id=flash_40')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/drako_love.swf';
		}
		else if (text.indexOf('id=flash_39')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/drako_koster.swf';
		}
		else if (text.indexOf('id=flash_38')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/drako_bolnoy.swf';
		}
		else if (text.indexOf('id=flash_37')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/sorry.swf';
		}
		else if (text.indexOf('id=flash_36')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/likeu.swf';
		}
		else if (text.indexOf('id=flash_35')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/beback.swf';
		}
		else if (text.indexOf('id=flash_34')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/duh.swf';
		}
		else if (text.indexOf('id=flash_33')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/laugh.swf';
		}
		else if (text.indexOf('id=flash_32')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/akitaka.swf';
		}
		else if (text.indexOf('id=flash_31')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/chillout.swf';
		}
		else if (text.indexOf('id=flash_30')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/kisses.swf';
		}
		else if (text.indexOf('id=flash_29')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/boo.swf';
		}
		else if (text.indexOf('id=flash_28')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/skratch.swf';
		}
		else if (text.indexOf('id=flash_27')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/canthearu.swf';
		}
		else if (text.indexOf('id=flash_26')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/gangsta.swf';
		}
		else if (text.indexOf('id=flash_25')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/tank.swf';
		}
		else if (text.indexOf('id=flash_24')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/missyou.swf';
		}
		else if (text.indexOf('id=flash_23')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/krizis.swf';
		}
		else if (text.indexOf('id=flash_22')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/joy.swf';
		}
		else if (text.indexOf('id=flash_21')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/information.swf';
		}
		else if (text.indexOf('id=flash_20')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/bad_cold.swf';
		}
		else if (text.indexOf('id=flash_17')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/kot_wow.swf';
		}
		else if (text.indexOf('id=flash_16')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/kot_obida.swf';
		}
		else if (text.indexOf('id=flash_15')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/kot_nedutza.swf';
		}
		else if (text.indexOf('id=flash_14')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/kot_spasibo.swf';
		}
		else if (text.indexOf('id=flash_13')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/kot_goodbye.swf';
		}
		else if (text.indexOf('id=flash_12')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/kot_cool.swf';
		}
		else if (text.indexOf('id=flash_11')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/rabotaet.swf';
		}
		else if (text.indexOf('id=flash_10')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/sobaka_strelyaet.swf';
		}
		else if (text.indexOf('id=flash_9')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/rosy.swf';
		}
		else if (text.indexOf('id=flash_8')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/mad_dog.swf';
		}
		else if (text.indexOf('id=flash_7')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/smeh.swf';
		}
		else if (text.indexOf('id=flash_6')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/serdze.swf';
		}
		else if (text.indexOf('id=flash_5')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/bodun.swf';
		}
		else if (text.indexOf('id=flash_4')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/devochka.swf';
		}
		else if (text.indexOf('id=flash_3')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/sobaka.swf';
		}
		else if (text.indexOf('id=flash_2')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/zadolbal.swf';
		}
		else if (text.indexOf('id=flas_1')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/beer.swf';
		}
		else if (text.indexOf('id=flash_1')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/beer.swf';
		}
		else if (text.indexOf('id=flash_0')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/guby.swf';
		}
		else if (text.indexOf('id=flash_gntm_icq_tZer_01_dubist')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/gntm_icq_tZer_01_dubist.swf';
		}
		else if (text.indexOf('id=flash_gntm_icq_tZer_02_dusiehstaus')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/gntm_icq_tZer_02_dusiehstaus.swf';
		}
		else if (text.indexOf('id=flash_gntm_icq_tZer_03_drama')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/gntm_icq_tZer_03_drama.swf';
		}
		else if (text.indexOf('id=flash_gntm_icq_tZer_04_competition')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/gntm_icq_tZer_04_competition.swf';
		}
		else if (text.indexOf('id=flash_santa')!= -1)
		{
			tzstr += 'http://update.icq.com/cb/icq75/tzers/santa.swf';
		}
		else 
		{
			return text;
		}
		var tzerfile = '<a class=\"link\" target=\"_self\" href=' + tzstr +'>'+tzstr+'</a>';
		return tzerfile;
  }
  return text;
}