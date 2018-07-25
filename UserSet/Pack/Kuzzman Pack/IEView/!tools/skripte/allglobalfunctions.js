// Version 0.2.1.0:   Voraussetzung fьr automatisches цffnen von Bildbereichen
// Version 0.2.0.0:   Umbenennung der globalfunction.js in allglobalfunctions.js: bewerkstelligt die frьhe Einbindung durch basicfile.js
// Version 0.1.2.0:   Ermittlung des Body/Document-Element eingebracht
// Version 0.1.1.11:  URLs die auf / enden werden nun nicht mehr am letzten / sondern am vorletzten / gekьrzt
// Version 0.1.1.10:  Verkьrzung von PHP-URLs  wirkt sich nicht mehr auf URLs auf, die nur PH beinhalten  und ein ? enthalten
// Version 0.1.1.9:   Angepasste Webbilderanbieter
// Version 0.1.1.8:   Linkverkьrzer hat nun mehrere Rьckgabeformate (langer Link, kurzer Link, kein Link und fester Wert)
// Version 0.1.1.7:   Einstellungsьberprьfung ausgelagert -> optionscheck.js
// Version 0.1.1.6:   Funktion zur Ьberprьfung von Einstellungen (siehe showdata.js) ; Funktion zur Ermittlung des Icons eines Dateitypen
// Version 0.1.1.5:   screenbildersteller als Variablen in die config.js ausgelagert
// Version 0.1.1.4:   User Einstellungen ins die Config.js verschoben
// Version 0.1.1.3:   Videobuttonverhalten lassen sich in der config.js per Variable anpassen
// Version 0.1.1.2:   Class Link-Foto + Class Link-Foto2 ersetzt durch Class Imagebox + Imagebox2
// Version 0.1.1.1:   Weiterer  Screenbildersteller hinzugefьgt
// Version 0.1.1.0:   1. Stable

// Funktion, um das Body/Document-Element zu erhalten
function getDocElement() {
  if (getDocElement.element !== undefined) return getDocElement.element;
  if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
    getDocElement.element = document.documentElement;
  }
  else if (typeof document.all.body != 'undefined') {
    getDocElement.element = document.all.body;
  }
  else if (typeof document.body != 'undefined') {
    getDocElement.element = document.body;
  }
  return getDocElement.element;
}


//Funktion zur Ermittlung des Icons eines Dateitypen
function dateitypiconermittlung(dateiendung) {
  dateiendung = dateiendung.toLowerCase();    
  switch (dateiendung) {
  // Archive
  case "7z":   icon = 'Archive/7zip'; break;
  case "rar":  icon = 'Archive/rar';  break;
  case "zip":  icon = 'Archive/zip';  break;
  // Audio
  case "mp3":  icon = 'Audio/mp3'; break;
  case "mid":  icon = 'Audio/mid'; break;
  case "ogg":  icon = 'Audio/ogg'; break;
  case "wav":  icon = 'Audio/wav'; break;
  case "wma":  icon = 'Audio/wma'; break;
  case "flac":  icon = 'Audio/flac'; break;
  case "m4a":  icon = 'Audio/m4a'; break;
  // Bilder
  case "bmp":  icon = 'Image/bmp';  break;
  case "gif":  icon = 'Image/gif';  break;
  case "jpg":  icon = 'Image/jpg';  break;
  case "jpeg": icon = 'Image/jpeg'; break;
  case "png":  icon = 'Image/png';  break;
  case "tif":  icon = 'Image/tif';  break;
  case "eps":  icon = 'Image/eps';  break;
  case "raw":  icon = 'Image/raw';  break;
  case "psd":  icon = 'Image/psd';  break;
  // Office
  case "csv":  icon = 'Office/csv';  break;
  case "doc":  icon = 'Office/doc';  break;
  case "docx": icon = 'Office/docx'; break;
  case "mdb":  icon = 'Office/mdb';  break;
  case "mdbx": icon = 'Office/mdbx'; break;
  case "pdf":  icon = 'Office/pdf';  break;
  case "ppt":  icon = 'Office/ppt';  break;
  case "pptx": icon = 'Office/pptx'; break;
  case "vsd":  icon = 'Office/vsd';  break;
  case "xls":  icon = 'Office/xls';  break;
  case "xlsm": icon = 'Office/xlsx'; break;
  case "xlsx": icon = 'Office/xlsx'; break;
  // Videos      
  case "avi":  icon = 'Video/avi';   break;
  case "divx": icon = 'Video/divx';  break;
  case "flv":  icon = 'Video/flv';   break;
  case "mkv":  icon = 'Video/mkv';   break;
  case "mp4":  icon = 'Video/mp4';   break;
  case "mpg":  icon = 'Video/mpg';   break;
  case "mpeg": icon = 'Video/mpeg';  break;
  case "mov":  icon = 'Video/mov';   break;
  case "wmv":  icon = 'Video/wmv';   break;
  // System
  case "asp":  icon = 'System/asp';  break;
  case "bat":  icon = 'System/bat';  break;
  case "bin":  icon = 'System/bin';  break;
  case "css":  icon = 'System/css';  break;
  case "cue":  icon = 'System/cue';  break;
  case "exe":  icon = 'System/exe';  break;
  case "htm":  icon = 'System/htm';  break;
  case "html": icon = 'System/html'; break;
  case "ini":  icon = 'System/ini';  break;
  case "iso":  icon = 'System/iso';  break;
  case "nfo":  icon = 'System/nfo';  break;
  case "txt":  icon = 'System/txt';  break;
  case "xml":  icon = 'System/xml';  break;
  case "sln":  icon = 'System/sln';  break;
  case "vcproj":  icon = 'System/vcproj';  break;
  case "dll":  icon = 'System/dll';  break;
  default:  icon = 'System/default'; break;
  }
  
  return icon;
 }

// animierte Avatare werden ermittelt und im Ausgabebereich dargestellt
function getavatar(avatar){
  if( avatar.indexOf('.swf',0)!=-1) {
    document.write('<object width="48" height="60" name="movie" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" class="headeravaflash">'
    + '<param name=movie value=' + avatar + '>'
    + '<param name=quality value=high>'
    + '<embed src=' + avatar + ' quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" class="headeravaflash">'
    + '</embed></object>');
  }
  else {
    document.write('<img src="' + avatar + '" width="48" />');
  }
}

// animierte Avatare werden ermittelt und im Ausgabebereich dargestellt
function getavatarsmall(avatar){
  if( avatar.indexOf('.swf',0)!=-1) {
    document.write('<object name="movie" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0"  class="headeravaflash">'
    + '<param name=movie value=' + avatar + '>'
    + '<param name=quality value=high>'
    + '<embed src=' + avatar + ' quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" class="headeravaflash">'
    + '</embed></object>');
  }
  else	{
    document.write('<img src="' + avatar + '" />');
  }
}

// Appends text via a hidden <div></div>
function appendGroupMsg() {
   theMsg=document.getElementById("message_current");
   newMsg=document.getElementById("msg_new_grouped");

   if (theMsg && newMsg) {
      theMsg.innerHTML+=newMsg.innerHTML;
      // no need to have the info in the log twice (it`s hell on copy and paste)
      newMsg.innerHTML="";
      // we don't want to confuse this w/ the next message.
      newMsg.id="";
   }
}

// this groupped message is done, we don't want to confuse it w/ the next group
function endGroupMsg() {
   theMsg=document.getElementById("message_current");

   if (theMsg) {
      theMsg.id="message_history";
   }
}

// verkьrzt einen Link
function linkverkuerzer(orilink) {
var kurzerlink;
switch (linkverkuerzen.toLowerCase()) {
  case "no": case "nein":
    kurzerlink = orilink;
  break;
  case "yes": case "ja":
    if (orilink.substr(orilink.length-1,1)=="/") orilink="XXXXXXXXXX"+orilink.substr(0,orilink.length-1);  // entfernt am Ende der URL den /
    kurzerlink = orilink.replace(/(\/\/[a-zA-Z0-9._% -]*\/)([a-zA-Z0-9._% -~\/]*)(\/[a-zA-Z0-9._% -~]*)/g,'$1...$3');
    if (kurzerlink.substr(0,10)=="XXXXXXXXXX") kurzerlink=kurzerlink.substr(10,orilink.length-1)+"/";      // setzt am Ende der URL den /
    if (window.location.search != "") kurzerlink = kurzerlink.replace(/(\/\/[a-zA-Z0-9._% -~:\/]*).php([a-zA-Z0-9._% -~:\/]*)/g,'$1.php? ...');
  break;
  case "":
    kurzerlink = "";
  break;
  default:
    kurzerlink = linkverkuerzen;
  break;
}
return kurzerlink;
}

function mausdrauf(ids) {
  if ((vorschaubildview.toLowerCase()=="yes") || (vorschaubildview.toLowerCase()=="ja")) {
    idlink = ids.split('[trenn]')[0];
    idbildlink = ids.split('[trenn]')[1];
    if (idbildlink) {
      idname = ids.split('[trenn]')[2];
      if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
        scrollPos     = document.documentElement.scrollTop;
        Fensterhoehe  = document.documentElement.offsetHeight;
        Fensterbreite = document.documentElement.offsetWidth;
        ScrollbalkenY = 2;
        ScrollbalkenX = 2;
      }
      else {
        if (typeof document.body != 'undefined') {
          if(document.getElementById){
            scrollPos     = document.getElementById("Body").scrollTop;
            Fensterhoehe  = document.getElementById("Body").offsetHeight;
            Fensterbreite = document.getElementById("Body").offsetWidth;
            ScrollbalkenY = 20;
            ScrollbalkenX = 20;
          }
          else {
            scrollPos     = document.all.body.scrollTop;
            Fensterhoehe  = document.all.body.offsetHeight;
            Fensterbreite = document.all.body.offsetWidth;
            ScrollbalkenY = 20;
            ScrollbalkenX = 20;
          }
        }
      }
      document.getElementById("mausbereich").innerHTML='<img id="bildvorschau" class="bildvorschau" src="'+idbildlink+'">'; 

      if (vorschaubildposiY==-1) {
        if (window.event.clientY + document.getElementById("bildvorschau").height+ScrollbalkenY+10 > Fensterhoehe) {
          YY = scrollPos+Fensterhoehe-document.getElementById("bildvorschau").height-ScrollbalkenY;
        }
        else {
          YY = scrollPos+window.event.clientY+10;
        }
      }
      else {
        YY = scrollPos+(Fensterhoehe-document.getElementById("bildvorschau").height-ScrollbalkenY)/100*vorschaubildposiY;
      }
      
      if (vorschaubildposiX==-1) {
        if (window.event.clientX + document.getElementById("bildvorschau").width+ScrollbalkenX+10 > Fensterbreite) {
          XX = Fensterbreite-document.getElementById("bildvorschau").width-ScrollbalkenX;
        }
        else {
          XX = window.event.clientX+10;
        }
      }
      else {
        XX = (Fensterbreite-document.getElementById("bildvorschau").width-ScrollbalkenX)/100*vorschaubildposiX;
      }
      
      document.getElementById("mausbereich").style.top  = YY;
      document.getElementById("mausbereich").style.left = XX;
    }
  }
}

function mausrunter() {
  document.getElementById("mausbereich").innerHTML="";
}

function otherarea(iddiv,ids) {
  if (iddiv.innerHTML!="") {
    iddiv.innerHTML="";
    iddiv.style.display="none";
  }
  else {
    idlink = ids.split('[trenn]')[0];
    ausgabe = '<br>&nbsp;&nbsp;&nbsp;<a class="Link-Text" onmouseout="this.className=\'Link-Text\';" onmouseover="this.className=\'Link-Text2\';" href="'+idlink+'">'+idlink+'</a><br><br>';
    iddiv.innerHTML=ausgabe;
    iddiv.style.display="block";
  }
}  

function openPictureArea(ids){
    idlink = ids.split('[trenn]')[0];
    idbildlink = ids.split('[trenn]')[1];
    idname = ids.split('[trenn]')[2];
    newAusgabe = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
                +'<img src="'+imagespfad+'/arrow_turn_left.png" class="icons" onmouseover="src=\''+imagespfad+'/arrow_turn_left_d.png\';" onmouseout="src=\''+imagespfad+'/arrow_turn_left.png\'" onmousedown="getElementById(\''+idname+'i\').style.filter=\'progid:DXImageTransform.Microsoft.BasicImage(grayscale=0, xray=0, mirror=0, invert=0, opacity=1, rotation=3);\'" title="Повернуть влево">'
                +'<img src="'+imagespfad+'/arrow_up.png" class="icons" onmouseover="src=\''+imagespfad+'/arrow_up_d.png\';" onmouseout="src=\''+imagespfad+'/arrow_up.png\'" onmousedown="getElementById(\''+idname+'i\').style.filter=\'progid:DXImageTransform.Microsoft.BasicImage(grayscale=0, xray=0, mirror=0, invert=0, opacity=1, rotation=4)\'" title="Стандартная ориентация">'
                +'<img src="'+imagespfad+'/arrow_turn_right.png" class="icons" onmouseover="src=\''+imagespfad+'/arrow_turn_right_d.png\';" onmouseout="src=\''+imagespfad+'/arrow_turn_right.png\'" onmousedown="getElementById(\''+idname+'i\').style.filter=\'progid:DXImageTransform.Microsoft.BasicImage(grayscale=0, xray=0, mirror=0, invert=0, opacity=1, rotation=1)\'" title="Повернуть вправо">&nbsp;&nbsp;&nbsp;';
      //toolbar2
    newAusgabe = newAusgabe +'<img src="'+imagespfad+'/zoom_in.png" class="icons" onmouseover="src=\''+imagespfad+'/zoom_in_d.png\';" onmouseout="src=\''+imagespfad+'/zoom_in.png\'" onmousedown="resize_big(document.getElementById(\''+idname+'i\'))" title="Увеличить">'
                +'<img src="'+imagespfad+'/zoom_out.png" class="icons" onmouseover="src=\''+imagespfad+'/zoom_out_d.png\';" onmouseout="src=\''+imagespfad+'/zoom_out.png\'" onmousedown="resize_small(document.getElementById(\''+idname+'i\'))" title="Уменьшить"><br>';
    newAusgabe = newAusgabe +'<a href='+idlink+'><img id="'+idname+'i" class="imagebox" onmouseout="this.className=\'imagebox\'" onmouseover="this.className=\'imagebox2\'" src="'+idbildlink+'" alt="'+idlink+'" onload="resize(this)"></a><br>';
    return newAusgabe;
}


function picturearea(bilderdiv,ids) {
  if (bilderdiv.innerHTML!="") {
    bilderdiv.innerHTML="";
    bilderdiv.style.display="none";
  }
  else {
    idlink = ids.split('[trenn]')[0];
    idbildlink = ids.split('[trenn]')[1];
    idname = ids.split('[trenn]')[2];
    bilderdiv.innerHTML = openPictureArea(ids);
    bilderdiv.style.display="block";
  }
}

function resize_animation(bereich,veraengerungsart) { 
  bereich.display = "inline"; 
  switch (veraengerungsart) {
  case "vergroessern": 
    if ((bereich.height<3200) && (bereich.width<3200)) {
      bereich.height = (bereich.height * 1.1) + "px"; 
      bereich.width  = (bereich.width  * 1.1) + "px"; 
    }
  break;
  case "verkleinern": 
    if ((bereich.height<3200) && (bereich.width<3200)) {
      bereich.height = (bereich.height / 1.1) + "px"; 
      bereich.width  = (bereich.width  / 1.1) + "px"; 
    }
  break;
  case "seitenverhaeltnisgroesser":
    if (seitenverhaeltnis < 20/9) {
      seitenverhaeltnis += 1/18;
      bereich.width = bereich.width * seitenverhaeltnis / (seitenverhaeltnis-1/18);
    }
  break;
  case "seitenverhaeltnisreset":
    seitenverhaeltnis = proportion;
    bereich.width = bereich.height * seitenverhaeltnis;
  break;
  case "seitenverhaeltniskleiner":
    if (seitenverhaeltnis > 9/9) {
      seitenverhaeltnis -= 1/18;
      bereich.width = bereich.width * seitenverhaeltnis / (seitenverhaeltnis+1/18);
    }
  break;
  }
} 

//resize
function resize(img) { 
  img.style.display = "inline"; 
  if(img.width > maxwidth) {
    img.style.height = (img.height * maxwidth / img.width) + "px"; 
    img.style.width = maxwidth+'px'; 
  } 
  if(img.height > maxheight) {
    img.style.width = (img.width * maxheight / img.height) + "px"; 
    img.style.height = maxheight+'px';
  }
}  

//resize +
function resize_big(img) { 
  img.style.display = "inline"; 
  if ((img.height<3200) && (img.width<3200)) {
    img.style.height = (img.height * 1.1) + "px"; 
    img.style.width  = (img.width  * 1.1) + "px"; 
  }
} 

//resize -
function resize_small(img) { 
  img.style.display = "inline"; 
  if ((img.height>10) && (img.width>10)) { 
    img.style.height = (img.height / 1.1) + "px"; 
    img.style.width  = (img.width  / 1.1) + "px"; 
  }
} 

// hmm it's hard for me, please help coding :-)
function rotate(img) {  
  imgRotation = new Array();
  if (!imgRotation[obj.src]) {
    imgRotation[obj.src] = 1;
  }
  else {
    imgRotation[obj.src]++;
  }      
  obj.style.filter = 'progid:DXImageTransform.Microsoft.BasicImage(rotation='+(imgRotation[obj.src]%4)+')';
}

// Hier wird der Anbieter ausgewдhlt, der von Internetseiten Grafiken erstellt, die dann als Vorschau dienen
function screenbildersteller(link) {
  var anbieter = '\"1\" -> http://images.websnapr.com\n\"2\" -> http://ss.puxz.com\n\"3\" -> http://screen.puxz.com\n\"4\" -> http://www.artviper.net\n\"5\" -> http://www.shrinktheweb.com   (ACHTUNG: Benцtigt Account)';
  einstellungspruefung_globalfunctions(makeurlscreenanbieter,1,'makeurlscreenanbieter','config.js',anbieter);
  einstellungspruefung_globalfunctions(anbieterpasswort,2,'anbieterpasswort','config.js','Bitte geben Sie ein Passwort an!');
  switch (makeurlscreenanbieter) {
    case "1":
      switch (vorschaugroesse.toLowerCase()) {
        case "1": groesse="s"; break;
        case "2": groesse="t"; break;
        default:  groesse="s"; break;
      }
      screenshotlink = 'http://images.websnapr.com/?url='+link+'&size='+groesse;
    break;
    case "2":
      if ((vorschaugroesse<6) && (vorschaugroesse>0)) {
        vorschaubreite = vorschaugroesse*80;
        vorschauhoehe  = vorschaugroesse*60;
      }
      else {
        vorschaubreite = 80;
        vorschauhoehe  = 60;
      }
      screenshotlink = 'http://livethumb.de/?url='+link+'&size='+vorschaubreite+'x'+vorschauhoehe;
    break;
    case "3":
      switch (vorschaugroesse.toLowerCase()) {
        case "1": groesse="sm";  break;
        case "2": groesse="lg";  break;
        case "3": groesse="xlg"; break;
        default:  groesse="sm";  break;
      }
      screenshotlink = ''
    break;
    default:
    break;
  }
  return screenshotlink;
}

function swfarea(swfflash,ids) { 
  if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
    swfbereich = swfflash.style;
    hoch  = document.documentElement.offsetHeight;
    breit = document.documentElement.offsetWidth;
  }
  else {
    if (typeof document.body != 'undefined') {
      if(document.getElementById){
        swfbereich = swfflash.style;
        if (document.getElementById("Body").offsetWidth>document.getElementById("Body").offsetHeight){
          hoch  = document.getElementById("Body").offsetHeight * 3/4;
          breit = hoch * seitenverhaeltnis;
        }
        else {
          breit = document.getElementById("Body").offsetWidth * 3/4;
          hoch  = breit * 1/seitenverhaeltnis;
        }
      }
      else {
        if (document.getElementById("Body").offsetWidth>document.getElementById("Body").offsetHeight){
          hoch  = document.all.body.offsetHeight * 3/4;
          breit = hoch * seitenverhaeltnis;
        }
        else {
          breit = document.all.body.offsetWidth * 3/4;
          hoch  = breit * 1/seitenverhaeltnis;
        }
      }
    }
  }
  idlink = ids.split('[trenn]')[0];
  idname = ids.split('[trenn]')[1];
  if (swfflash.innerHTML!="") {
    swfflash.innerHTML="";
    swfbereich.display = 'none';
  }
  else {
      //toolbar2
    ausgabe = '<img src="'+imagespfad+'zoom_in.png" class="icons" onmouseover="src=\''+imagespfad+'zoom_in_d.png\';" onmouseout="src=\''+imagespfad+'zoom_in.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'swf\'),\'vergroessern\')" title="Увеличить">'
             +'<img src="'+imagespfad+'zoom_out.png" class="icons" onmouseover="src=\''+imagespfad+'zoom_out_d.png\';" onmouseout="src=\''+imagespfad+'zoom_out.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'swf\'),\'verkleinern\')" title="Уменьшить">&nbsp;&nbsp;&nbsp;';
      //toolbar3
    ausgabe = ausgabe+'<img src="'+imagespfad+'breiter.png" class="icons" onmouseover="src=\''+imagespfad+'breiter_d.png\';" onmouseout="src=\''+imagespfad+'breiter.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'swf\'),\'seitenverhaeltnisgroesser\')" title="Увеличить соотношение сторон">'
                     +'<img src="'+imagespfad+'reset.png" class="icons" onmouseover="src=\''+imagespfad+'/reset_d.png\';" onmouseout="src=\''+imagespfad+'/reset.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'swf\'),\'seitenverhaeltnisreset\')" title="Нормальный режим">'
                     +'<img src="'+imagespfad+'schmaler.png" class="icons" onmouseover="src=\''+imagespfad+'/schmaler_d.png\';" onmouseout="src=\''+imagespfad+'/schmaler.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'swf\'),\'seitenverhaeltniskleiner\')" title="Уменьшить соотношение сторон"><br>';
    ausgabe = ausgabe+'<object id="'+idname+'swf" width="'+breit+'" height="'+hoch+'" classid="CLSID:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://active.macromedia.com/flash2/cabs/swflash.cab#version=4,0,0,0">';
    ausgabe = ausgabe+'<param name="movie" value="'+idlink+'">';
    ausgabe = ausgabe+'</object>';
    swfflash.innerHTML=ausgabe;
    swfbereich.display = 'block';
  }
}

function videoarea(videos,ids,popup) {
  if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
      videobereich = videos.style;
      // <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
      // <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
      // <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
      // <!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
      // <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
      // <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
      // <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
      hoch  = document.documentElement.offsetHeight * 3/4;
      breit = document.documentElement.offsetWidth * 3/4;
  }
  else {
    if (typeof document.body != 'undefined') {
      if(document.getElementById){
        videobereich = videos.style;
        // ohne DOCTYPE
        // <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 2.0//EN"> 
        // <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN"
        // <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
        if (document.getElementById("Body").offsetWidth>document.getElementById("Body").offsetHeight){
          hoch  = document.getElementById("Body").offsetHeight * 3/4;
          breit = hoch * seitenverhaeltnis;
        }
        else {
          breit = document.getElementById("Body").offsetWidth * 3/4;
          hoch  = breit * 1/seitenverhaeltnis;
        }
      }
      else {
        if (document.getElementById("Body").offsetWidth>document.getElementById("Body").offsetHeight){
          hoch  = document.all.body.offsetHeight * 3/4;
          breit = hoch * seitenverhaeltnis;
        }
        else {
          breit = document.all.body.offsetWidth * 3/4;
          hoch  = breit * 1/seitenverhaeltnis;
        }
      }
    }
  }
  idlink = ids.split('[trenn]')[0];
  idname = ids.split('[trenn]')[1];
  if (Videobutton!=2) {
    popup = Videobutton;
  }
  if (popup == 1) {
    videoplay(idlink,idname,hoch,breit,popup);
  }
  else {  
    if (videos.innerHTML!="") {
      if (videobereich.display == 'none') {
        videobereich.display = 'block';
      }
      else {
        videobereich.display = 'none';
      }
    }
    else {
      var videostring = videoplay(idlink,idname,hoch,breit,popup);
      if (videostring!=0) {
          //toolbar2
        ausgabe = '<img src="'+imagespfad+'/zoom_in.png" class="icons" onmouseover="src=\''+imagespfad+'/zoom_in_d.png\';" onmouseout="src=\''+imagespfad+'/zoom_in.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'video\'),\'vergroessern\')" title="Увеличить">'
                 +'<img src="'+imagespfad+'/zoom_out.png" class="icons" onmouseover="src=\''+imagespfad+'/zoom_out_d.png\';" onmouseout="src=\''+imagespfad+'/zoom_out.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'video\'),\'verkleinern\')" title="Уменьшить">&nbsp;&nbsp;&nbsp;';
          //toolbar3
        ausgabe = ausgabe+'<img src="'+imagespfad+'/breiter.png" class="icons" onmouseover="src=\''+imagespfad+'/breiter_d.png\';" onmouseout="src=\''+imagespfad+'/breiter.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'video\'),\'seitenverhaeltnisgroesser\')" title="Увеличить соотношение сторон">'
                         +'<img src="'+imagespfad+'/reset.png" class="icons" onmouseover="src=\''+imagespfad+'/reset_d.png\';" onmouseout="src=\''+imagespfad+'/reset.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'video\'),\'seitenverhaeltnisreset\')" title="Нормальный вид">'
                         +'<img src="'+imagespfad+'/schmaler.png" class="icons" onmouseover="src=\''+imagespfad+'/schmaler_d.png\';" onmouseout="src=\''+imagespfad+'/schmaler.png\'" onmousedown="resize_animation(document.getElementById(\''+idname+'video\'),\'seitenverhaeltniskleiner\')" title="Уменьшить соотношение сторон"><br>';
        ausgabe = ausgabe+videoplay(idlink,idname,hoch,breit,popup);
        videobereich.display = 'block';
      }
      else {
        ausgabe = "";
        videobereich.display = 'none';
      }
      videos.innerHTML=ausgabe;
    }
  }
}