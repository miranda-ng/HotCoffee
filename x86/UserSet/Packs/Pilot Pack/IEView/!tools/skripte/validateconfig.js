// Version 0.0.0.2:  Überprüfung für convert.js,  globalfunctions.js, tzerausgabe.js und video.js hinzugefügt
// Version 0.0.0.1:  Überprüfung für showdata.js

function standardfehlertext(variablenname,skriptname,optionen) {
// Fehlermeldung
fehlermeldung  = ' ist fehlerhaft definiert.\n';
fehlermeldung += 'Bitte korrigieren Sie diesen Fehler in der Variable \"'+variablenname+'\" der Datei \"'+skriptname+'\".\n\n';
fehlermeldung += 'Die Variable stellt folgende Optionen bereit:\n' + optionen; 
return fehlermeldung  
}

// Funktionen zur Überprüfung 
function einstellungspruefung_convert(pruefvariable,variante,variablenname,skriptname,optionen) {
   switch(variante) {
   case 1:
    pruefvariable = pruefvariable.substr(ToolPfad.length,pruefvariable.length);
    if (pruefvariable.search(/^\W[A-Za-z]/) > -1 || pruefvariable.search(/[A-Za-z]\W$/) == -1) {
          fehlermeldung = 'Ein Pfad' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }         
   break;
   case 2:
    if (pruefvariable.search(/[0-1][0-1][0-1][0-1][0-1][0-1][0-1][0-1]/) == -1) {
          fehlermeldung = 'Eine Einstellung' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }         
   break;   
   case 3:
    if (pruefvariable.search(/[0-1][0-1]/) == -1) {
          fehlermeldung = 'Eine Einstellung' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }         
   break;    
   default:
   // !
   break;   
   }
} 

function einstellungspruefung_clock(pruefvariable,variante,variablenname,skriptname,optionen) {
   switch(variante) {
   case 1:
   
   break;
   default:
   // !
   break;   
   }
} 

function einstellungspruefung_globalfunctions(pruefvariable,variante,variablenname,skriptname,optionen) {
   switch(variante) {
   case 1:
    if (pruefvariable.search(/[1-5]/) == -1) {
          fehlermeldung = 'Eine Einstellung' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }         
   break;
   case 2:
    if (makeurlscreenanbieter.search(/[5]/) != -1 && pruefvariable.length == 0) {
          fehlermeldung = 'Eine Einstellung' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }         
   break;   
   default:
   // !
   break;   
   }
} 


function einstellungspruefung_showdata(pruefvariable,variante,variablenname,skriptname,optionen) {
   switch(variante) {
   case 1:
    pruefvariable = pruefvariable.substr(ToolPfad.length,pruefvariable.length);
    if (pruefvariable.search(/^\W[A-Za-z]/) > -1 || pruefvariable.search(/[A-Za-z]\W$/) == -1) {
          fehlermeldung = 'Ein Pfad' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }      
   break;
   case 2:
    if (pruefvariable.search(/^[A-Za-z]\W[A-Za-z]/) >= 0) {
          fehlermeldung = 'Ein Pfad' + standardfehlertext(variablenname,skriptname,optionen);
          alert(fehlermeldung);
        }   
   break;    
   case 3:
    if (pruefvariable.search(/^\W[A-Za-z]/) == -1 || pruefvariable.search(/[A-Za-z]\W$/) == -1) {
          fehlermeldung = 'Ein Pfad' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }      
   break;
   case 4:
    if (pruefvariable.search(/[1-3]/) == -1) {
          fehlermeldung = 'Eine Einstellung' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }      
   break;  
   default:
   // !
   break;   
   }
} 

function einstellungspruefung_tzerausgabe(pruefvariable,variante,variablenname,skriptname,optionen) {
   switch(variante) {
   case 1:
    pruefvariable = pruefvariable.substr(ToolPfad.length,pruefvariable.length);
    if (pruefvariable.search(/^\W[A-Za-z]/) > -1 || pruefvariable.search(/[A-Za-z]\W$/) == -1) {
          fehlermeldung = 'Ein Pfad' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }         
   break;
   default:
   // !
   break;   
   }
} 

function einstellungspruefung_videos(pruefvariable,variante,variablenname,skriptname,optionen) {
   switch(variante) {
   case 1:
    pruefvariable = pruefvariable.toString();
    if (pruefvariable.search(/[0-2]/) == -1) {
          fehlermeldung = 'Eine Einstellung' + standardfehlertext(variablenname,skriptname,optionen);    
          alert(fehlermeldung);
    }       
   break;
   default:
   // !
   break;   
   }
} 