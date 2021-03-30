#define MyAppProject "D:\Projects"
#define MyAppProjectPath "D:\Projects\Miranda IM HotCoffee"
#define MyAppSourcePath "D:\Projects\Miranda IM HotCoffee\Current"

#define MyAppName "Miranda IM HotCoffee"
#define MyAppFullName "Miranda IM HotCoffee 'Coffee&Cigarettes'"
#define MyAppFullName2 "Miranda IM HotCoffee aka cappuccino"
#define MyAppId "HotCoffee™"

#define MyAppVerMajor "0"
#define MyAppVerMinor "9"
#define MyAppVerBuild "19"
#define MyAppVerRevis "1"
#define MyAppStatus "Final R6"

#define MyAppVer MyAppVerMajor + "." + MyAppVerMinor + "." + MyAppVerBuild + "." + MyAppVerRevis
#define MyAppFullVer MyAppVerMajor + "." + MyAppVerMinor + "." + MyAppVerBuild + "." + MyAppVerRevis + " " + MyAppStatus

#define MyAppPublisher "Dracosha"
#define MyAppURL "http://miranda-planet.com/forum/index.php?showtopic=7575"
#define MyAppPublisherContacts "im.hotcoffee@gmail.com"
#define MyAppExeName "miranda32.exe"

#define MyAppSetupSubPath "Miranda IM HotCoffee"
#define MyAppSetupStandartPath "{pf}\" + MyAppSetupSubPath
#define MyAppSetupStandartAppDataPath "{userappdata}\" + MyAppSetupSubPath
#define MyAppSetupPortablePath "{sd}\" + MyAppSetupSubPath

; ENG
#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "Pack_PI", "Name", "s" + MyAppName)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "Pack_PI", "Version", "s" + MyAppFullVer)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "Pack_PI", "Author", "s" + MyAppPublisher)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "Pack_PI", "Contacts", "s" + "?crlf()?tab()jid:  dracosha@miranda.im?crlf()          e-mail:  " + MyAppPublisherContacts)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "Pack_PI", "ReleaseDate", "s" + GetDateTimeString('dd.mm.yyyy', '', ''))

#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "PackUpdater", "File_1_CurrentVersion", "u" + MyAppVer)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "PackUpdater", "File_1_LastVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "PackUpdater", "File_2_CurrentVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\settings_en.ini", "PackUpdater", "File_2_LastVersion", "u" + MyAppVer)

#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "Pack_PI", "Name", "s" + MyAppName)
#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "Pack_PI", "Version", "s" + MyAppFullVer)
#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "Pack_PI", "Author", "s" + MyAppPublisher)
#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "Pack_PI", "Contacts", "s" + "?crlf()?tab()jid:  dracosha@miranda.im?crlf()          e-mail:  " + MyAppPublisherContacts)
#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "Pack_PI", "ReleaseDate", "s" + GetDateTimeString('dd.mm.yyyy', '', ''))

#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "PackUpdater", "File_1_CurrentVersion", "u" + MyAppVer)
#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "PackUpdater", "File_1_LastVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "PackUpdater", "File_2_CurrentVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\updateen.ini", "PackUpdater", "File_2_LastVersion", "u" + MyAppVer)

#expr WriteIni(MyAppSourcePath + "\profiles\cappuccino.ini", "FileInfo_1", "FileVersion", MyAppVer)
#expr WriteIni(MyAppSourcePath + "\profiles\cappuccino.ini", "FileInfo_1", "DiskFileName", "MirandaHotCoffee " + MyAppVer + ".exe")
;#expr WriteIni(MyAppSourcePath + "\profiles\cappuccino.ini", "FileInfo_2", "FileVersion", MyAppVer)

; RUS
#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "Pack_PI", "Name", "s" + MyAppName)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "Pack_PI", "Version", "s" + MyAppFullVer)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "Pack_PI", "Author", "s" + MyAppPublisher)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "Pack_PI", "Contacts", "s" + "?crlf()?tab()jid:  dracosha@miranda.im?crlf()          e-mail:  " + MyAppPublisherContacts)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "Pack_PI", "ReleaseDate", "s" + GetDateTimeString('dd.mm.yyyy', '', ''))

#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "PackUpdater", "File_1_CurrentVersion", "u" + MyAppVer)
#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "PackUpdater", "File_1_LastVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "PackUpdater", "File_2_CurrentVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\settings_ru.ini", "PackUpdater", "File_2_LastVersion", "u" + MyAppVer)

#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "Pack_PI", "Name", "s" + MyAppName)
#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "Pack_PI", "Version", "s" + MyAppFullVer)
#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "Pack_PI", "Author", "s" + MyAppPublisher)
#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "Pack_PI", "Contacts", "s" + "?crlf()?tab()jid:  dracosha@miranda.im?crlf()          e-mail:  " + MyAppPublisherContacts)
#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "Pack_PI", "ReleaseDate", "s" + GetDateTimeString('dd.mm.yyyy', '', ''))

#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "PackUpdater", "File_1_CurrentVersion", "u" + MyAppVer)
#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "PackUpdater", "File_1_LastVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "PackUpdater", "File_2_CurrentVersion", "u" + MyAppVer)
;#expr WriteIni(MyAppSourcePath + "\profiles\updateru.ini", "PackUpdater", "File_2_LastVersion", "u" + MyAppVer)

#expr WriteIni(MyAppSourcePath + "\profiles\hotcoffee.ini", "FileInfo_1", "FileVersion", MyAppVer)
#expr WriteIni(MyAppSourcePath + "\profiles\hotcoffee.ini", "FileInfo_1", "DiskFileName", "MirandaHotCoffee " + MyAppVer + ".exe")
;#expr WriteIni(MyAppSourcePath + "\profiles\hotcoffee.ini", "FileInfo_2", "FileVersion", MyAppVer)

[Setup]
AppId={#MyAppId}
AppName={#MyAppName}
AppVersion={#MyAppVer}
AppVerName={#MyAppName} {#MyAppVer}
VersionInfoVersion={#MyAppVer}
VersionInfoDescription={#MyAppName} {#MyAppStatus}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppContact={#MyAppPublisherContacts}
;
DefaultDirName={#MyAppSetupStandartPath}
DefaultGroupName={#MyAppSetupSubPath}
;
AllowNoIcons=yes
;
OutputDir={#MyAppProject}
OutputBaseFilename=MirandaHotCoffee {#MyAppVer}
;
Compression=lzma2/ultra
SolidCompression=true
InternalCompressLevel=ultra
;
DisableStartupPrompt=true
DisableWelcomePage=false
;
UsePreviousLanguage=yes
ShowLanguageDialog=yes
LanguageDetectionMethod=uilanguage
;
UninstallDisplayIcon={app}\{#MyAppExeName},48
UninstallFilesDir={app}\uninstall
CreateUninstallRegKey=IsStandartSetupType()
;
PrivilegesRequired=poweruser
;
SetupIconFile={#MyAppProjectPath}\Installer\icon.ico
WizardSmallImageFile={#MyAppProjectPath}\Installer\small.bmp
WizardImageFile={#MyAppProjectPath}\Installer\big.bmp
;
MinVersion=0,5.01.2600sp1
LicenseFile={#MyAppProjectPath}\Installer\License-en.rtf


[Languages]
Name: english; MessagesFile: compiler:Default.isl,{#MyAppProjectPath}\Installer\hotcoffee_english.isl; InfoBeforeFile: "{#MyAppProjectPath}\Installer\InfoBefore-en.rtf"; InfoAfterFile: "{#MyAppProjectPath}\Installer\InfoAfter-en.rtf";
Name: russian; MessagesFile: compiler:Languages\Russian.isl,{#MyAppProjectPath}\Installer\hotcoffee_russian.isl; InfoBeforeFile: "{#MyAppProjectPath}\Installer\InfoBefore-ru.rtf"; InfoAfterFile: "{#MyAppProjectPath}\Installer\InfoAfter-ru.rtf";


[Messages]
BeveledLabel={#MyAppName} {#MyAppVer} © {#MyAppPublisher}, 2010 - {#GetDateTimeString('yyyy', '', '')}


[Types]
Name: minimal; Description: {cm:MinimalInstall}
Name: optimal; Description: {cm:OptimalInstall}
Name: advanced; Description: {cm:AdvancedInstall}
;Name: full; Description: {cm:FullInstall}
Name: custom; Description: {cm:CustomInstall}; Flags: iscustom


[Components]
Name: core; Description: {cm:CoreFiles}; Types: minimal optimal advanced custom; Flags: fixed
;Name: core\crshdmp; Description: {cm:Crshdmp}; Types: minimal optimal advanced custom
Name: core\dbeditor; Description: {cm:DBEditor}; Types: advanced custom

Name: protocols; Description: {cm:Protocols}; Types: minimal optimal advanced custom
Name: protocols\aim; Description: AIM; Types: custom
Name: protocols\gg; Description: GG; Types: custom
Name: protocols\icq; Description: ICQ; Types: minimal optimal advanced custom
Name: protocols\irc; Description: IRC; Types: custom
Name: protocols\jabber; Description: Jabber; Types: custom
Name: protocols\jabber\gtalk; Description: GTalk; Types: custom
Name: protocols\jabber\jabber; Description: Jabber; Types: optimal advanced custom
Name: protocols\jabber\jabberru; Description: Jabberru; Types: custom
Name: protocols\jabber\vk; Description: VKontakte; Types: custom
Name: protocols\jabber\vk\vk; Description: VK; Flags: exclusive
Name: protocols\jabber\vk\vkontakte; Description: VKontakte; Flags: exclusive
Name: protocols\mra; Description: MRA; Types: custom
Name: protocols\msn; Description: MSN; Types: custom
Name: protocols\yahoo; Description: YAHOO; Types: custom
Name: protocols\other; Description: {cm:ProtocolsOther}
Name: protocols\other\facebook; Description: Facebook; Types: custom
;Name: protocols\other\gmailm; Description: Gmail; Types: custom
Name: protocols\other\metacontacts; Description: {cm:ProtocolsOtherMetaContacts}; Types: optimal advanced custom
Name: protocols\other\mradio; Description: mRadio; Types: custom
Name: protocols\other\quotes; Description: Quotes; Types: custom
Name: protocols\other\rss; Description: RSS; Types: custom
;Name: protocols\other\skype; Description: Skype; Types: custom
Name: protocols\other\twitter; Description: Twitter; Types: custom
Name: protocols\other\weather; Description: Weather; Types: custom
Name: protocols\other\yamn; Description: YAMN; Types: custom

Name: plugins; Description: {cm:PluginsFiles}; Types: minimal optimal advanced custom
Name: plugins\alarms; Description: {cm:Alarms}; Types: custom
Name: plugins\authstate; Description: {cm:Authstate}; Types: advanced custom
Name: plugins\bosskey; Description: {cm:BossKey}; Types: advanced custom
Name: plugins\buddyex; Description: {cm:Buddyex}; Types: custom
Name: plugins\buddyp; Description: {cm:Buddyp}; Types: custom
Name: plugins\ckl; Description: {cm:CKL}; Types: advanced custom
Name: plugins\favcont; Description: {cm:Favcont}; Types: optimal advanced custom
Name: plugins\fingerprint; Description: {cm:Fingerprint}; Types: optimal advanced custom
Name: plugins\flag; Description: {cm:Flag}; Types: custom
Name: plugins\fltcontacts; Description: {cm:Fltcontacts}; Types: custom
Name: plugins\ignorestate; Description: {cm:Ignorestate}; Types: optimal advanced custom
Name: plugins\keepstatus; Description: {cm:Keepstatus}; Types: minimal optimal advanced custom
Name: plugins\keyboardnotify; Description: {cm:Keybrdnotify}; Types: advanced custom
Name: plugins\keyboardnotify\ps2; Description: {cm:Keybrdnotifyps2}; Flags: exclusive
Name: plugins\keyboardnotify\usb; Description: {cm:Keybrdnotifyusb}; Flags: exclusive
Name: plugins\listeningto; Description: {cm:Listeningto}; Types: custom
Name: plugins\mathmodulepp; Description: {cm:Mathmodulepp}; Types: custom
Name: plugins\newxstatusnotify; Description: {cm:Newxstatusnotify}; Types: advanced custom
Name: plugins\nohistory; Description: {cm:Nohist}; Types: advanced custom
Name: plugins\nohistory\nohistory; Description: {cm:Nohistory}; Flags: exclusive
Name: plugins\nohistory\historysweeper; Description: {cm:Historysweeper}; Flags: exclusive
Name: plugins\quickmessages; Description: {cm:Quickmessages}; Types: custom
Name: plugins\quicksearch; Description: {cm:Quicksearch}; Types: optimal advanced custom
Name: plugins\secureim; Description: {cm:Secureim}; Types: custom
;Name: plugins\seenplugin; Description: {cm:Seenplugin}; Types: advanced custom
Name: plugins\sndvol; Description: {cm:Sndvol}; Types: custom
Name: plugins\schecker; Description: {cm:SpellChecker}; Types: advanced custom
;Name: plugins\startupstatus; Description: {cm:Startupstatus}; Types: optimal advanced custom
Name: plugins\stopspam; Description: {cm:Stopspam}; Types: minimal optimal advanced custom
Name: plugins\trafficcounter; Description: {cm:Trafficcounter}; Types: custom
Name: plugins\birthdays; Description: {cm:Birthdays}; Types: optimal advanced custom
Name: plugins\birthdays\birthday; Description: {cm:Birthday}; Flags: exclusive
Name: plugins\birthdays\uinfoexw; Description: {cm:Uinfoex}; Flags: exclusive
Name: plugins\watrack; Description: {cm:Watrack}; Types: custom
Name: plugins\whoisreadingmystatusmsg; Description: {cm:Whoisreadingmystatusmsg}; Types: custom

Name: resources; Description: {cm:Resources}; Types: minimal optimal advanced custom
Name: resources\ieview; Description: {cm:IEView}; Types: advanced custom
Name: resources\popup; Description: {cm:PopUp}; Types: optimal advanced custom
Name: resources\smileys; Description: {cm:Smileys}; Types: minimal optimal advanced custom; Flags: fixed
Name: resources\sounds; Description: {cm:Sounds}; Types: optimal advanced custom
Name: resources\splash; Description: {cm:Splash}; Types: optimal advanced custom
Name: resources\tooltips; Description: {cm:Tooltips}; Types: minimal optimal advanced custom
Name: resources\themes; Description: {cm:Themes}; Types: advanced custom
Name: resources\themes\glamourd; Description: Glamour Dark; Types: advanced custom
Name: resources\themes\glamourl; Description: Glamour Light; Types: advanced custom
Name: resources\themes\graphited; Description: Graphite Dark; Types: advanced custom
Name: resources\themes\graphitel; Description: Graphite Light; Types: advanced custom
Name: resources\themes\photooned; Description: Photoone Dark; Types: advanced custom
Name: resources\themes\photoonel; Description: Photoone Light; Types: advanced custom
Name: resources\themes\textolited; Description: Textolite Dark; Types: optimal advanced custom
Name: resources\themes\textolitel; Description: Textolite Light; Types: optimal advanced custom

Name: games; Description: {cm:Games}; Types: custom
Name: games\battleship; Description: {cm:Battleship}; Types: custom
Name: games\chess; Description: {cm:Chess}; Types: custom
Name: games\gomoku; Description: {cm:Gomoku}; Types: custom
Name: games\janus; Description: {cm:Janus}; Types: custom


[Files]
Source: "{#MyAppProjectPath}\Installer\descctrl.dll"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Windows Style.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Windows Style.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Glamour Dark.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Glamour Dark.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Glamour Light.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Glamour Light.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Graphite Dark.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Graphite Dark.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Graphite Light.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Graphite Light.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Photoone Dark.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Photoone Dark.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Photoone Light.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Photoone Light.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Textolite Dark.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Textolite Dark.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Textolite Light.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Textolite Light.png"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Install.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Portable.bmp"; Flags: dontcopy
Source: "{#MyAppProjectPath}\Installer\Images\Recycle.bmp"; Flags: dontcopy


; Ядро
Source: "{#MyAppSourcePath}\zlib.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\dbtool.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\miranda32.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
; Локализация
Source: "{#MyAppSourcePath}\langpack_russian.txt"; DestDir: "{app}"; Languages: russian; Flags: ignoreversion; Attribs: hidden; Components: core
Source: "{#MyAppSourcePath}\profiles\settings_en.ini"; DestDir: "{app}\profiles"; DestName: "settings.ini"; Languages: english; Flags: ignoreversion; Attribs: hidden; Components: core
Source: "{#MyAppSourcePath}\profiles\settings_ru.ini"; DestDir: "{app}\profiles"; DestName: "settings.ini"; Languages: russian; Flags: ignoreversion; Attribs: hidden; Components: core
Source: "{#MyAppSourcePath}\profiles\updateen.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_update.ini"; Languages: english; Flags: ignoreversion; Attribs: hidden; Components: core; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
Source: "{#MyAppSourcePath}\profiles\updateru.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_update.ini"; Languages: russian; Flags: ignoreversion; Attribs: hidden; Components: core; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
Source: "{#MyAppSourcePath}\mirandaboot_standart.ini"; DestDir: "{app}"; DestName: "mirandaboot.ini"; Flags: ignoreversion; Attribs: hidden; Components: core; Check: IsStandartSetupType()
Source: "{#MyAppSourcePath}\mirandaboot_portable.ini"; DestDir: "{app}"; DestName: "mirandaboot.ini"; Flags: ignoreversion; Attribs: hidden; Components: core; Check: IsPortableSetupType()
;
Source: "{#MyAppSourcePath}\plugins\actman.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\services.ini"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\advaimg.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\advancedautoaway.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\avs.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\bonsai.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\clist_modern.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\icons\proto_conn.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: core
;Source: "{#MyAppSourcePath}\icons\proto_global.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\icons\toolbar_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\skins\winstyle.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\skins\zdefault.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\db_autobackups.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\dbx_mmap_sa.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\extraicons.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\flashavatars.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\folders.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\historypp.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\icons\historypp_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\import.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\menuex.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\newawaysysw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\nudge.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\jabber\jabber or protocols\jabber\gtalk or protocols\jabber\jabberru or protocols\jabber\vk\vk or protocols\mra or protocols\msn or protocols\yahoo
Source: "{#MyAppSourcePath}\plugins\packupdater.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\tabsrmm.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\icons\tabsrmm_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: core
;Source: "{#MyAppSourcePath}\plugins\triggerPlugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\useactions.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\icons\useactions_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: core
Source: "{#MyAppSourcePath}\plugins\variables.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
; шифрование профиля
Source: "{#MyAppSourcePath}\plugins\cryptors\athena.dll"; DestDir: "{app}\plugins\cryptors"; Flags: ignoreversion; Components: core
; Docs
;Source: {#MyAppSourcePath}\docs\license.html; DestDir: {app}\docs; Flags: ignoreversion; Components: core
;Source: {#MyAppSourcePath}\docs\license\Copyright_ru.html; DestDir: {app}\docs\license; Flags: ignoreversion; Components: core
;Source: {#MyAppSourcePath}\docs\license\fingerprint_plus.html; DestDir: {app}\docs\license; Flags: ignoreversion; Components: core
;Source: {#MyAppSourcePath}\docs\license\Freeware.html; DestDir: {app}\docs\license; Flags: ignoreversion; Components: core
;Source: {#MyAppSourcePath}\docs\license\gpl.html; DestDir: {app}\docs\license; Languages: english; Flags: ignoreversion; Components: core
;Source: {#MyAppSourcePath}\docs\license\gpl_ru.html; DestDir: {app}\docs\license; DestName: "gpl.html"; Languages: russian; Flags: ignoreversion; Components: core
;Source: {#MyAppSourcePath}\docs\license\Logo.png; DestDir: {app}\docs\license; Flags: ignoreversion; Components: core
; Crash Dumper
Source: "{#MyAppSourcePath}\plugins\svc_crshdmp.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
; svc_dbepp
Source: "{#MyAppSourcePath}\plugins\svc_dbepp.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core\dbeditor


; Протоколы
; aim
;Source: "{#MyAppSourcePath}\ini\autoexec_aim.ini"; DestDir: "{app}\profiles"; Flags: ignoreversion; Components: protocols\aim
Source: "{#MyAppSourcePath}\plugins\aim.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\aim
Source: "{#MyAppSourcePath}\icons\proto_conn_aim.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\aim
Source: "{#MyAppSourcePath}\icons\proto_aim.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\aim
; gg
;Source: "{#MyAppSourcePath}\ini\autoexec_gg.ini"; DestDir: "{app}\profiles"; Flags: ignoreversion; Components: protocols\gg
Source: "{#MyAppSourcePath}\plugins\gg.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\gg
Source: "{#MyAppSourcePath}\icons\proto_conn_gg.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\gg
Source: "{#MyAppSourcePath}\icons\proto_gg.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\gg
; icq
;Source: "{#MyAppSourcePath}\ini\autoexec_icq.ini"; DestDir: "{app}\profiles"; Flags: ignoreversion; Components: protocols\icq
Source: "{#MyAppSourcePath}\plugins\icq.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\icq
Source: "{#MyAppSourcePath}\icons\proto_conn_icq.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\icq
Source: "{#MyAppSourcePath}\icons\proto_icq.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\icq
Source: "{#MyAppSourcePath}\icons\xstatus_icq.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\icq
; irc
;Source: "{#MyAppSourcePath}\ini\autoexec_irc.ini"; DestDir: "{app}\profiles"; Flags: ignoreversion; Components: protocols\irc
Source: "{#MyAppSourcePath}\plugins\irc.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\irc
Source: "{#MyAppSourcePath}\icons\proto_conn_irc.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\irc
Source: "{#MyAppSourcePath}\icons\proto_irc.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\irc
; jabber
;Source: "{#MyAppSourcePath}\ini\autoexec_jabber.ini"; DestDir: "{app}\profiles"; Flags: ignoreversion; Components: protocols\jabber\jabber
Source: "{#MyAppSourcePath}\plugins\jabber.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\jabber\jabber or protocols\jabber\gtalk or protocols\jabber\jabberru or protocols\jabber\vk\vk
Source: "{#MyAppSourcePath}\icons\proto_conn_jabber.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\jabber
Source: "{#MyAppSourcePath}\icons\proto_jabber.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\jabber
Source: "{#MyAppSourcePath}\icons\xstatus_jabber.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\jabber or protocols\jabber\gtalk or protocols\jabber\jabberru or protocols\jabber\vk\vk
;	gtalk
Source: "{#MyAppSourcePath}\icons\proto_conn_gtalk.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\gtalk
Source: "{#MyAppSourcePath}\icons\proto_gtalk.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\gtalk
;	GTalk extensions
Source: "{#MyAppSourcePath}\plugins\gtalkext.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\jabber\gtalk
;	jabberru
Source: "{#MyAppSourcePath}\icons\proto_conn_jabberru.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\jabberru
Source: "{#MyAppSourcePath}\icons\proto_jabberru.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\jabberru
;	vk
Source: "{#MyAppSourcePath}\icons\proto_conn_vkontakte.dll"; DestDir: "{app}\icons"; DestName: "proto_conn_vk.dll"; Flags: ignoreversion; Components: protocols\jabber\vk\vk
;	vkontakte
Source: "{#MyAppSourcePath}\plugins\vkontakte.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\jabber\vk\vkontakte
Source: "{#MyAppSourcePath}\icons\proto_conn_vkontakte.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\vk\vkontakte
Source: "{#MyAppSourcePath}\icons\proto_vkontakte.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\vk\vkontakte or protocols\jabber\vk\vk
Source: "{#MyAppSourcePath}\icons\xstatus_vkontakte.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\jabber\vk\vkontakte
; MRA
Source: "{#MyAppSourcePath}\plugins\mra.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\mra
Source: "{#MyAppSourcePath}\icons\proto_conn_mra.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\mra
Source: "{#MyAppSourcePath}\icons\proto_mra.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\mra
Source: "{#MyAppSourcePath}\icons\xstatus_mra.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\mra
Source: "{#MyAppSourcePath}\skins\smileys\mra\*"; DestDir: "{app}\skins\smileys\mra"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: protocols\mra and resources\smileys
Source: "{#MyAppSourcePath}\skins\ieview\!tools\tZersFiles\mailru\*"; DestDir: "{app}\skins\ieview\!tools\tZersFiles\mailru"; Flags: ignoreversion; Components: protocols\mra and resources\ieview
;Source: "{#MyAppSourcePath}\skins\ieview\mailru.js"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: protocols\mra and resources\ieview
; msn
;Source: "{#MyAppSourcePath}\ini\autoexec_msn.ini"; DestDir: "{app}\profiles"; Flags: ignoreversion; Components: protocols\msn
Source: "{#MyAppSourcePath}\plugins\msn.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\msn
Source: "{#MyAppSourcePath}\icons\proto_conn_msn.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\msn
Source: "{#MyAppSourcePath}\icons\proto_msn.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\msn
; yahoo
;Source: "{#MyAppSourcePath}\ini\autoexec_yahoo.ini"; DestDir: "{app}\profiles"; Flags: ignoreversion; Components: protocols\yahoo
Source: "{#MyAppSourcePath}\plugins\yahoo.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\yahoo
Source: "{#MyAppSourcePath}\icons\proto_conn_yahoo.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\yahoo
Source: "{#MyAppSourcePath}\icons\proto_yahoo.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\yahoo
; Facebook
Source: "{#MyAppSourcePath}\plugins\facebook.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\facebook
Source: "{#MyAppSourcePath}\icons\proto_conn_facebook.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\facebook
Source: "{#MyAppSourcePath}\icons\proto_facebook.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\facebook
; GmailMNotifier
;Source: "{#MyAppSourcePath}\plugins\gmailm.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\gmailm
;Source: "{#MyAppSourcePath}\icons\proto_conn_gmailmnotifier.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\gmailm
;Source: "{#MyAppSourcePath}\icons\proto_gmailmnotifier.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\gmailm
; metaContacts
Source: "{#MyAppSourcePath}\plugins\metacontacts.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\metacontacts
Source: "{#MyAppSourcePath}\icons\proto_metacontacts.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\metacontacts
; mRadio
Source: "{#MyAppSourcePath}\skins\myavatars\mradio.png"; DestDir: "{app}\skins\myavatars"; Flags: ignoreversion; Components: protocols\other\mradio
Source: "{#MyAppSourcePath}\plugins\mradio.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\mradio
Source: "{#MyAppSourcePath}\plugins\mradio.ini"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\mradio
Source: "{#MyAppSourcePath}\plugins\player.ini"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\mradio
Source: "{#MyAppSourcePath}\plugins\bass\*"; DestDir: "{app}\plugins\bass"; Flags: ignoreversion; Components: protocols\other\mradio
Source: "{#MyAppSourcePath}\icons\proto_mradio.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\mradio
; quotes
Source: "{#MyAppSourcePath}\skins\myavatars\quotes.png"; DestDir: "{app}\skins\myavatars"; Flags: ignoreversion; Components: protocols\other\quotes
Source: "{#MyAppSourcePath}\plugins\quotes.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\quotes
Source: "{#MyAppSourcePath}\plugins\quotes\*"; DestDir: "{app}\plugins\quotes"; Flags: ignoreversion; Components: protocols\other\quotes
Source: "{#MyAppSourcePath}\icons\proto_quotes.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\quotes
; rssnews
Source: "{#MyAppSourcePath}\skins\myavatars\rss.png"; DestDir: "{app}\skins\myavatars"; Flags: ignoreversion; Components: protocols\other\rss
Source: "{#MyAppSourcePath}\plugins\rss.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\rss
Source: "{#MyAppSourcePath}\icons\proto_rssnews.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\rss
; skype
;Source: "{#MyAppSourcePath}\plugins\skype.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\skype
;Source: "{#MyAppSourcePath}\icons\proto_conn_skype.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\skype
;Source: "{#MyAppSourcePath}\icons\proto_skype.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\skype
; twitter
Source: "{#MyAppSourcePath}\plugins\twitter.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\twitter
Source: "{#MyAppSourcePath}\icons\proto_conn_twitter.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\twitter
Source: "{#MyAppSourcePath}\icons\proto_twitter.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\twitter
; weather
Source: "{#MyAppSourcePath}\plugins\weather.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\weather
Source: "{#MyAppSourcePath}\plugins\weather\*.png"; DestDir: "{app}\plugins\weather"; Flags: ignoreversion; Components: protocols\other\weather
Source: "{#MyAppSourcePath}\plugins\weather\wundergrnd_intl.ini"; DestDir: "{app}\plugins\weather"; Flags: ignoreversion; Components: protocols\other\weather
;Source: "{#MyAppSourcePath}\plugins\weather\yweather.ini"; DestDir: "{app}\plugins\weather"; Languages: english; Flags: ignoreversion; Components: protocols\other\weather
;Source: "{#MyAppSourcePath}\plugins\weather\meteo_gid_fact.ini"; DestDir: "{app}\plugins\weather"; Languages: russian; Flags: ignoreversion; Components: protocols\other\weather
Source: "{#MyAppSourcePath}\icons\proto_weather.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\weather
; yamn
Source: "{#MyAppSourcePath}\plugins\yamn.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: protocols\other\yamn
Source: "{#MyAppSourcePath}\plugins\yamn\*"; DestDir: "{app}\plugins\yamn"; Flags: ignoreversion; Components: protocols\other\yamn
Source: "{#MyAppSourcePath}\icons\proto_yamn.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\yamn
Source: "{#MyAppSourcePath}\icons\yamn_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: protocols\other\yamn


; Alarms
Source: "{#MyAppSourcePath}\plugins\alarms.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\alarms
Source: "{#MyAppSourcePath}\skins\sounds\reminders.wav"; DestDir: "{app}\skins\sounds"; Flags: ignoreversion; Components: plugins\alarms and resources\sounds
; Auth State
Source: "{#MyAppSourcePath}\plugins\authstate.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\authstate
; bossKey
Source: "{#MyAppSourcePath}\plugins\bosskey.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\bosskey
; buddyexpectator
Source: "{#MyAppSourcePath}\plugins\buddyexpectator.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\buddyex
; buddypounce
Source: "{#MyAppSourcePath}\plugins\buddypounce.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\buddyp
; changeKeyboardLayout
Source: "{#MyAppSourcePath}\plugins\changekeyboardlayout.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\ckl
; favourite contacts
Source: "{#MyAppSourcePath}\plugins\favcontacts.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\favcont
; fingerprint
Source: "{#MyAppSourcePath}\plugins\fingerprint.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\fingerprint
Source: "{#MyAppSourcePath}\icons\fp_clienticons\*"; DestDir: "{app}\icons\fp_clienticons"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: plugins\fingerprint
;Source: "{#MyAppSourcePath}\icons\fingerprint\*"; DestDir: "{app}\icons\fingerprint"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: plugins\fingerprint
;Source: "{#MyAppSourcePath}\msvcr100.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: plugins\fingerprint
; flags
Source: "{#MyAppSourcePath}\plugins\flags.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\flag
Source: "{#MyAppSourcePath}\icons\flag_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: plugins\flag
; fltcontacts
Source: "{#MyAppSourcePath}\plugins\fltcontacts.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\fltcontacts
; ignoreState
Source: "{#MyAppSourcePath}\plugins\ignorestate.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\ignorestate
; keepStatus
Source: "{#MyAppSourcePath}\plugins\keepstatus.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\keepstatus
; Keyboard Notify
Source: "{#MyAppSourcePath}\plugins\keyboardnotify.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\keyboardnotify
; listeningto
Source: "{#MyAppSourcePath}\plugins\listeningtow.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\listeningto
Source: "{#MyAppSourcePath}\plugins\listeningto\*"; DestDir: "{app}\plugins\listeningto"; Flags: ignoreversion; Components: plugins\listeningto
; mathmodulepp
Source: "{#MyAppSourcePath}\plugins\mathmodulepp.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\mathmodulepp
Source: "{#MyAppSourcePath}\plugins\mimetex.exe"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\mathmodulepp
Source: "{#MyAppSourcePath}\plugins\mathmodulepp.upx"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\mathmodulepp
; newxstatusnotify
Source: "{#MyAppSourcePath}\plugins\newxstatusnotify.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\newxstatusnotify
; nohistory
Source: "{#MyAppSourcePath}\plugins\nohistory.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\nohistory\nohistory
; historysweeper
Source: "{#MyAppSourcePath}\plugins\historysweeper.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\nohistory\historysweeper
; quickmessages
Source: "{#MyAppSourcePath}\plugins\quickmessages.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\quickmessages
Source: "{#MyAppSourcePath}\icons\quickmessages_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: plugins\quickmessages
; quick search
Source: "{#MyAppSourcePath}\plugins\quicksearch.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\quicksearch
; secureim
Source: "{#MyAppSourcePath}\plugins\cryptopp.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\secureim
Source: "{#MyAppSourcePath}\plugins\secureim.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\secureim
Source: "{#MyAppSourcePath}\icons\secureim_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: plugins\secureim
; seenplugin
;Source: "{#MyAppSourcePath}\plugins\seenplugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\seenplugin
; sndvol
Source: "{#MyAppSourcePath}\plugins\sndvol.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\sndvol and (resources\sounds or protocols\other\mradio)
; Spell Checker
Source: "{#MyAppSourcePath}\plugins\spellcheckerw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\schecker
Source: "{#MyAppSourcePath}\plugins\dictionaries\en_US.aff"; DestDir: "{app}\plugins\dictionaries"; Flags: ignoreversion; Components: plugins\schecker
Source: "{#MyAppSourcePath}\plugins\dictionaries\en_US.dic"; DestDir: "{app}\plugins\dictionaries"; Flags: ignoreversion; Components: plugins\schecker
Source: "{#MyAppSourcePath}\plugins\dictionaries\ru_RU.aff"; DestDir: "{app}\plugins\dictionaries"; Languages: russian; Flags: ignoreversion; Components: plugins\schecker
Source: "{#MyAppSourcePath}\plugins\dictionaries\ru_RU.dic"; DestDir: "{app}\plugins\dictionaries"; Languages: russian; Flags: ignoreversion; Components: plugins\schecker
Source: "{#MyAppSourcePath}\icons\flags.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: plugins\schecker
; startupstatus
;Source: "{#MyAppSourcePath}\plugins\startupstatus.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\startupstatus
; trafficcounter
Source: "{#MyAppSourcePath}\plugins\trafficcounter.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\trafficcounter
; stopspam
Source: "{#MyAppSourcePath}\plugins\stopspam.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\stopspam
;Source: "{#MyAppSourcePath}\plugins\dos.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\stopspam
; whenWasIt
Source: "{#MyAppSourcePath}\plugins\whenwasit.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\birthdays\birthday
Source: "{#MyAppSourcePath}\skins\sounds\birthday.wav"; DestDir: "{app}\skins\sounds"; Flags: ignoreversion; Components: plugins\birthdays\birthday or plugins\birthdays\uinfoexw and resources\sounds
Source: "{#MyAppSourcePath}\skins\sounds\birthdaycoming.wav"; DestDir: "{app}\skins\sounds"; Flags: ignoreversion; Components: plugins\birthdays\birthday or plugins\birthdays\uinfoexw and resources\sounds
; uinfoexw
Source: "{#MyAppSourcePath}\plugins\uinfoexw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\birthdays\uinfoexw
Source: "{#MyAppSourcePath}\icons\uinfoex_icons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: plugins\birthdays\uinfoexw
;Source: "{#MyAppSourcePath}\msvcr100.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: plugins\birthdays\uinfoexw
; watrack
Source: "{#MyAppSourcePath}\plugins\watrack.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\watrack
Source: "{#MyAppSourcePath}\icons\watrack_buttons.dll"; DestDir: "{app}\icons"; Flags: ignoreversion; Components: plugins\watrack
; whoisreadingmystatusmsg
Source: "{#MyAppSourcePath}\plugins\whoisreadingmystatusmsg.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: plugins\whoisreadingmystatusmsg and protocols\icq


; ieview
Source: "{#MyAppSourcePath}\plugins\ieview.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: resources\ieview
;Source: "{#MyAppSourcePath}\skins\ieview\!tools\cursor\*"; DestDir: "{app}\skins\ieview\!tools\cursor"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\filetypes\*"; DestDir: "{app}\skins\ieview\!tools\filetypes"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\fonts\*"; DestDir: "{app}\skins\ieview\!tools\fonts"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\icons\*"; DestDir: "{app}\skins\ieview\!tools\icons"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\player\*"; DestDir: "{app}\skins\ieview\!tools\player"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\skripte\*"; DestDir: "{app}\skins\ieview\!tools\skripte"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\en\*"; DestDir: "{app}\skins\ieview\!tools\skripte"; Languages: english; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\ru\*"; DestDir: "{app}\skins\ieview\!tools\skripte"; Languages: russian; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\tZersFiles\animationen\*"; DestDir: "{app}\skins\ieview\!tools\tZersFiles\animationen"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\!tools\tZersFiles\grafiken\*"; DestDir: "{app}\skins\ieview\!tools\tZersFiles\grafiken"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\winstyle\*"; DestDir: "{app}\skins\ieview\styles\winstyle"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\winstyle.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\*.png"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\config.css"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\winstyle.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\config.js"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\ieview
; Всплывающие окна
Source: "{#MyAppSourcePath}\plugins\popupw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: resources\popup
Source: "{#MyAppSourcePath}\plugins\mtextcontrolw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: resources\popup
; Смайлы
Source: "{#MyAppSourcePath}\plugins\smileyaddw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: resources\smileys
Source: "{#MyAppSourcePath}\skins\smileys\dark_skin\*"; DestDir: "{app}\skins\smileys\dark_skin"; Flags: ignoreversion; Components: resources\smileys
Source: "{#MyAppSourcePath}\skins\smileys\light_skin\*"; DestDir: "{app}\skins\smileys\light_skin"; Flags: ignoreversion; Components: resources\smileys
Source: "{#MyAppSourcePath}\skins\smileys\other\*"; DestDir: "{app}\skins\smileys\other"; Attribs: hidden; Flags: ignoreversion; Components: resources\smileys
; Звуки
Source: {#MyAppSourcePath}\skins\sounds\add.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\away.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\back.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\changex.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\del.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\error.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\event.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\file.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\global.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\in.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\nudge.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\out.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\press.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\read.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
; Source: {#MyAppSourcePath}\skins\sounds\request.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\scan.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\typing.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
Source: {#MyAppSourcePath}\skins\sounds\url.wav; DestDir: {app}\skins\sounds; Flags: ignoreversion; Components: resources\sounds
; Заставка
Source: "{#MyAppSourcePath}\plugins\advsplashscreen.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: resources\splash
Source: "{#MyAppSourcePath}\skins\splash\*.png"; DestDir: "{app}\skins\splash"; Flags: ignoreversion; Components: resources\splash
Source: "{#MyAppSourcePath}\skins\sounds\startup.wav"; DestDir: "{app}\skins\sounds"; Flags: ignoreversion; Components: resources\splash and resources\sounds
; Подсказки
Source: "{#MyAppSourcePath}\plugins\tipper.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: resources\tooltips
; glamour dark
Source: {#MyAppSourcePath}\skins\clist_modern\glamourd\*; DestDir: {app}\skins\clist_modern\glamourd; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourd
Source: {#MyAppSourcePath}\skins\clist_modern\glamourd.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\glamourd
Source: {#MyAppSourcePath}\skins\tabsrmm\glamourd\*; DestDir: {app}\skins\tabsrmm\glamourd; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourd
Source: {#MyAppSourcePath}\skins\tipper\glamourd\*; DestDir: {app}\skins\tipper\glamourd; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourd and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\glamourd\*; DestDir: {app}\skins\popup\glamourd; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourd and resources\popup
Source: "{#MyAppSourcePath}\skins\glamourd.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\glamourd
Source: "{#MyAppSourcePath}\skins\ieview\styles\glamourd\*"; DestDir: "{app}\skins\ieview\styles\glamourd"; Flags: ignoreversion; Components: resources\themes\glamourd and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\glamourd.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\glamourd and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\glamourd.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\glamourd and resources\ieview
Source: "{#MyAppSourcePath}\skins\glamourd.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\glamourd; Check: Isglamourd()
; glamour light
Source: {#MyAppSourcePath}\skins\clist_modern\glamourl\*; DestDir: {app}\skins\clist_modern\glamourl; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourl
Source: {#MyAppSourcePath}\skins\clist_modern\glamourl.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\glamourl
Source: {#MyAppSourcePath}\skins\tabsrmm\glamourl\*; DestDir: {app}\skins\tabsrmm\glamourl; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourl
Source: {#MyAppSourcePath}\skins\tipper\glamourl\*; DestDir: {app}\skins\tipper\glamourl; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourl and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\glamourl\*; DestDir: {app}\skins\popup\glamourl; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\glamourl and resources\popup
Source: "{#MyAppSourcePath}\skins\glamourl.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\glamourl
Source: "{#MyAppSourcePath}\skins\ieview\styles\glamourl\*"; DestDir: "{app}\skins\ieview\styles\glamourl"; Flags: ignoreversion; Components: resources\themes\glamourl and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\glamourl.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\glamourl and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\glamourl.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\glamourl and resources\ieview
Source: "{#MyAppSourcePath}\skins\glamourl.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\glamourl; Check: Isglamourl()
; graphite dark
Source: {#MyAppSourcePath}\skins\clist_modern\graphited\*; DestDir: {app}\skins\clist_modern\graphited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphited
Source: {#MyAppSourcePath}\skins\clist_modern\graphited.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\graphited
Source: {#MyAppSourcePath}\skins\tabsrmm\graphited\*; DestDir: {app}\skins\tabsrmm\graphited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphited
Source: {#MyAppSourcePath}\skins\tipper\graphited\*; DestDir: {app}\skins\tipper\graphited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphited and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\graphited\*; DestDir: {app}\skins\popup\graphited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphited and resources\popup
Source: "{#MyAppSourcePath}\skins\graphited.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\graphited
Source: "{#MyAppSourcePath}\skins\ieview\styles\graphited\*"; DestDir: "{app}\skins\ieview\styles\graphited"; Flags: ignoreversion; Components: resources\themes\graphited and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\graphited.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\graphited and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\graphited.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\graphited and resources\ieview
Source: "{#MyAppSourcePath}\skins\graphited.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\graphited; Check: Isgraphited()
; graphite light
Source: {#MyAppSourcePath}\skins\clist_modern\graphitel\*; DestDir: {app}\skins\clist_modern\graphitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphitel
Source: {#MyAppSourcePath}\skins\clist_modern\graphitel.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\graphitel
Source: {#MyAppSourcePath}\skins\tabsrmm\graphitel\*; DestDir: {app}\skins\tabsrmm\graphitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphitel
Source: {#MyAppSourcePath}\skins\tipper\graphitel\*; DestDir: {app}\skins\tipper\graphitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphitel and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\graphitel\*; DestDir: {app}\skins\popup\graphitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\graphitel and resources\popup
Source: "{#MyAppSourcePath}\skins\graphitel.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\graphitel
Source: "{#MyAppSourcePath}\skins\ieview\styles\graphitel\*"; DestDir: "{app}\skins\ieview\styles\graphitel"; Flags: ignoreversion; Components: resources\themes\graphitel and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\graphitel.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\graphitel and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\graphitel.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\graphitel and resources\ieview
Source: "{#MyAppSourcePath}\skins\graphitel.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\graphitel; Check: Isgraphitel()
; photoone dark
Source: {#MyAppSourcePath}\skins\clist_modern\photooned\*; DestDir: {app}\skins\clist_modern\photooned; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photooned
Source: {#MyAppSourcePath}\skins\clist_modern\photooned.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\photooned
Source: {#MyAppSourcePath}\skins\tabsrmm\photooned\*; DestDir: {app}\skins\tabsrmm\photooned; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photooned
Source: {#MyAppSourcePath}\skins\tipper\photooned\*; DestDir: {app}\skins\tipper\photooned; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photooned and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\photooned\*; DestDir: {app}\skins\popup\photooned; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photooned and resources\popup
Source: "{#MyAppSourcePath}\skins\photooned.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\photooned
Source: "{#MyAppSourcePath}\skins\ieview\styles\photooned\*"; DestDir: "{app}\skins\ieview\styles\photooned"; Flags: ignoreversion; Components: resources\themes\photooned and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\photooned.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\photooned and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\photooned.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\photooned and resources\ieview
Source: "{#MyAppSourcePath}\skins\photooned.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\photooned; Check: Isphotooned()
; photoone light
Source: {#MyAppSourcePath}\skins\clist_modern\photoonel\*; DestDir: {app}\skins\clist_modern\photoonel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photoonel
Source: {#MyAppSourcePath}\skins\clist_modern\photoonel.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\photoonel
Source: {#MyAppSourcePath}\skins\tabsrmm\photoonel\*; DestDir: {app}\skins\tabsrmm\photoonel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photoonel
Source: {#MyAppSourcePath}\skins\tipper\photoonel\*; DestDir: {app}\skins\tipper\photoonel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photoonel and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\photoonel\*; DestDir: {app}\skins\popup\photoonel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\photoonel and resources\popup
Source: "{#MyAppSourcePath}\skins\photoonel.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\photoonel
Source: "{#MyAppSourcePath}\skins\ieview\styles\photoonel\*"; DestDir: "{app}\skins\ieview\styles\photoonel"; Flags: ignoreversion; Components: resources\themes\photoonel and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\photoonel.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\photoonel and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\photoonel.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\photoonel and resources\ieview
Source: "{#MyAppSourcePath}\skins\photoonel.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\photoonel; Check: Isphotoonel()
; textolite dark
Source: {#MyAppSourcePath}\skins\clist_modern\textolited\*; DestDir: {app}\skins\clist_modern\textolited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolited
Source: {#MyAppSourcePath}\skins\clist_modern\textolited.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\textolited
Source: {#MyAppSourcePath}\skins\tabsrmm\textolited\*; DestDir: {app}\skins\tabsrmm\textolited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolited
Source: {#MyAppSourcePath}\skins\tipper\textolited\*; DestDir: {app}\skins\tipper\textolited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolited and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\textolited\*; DestDir: {app}\skins\popup\textolited; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolited and resources\popup
Source: "{#MyAppSourcePath}\skins\textolited.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\textolited
Source: "{#MyAppSourcePath}\skins\ieview\styles\textolited\*"; DestDir: "{app}\skins\ieview\styles\textolited"; Flags: ignoreversion; Components: resources\themes\textolited and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\textolited.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\textolited and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\textolited.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\textolited and resources\ieview
Source: "{#MyAppSourcePath}\skins\textolited.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\textolited; Check: Istextolited()
; textolite light
Source: {#MyAppSourcePath}\skins\clist_modern\textolitel\*; DestDir: {app}\skins\clist_modern\textolitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolitel
Source: {#MyAppSourcePath}\skins\clist_modern\textolitel.msf; DestDir: {app}\skins\clist_modern; Flags: ignoreversion; Components: resources\themes\textolitel
Source: {#MyAppSourcePath}\skins\tabsrmm\textolitel\*; DestDir: {app}\skins\tabsrmm\textolitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolitel
Source: {#MyAppSourcePath}\skins\tipper\textolitel\*; DestDir: {app}\skins\tipper\textolitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolitel and resources\tooltips and resources\smileys
Source: {#MyAppSourcePath}\skins\popup\textolitel\*; DestDir: {app}\skins\popup\textolitel; Flags: ignoreversion recursesubdirs createallsubdirs; Components: resources\themes\textolitel and resources\popup
Source: "{#MyAppSourcePath}\skins\textolitel.ini"; DestDir: "{app}\skins"; Flags: ignoreversion; Components: resources\themes\textolitel
Source: "{#MyAppSourcePath}\skins\ieview\styles\textolitel\*"; DestDir: "{app}\skins\ieview\styles\textolitel"; Flags: ignoreversion; Components: resources\themes\textolitel and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\styles\textolitel.css"; DestDir: "{app}\skins\ieview\styles"; Flags: ignoreversion; Components: resources\themes\textolitel and resources\ieview
Source: "{#MyAppSourcePath}\skins\ieview\textolitel.ivt"; DestDir: "{app}\skins\ieview"; Flags: ignoreversion; Components: resources\themes\textolitel and resources\ieview
Source: "{#MyAppSourcePath}\skins\textolitel.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: resources\themes\textolitel; Check: Istextolitel()
; windows style
Source: "{#MyAppSourcePath}\skins\winstyle.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: core; Check: not Istextolitel() and not Istextolited() and not Isphotoonel() and not Isphotooned() and not Isgraphitel() and not Isgraphited() and not Isglamourl() and not Isglamourd()
;Source: "{#MyAppSourcePath}\skins\winstyle.ini"; DestDir: "{app}\profiles"; DestName: "autoexec_skin.ini"; Flags: ignoreversion; Components: core; Check: IsNotThemesInstall()

; игры
Source: "{#MyAppSourcePath}\plugins\battleship.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: games\battleship
Source: "{#MyAppSourcePath}\plugins\chess4net_mi.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: games\chess
Source: "{#MyAppSourcePath}\plugins\chess4net\*"; DestDir: "{app}\plugins\chess4net"; Flags: ignoreversion; Components: games\chess
Source: "{#MyAppSourcePath}\plugins\gomoku.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: games\gomoku
Source: "{#MyAppSourcePath}\plugins\janustheme\*"; DestDir: "{app}\plugins\janustheme"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: games\janus
Source: "{#MyAppSourcePath}\plugins\janus.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: games\janus
Source: "{#MyAppSourcePath}\plugins\janus.msg"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: games\janus


[Dirs]
Name: "{app}\incoming";
Name: "{app}\skins\smileys\other"; Attribs: hidden; Components: resources\smileys


[Icons]
Name: "{group}\Miranda"; Filename: "{app}\{#MyAppExeName}"; Check: IsStandartSetupType()
Name: "{group}\{cm:Dbtool}"; Filename: "{app}\dbtool.exe"; Check: IsStandartSetupType()
Name: "{group}\{cm:Support}"; Filename: "{#MyAppURL}"; Check: IsStandartSetupType()
Name: "{group}\{cm:Uninstall}"; Filename: "{uninstallexe}"; Check: IsStandartSetupType()
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userstartup}\Miranda"; Filename: "{app}\{#MyAppExeName}"; Tasks: autorun
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon


[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Check: IsStandartSetupType()
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; Check: IsStandartSetupType()
Name: "autorun"; Description: "{cm:CreateAutorunIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; Check: IsStandartSetupType()


[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent
; Filename: {sys}\rundll32.exe; Parameters: "url.dll,FileProtocolHandler {app}\Help\faq.html"; Description: {cm:ShowFAQ,faq.html}; Flags: nowait postinstall skipifsilent; Check: not(IsPreviousVersionUpdatable())


[INI]
; aim
Filename: {app}\profiles\settings.ini; Section: AIM; Key: AM_BaseProto; String: sAIM; Flags: uninsdeleteentry; Components: protocols\aim
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 0; String: sAIM; Flags: uninsdeleteentry; Components: protocols\aim
Filename: {app}\profiles\autoexec_update.ini; Section: AIM; Key: AM_BaseProto; String: sAIM; Flags: uninsdeleteentry; Components: protocols\aim; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; facebook
Filename: {app}\profiles\settings.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: protocols\other\facebook
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 5; String: sFacebook; Flags: uninsdeleteentry; Components: protocols\other\facebook
Filename: {app}\profiles\autoexec_update.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: protocols\other\facebook; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; gg
Filename: {app}\profiles\settings.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: protocols\gg
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 10; String: sGG; Flags: uninsdeleteentry; Components: protocols\gg
Filename: {app}\profiles\autoexec_update.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: protocols\gg; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; icq
Filename: {app}\profiles\settings.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 15; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq
Filename: {app}\profiles\autoexec_update.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: protocols\icq; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; irc
Filename: {app}\profiles\settings.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: protocols\irc
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 20; String: sIRC; Flags: uninsdeleteentry; Components: protocols\irc
Filename: {app}\profiles\autoexec_update.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: protocols\irc; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
;	jabber
Filename: {app}\profiles\settings.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabber
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 25; String: sJabber; Flags: uninsdeleteentry; Components: protocols\jabber\jabber
Filename: {app}\profiles\autoexec_update.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabber; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
;	gtalk
Filename: {app}\profiles\settings.ini; Section: GTalk; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 26; String: sGTalk; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk
Filename: {app}\profiles\autoexec_update.ini; Section: GTalk; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\gtalk; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
;	jabberru
Filename: {app}\profiles\settings.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 27; String: sJabberru; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru
Filename: {app}\profiles\autoexec_update.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\jabberru; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
;	vk
Filename: {app}\profiles\settings.ini; Section: VK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\vk\vk
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 28; String: sVK; Flags: uninsdeleteentry; Components: protocols\jabber\vk\vk
Filename: {app}\profiles\autoexec_update.ini; Section: VK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: protocols\jabber\vk\vk; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; msn
Filename: {app}\profiles\settings.ini; Section: MSN; Key: AM_BaseProto; String: sMSN; Flags: uninsdeleteentry; Components: protocols\msn
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 30; String: sMSN; Flags: uninsdeleteentry; Components: protocols\msn
Filename: {app}\profiles\autoexec_update.ini; Section: MSN; Key: AM_BaseProto; String: sMSN; Flags: uninsdeleteentry; Components: protocols\msn; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; twitter
Filename: {app}\profiles\settings.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: protocols\other\twitter
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 35; String: sTwitter; Flags: uninsdeleteentry; Components: protocols\other\twitter
Filename: {app}\profiles\autoexec_update.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: protocols\other\twitter; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; yahoo
Filename: {app}\profiles\settings.ini; Section: YAHOO; Key: AM_BaseProto; String: sYAHOO; Flags: uninsdeleteentry; Components: protocols\yahoo
Filename: {app}\profiles\settings.ini; Section: Protocols; Key: 40; String: sYAHOO; Flags: uninsdeleteentry; Components: protocols\yahoo
Filename: {app}\profiles\autoexec_update.ini; Section: YAHOO; Key: AM_BaseProto; String: sYAHOO; Flags: uninsdeleteentry; Components: protocols\yahoo; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()

; changeKeyboardLayout
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Toolbar; Key: UseActions_210217189; String: s70_1_0_0_1_1; Flags: uninsdeleteentry; Components: plugins\ckl
Filename: {app}\profiles\settings.ini; Section: TabSRMM_Toolbar; Key: UseActions_210217189; String: s70_0_0_0_1_1; Flags: uninsdeleteentry; Components: not plugins\ckl
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Toolbar; Key: UseActions_210217189; String: s70_1_0_0_1_1; Flags: uninsdeleteentry; Components: plugins\ckl; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
Filename: {app}\profiles\autoexec_update.ini; Section: TabSRMM_Toolbar; Key: UseActions_210217189; String: s70_0_0_0_1_1; Flags: uninsdeleteentry; Components: not plugins\ckl; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; Keyboard Notify
Filename: {app}\profiles\settings.ini; Section: keybdnotify; Key: keypresses; String: b0; Flags: uninsdeleteentry; Components: plugins\keyboardnotify\ps2
Filename: {app}\profiles\settings.ini; Section: keybdnotify; Key: keypresses; String: b1; Flags: uninsdeleteentry; Components: plugins\keyboardnotify\usb
Filename: {app}\profiles\autoexec_update.ini; Section: keybdnotify; Key: keypresses; String: b0; Flags: uninsdeleteentry; Components: plugins\keyboardnotify\ps2; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
Filename: {app}\profiles\autoexec_update.ini; Section: keybdnotify; Key: keypresses; String: b1; Flags: uninsdeleteentry; Components: plugins\keyboardnotify\usb; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; Tab_SRMsg default
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\nohistory
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\nohistory
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\nohistory; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and not plugins\nohistory; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; Tab_SRMsg ieview
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\nohistory) or (resources\ieview and not plugins\nohistory)
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\nohistory) or (resources\ieview and not plugins\nohistory)
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\nohistory) or (resources\ieview and not plugins\nohistory); Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (resources\ieview and plugins\nohistory) or (resources\ieview and not plugins\nohistory); Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
; Tab_SRMsg history++
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\nohistory
Filename: {app}\profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\nohistory
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\nohistory; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()
Filename: {app}\profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not resources\ieview and plugins\nohistory; Check: IsPreviousVersionUpdatable() or IsPortableSetupType()


[Code]
// Описание компонентов
function EnableDescription(ComponentsListHandle: HWND; DescLabelHandle: HWND; DescStrings: PAnsiChar): BOOL; external 'enabledesc@files:descctrl.dll stdcall';
function DisableDescription: BOOL; external 'disabledesc@files:descctrl.dll stdcall';

//function  GDIPDrawImage(Wnd: HWND; FileName: PAnsiChar; Left, Top, Width, Height: Integer; Stretch, IsBkg: Boolean):Longint; external 'gdipDrawImage@files:GDIPlus.dll stdcall';
//procedure GDIPReleaseImage(img: Longint); external 'gdipReleaseImage@files:GDIPlus.dll stdcall';
//procedure GDIPShutdown; external 'gdipShutdown@files:GDIPlus.dll stdcall';

// Глобальные переменные
var
  PreviousVersionDetectPage: TWizardPage;
  SkinSelectPage: TInputOptionWizardPage;
  SetupTypeVar, DefaultTypeVar: Boolean;
  StandartSetup, PortableSetup, UninstallSetup: TNewRadioButton;
  ExtendedConfiguration: TNewCheckBox;
  ComponentList, TaskList: TStringList;
  ComponentInfo, SkinInfo: TNewStaticText;
  SkinPreview: TBitmapImage;

  // Перегрузка переменных секции [Setup]
function GetAppId(param: String): String;
begin
    Result := ExpandConstant('{#MyAppId}');
end;
function GetAppDirectory(): String;
var
  path: string;
begin
    if (not SetupTypeVar) then
    begin
      if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'InstallLocation', path) then
        Result := AddBackslash(path)
      else
        Result := AddBackslash(ExpandConstant('{#MyAppSetupStandartPath}'));
    end
    else
      Result := AddBackslash(ExpandConstant('{#MyAppSetupPortablePath}'));
end;

// Удаление деинсталлятора
procedure RemoveUninstaller();
begin
  DelTree(AddBackslash(ExpandConstant('{app}\uninstall')), True, True, True)
end;

// Проверка на наличие запущенных копий
function CheckOnRunningCopies(): Boolean;
var
  wnd, pmwnd, epwnd: HWND;
  choise: Integer;
begin
  Result := true;
  wnd := FindWindowByClassName('miranda');
  pmwnd := FindWindowByWindowName(ExpandConstant('{cm:ProfileManagerWindowName}'));
  epwnd := FindWindowByWindowName(ExpandConstant('{cm:EnterPasswordWindowName}'));
  while (pmwnd <> 0) or (epwnd <> 0) or (wnd <> 0) do
  begin
    choise := MsgBox(ExpandConstant('{cm:MirandaIsRunning}'), mbError, MB_ABORTRETRYIGNORE);
    case choise of
      IDABORT :
        begin
          Result := false;
          break;
        end;
      IDRETRY :
        begin
           wnd := FindWindowByClassName('miranda');
           pmwnd := FindWindowByWindowName(ExpandConstant('{cm:ProfileManagerWindowName}'));
           epwnd := FindWindowByWindowName(ExpandConstant('{cm:EnterPasswordWindowName}'));
        end;
      IDIGNORE :
        begin
          break;
        end;
    end;
  end;
end;

// Создание бэкапа
procedure CreateBackup();
var
  searchDir, backupDir: string;
  findResult: Boolean;
  fileList: TFindRec;
begin
  searchDir := AddBackslash(ExpandConstant('{#MyAppSetupStandartAppDataPath}\profiles'));
  if DirExists(searchDir) then
  begin
    backupDir := AddBackslash(AddBackslash(ExpandConstant('{#MyAppSetupStandartAppDataPath}\Backups')) + GetDateTimeString('yyyy/mm/dd hh:nn', '_', '.' ));
    findResult := FindFirst(searchDir + '*.dat', fileList);
    while findResult do
      if ForceDirectories(backupDir) then
      begin
        FileCopy(searchDir + fileList.Name, backupDir + fileList.Name, True);
        findResult := FindNext(fileList);
      end;
  end;
end;
procedure CheckComponents(Items: TStringList);
var
  component, components: string;
  i, comma : integer;
begin
  if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Selected Components', components) then
  begin
    components := components + ',';
    comma := Pos(',', components);
    repeat
    begin
      component := Copy(components, 0, comma - 1);
      i := Items.IndexOf(component);
      if (i >= 0) then
      begin
        if (Pos('\', component) > 0) then
          WizardForm.ComponentsList.CheckItem(i, coCheck);
        WizardForm.ComponentsList.ItemEnabled[i] := false;
      end;
      Delete(components, 1, comma);
      comma := Pos(',', components);
    end;
    until (comma = 0);
  end;
  if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Deselected Components', components) then
  begin
    components := components + ',';
    comma := Pos(',', components);
    repeat
    begin
      component := Copy(components, 0, comma - 1);
      i := Items.IndexOf(component);
      if (i >= 0) then
      begin
//        if (WizardForm.ComponentsList.ItemObject[i].ClassType = TNewRadioButton.ClassType)
//WizardForm.ComponentsList.ItemObject[i].ClassType();
        if (Pos('\', component) > 0) then
          WizardForm.ComponentsList.CheckItem(i, coUncheck);
        WizardForm.ComponentsList.ItemEnabled[i] := true;
      end;
      Delete(components, 1, comma);
      comma := Pos(',', components);
    end;
    until (comma = 0);
  end;


//  if (Pos(ExpandConstant('{cm:EnglishLanguage}'), ' ' + WizardSelectedComponents(True)) <> 0) then
//    WizardForm.ComponentsList.ItemEnabled[3] := false;

//  if (Pos(ExpandConstant('{cm:RussianLanguage}'), ' ' + WizardSelectedComponents(True)) <> 0) then
//    WizardForm.ComponentsList.ItemEnabled[2] := false;
end;
procedure CheckTasks(Items: TStringList);
var
  component, components: string;
  i, comma : integer;
begin
  if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Selected Tasks', components) then
  begin
    components := components + ',';
    comma := Pos(',', components);
    repeat
    begin
      component := Copy(components, 0, comma - 1);
      i := Items.IndexOf(component);
      if (i >= 0) then
        WizardForm.TasksList.CheckItem(i, coCheck);
      Delete(components, 1, comma);
      comma := Pos(',', components);
    end;
    until (comma = 0);
  end;
  if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Deselected Tasks', components) then
  begin
    components := components + ',';
    comma := Pos(',', components);
    repeat
    begin
      component := Copy(components, 0, comma - 1);
      i := Items.IndexOf(component);
      if (i >= 0) then
        WizardForm.TasksList.CheckItem(i, coUncheck);
      Delete(components, 1, comma);
      comma := Pos(',', components);
    end;
    until (comma = 0);
  end;
end;

// Работа с предыдущими версиями
function PreviousVersionDetected(): Boolean;
var
  path, version: string;
begin
  Result := false;
  path := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1';
  if RegQueryStringValue(HKLM, path, 'DisplayVersion', version) then
    begin
      Result := true;
    end;
end;

const
  MyAppVerMajor = 0;
  MyAppVerMinor = 9;
  MyAppVerBuild = 18;
  MyAppVerRevis = 2;

function IsPreviousVersionUpdatable(): Boolean;
var
  version: string;
  major, minor, build, revis: Integer;
begin
  Result := False;
  if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppID('') + '_is1', 'DisplayVersion', version) then
    begin
      major := StrToInt(Copy(version, 1, Pos('.', version) - 1));
      Delete(version, 1, Pos('.', version));

      minor := StrToInt(Copy(version, 1, Pos('.', version) - 1));
      Delete(version, 1, Pos('.', version));

      build := StrToInt(Copy(version, 1, Pos('.', version) - 1));
      Delete(version, 1, Pos('.', version));

      revis := StrToInt(Copy(version, 1, Pos('.', version) - 1));
      Delete(version, 1, Pos('.', version));

      if (major <= MyAppVerMajor) and (minor <= MyAppVerMinor) then
        Result:= (build < MyAppVerBuild) or (revis < MyAppVerRevis);
    end;
end;

procedure ReCheckPreviousVersionDetectPageControls();
begin
  if PreviousVersionDetected() then
  begin
    UninstallSetup.Enabled := true;
    StandartSetup.Caption := ExpandConstant('{cm:UpdateAppTitle}');
//    ExtendedConfiguration.Enabled := false;

    if not(IsPreviousVersionUpdatable()) then
    begin
      StandartSetup.Enabled := false;
      UninstallSetup.Checked := true;
    end
    else
    begin
      StandartSetup.Enabled := true;
      StandartSetup.Checked := true;
      StandartSetup.OnClick(nil);
    end;
  end
  else
  begin
    StandartSetup.Caption := ExpandConstant('{cm:SetupAppTitle}');
    ExtendedConfiguration.Enabled := true;
    UninstallSetup.Enabled := false;
    if (UninstallSetup.Checked) then
      StandartSetup.Checked := true;
    StandartSetup.OnClick(nil);
  end;
end;

// Языки
//function IsEnglishLanguage(): Boolean;
//begin
//  if (Pos(ExpandConstant('{cm:EnglishLanguage}'), ' ' + WizardSelectedComponents(True)) <> 0) then
//	  Result:= True;
//end;
//function IsRussianLanguage(): Boolean;
//begin
//  if (Pos(ExpandConstant('{cm:RussianLanguage}'), ' ' + WizardSelectedComponents(True)) <> 0) then
//	  Result:= True;
//end;

// Темы
function IsNotThemesInstall(): Boolean;
begin
  if (Pos('themes', ' ' + WizardSelectedComponents(False)) > 0) then
    Result := True;
end;
function Isglamourd(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 1);
end;
function Isglamourl(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 2);
end;
function Isgraphited(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 3);
end;
function Isgraphitel(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 4);
end;
function Isphotooned(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 5);
end;
function Isphotoonel(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 6);
end;
function Istextolited(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 7);
end;
function Istextolitel(): Boolean;
begin
  Result := (SkinSelectPage.SelectedValueIndex = 8);
end;

// Тип установки
function IsStandartSetupType(): Boolean;
begin
  Result := not SetupTypeVar;
end;
function IsPortableSetupType(): Boolean;
begin
  Result := SetupTypeVar;
end;
function IsDefaultSetup(): Boolean;
begin
  Result := DefaultTypeVar;
end;

// Обработчики событий
// Домашняя страничка
var
MouseURLLabel,URLLabel: TLabel;

procedure URLLabelOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExec('open', '{#MyAppURL}', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure URLLabelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
URLLabel.Font.Color:=$00FF8000;
URLLabel.Font.Style:=[fsUnderline, fsBold];
end;

procedure URLLabelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
URLLabel.Font.Color:=clgray;
URLLabel.Font.Style:=[fsBold];
end;

procedure URLLabelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
URLLabel.Font.Color:=$00804000;
URLLabel.Font.Style:=[fsUnderline, fsBold];
end;

procedure URLLabelMouseMove2(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
URLLabel.Font.Color:=clgray;
URLLabel.Font.Style:=[fsBold];
end;

procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
   DisableDescription();
end;
procedure StandartSetupOnClick(Sender: TObject);
begin
  DefaultTypeVar := not(ExtendedConfiguration.Checked);
  SetupTypeVar := false;
  if PreviousVersionDetected() then
  begin
    CheckComponents(ComponentList);
    //CheckTasks(TaskList);
  end
  else
  begin
    WizardForm.TypesCombo.ItemIndex := 1;
    WizardForm.TypesCombo.OnChange(nil);
  end;
  WizardForm.DirEdit.Text := GetAppDirectory();
end;
procedure ExtendedConfigurationOnClick(Sender: TObject);
begin
  DefaultTypeVar := not(ExtendedConfiguration.Checked);
end;
procedure PortableSetupOnClick(Sender: TObject);
var
  i : integer;
begin
  DefaultTypeVar := false;
  SetupTypeVar := true;
  WizardForm.TypesCombo.ItemIndex := 0;
  WizardForm.TypesCombo.OnChange(nil);
  WizardForm.DirEdit.Text := GetAppDirectory();

  for i := 0 to WizardForm.ComponentsList.Items.Count - 1 do
    WizardForm.ComponentsList.ItemEnabled[i] := true;
end;
procedure CreatePreviousVersionDetectPage();
var
  StandartSetupDescription, PortableSetupDescription, UninstallSetupDescription: TNewStaticText;
  StandartSetupImage, PortableSetupImage, UninstallSetupImage: TBitmapImage;
begin
  PreviousVersionDetectPage := CreateCustomPage(wpUserInfo, ExpandConstant('{cm:PreviousVersionDetected}'), ExpandConstant('{cm:PreviousVersionQuestion}'));

  StandartSetup := TNewRadioButton.Create(WizardForm);
  StandartSetup.Parent := PreviousVersionDetectPage.Surface;
  StandartSetup.Caption := '';
  StandartSetup.Checked := true;
  StandartSetup.Top := WizardForm.TasksList.Top - 35;
  StandartSetup.Left := WizardForm.TasksList.Left;
  StandartSetup.Width := WizardForm.TasksList.Width;
  StandartSetup.OnClick := @StandartSetupOnClick;

  StandartSetupImage := TBitmapImage.Create(WizardForm);
  StandartSetupImage.Parent := PreviousVersionDetectPage.Surface;
  StandartSetupImage.Center := true;
  StandartSetupImage.BackColor := $ffffff;
  StandartSetupImage.Top := StandartSetup.Top + StandartSetup.Height + 2;
  StandartSetupImage.Left := StandartSetup.Left;
  StandartSetupImage.Width := 48;
  StandartSetupImage.Height := 48;
  ExtractTemporaryFile('Install.bmp');
  StandartSetupImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Install.bmp'));

  StandartSetupDescription := TNewStaticText.Create(WizardForm);
  StandartSetupDescription.Parent := PreviousVersionDetectPage.Surface;
  StandartSetupDescription.Caption := ExpandConstant('{cm:StandartInstallText}');
  StandartSetupDescription.WordWrap := true;
  StandartSetupDescription.Top := StandartSetupImage.Top;
  StandartSetupDescription.Left := StandartSetupImage.Left + StandartSetupImage.Width + 10;
  StandartSetupDescription.Width := WizardForm.TasksList.Width - StandartSetupImage.Width - 5;
  StandartSetupDescription.Height := StandartSetupImage.Height - 20;

  ExtendedConfiguration := TNewCheckBox.Create(WizardForm);
  ExtendedConfiguration.Parent := PreviousVersionDetectPage.Surface;
  ExtendedConfiguration.Caption := ExpandConstant('{cm:ExtendedConfiguration}');
  ExtendedConfiguration.Top := StandartSetup.Top;
  ExtendedConfiguration.Left := StandartSetup.Left + 250;
  ExtendedConfiguration.Width := StandartSetupDescription.Width;
  ExtendedConfiguration.OnClick := @ExtendedConfigurationOnClick;

  PortableSetup := TNewRadioButton.Create(WizardForm);
  PortableSetup.Parent := PreviousVersionDetectPage.Surface;
  PortableSetup.Caption := ExpandConstant('{cm:PortableAppTitle}');
  PortableSetup.Top := StandartSetupImage.Top + StandartSetupImage.Height + 10;
  PortableSetup.Left := WizardForm.TasksList.Left;
  PortableSetup.Width := WizardForm.TasksList.Width;
  PortableSetup.OnClick := @PortableSetupOnClick;

  PortableSetupImage := TBitmapImage.Create(WizardForm);
  PortableSetupImage.Parent := PreviousVersionDetectPage.Surface;
  PortableSetupImage.Center := true;
  PortableSetupImage.BackColor := $ffffff;
  PortableSetupImage.Top := PortableSetup.Top + PortableSetup.Height + 2;
  PortableSetupImage.Left := PortableSetup.Left;
  PortableSetupImage.Width := 48;
  PortableSetupImage.Height := 48;
  ExtractTemporaryFile('Portable.bmp');
  PortableSetupImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Portable.bmp'));

  PortableSetupDescription := TNewStaticText.Create(WizardForm);
  PortableSetupDescription.Parent := PreviousVersionDetectPage.Surface;
  PortableSetupDescription.Caption := ExpandConstant('{cm:PortableInstallText}');
  PortableSetupDescription.WordWrap := true;
  PortableSetupDescription.Top := PortableSetupImage.Top;
  PortableSetupDescription.Left := PortableSetupImage.Left + PortableSetupImage.Width + 10;
  PortableSetupDescription.Width := WizardForm.TasksList.Width - PortableSetupImage.Width - 5;
  PortableSetupDescription.Height := PortableSetupImage.Height;

  UninstallSetup := TNewRadioButton.Create(WizardForm);
  UninstallSetup.Parent := PreviousVersionDetectPage.Surface;
  UninstallSetup.Caption := ExpandConstant('{cm:UninstallAppTitle}');
  UninstallSetup.Top := PortableSetupImage.Top + PortableSetupImage.Height + 10;
  UninstallSetup.Left := WizardForm.TasksList.Left;
  UninstallSetup.Width := WizardForm.TasksList.Width;

  UninstallSetupImage := TBitmapImage.Create(WizardForm);
  UninstallSetupImage.Parent := PreviousVersionDetectPage.Surface;
  UninstallSetupImage.Center := true;
  UninstallSetupImage.BackColor := $ffffff;
  UninstallSetupImage.Top := UninstallSetup.Top + UninstallSetup.Height + 2;
  UninstallSetupImage.Left := UninstallSetup.Left;
  UninstallSetupImage.Width := 48;
  UninstallSetupImage.Height := 48;
  ExtractTemporaryFile('Recycle.bmp');
  UninstallSetupImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Recycle.bmp'));

  UninstallSetupDescription := TNewStaticText.Create(WizardForm);
  UninstallSetupDescription.Parent := PreviousVersionDetectPage.Surface;
  UninstallSetupDescription.Caption := ExpandConstant('{cm:UninstallText}');
  UninstallSetupDescription.WordWrap := true;
  UninstallSetupDescription.Top := UninstallSetupImage.Top;
  UninstallSetupDescription.Left := UninstallSetupImage.Left + UninstallSetupImage.Width + 10;
  UninstallSetupDescription.Width := WizardForm.TasksList.Width - UninstallSetupImage.Width - 5;
  UninstallSetupDescription.Height := UninstallSetupImage.Height;
end;

// Панель информации о компонентах
procedure CreateComponentsInfoPanel();
var
  InfoCaption: TNewStaticText;
  InfoPanel: TPanel;
begin
  WizardForm.TypesCombo.Width := ScaleX(244);
  WizardForm.ComponentsList.Width := ScaleX(244);
  WizardForm.ComponentsList.Height := ScaleY(135);

  InfoPanel := TPanel.Create(WizardForm);
  InfoPanel.Parent := WizardForm.SelectComponentsPage;
  InfoPanel.Caption := '';
  InfoPanel.Top := WizardForm.TypesCombo.Top;
  InfoPanel.Left := ScaleX(250);
  InfoPanel.Width := ScaleX(167);
  InfoPanel.Height := WizardForm.ComponentsList.Height + WizardForm.TypesCombo.Height + 4;
  InfoPanel.BevelInner := bvRaised;
  InfoPanel.BevelOuter := bvLowered;
  InfoCaption := TNewStaticText.Create(WizardForm);
  InfoCaption.Parent := WizardForm.SelectComponentsPage;
  InfoCaption.Caption := ExpandConstant('{cm:DescriptionTitle}');
  InfoCaption.Left := ScaleX(258);
  InfoCaption.Top := InfoPanel.Top - ScaleY(5);
  InfoCaption.Font.Color := clActiveCaption;

  ComponentInfo := TNewStaticText.Create(WizardForm);
  ComponentInfo.Parent := InfoPanel;
  ComponentInfo.AutoSize := False;
  ComponentInfo.Left := ScaleX(4);
  ComponentInfo.Width := ScaleX(158);
  ComponentInfo.Top := ScaleY(8);
  ComponentInfo.Height := WizardForm.ComponentsList.Height - ScaleY(-15);
  ComponentInfo.Caption := ExpandConstant('{cm:InfoCaption}');
  ComponentInfo.WordWrap := true;
end;
procedure SkinSelectPageOnCheck(Sender: TObject);
begin
  case SkinSelectPage.SelectedValueIndex of
      0 :
      begin
        ExtractTemporaryFile('Windows Style.png');
//        GDIPDrawImage(SkinPreview.Bitmap.Handle, ExpandConstant('{tmp}\Windows Style.png'), ScaleX(0), ScaleY(0), SkinPreview.Width, SkinPreview.Height, True, True);
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Windows Style.bmp'));
      end;
      1 :
      begin
        ExtractTemporaryFile('Glamour Dark.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Glamour Dark.bmp'));
      end;
      2 :
      begin
        ExtractTemporaryFile('Glamour Light.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Glamour Light.bmp'));
      end;
      3 :
      begin
        ExtractTemporaryFile('Graphite Dark.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Graphite Dark.bmp'));
      end;
      4 :
      begin
        ExtractTemporaryFile('Graphite Light.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Graphite Light.bmp'));
      end;
      5 :
      begin
        ExtractTemporaryFile('Photoone Dark.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Photoone Dark.bmp'));
      end;
      6 :
      begin
        ExtractTemporaryFile('Photoone Light.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Photoone Light.bmp'));
      end;
      7 :
      begin
        ExtractTemporaryFile('Textolite Dark.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Textolite Dark.bmp'));
      end;
      8 :
      begin
        ExtractTemporaryFile('Textolite Light.bmp');
        SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Textolite Light.bmp'));
      end;	  
  end;
end;
procedure SkinFullViewOnClick(Sender: TObject);
var
  ErrorCode: integer;
begin
  ExtractTemporaryFile(SkinSelectPage.CheckListBox.ItemCaption[SkinSelectPage.SelectedValueIndex] + '.png');
  Exec(ExpandConstant('{sys}\rundll32.exe'), 'shimgvw.dll,ImageView_Fullscreen ' + ExpandConstant('{tmp}\') + SkinSelectPage.CheckListBox.ItemCaption[SkinSelectPage.SelectedValueIndex] + '.png', '', SW_SHOW, ewNoWait, ErrorCode);
end;
procedure CreateSkinSelectPage();
var
  InfoCaption: TNewStaticText;
  InfoPanel, Panel: TPanel;
  SkinFullView: TNewButton;
  Selected: Cardinal;
begin

  begin
    SkinSelectPage := CreateInputOptionPage(wpSelectComponents, ExpandConstant('{cm:SkinChecking}'), ExpandConstant('{cm:CheckSkinQuestion}'), ExpandConstant('{cm:CheckOneOfSkin}'), true, true);
    Panel := TPanel.Create(WizardForm);
    SkinSelectPage.CheckListBox.Color := Panel.Color;
    SkinSelectPage.CheckListBox.WantTabs := true;
    SkinSelectPage.Add('Windows Style');
    SkinSelectPage.Add('Glamour Dark');
    SkinSelectPage.Add('Glamour Light');
    SkinSelectPage.Add('Graphite Dark');
    SkinSelectPage.Add('Graphite Light');
    SkinSelectPage.Add('Photoone Dark');
    SkinSelectPage.Add('Photoone Light');	
    SkinSelectPage.Add('Textolite Dark');
    SkinSelectPage.Add('Textolite Light');
	
    SkinPreview := TBitmapImage.Create(WizardForm);
    SkinPreview.Parent := SkinSelectPage.Surface;
    SkinPreview.Stretch := true;
    SkinPreview.Top := SkinSelectPage.CheckListBox.Top;
    SkinPreview.Left := SkinSelectPage.CheckListBox.Width - 220;
    SkinPreview.Width := 220;
    SkinPreview.Height := SkinSelectPage.CheckListBox.Height - 8;

    SkinFullView := TNewButton.Create(WizardForm);
    SkinFullView.Parent := SkinSelectPage.Surface;
    SkinFullView.Caption := ExpandConstant('{cm:FullView}');
    SkinFullView.Top := SkinPreview.Top + SkinPreview.Height - 25;
    SkinFullView.Left := SkinSelectPage.CheckListBox.Width - 220;
    SkinFullView.Width := 220;
    SkinFullView.OnClick := @SkinFullViewOnClick;

    SkinPreview.Height := SkinPreview.Height - 30;

    ExtractTemporaryFile('Windows Style.bmp');
    SkinPreview.Bitmap.LoadFromFile(ExpandConstant('{tmp}\Windows Style.bmp'));

    SkinSelectPage.CheckListBox.Width := SkinSelectPage.CheckListBox.Width - 230

    InfoPanel := TPanel.Create(WizardForm);
    InfoPanel.Parent := SkinSelectPage.Surface;
    InfoPanel.Caption := '';
    InfoPanel.Top := SkinSelectPage.CheckListBox.Height - 40;
    InfoPanel.Left := SkinSelectPage.CheckListBox.Left;
    InfoPanel.Width := SkinSelectPage.CheckListBox.Width + 1;
    InfoPanel.Height := 60;
    InfoPanel.BevelInner := bvRaised;
    InfoPanel.BevelOuter := bvLowered;

    SkinSelectPage.CheckListBox.Height := SkinSelectPage.CheckListBox.Height - 70;

    InfoCaption := TNewStaticText.Create(WizardForm);
    InfoCaption.Parent := SkinSelectPage.Surface;
    InfoCaption.Caption := ExpandConstant('{cm:DescriptionTitle}');
    InfoCaption.Left := SkinSelectPage.CheckListBox.Left + 10;
    InfoCaption.Top := InfoPanel.Top - 5;
    InfoCaption.Font.Color := clActiveCaption;

    SkinInfo := TNewStaticText.Create(WizardForm);
    SkinInfo.Parent := InfoPanel;
    SkinInfo.AutoSize := False;
    SkinInfo.Left := 6;
    SkinInfo.Width := InfoPanel.Width - 16;
    SkinInfo.Top := 12;
    SkinInfo.Height := InfoPanel.Height - 16;
    SkinInfo.Caption := ExpandConstant('{cm:InfoCaption}');
    SkinInfo.WordWrap := true;

    if RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Selected Theme', Selected) then
      SkinSelectPage.SelectedValueIndex := Selected
    else
      SkinSelectPage.SelectedValueIndex := 0;

    SkinSelectPage.CheckListBox.OnClickCheck := @ SkinSelectPageOnCheck;
  end;
 end;
 
// Работа со страницами
procedure CurPageChanged(CurPageID: Integer);
var
  ErrorCode: integer;
begin
  if (CurPageID = wpSelectComponents) then
  begin
    DisableDescription();
    EnableDescription(WizardForm.ComponentsList.Handle, ComponentInfo.Handle,
    ExpandConstant('{cm:CoreFilesDescription}') + ';' +
//	ExpandConstant('{cm:CrshdmpDescription}') + ';' +
    ExpandConstant('{cm:DBEditorDescription}') + ';' +
	
    ExpandConstant('{cm:ProtocolsDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsAIMDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsGGDescription}') + ';' +
    ExpandConstant('{cm:ProtocolsICQstdDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsIRCDescription}') + ';' +
    ExpandConstant('{cm:ProtocolsJDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsGTalkDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsJabberDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsJabberruDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsVDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsVKDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsVKontakteDescription}') + ';' +
    ExpandConstant('{cm:ProtocolsMRADescription}') + ';' +
	ExpandConstant('{cm:ProtocolsMSNDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsYAHOODescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherFacebookDescription}') + ';' +
//	ExpandConstant('{cm:ProtocolsOtherGmailDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherMetaContactsDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherRadioDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherQuotesDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherRSSDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherTwitterDescription}') + ';' +
//	ExpandConstant('{cm:ProtocolsOtherVKontakteDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherWeatherDescription}') + ';' +
	ExpandConstant('{cm:ProtocolsOtherYAMNDescription}') + ';' +
	
    ExpandConstant('{cm:PluginsFilesDescription}') + ';' +
	ExpandConstant('{cm:AlarmsDescription}') + ';' +
	ExpandConstant('{cm:AuthstateDescription}') + ';' +
    ExpandConstant('{cm:BossKeyDescription}') + ';' +
	ExpandConstant('{cm:BuddyexDescription}') + ';' +
	ExpandConstant('{cm:BuddypDescription}') + ';' +
    ExpandConstant('{cm:CKLDescription}') + ';' +
	ExpandConstant('{cm:FavcontDescription}') + ';' +
	ExpandConstant('{cm:FingerprintDescription}') + ';' +
	ExpandConstant('{cm:FlagDescription}') + ';' +
	ExpandConstant('{cm:FltcontactsDescription}') + ';' +
	ExpandConstant('{cm:IgnorestateDescription}') + ';' +
	ExpandConstant('{cm:KeepstatusDescription}') + ';' +
	ExpandConstant('{cm:KeybrdnotifyDescription}') + ';' +
	ExpandConstant('{cm:Keybrdnotifyps2Description}') + ';' +
	ExpandConstant('{cm:KeybrdnotifyusbDescription}') + ';' +
	ExpandConstant('{cm:ListeningtoDescription}') + ';' +
	ExpandConstant('{cm:MathmoduleppDescription}') + ';' +
	ExpandConstant('{cm:NewxstatusnotifyDescription}') + ';' +
	ExpandConstant('{cm:NohistDescription}') + ';' +
	ExpandConstant('{cm:NohistoryDescription}') + ';' +
	ExpandConstant('{cm:HistorysweeperDescription}') + ';' +
	ExpandConstant('{cm:QuickmessagesDescription}') + ';' +
	ExpandConstant('{cm:QuicksearchDescription}') + ';' +
	ExpandConstant('{cm:SecureimDescription}') + ';' +
//	ExpandConstant('{cm:SeenpluginDescription}') + ';' +
	ExpandConstant('{cm:SndvolDescription}') + ';' +
    ExpandConstant('{cm:SpellCheckerDescription}') + ';' +
//	ExpandConstant('{cm:StartupstatusDescription}') + ';' +
	ExpandConstant('{cm:StopspamDescription}') + ';' +
	ExpandConstant('{cm:TrafficcounterDescription}') + ';' +
	ExpandConstant('{cm:BirthdaysDescription}') + ';' +
	ExpandConstant('{cm:BirthdayDescription}') + ';' +
	ExpandConstant('{cm:UinfoexDescription}') + ';' +
	ExpandConstant('{cm:WatrackDescription}') + ';' +
	ExpandConstant('{cm:WhoisreadingmystatusmsgDescription}') + ';' +
	
	ExpandConstant('{cm:ResourcesDescription}') + ';' +
    ExpandConstant('{cm:IEViewDescription}') + ';' +
    ExpandConstant('{cm:PopUpDescription}') + ';' +
	ExpandConstant('{cm:SmileysDescription}') + ';' +
	ExpandConstant('{cm:SoundsDescription}') + ';' +
	ExpandConstant('{cm:SplashDescription}') + ';' +
	ExpandConstant('{cm:TooltipsDescription}') + ';' +
    ExpandConstant('{cm:ThemesDescription}') + ';' +
    ExpandConstant('{cm:ThemesGlamourdDescription}') + ';' +
    ExpandConstant('{cm:ThemesglamourlDescription}') + ';' +
    ExpandConstant('{cm:ThemesGraphitedDescription}') + ';' +
    ExpandConstant('{cm:ThemesgraphitelDescription}') + ';' +
    ExpandConstant('{cm:ThemesPhotoonedDescription}') + ';' +
    ExpandConstant('{cm:ThemesphotoonelDescription}') + ';' +
    ExpandConstant('{cm:ThemesTextolitedDescription}') + ';' +
    ExpandConstant('{cm:ThemestextolitelDescription}') + ';' +
	
	ExpandConstant('{cm:GamesDescription}') + ';' +
	ExpandConstant('{cm:BattleshipDescription}') + ';' +
	ExpandConstant('{cm:ChessDescription}') + ';' +
	ExpandConstant('{cm:GomokuDescription}') + ';' +
	ExpandConstant('{cm:JanusDescription}') + ';' +
  '');
  end;

  if (SkinSelectPage <> nil) then
    if (CurPageId = SkinSelectPage.ID) then
    begin
      if IsPortableSetupType() then
        SkinSelectPage.SelectedValueIndex := 0;

      if (Pos('resources\themes\glamourd', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[1] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[1] := false;

      if (Pos('resources\themes\glamourl', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[2] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[2] := false;

      if (Pos('resources\themes\graphited', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[3] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[3] := false;

      if (Pos('resources\themes\graphitel', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[4] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[4] := false;

      if (Pos('resources\themes\photooned', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[5] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[5] := false;

      if (Pos('resources\themes\photoonel', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[6] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[6] := false;

      if (Pos('resources\themes\textolited', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[7] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[7] := false;

      if (Pos('resources\themes\textolitel', ' ' + WizardSelectedComponents(False)) > 0) then
        SkinSelectPage.CheckListBox.ItemEnabled[8] := true
      else
        SkinSelectPage.CheckListBox.ItemEnabled[8] := false;
		
      DisableDescription();
      EnableDescription(SkinSelectPage.CheckListBox.Handle, SkinInfo.Handle, '' +
        ExpandConstant('{cm:WindowsStyle}') + ';' +
        ExpandConstant('{cm:ThemesGlamourdDescription}') + ';' +
        ExpandConstant('{cm:ThemesglamourlDescription}') + ';' +
        ExpandConstant('{cm:ThemesGraphitedDescription}') + ';' +
        ExpandConstant('{cm:ThemesgraphitelDescription}') + ';' +
        ExpandConstant('{cm:ThemesPhotoonedDescription}') + ';' +
        ExpandConstant('{cm:ThemesphotoonelDescription}') + ';' +
        ExpandConstant('{cm:ThemesTextolitedDescription}') + ';' +
        ExpandConstant('{cm:ThemestextolitelDescription}') + ';' +		
      '');
    end;
  //
  if (CurPageID = wpInstalling) then
  begin
    DisableDescription();
    if IsStandartSetupType() then
    begin
      CreateBackup();
      DelTree(GetAppDirectory(), True, True, True);
    end;
  end;
  //
  if (CurPageId = wpFinished) then
  begin
    if IsPortableSetupType() then
    begin
      RemoveUninstaller()
    end;
  end;
  if (CurPageId = PreviousVersionDetectPage.Id) then
    ReCheckPreviousVersionDetectPageControls();
  //
  if (CurPageId = wpSelectDir) then
  begin
    if (UninstallSetup.Checked) then
      begin
        WizardForm.BackButton.OnClick(nil);
        if Exec(GetAppDirectory() + 'uninstall\unins000.exe', '/SILENT', '', SW_SHOW, ewWaitUntilTerminated, ErrorCode) then
        begin
          StandartSetup.Checked := true;
          SkinSelectPage.SelectedValueIndex := 0;
        end
        else
          MsgBox(ExpandConstant('{cm:UninstallDataCorrupted}'), mbError, MB_OK);
        ReCheckPreviousVersionDetectPageControls();
      end;
  end;
end;
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usPostUninstall then
    if DirExists(AddBackslash(ExpandConstant('{#MyAppSetupStandartAppDataPath}\profiles'))) then
      if MsgBox(ExpandConstant('{cm:DeleteUserProfiles}'), mbconfirmation, mb_YesNo) = IDYES then
      begin
        CreateBackup();
        DelTree(AddBackslash(ExpandConstant('{#MyAppSetupStandartAppDataPath}')), True, True, True);
      end;
  DelTree(AddBackslash(ExpandConstant('{app}')), True, True, True);
end;
function ShouldSkipPage(PageID: Integer): Boolean;
begin
  if PageID = wpWelcome then
    Result := true;

  if ((((PageID = wpSelectComponents) or (PageID = wpSelectProgramGroup) or (PageID = wpSelectTasks) or (PageID = wpReady)) and IsDefaultSetup()) and not(IsPortableSetupType())) then
    Result := true
  else
    if (PageID = wpSelectProgramGroup) and IsPortableSetupType() then
      Result := true;

  if (SkinSelectPage <> nil) then
    if ((PageID = SkinSelectPage.ID) and StandartSetup.Checked) then
    begin
      if not(IsComponentSelected('resources\themes\glamourd') or IsComponentSelected('resources\themes\glamourl') or IsComponentSelected('resources\themes\graphited') or IsComponentSelected('resources\themes\graphitel') or IsComponentSelected('resources\themes\photooned') or IsComponentSelected('resources\themes\photoonel') or IsComponentSelected('resources\themes\textolited') or IsComponentSelected('resources\themes\textolitel')) then
      begin
        Result := true;
        SkinSelectPage.SelectedValueIndex := 0;
      end;
      if (not(ExtendedConfiguration.Checked) and PreviousVersionDetected() and IsPreviousVersionUpdatable()) then
        Result := true;
    end;

  if ((PageID = wpSelectDir) and IsStandartSetupType() and PreviousVersionDetected() and IsPreviousVersionUpdatable() and ExtendedConfiguration.Checked) then
      Result := true;
end;

// Проверка выбора протоколов
procedure ComponentOnClick(Sender: TObject);
begin
  if (Pos('AIM', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('GG', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('GTalk', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('ICQ', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('IRC', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('Jabber', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('MRA', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('MSN', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('YAHOO', ' ' + WizardSelectedComponents(True)) = 0) then
    begin
      WizardForm.NextButton.Enabled := False;
    end
  else
    WizardForm.NextButton.Enabled := True;
end;
procedure ComponentOnKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
	if (Pos('AIM', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('GG', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('GTalk', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('ICQ', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('IRC', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('Jabber', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('MRA', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('MSN', ' ' + WizardSelectedComponents(True)) = 0) AND (Pos('YAHOO', ' ' + WizardSelectedComponents(True)) = 0) then
      begin
        WizardForm.NextButton.Enabled := False;
      end
    else
      WizardForm.NextButton.Enabled := True;
end;

// Инициализация
function InitializeSetup(): Boolean;
begin
  Result := CheckOnRunningCopies();
end;
function InitializeUninstall(): Boolean;
begin
  Result := CheckOnRunningCopies();
end;
procedure InitializeWizard();

// Домашняя страничка
begin
MouseURLLabel:=TLabel.Create(WizardForm);
MouseURLLabel.Width:=WizardForm.Width;
MouseURLLabel.Height:=WizardForm.Height;
MouseURLLabel.Autosize:=False;
MouseURLLabel.Transparent:=True;
MouseURLLabel.OnMouseMove:=@URLLabelMouseMove2;
MouseURLLabel.Parent:=WizardForm;

URLLabel:=TLabel.Create(WizardForm);
URLLabel.Left:=40;
URLLabel.Top:=330;
URLLabel.Cursor:=crHand;
URLLabel.Font.Color:=clgray;
URLLabel.Font.Style:=[fsBold];
URLLabel.Caption:= ExpandConstant('{cm:Support}');
URLLabel.OnClick:=@URLLabelOnClick;
URLLabel.OnMouseDown:=@URLLabelMouseDown;
URLLabel.OnMouseUp:=@URLLabelMouseUp;
URLLabel.OnMouseMove:=@URLLabelMouseMove;
URLLabel.Parent:=WizardForm;
  
//    RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Selected Components', issc);
//    RegDeleteValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Selected Components');
//    RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Deselected Components', isdc);
//    RegDeleteValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\' + GetAppId('') + '_is1', 'Inno Setup: Deselected Components');
  // Компоненты
  ComponentList := TStringList.Create();
  with ComponentList do
  begin
	ComponentList.Add('core');
//	ComponentList.Add('core\crshdmp');
	ComponentList.Add('core\dbeditor');
	
	ComponentList.Add('protocols');
	ComponentList.Add('protocols\aim');
	ComponentList.Add('protocols\gg');
	ComponentList.Add('protocols\icq');
	ComponentList.Add('protocols\irc');
	ComponentList.Add('protocols\jabber');
	ComponentList.Add('protocols\jabber\gtalk');
	ComponentList.Add('protocols\jabber\jabber');
	ComponentList.Add('protocols\jabber\jabberru');
	ComponentList.Add('protocols\jabber\vk');
	ComponentList.Add('protocols\jabber\vk\vk');
	ComponentList.Add('protocols\jabber\vk\vkontakte');
	ComponentList.Add('protocols\mra');
	ComponentList.Add('protocols\msn');
	ComponentList.Add('protocols\yahoo');
	ComponentList.Add('protocols\other');
	ComponentList.Add('protocols\other\facebook');
//	ComponentList.Add('protocols\other\gmailm');
	ComponentList.Add('protocols\other\metacontacts');
	ComponentList.Add('protocols\other\mradio');
	ComponentList.Add('protocols\other\quotes');
	ComponentList.Add('protocols\other\rss');
	ComponentList.Add('protocols\other\twitter');
	ComponentList.Add('protocols\other\weather');
	ComponentList.Add('protocols\other\yamn');
	
	ComponentList.Add('plugins');
	ComponentList.Add('plugins\alarms');
	ComponentList.Add('plugins\authstate');
	ComponentList.Add('plugins\bosskey');
	ComponentList.Add('plugins\buddyex');
	ComponentList.Add('plugins\buddyp');
	ComponentList.Add('plugins\ckl');
	ComponentList.Add('plugins\favcont');
	ComponentList.Add('plugins\fingerprint');
	ComponentList.Add('plugins\flag');
	ComponentList.Add('plugins\fltcontacts');
	ComponentList.Add('plugins\ignorestate');
	ComponentList.Add('plugins\keepstatus');
	ComponentList.Add('plugins\keyboardnotify');
	ComponentList.Add('plugins\keyboardnotify\ps2');
	ComponentList.Add('plugins\keyboardnotify\usb');
	ComponentList.Add('plugins\listeningto');
	ComponentList.Add('plugins\mathmodulepp');
	ComponentList.Add('plugins\newxstatusnotify');
	ComponentList.Add('plugins\nohistory');
	ComponentList.Add('plugins\nohistory\nohistory');
	ComponentList.Add('plugins\nohistory\historysweeper');
	ComponentList.Add('plugins\quickmessages');
	ComponentList.Add('plugins\quicksearch');
	ComponentList.Add('plugins\secureim');
//	ComponentList.Add('plugins\seenplugin');
	ComponentList.Add('plugins\sndvol');
	ComponentList.Add('plugins\schecker');
//	ComponentList.Add('plugins\startupstatus');
	ComponentList.Add('plugins\stopspam');
	ComponentList.Add('plugins\trafficcounter');
	ComponentList.Add('plugins\birthdays');
	ComponentList.Add('plugins\birthdays\birthday');
	ComponentList.Add('plugins\birthdays\uinfoexw');
	ComponentList.Add('plugins\watrack');
	ComponentList.Add('plugins\whoisreadingmystatusmsg');
	
	ComponentList.Add('resources');
	ComponentList.Add('resources\ieview');
	ComponentList.Add('resources\popup');
	ComponentList.Add('resources\smileys');
	ComponentList.Add('resources\sounds');
	ComponentList.Add('resources\splash');
	ComponentList.Add('resources\tooltips');
	ComponentList.Add('resources\themes');
	ComponentList.Add('resources\themes\glamourd');
	ComponentList.Add('resources\themes\glamourl');
	ComponentList.Add('resources\themes\graphited');
	ComponentList.Add('resources\themes\graphitel');
	ComponentList.Add('resources\themes\photooned');
	ComponentList.Add('resources\themes\photoonel');
	ComponentList.Add('resources\themes\textolited');
	ComponentList.Add('resources\themes\textolitel');
	
	ComponentList.Add('games');
	ComponentList.Add('games\battleship');
	ComponentList.Add('games\chess');
	ComponentList.Add('games\gomoku');
	ComponentList.Add('games\janus');
  end;
  
  // Задачи
  TaskList := TStringList.Create();
  with TaskList do
  begin
    TaskList.Add('desktopicon');
    TaskList.Add('quicklaunchicon');
    TaskList.Add('autorun');
  end;

  // Страницы и панели
  CreatePreviousVersionDetectPage();
  CreateSkinSelectPage();
  CreateComponentsInfoPanel();
  //
  WizardForm.ComponentsList.OnClick := @ComponentOnClick;
  WizardForm.ComponentsList.OnKeyPress := @ComponentOnKeyPress;

//  if ActiveLanguage = 'english' then
//    WizardForm.ComponentsList.Checked[2]:= True
//  else
//    WizardForm.ComponentsList.Checked[3]:= True;
end;

