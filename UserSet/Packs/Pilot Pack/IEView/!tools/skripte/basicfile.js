// Version 0.2.0.1:   verbesserte Fehlerverfolgung
// Version 0.2.0.0:   Animationen und Clock werden nicht mehr durch basicfile sondern duch Menue.js eingebunden
// Version 0.1.3.0:   ALLE JS-Dateien werden eingebunden, die im Skriptunterverzeichnis des in der Config.js angegebenen Toolsverzeichnises liegen
// Version 0.1.2.6:   User Einstellungen in die Config.js verschoben
// Version 0.1.2.5:   allparameter[6] für Seitenumwandlung in der Config.js hinzugefügt
// Version 0.1.2.4:   Variable "meldungsart" um ein Element, "Position des tZers-Bildes", verkürzt; CSS realisiert das nun
// Version 0.1.2.3:   Aufruf von globalfunctions.js eingebracht
// Version 0.1.2.2:   meldungsart[] bestimmt welcher Bereich in der IVT benutzt wird;  allparameter[6] für SWF Abfrage eingebracht
// Version 0.1.2.1:   Einbinden der anderen JS-Dateien
// Version 0.1.2.0:   2. Stable
// Version 0.1.1.0:   1. Stable

var fso = new ActiveXObject("Scripting.FileSystemObject");
var AbsoluterPfad = fso.GetAbsolutePathName(document.getElementsByTagName('base')[0].href.substr(7) + ToolPfad);
var fso, f, fc, s;
fso = new ActiveXObject("Scripting.FileSystemObject");
f = fso.GetFolder(AbsoluterPfad+'/skripte');
fc = new Enumerator(f.files);
for (;!fc.atEnd(); fc.moveNext()) {
  if ((fc.item().Path.substr(fc.item().Path.length-2,2)=="js") && (fc.item().Name!="basicfile.js") && (fc.item().Name!="clock.js")) {
    //document.write('<br>'+fc.item().Path);
    document.write('<script src="'+fc.item().Path+'"></script>');
  }
}
//document.write('<script src="'+ToolPfad+'anims/'+animation+'"></script>');
document.write('<link href="config.css" rel="stylesheet" type="text/css">');

function getitall(eingangsmeldung, chatpartner, uin, pfad, allparameter) {

	test = 0; 

	allparameter = allparameter.split(':');
	if (test >= 10) {
		document.write("<br/><b>Aufrufparameter von meldungsart[]:</b>"); 
		for (index=0; index<allparameter.length; index++) {
			document.write('<br/>allparameter['+index+'] : '+allparameter[index])
		}
	    document.write("<br/><br/>"); 
	}

	ausgabe = eingangsmeldung;
	if (test > 5) {	document.write("<b>Ursprungs- bzw. Eingangsmeldung:</b><br/>" + ausgabe + "<br/><br/>"); }

	ausgabe = parser(ausgabe); 
	if (test > 4) {	document.write("<b>nach Parserdurchlauf:</b><br/>" + ausgabe + "<br/><br/>"); }

	ausgabe = tZersOutput(ausgabe,chatpartner,allparameter[0],allparameter[1],allparameter[2]);
	if (test > 3) {	document.write("<b>nach tZersdurchlauf:</b><br/>" + ausgabe + "<br/><br/>"); }

	ausgabe = linkconvert(ausgabe,allparameter[3],allparameter[4],allparameter[5],allparameter[6]); 
	if (test > 2) {	document.write("<b>nach Linkconverterdurchlauf:</b><br/>" + ausgabe + "<br/><br/>"); }
	
	if (test > 0) {	document.write("<b>angezeigte Meldung</b><br/>"); }		
	document.write(ausgabe); 

}







