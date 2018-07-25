// Version 0.1.1.3:   Anpassung der Trillianformatierung
// Version 0.1.1.2:   Trillianformatierung wird entfernt 
// Version 0.1.1.1:   Größe von Bilder im Text werden nun in der CSS bei .textimages definiert
// Version 0.1.1.0:   1. Stable

function parser(message) {
  
  // parser: Bilder von http://www.upload.de anzeigen
  message = message.replace(/http\:\/\/www.abload.de\/image.php\?img\=/g, 'http://www.abload.de/img/');
  
  // parser: eMails anklickbar machen
  // message = message.replace(/([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)(?=(\s|<|$))/g, '<a href="mailto:$&"  class="Mail-Text" onmouseout="this.className=\'Mail-Text\'" onmouseover="this.className=\'Mail-Text2\'">$&</a>');    
  
  // parser: Smileygröße ändern in der CSS bei ".img"
  message = message.replace(/<img class="img" src="file:\/\//g,'<img class="textimages" src="file://'); 
  
  // parser: DIV-Konstrokt entfernen, die auftauchen, wenn ICQ-User aus dem Chat Fenster Nachrichten kopieren und verschicken
  message = message.replace(/&lt;DIV&gt;/g,'');
  message = message.replace(/&lt;\/DIV&gt;/g,'');
  
  // parser: entfernt die Trillianformatierung
  message = message.replace(/{[\\a-zA-Z0-9]*{[\\a-zA-Z0-9(); ]*{[\\a-zA-Z0-9 ();]*}}<br>{[\\a-zA-Z0-9 ();]*}<br>\\[\\a-zA-Z0-9]*/g,'');
  message = message.replace(/\\par<br>}/g,'');
  message = message.replace(/\\'dc/g,'&Uuml;');    
  message = message.replace(/\\'fc/g,'&uuml;');    
  message = message.replace(/\\'f6/g,'&ouml;');    
  message = message.replace(/\\'e4/g,'&auml;');    
  message = message.replace(/\\'df/g,'&szlig;');    


//{\rtf1\ansi\ansicpg1252\deff0\deflang1031{\fonttbl{\f0\fnil\fcharset0 Arial;}}
//{\colortbl ;\red0\green64\blue128;}
//\viewkind4\uc1\pard\cf1\fs20 
 
 
  // TEST
  //message = message.replace(/</g,'[');
  //message = message.replace(/>/g,']');
  
  return message;
}