// Version 0.1.2.1:   Hinzufügen neuer Variablen (direktAnzeigeBild und direktAnzeigeURLBild) -> automatisches öffnen von Bildbereichen
// Version 0.1.2.0:   Animations- und Clockauswahl entfernt werden nun von der Menue.js übernommen
// Version 0.1.1.7:   Einstellungen für tzerausgabe.js nicht mehr benötigt und somit rausgenommen
// Version 0.1.1.6:   Einstellungen für menue.js hinzugefügt
// Version 0.1.1.5:   erweitert um meldungsart[8], Links in den Bereichen URL und hURL werden dadurch umgewandelt
// Version 0.1.1.4:   Auswahl des ICQPlugins für die tZersausgabe eingebracht
// Version 0.1.1.3:   Angepasste Webbilderanbieter
// Version 0.1.1.2:   Einstellungen für showdata.je eingebracht
// Version 0.1.1.1:   makeurlscreenanbieter-Auswahl eingebracht
// Version 0.1.1.0:   1. Stable


// G r u n d e in s t e l l u n g
var ToolPfad = './!tools/';                          // Hier den Pfad bis zum "!tools"-Verzeichnis angeben
document.write('<script src="'+ToolPfad+'skripte/basicfile.js"></script>');


// E i n s t e l l u n g e n   f ü r   b a s i c f i l e . j s 
var meldungsart = new Array ();
// in IVT %txt% durch <script>getitall('%\text%','%\name%',meldungsart[X])</script> ersetzen:   ACHTUNG X anpassen, z.B. X=0 bei Message In
// meldungsart[X] enthält derzeit 7 Parameter duch ":" getrennt.
meldungsart[0] = 'both:yes:get:yes:yes:yes:yes';      // X=0  bei  Message In
meldungsart[1] = 'both:yes:send:yes:yes:yes:yes';     // X=1  bei  Message Out
meldungsart[2] = 'both:yes:get:yes:yes:yes:yes';      // X=2  bei  Message In Grouped   (Start & Inner)
meldungsart[3] = 'both:yes:send:yes:yes:yes:yes';     // X=3  bei  Message Out Grouped  (Start & Inner)
meldungsart[4] = 'picture:yes:get:yes:yes:yes:yes';   // X=4  bei  History Message In
meldungsart[5] = 'picture:yes:send:yes:yes:yes:yes';  // X=5  bei  History Message Out
meldungsart[6] = 'picture:yes:get:yes:yes:yes:yes';   // X=6  bei  History Message In Grouped   (Start & Inner)
meldungsart[7] = 'picture:yes:send:yes:yes:yes:yes';  // X=7  bei  History Message Out Grouped  (Start & Inner)
meldungsart[8] = ':::yes:yes:yes:yes';                // X=8  bei URL und hURL
// 1. Parameter: "picture": zeigt das Bild an, "tZers" spielt die Animation ab und "both" sowohl Bild als auch Animation werden gezeigt
// 2. "yes" zeigt den Namen des tZers im Chatfenster an; "no" zeigt den Namen des tZers NICHT an
// 3. Immer "get" bei erhaltenen Messeges und immer " send" bei gesendeten Messeges wählen
// 4. "yes" Bildlinks umwandeln (klickbar machen und ggf mit Icons versehen);      "no" Bildlinks so lassen, ACHTUNG: werden dann wie Seitenlinks behandelt
// 5. "yes" Videolinks umwandeln (klickbar machen und ggf mit Icons versehen);   "no" Videoumwandlung so lassen, ACHTUNG: werden dann wie Seitenlinks behandelt
// 6. "yes" SWFLinks umwandeln (klickbar machen und ggf mit Icons versehen);   "no" SWF-Umwandlung so lassen, ACHTUNG: werden dann wie Seitenlinks behandelt
// 7. "yes" Seitenlinks umwandeln (klickbar machen und ggf mit Icons versehen);  "no" Seitenumwandlung so lassen


// E i n s t e l l u n g e n   f ü r   c o n v e r t . j s
var linkanklickbar       = "yes";                    // "yes/ja": normales Verhalten von Links;   "no/nein": Links nicht anklickbar
var proportion           = 4/3;                      // Seitenverhältnis des SWF- und Video-Bereichs: Breite im Bezug zu Höhe; z.B.: 2/1 Breite ist doppelt so lang als die Länge der Höhe
var vorschaupopup        = "11";                     // Vorschaupopupbilder 1=an und 0=aus, in der Reihenfolge für Bildlink und URLBildlink
var vorschaubuttonstatus = "10101010";               // Abwechselnd für Icons vor und hinter dem Link mit 1=an und 0=aus, in der Reihenfolge für Bildlink, URLBildlink, Videolink und SWFlink
var vorschaubildview     = "yes"                     // beim Überfahren von Bild-, Video-, und URLBildlinks werden bei "yes" oder "ja" Vorschaupopupbilder angezeigt
var vorschaubildposiX    = -1;                       // horizontale Position des Vorschaupopupbilder: 0=ganz links; 50=mittig; 100=ganz rechts; -1=anMauszeiger)
var vorschaubildposiY    = -1;                       // vertikale  Position  des  Vorschaupopupbilder:  0=ganz oben; 50=mittig; 100=ganz unten;   -1=anMauszeiger)
var direktAnzeigeBild    = "no"                     // bei "yes" oder "ja" werden die normalen Bildbereiche automatisch geöffnet
var direktAnzeigeURLBild = "no"                      // bei "yes" oder "ja" werden die Bildbereiche für URL-Bilder automatisch geöffnet


// E i n s t e l l u n g e n   f ü r   v i d e o . j s
var Videobutton = 0;                                 // Bei (0) beide Videobuttons  öffnen und  -schließen Bereich und bei (1) Fenster öffen;   bei (2): beide Videobuttons unterschiedliches verhalten


// E i n s t e l l u n g e n   f ü r   c l o c k . j s
var uhrbreite          = 60;                         // Breite der Uhr
var uhrhoehe           = 60;                         // Höhe der Uhr
var sichtbarkeitinnen  = "100";                      // Legt fest, wie undurchlässig die Anzeige des inneren Bereiches der Uhr ist ( 100% komplett sichtbar, 0% nicht sichtbar )
var sichtbarkeitaussen = "100";                      // Legt fest, wie undurchlässig die Anzeige des äusseren Bereiches der Uhr ist ( 100% komplett sichtbar, 0% nicht sichtbar )
var uhrpositionv       = 100;                        //Position der Uhr: (0) ganz links, (50) mittig, (100) ganz rechts
var uhrpositionh       = 1;                          //Position der Uhr: (0) ganz oben, (50) mittig, (100) ganz unten


// E i n s t e l l u n g   f ü r   a l l g l o b a l f u n c t i o n s . j s
var maxwidth    = "300";                             // Große Bilder werden auf die maximale Breite geschrumpft
var maxheight   = "200";                             // Große Bilder werden auf die maximale Höhe geschrumpft
var linkverkuerzen       = "no";                    // "yes/ja": zeigt verkürzten Link an;   "no/nein": zeigt Link normal an;   "" zeigt keinen Link an;   "XXX": alle Links werden als XXX angezeigt
// "1"   http://images.websnapr.com  [Micro=92x70, Small=202x152]         // Setze die Variable 'vorschaugroesse' auf "1" für Small und "2" für Micro
// "2"   http://livethumb.de/        [ 80 bis 400 Pixel Breite]           // Setze die Variable 'vorschaugroesse' auf "1": 80x60, "2": 160x120, "3": 240x180, "4": 320x240, "5": 400x300
// "3"   http://www.shrinktheweb.com [sm=120x90, lg=200x150, xlg=320x240] // Setze die Variable 'vorschaugroesse' auf "1" für sm, "2" für lg und "3" für xlg   (ACHTUNG: Benötigt Account)
makeurlscreenanbieter  = "3";                        // Angabe welcher Anbieter von Internetseiten die Bilder erstellen soll
vorschaugroesse        = "1";                        // Je nach Anbieter sind verschiedene Angaben zu berücksichtigen
anbieterpasswort       = "";                         // Benötigtes Passwort für den Internetseiten-Bildersteller


// E i n s t e l l u n g e n   f ü r   s h o w d a t a . j s
empfangsdateipfad = "/inbox/";                     // Empfangsverzeichnis vom Mirandaverzeichnis aus gesehen, muss auch in den Einstellung von Miranda eingetragen werden
// "1" Name - vom Chatpartner der Kontaktlistenname             (%nick% in den Mirandaeinstellungen)
// "2" UIN - Kontakt ID                                         (%userid% in den Mirandaeinstellungen)
// "3" CID - Kontakt ID oder Benutzer ID , äbhänig vom Aufruf   (%userid% in den Mirandaeinstellungen)
unterverzeichnis  = "1";                              // Unterverzeichnis vom empfangsdateipfad kann mit "1", "2" oder "3" gesetzt werden, muss auch in den Einstellungen von Miranda eingetragen werden
iconpfad          = "./!tools/filetypes/"      // Pfad zu den Filetype-icons


// E i n s t  e l l u n g  en   f ü  r   t v . j s  (am besten ein 16/9 Verhältnis)
var tvfensterbreite = 400;                            // Breite des TV Fensters
var tvfensterhoehe  = 300;                            // Höhe   des TV Fensters


// E i n s t e l l u n g e n   f ü r   m e n u e. j s
var MenueButton = 1; // Ändert die Art des Menü Buttons (0 = Kleiner Menü-Button, 1 = Normaler Menü-Button)



function getwindowsprofilpath() {
  var regkey1 = 'HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders\\Personal';
  var WshShell = new ActiveXObject("WScript.Shell");
  return WshShell.RegRead(regkey1);
}