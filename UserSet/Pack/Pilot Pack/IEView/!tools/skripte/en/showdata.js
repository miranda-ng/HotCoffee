// Version 0.2.5.1:   Stammverzeichniserkennung hinzugefьgt; Ьberprьfung aller Einstellungen
// Version 0.2.5.0:   Erkennung des Transfertyps neu geschrieben; Ausgaben fьr Tranfers mit 2+ Dateien hinzugefьgt
// Version 0.2.4.3:   Endung AESHELL bei verschlьsselten Dateitransfers entfernen
// Version 0.2.4.2:   Ьberprьfung der Korrektheit des Dateipfades in der Variable "empfangsdateipfad"
// Version 0.2.4.1:   Erkennung von absolutem Dateifpad in Variable "empfangsdateipfad"
// Version 0.2.4.0:   Icons fьr diverse Dateitypen hinzugefьgt
// Version 0.2.3.1:   Pfade kцnnen nun in der Config.js angepasst werden
// Version 0.2.3.0:   Fehlerhafter Dateipfad bei Dateinamen mit Umlauten gefixt
// Version 0.2.2.1:   User Einstellungen in die Config.js verschoben
// Version 0.2.2.0:   2. Stable
// Version 0.2.1.5:   Class Link-Foto + Class Link-Foto2 ersetzt durch Class Imagebox + Imagebox2; Class Otherbox eingefьhrt
// Version 0.2.1.4:   Eigene Icons fьr Dateiempfang
// Version 0.2.1.3:   Ordnerlink fьr gesendete Nachrichten eingebracht
// Version 0.2.1.2:   Aufklappbare Bereiche eingebracht, Parameter UIN hinzugefьgt, Links haben eine class erhalten
// Version 0.2.1.1:   Funktionen in globalfunctions.js ausgelagert
// Version 0.2.1.0:   1. Stable
//Testoutput: document.write('<br>' +  + '<br>');

function getandsenddata(eingangsmeldung,chatpartner,basispfad,uinchatpartner,cid) {    

  einstellungspruefung_showdata(iconpfad,1,'iconpfad','config.js','\"DeinPfad/\"'); 
  einstellungspruefung_showdata(empfangsdateipfad,2,'empfangsdateipfad','config.js','\"X:/DeinPfad/\" oder \"X:\\\\DeinPfad\\\\\"'); 

  //Ermittlung des Mirandapfades
  switch (empfangsdateipfad.substr(1,2)) {
  case ':\\': case ':/':
   mirandapfad = 'file://' + empfangsdateipfad;
  break;
  default:
   einstellungspruefung_showdata(empfangsdateipfad,3,'empfangsdateipfad','config.js','\"/DeinPfad/\" oder \"\\\\DeinPfad\\\\\"');  
   
   mirandapfad_save  = basispfad.split(/[Mm][Ii][Rr][Aa][Nn][Dd][Aa]/);  
   if(mirandapfad_save[1]) {  
     mirandapfad2_save = mirandapfad_save[1].split('/');
     mpfad_length = mirandapfad_save[0].length + mirandapfad2_save[0].length + 7;
     mirandapfad = basispfad.substr(0,mpfad_length) + empfangsdateipfad;   
   }       
   else {
     drive_search = basispfad.search(/\W[A-Za-z]\W\W/);       
     drivesearch_length = drive_search + 3; 
     mirandapfad = basispfad.substr(0,drivesearch_length) + empfangsdateipfad;    
   }
  }
  
  einstellungspruefung_showdata(unterverzeichnis,4,'unterverzeichnis','config.js','\"1\" -> Unterordner mit Kontaktlistenname des Chatpartners\n\"2\" -> Unterordner mit UIN des Chatpartners\n\"3\" -> Alle Dateien in einem Ordner');
  
  switch (unterverzeichnis) {
    case "1":
      chatpartnerordner = mirandapfad+uinchatpartner+" "+"("+chatpartner+")";
    break;
    case "2":
      chatpartnerordner = mirandapfad+uinchatpartner;
    break;
    case "3":
      chatpartnerordner = mirandapfad.substr(0,--mirandapfad.length);
    break;    
    default:
      chatpartnerordner = "";
    break;
  }

  //Endung von verschlьsselten Dateitransfers abschneiden
  aeshellsplit    = eingangsmeldung.split('.AESHELL');
  eingangsmeldung = aeshellsplit[0];
  
  emeldung     = eingangsmeldung.split(':'); 
  var randomid = Math.floor(Math.random()*9999) //erzeuge id
  var gefunden = false;
   
  // Erkennung des Transfertyps  
  if(eingangsmeldung.lastIndexOf('.') == -1) {
    transfertyp = 'multi';
    if (cid != 0) {
      transfertyp += 'eingehend';
    }
    else {
      transfertyp += 'ausgehend';
    } 
  }  
  else {
   if (emeldung[1]) {
     transfertyp = 'ausgehend';
   }
   else {
     transfertyp = 'eingehend'; 
   }
  }
  
  switch (transfertyp) {
  case 'ausgehend':
    //Pfadermittlung fьr ausgehende Transfers
    pfad = emeldung[0]+':'+emeldung[1]; 
    var dateipfadarray = pfad.split("\\");
    var dateipfadposition = 0;
    var dateipfad = "";
    var dateinameposition = dateipfadarray.length;   
    var dateiname = dateipfadarray[--dateinameposition];
    while (dateipfadposition < dateinameposition) {
     dateipfad += dateipfadarray[dateipfadposition]+'\\';
     dateipfadposition++; 
    }
    var datei = dateipfad + dateiname;
    dateipfadkurz = dateipfad.replace(/([a-zA-Z]:)\\[a-zA-Z0-9._% -~:]*\\([a-zA-Z0-9._% -~:]*)[\\]/g,'$1\\...\\$2');  
    document.write('<div id="'+randomid+'button" class="imagebox_filetransfer"></div>&nbsp;');
    document.write('File [<a class="Link-Text" onmouseout="this.className=\'Link-Text\';" onmouseover="this.className=\'Link-Text2\';" href="'+datei +'" title="'+ datei +'">'+ dateiname +'</a>] from folder [<a class="Link-Text" onmouseout="this.className=\'Link-Text\';" onmouseover="this.className=\'Link-Text2\';" href="'+ dateipfad +'" title="'+ dateipfad +'">'+ dateipfadkurz +'</a>] was sent ');   
  break;
  case 'eingehend':
    //Pfadermittlung fьr eingehende Transfers
    chatpartnerordner = chatpartnerordner.substring(7,chatpartnerordner.length);  
    chatpartnerordner = chatpartnerordner.replace(/\//g, '\\');    
    var datei = chatpartnerordner+'\\'+emeldung;
    var dateiname = emeldung; 
    document.write('<div id="'+randomid+'button" class="imagebox_filetransfer"></div>&nbsp;');
    document.write('File [<a class="Link-Text" onmouseout="this.className=\'Link-Text\';" onmouseover="this.className=\'Link-Text2\';" href="'+datei +'" title="'+datei +'">'+ dateiname +'</a>] by ');
    document.write('<a class="Link-Text" onmouseout="this.className=\'Link-Text\';" onmouseover="this.className=\'Link-Text2\';" class="textlink" href="'+chatpartnerordner+'" title="'+chatpartnerordner+'">'+chatpartner+' ('+uinchatpartner+')</a> was received ');
  break;
  case 'multiausgehend':
    //Pfadermittlung fьr ausgehende Transfers mit 2+ Dateien
    chatpartnerordner = chatpartnerordner.substring(7,chatpartnerordner.length);  
    chatpartnerordner = chatpartnerordner.replace(/\//g, '\\'); 
    var datei = chatpartnerordner+'\\';   
    var dateianzahl = emeldung; 
    document.write('<div id="'+randomid+'button" class="imagebox_filetransfer"></div>&nbsp;');
    document.write(dateianzahl +' to ');
    document.write('<a class="Link-Text" onmouseout="this.className=\'Link-Text\';" onmouseover="this.className=\'Link-Text2\';" class="textlink" href="'+chatpartnerordner+'" title="'+chatpartnerordner+'">'+chatpartner+' ('+uinchatpartner+')</a> were sent ');
  break;  
  case 'multieingehend':
    //Pfadermittlung fьr ausgehende Transfers mit 2+ Dateien
    chatpartnerordner = chatpartnerordner.substring(7,chatpartnerordner.length);  
    chatpartnerordner = chatpartnerordner.replace(/\//g, '\\');
    var datei = chatpartnerordner+'\\';  
    var dateianzahl = emeldung;
    //Workaround fьr 'Files' anstatt 'Dateien' 
    dateianzahl = dateianzahl[0].replace('Files','Dateien');    
    document.write('<div id="'+randomid+'button" class="imagebox_filetransfer"></div>&nbsp;');
    document.write(dateianzahl +' by ');
    document.write('<a class="Link-Text" onmouseout="this.className=\'Link-Text\';" onmouseover="this.className=\'Link-Text2\';" class="textlink" href="'+chatpartnerordner+'" title="'+chatpartnerordner+'">'+chatpartner+' ('+uinchatpartner+')</a> were received ');   
  break;
  default:
  break;
  }
  
  //Ab hier steht die Variable 'datei' zur Verfьgung, hier drin befindet sich der Dateiname mit der gesamten Pfadangabe

  //Der Dateityp wird bestimmt und ein entsprechendes Icon ausgewдhlt
  var endungarray = datei.split(".");
  var endungposition = endungarray.length-1;
  var dateiendung = endungarray[endungposition];  
  iconart = dateitypiconermittlung(dateiendung);
  icon_d = iconart+ '_d' + '.png'; 
  icon = iconart+ '.png';
  
  //Bild-Dateitypen werden hier ermittelt und eine weitere angepaЯte Ausgabe erzeugt
  bildendungen = new Array(".JPG",".jpg",".BMP",".bmp",".PNG",".png",".GIF",".gif",".JPEG",".jpeg");
  for (i=0; i<bildendungen.length; i++) {
    if (eingangsmeldung.search(bildendungen[i]) != -1 ) {
      bildpfad = datei;
      ausgabe = '<img src="'+iconpfad+icon+'" class="icons_filetypes" onmouseover="src=\''+iconpfad+icon_d+'\';" onmouseout="src=\''+iconpfad+icon+'\';" onmousedown="picturearea(document.getElementById(\''+randomid+'pic\'),this.alt)" title="Show/Hide" alt="'+datei+'[trenn]'+bildpfad+'[trenn]'+randomid+'">';
      document.getElementById(randomid+'button').innerHTML=ausgabe;
      ausgabe = '<div id="'+randomid+'pic" class="imagebox2_filetransfer"></div>';
      document.write(ausgabe);
      gefunden = true;
    }
  }
  
  videoendungen = new Array();
  for (i=0; i<videoendungen.length; i++) {
    if (eingangsmeldung.search(videoendungen[i]) != -1 ) {
      bildlink = screenbildersteller(datei);
      ausgabe = '<img src="'+iconpfad+icon+'" class="icons_filetypes" onMouseOver="src=\''+iconpfad+icon_d+'\'" onMouseOut="src=\''+iconpfad+icon+'\'" onmousedown="videoarea(document.getElementById(\''+randomid+'div\'),this.alt,0)" title="Video area Show/Hide" alt="'+datei+'[trenn]'+randomid+'">';
      document.getElementById(randomid+'button').innerHTML=ausgabe;
      ausgabe = '<div id="'+randomid+'div" class="videobox"></div>';
      document.write(ausgabe);
      gefunden = true;
    }
  }
  
  if (gefunden==false) {
     ausgabe = '<img src="'+iconpfad+icon+'" class="icons_filetypes" onmouseover="src=\''+iconpfad+icon_d+'\';" onmouseout="src=\''+iconpfad+icon+'\';" onmousedown="otherarea(document.getElementById(\''+randomid+'other\'),this.alt)" title="Area Show/Hide" alt="'+ datei + '">';
     document.getElementById(randomid+'button').innerHTML=ausgabe;
     ausgabe = '<div id="'+randomid+'other" class="otherbox"></div>';
     document.write(ausgabe);
  }  
}