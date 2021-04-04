#define debug 0                                                             ; for developers only: 0 - debug off, 1 - debug on
#define splash 0                                                            ; splash screen: 0 - splash off, 1 - splash on
#define aero 0                                                              ; aero theme: 0 - disable, 1 - full, 2 - top, 3 - bottom, 4 - top/bottom.
#define fulltype 1                                                          ; full type: 0 - disable, 1 - enable
#define freezecheckbox 0                                                    ; freezecheckbox: 0 - disable, 1 - enable

#define AppId "HotCoffee™"
#define AppName "Miranda NG HotCoffee"
#define AppPath "Miranda HotCoffee"
#define AppShortName "HotCoffee"
#define AppINI "HotCoffee.ini"
#define AppNameSetup "HotCoffeeSetup"
#define AppNameInstall "MirandaHotCoffee"

#define AppArch "x86"                                                       ; must be x86 or x64

#ifdef AppArchx64
 #define AppArch "x64"
#endif
#ifdef AppArchx86
 #define AppArch "x86"
#endif

#define AppVerMajor "0"
#define AppVerMinor "96"
#define AppVerBuild "1"
#define AppVerRevis "23805"
#define AppVerStatusBuild " alpha build #"
#define AppStatus "Test"                                                    ; must be Test, Alpha, Beta or Final
#define AppRelease "R56"

#define AppShortVer AppVerMajor + "." + AppVerMinor + "." + AppVerBuild
#define AppVer AppVerMajor + "." + AppVerMinor + "." + AppVerBuild + "." + AppVerRevis
#define AppFullVer AppVerMajor + "." + AppVerMinor + "." + AppVerBuild + "." + AppVerRevis + " " + AppStatus + " " + AppRelease
#define AppMirVer AppArch == "x86" ? AppShortVer + AppVerStatusBuild + AppVerRevis : AppShortVer + AppVerStatusBuild + AppVerRevis + " x64"
#define AppDevOrStub AppStatus == "Final" ? "StableVersion" : "DevelopmentVersion"

#define AppUpdateVersion "0.96.1.23805"                                     ; product version update range

#define AppWidth "65"                                                       ; Increasing width of the client
#define AppHeight "25"                                                      ; Increasing height of the client

#define AppSkinUp "1"                                                       ; selective skin if IsUpdate: 0 - disable, 1 - enable

#define AppPublisher "HotCoffee™"

#define AppContacts "im.hotcoffee@gmail.com"
#define AppLnk "HotCoffee"
#define AppStartMenuLnk "Miranda HotCoffee"

#define AppProfile "%APPDATA%\" + AppPath                                   ; profiles dir for default install

#define AppExeName AppArch == "x86" ? "Miranda32.exe" : "Miranda64.exe"
#define AppExeOppName AppArch == "x86" ? "Miranda64.exe" : "Miranda32.exe"

 ; defaults
#define TypeDefault "optimal"
#define SelectedTasksDefault "curuser"
#define SelectedSettingsDefault \
  "UpdateSettings,AppDevOrStub,ContactList,CompactMode,UseSound,CLCNoVScrollBar,SendingMessage," + \
  "SendCtrlEnter,SendEnter,AutoSizeInputArea,TabSRMMNoVScrollBar," + \
  "AutoAwayDetection,AutoIdleDetection"
#define SelectedStyleSettingsDefault \
  "Skin_Current_Windows,IconsXpk,IEViewScrollBar,IEViewAnimation,IEViewShortLink,IEViewContextMenu,FontPrinting"

#define IncompatibleDir "{app}\incompatible"                                ; incompatible dir
#define ExcludeList \
  IncompatibleDir + ", \
  {app}\Icons, \
  {app}\Inbox, \
  {app}\Profiles, \
  {app}\Skins, \
  {app}\uninstall, \
  {app}\Plugins\ListeningTo\foo_mlt.dll, \
  {app}\Plugins\ListeningTo\gen_mlt.dll"

#define CLUIFrames \
  "Protocols\Discord," + \
  "Protocols\Facebook," + \
  "Protocols\GG," + \
  "Protocols\ICQ\ICQ," + \
  "Protocols\ICQ\MRA," + \
  "Protocols\IRC," + \
  "Protocols\Jabber\Jabber," + \
  "Protocols\Jabber\Jabberru," + \
  "Protocols\Jabber\OK," + \
  "Protocols\Jabber\XMPP," + \
  "Protocols\Skype," + \
  "Protocols\Twitter," + \
  "Protocols\VKontakte"

#dim theme[31]
#define theme[0] "Default_Miranda"
#define theme[1] "Current_Windows"
#define theme[2] "Custom_Miranda"
#define theme[3] "Custom_Miranda_Dark"
#define theme[4] "Custom_Miranda_Light"
#define theme[5] "Native_7_Dark"
#define theme[6] "Native_7_Light"
#define theme[7] "WinStyle_Classic_Dark"
#define theme[8] "WinStyle_Classic_Light"
#define theme[9] "WinStyle_Dark"
#define theme[10] "WinStyle_Light"
#define theme[11] "Diplomat_Dark"
#define theme[12] "Diplomat_Light"
#define theme[13] "Glamour_Aqua_Dark"
#define theme[14] "Glamour_Aqua_Light"
#define theme[15] "Glamour_Dark"
#define theme[16] "Glamour_Light"
#define theme[17] "GoldTime_Dark"
#define theme[18] "GoldTime_Light"
#define theme[19] "Graphite_Brown_Dark"
#define theme[20] "Graphite_Brown_Light"
#define theme[21] "Graphite_Gray_Dark"
#define theme[22] "Graphite_Gray_Light"
#define theme[23] "PhotoOne_Dark"
#define theme[24] "PhotoOne_Light"
#define theme[25] "Surface_Black"
#define theme[26] "Surface_White"
#define theme[27] "Textolite_Brown_Dark"
#define theme[28] "Textolite_Brown_Light"
#define theme[29] "Textolite_Gray_Dark"
#define theme[30] "Textolite_Gray_Light"

 ; {#AppShortName}_{#AppArch}.ini
#expr WriteIni(AddBackslash(SourcePath) + "x86\Profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_1", "FileVersion", '"' + GetDateTimeString('yyyy.m.d', '', '') + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\Profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_1", "DiskFileName", '"' + AppNameInstall + "_" + AppVer + '_' + AppArch + ".exe" + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\Profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_1", "DownloadURL", '"' + "http://miranda-ng.org/distr/packs/" + AppShortName + "/installer/" + AppNameInstall + "_" + AppVer + '_' + AppArch + ".exe" + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\Profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_30", "FileVersion", '"' + GetDateTimeString('yyyy.m.d', '', '') + '"')
#expr WriteIni(AddBackslash(SourcePath) + "x86\Profiles\" + AppShortName + "_" + AppArch + ".ini", "FileInfo_35", "FileVersion", '"' + GetDateTimeString('yyyy.m.d', '', '') + '"')

[Setup]
CloseApplications=no
AppID={#AppId}
AppName={#AppName}
AppVerName={#AppName}
AppVersion={#AppVer}
#if AppArch == "x64"
ArchitecturesAllowed=x64 ia64
ArchitecturesInstallIn64BitMode=x64 ia64
#endif
OutputBaseFilename={#AppNameInstall}_{#if AppStatus != "Test"}{#AppVer}{#else}test{#endif}_{#AppArch}
DefaultDirName={pf}\{#AppPath}
DirExistsWarning=no
DefaultGroupName={#AppPath}
AllowNetworkDrive=no
PrivilegesRequired=none
CreateUninstallRegKey=IsDefaultSetupType
ComponentsListTVStyle=yes
AllowNoIcons=yes
MinVersion=0,5.1
VersionInfoVersion={#AppVer}
VersionInfoDescription={#AppName} {#AppStatus} {#AppRelease} ({#AppArch})
AppPublisher={#AppPublisher}
AppPublisherURL={cm:AppURL}
AppSupportURL={cm:AppURL}
AppUpdatesURL={cm:AppURL}
AppContact={#AppContacts}
SetupIconFile=Resources\icon.ico
UninstallIconFile=Resources\uninst.ico
UninstallDisplayIcon={uninstallexe},0
UninstallFilesDir={app}\uninstall
Uninstallable=IsDefaultSetupType
Compression=lzma2/ultra
InternalCompressLevel=ultra
SolidCompression=true
BitmapResource=splash:"Resources\images\Logo.bmp"|border:"Resources\images\Border.bmp"
RawDataResource=WizardSmallImage:"Resources\images\WizardSmallImage.bmp"

 ; image resources
#define WizardImageFile "WizardImage.bmp"
#define InstallLogo "Install.bmp"
#define PortableLogo "Portable.bmp"
#define RecycleLogo "Recycle.bmp"

[Languages]
Name: en; MessagesFile: Resources\English.isl,Resources\{#AppShortName}_en.isl; LicenseFile: Resources\License_en.rtf; InfoBeforeFile: Resources\InfoBefore_en.rtf; InfoAfterFile: Resources\{#if AppStatus != "Test"}InfoAfter_en{#else}InfoAfter_en_Test{#endif}.rtf;
Name: ru; MessagesFile: Resources\Russian.isl,Resources\{#AppShortName}_ru.isl; LicenseFile: Resources\License_ru.rtf; InfoBeforeFile: Resources\InfoBefore_ru.rtf; InfoAfterFile: Resources\{#if AppStatus != "Test"}InfoAfter_ru{#else}InfoAfter_ru_Test{#endif}.rtf;

[Messages]
BeveledLabel={#AppName} {#AppVer} {#AppStatus} {#AppRelease} ({#AppArch}) © {#AppPublisher}, 2010 - {#GetDateTimeString('yyyy', '', '')}

[Types]
Name: minimal; Description: {code:TypesHelper|MinimalInstall};
Name: optimal; Description: {code:TypesHelper|OptimalInstall};
Name: advanced; Description: {code:TypesHelper|AdvancedInstall};
#if fulltype == 1
Name: full; Description: {code:TypesHelper|FullInstall};
#endif
Name: custom; Description: {code:TypesHelper|CustomInstall}; Flags: iscustom;

[Dirs]
Name: {app}\Inbox;

[InstallDelete]
Type: filesandordirs; Name: {app}\Core; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Icons; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Languages; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Libs; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Plugins; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Profiles\Buffer; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Profiles\PluginUpdater; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\Profiles\*.ini; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Scripts; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\Skins; Check: IsPortableSetupType and IsUpdate;
Type: filesandordirs; Name: {app}\UserSet; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\{#AppExeName}; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\{#AppExeOppName}; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\pu_stub.exe; Check: IsPortableSetupType and IsUpdate;
Type: files; Name: {app}\mirandaboot.ini; Check: IsPortableSetupType and IsUpdate;

[Files]
 ; image resources
Source: Resources\7za.exe; Flags: dontcopy;
Source: Resources\images\*.*; Flags: dontcopy;
#if debug == 0
 ; fonts
Source: Resources\fonts\Monotype_Corsiva.ttf; DestDir: {fonts}; FontInstall: Monotype Corsiva; Flags: onlyifdoesntexist uninsneveruninstall;
Source: Resources\fonts\SegoePr.ttf; DestDir: {fonts}; FontInstall: Segoe Print; Flags: onlyifdoesntexist uninsneveruninstall;
Source: Resources\fonts\SegoePrB.ttf; DestDir: {fonts}; FontInstall: Segoe Print Bold; Flags: onlyifdoesntexist uninsneveruninstall;

 ; Main
 ; Core
Source: {#AppArch}\Core\*; DestDir: {app}\Core; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
 ; Icons
Source: x86\Icons\MirLua_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Icons\Proto_conn.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Dummy.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Icons\Proto_MetaContacts.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Icons\TabSRMM_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Icons\Toolbar_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
 ; Languages
Source: x86\Languages\langpack_russian.txt; DestDir: {app}\Languages; Languages: ru; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
 ; Libs
Source: {#AppArch}\Libs\*; DestDir: {app}\Libs; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
 ; Profiles
Source: x86\Profiles\settings.ini; DestDir: {app}\Profiles; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Profiles\update.ini; DestDir: {app}\Profiles; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Profiles\update.ini; DestDir: {app}\Profiles; DestName: autoexec_update.ini; Flags: ignoreversion; Components: MainCore; Check: IsUpdate; AfterInstall: AddDetails;
 ; Plugins
Source: x86\Plugins\Import\*; DestDir: {app}\Plugins\Import; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\AVS.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Clist_modern.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\CloudFile.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
#if AppStatus == "Test"
Source: {#AppArch}\Plugins\Console.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
#endif
Source: {#AppArch}\Plugins\CrashDumper.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Db_autobackups.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\DbChecker.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Dbx_mdbx.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Dbx_sqlite.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Dummy.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Folders.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Import.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\MessageState.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\MenuEx.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\MirLua.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\NewAwaySys.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\PackUpdater.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\PluginUpdater.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\StatusManager.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\TabSRMM.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\TopToolBar.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Variables.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
 ; Scripts
Source: {#AppArch}\Scripts\*.dll; DestDir: {app}\Scripts; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Scripts\*.lua; DestDir: {app}\Scripts; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
 ; Skins
Source: x86\Skins\Avatars\no_avatar.png; DestDir: {app}\Skins\Avatars; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Skins\IconPacks\*; DestDir: {app}\Skins\IconPacks; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Skins\TabSRMM\Default_Miranda\*; DestDir: {app}\Skins\TabSRMM\Default_Miranda; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Skins\Default_Miranda.ini; DestDir: {app}\Skins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\Skins\Current_Windows.ini; DestDir: {app}\Skins; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
 ; UserSet
Source: x86\UserSet\Fonts\*; DestDir: {app}\UserSet\Fonts; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\UserSet\ini\*; DestDir: {app}\UserSet\ini; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\UserSet\Fonts\Handwriting.ini; DestDir: {app}\Profiles; DestName: autoexec_zfont.ini; Flags: ignoreversion; Components: MainCore; Check: IsStyleChecked('FontHandwriting'); AfterInstall: AddDetails;
Source: x86\UserSet\Fonts\Printing.ini; DestDir: {app}\Profiles; DestName: autoexec_zfont.ini; Flags: ignoreversion; Components: MainCore; Check: IsStyleChecked('FontPrinting'); AfterInstall: AddDetails;
 ; root
Source: {#AppArch}\{#AppExeName}; DestDir: {app}; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\pu_stub.exe; DestDir: {app}; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: x86\mirandaboot.ini; DestDir: {app}; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;

 ; Protocols
 ; Protocols\Discord
Source: {#AppArch}\Plugins\Discord.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Discord; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Discord.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Discord; AfterInstall: AddDetails;
 ; Protocols\Facebook
Source: {#AppArch}\Plugins\Facebook.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Facebook; AfterInstall: AddDetails;
Source: x86\Icons\Proto_conn_Facebook.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Facebook; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Facebook.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Facebook; AfterInstall: AddDetails;
 ; Protocols\GG
Source: {#AppArch}\Plugins\GG.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\GG; AfterInstall: AddDetails;
Source: x86\Icons\Proto_conn_GG.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\GG; AfterInstall: AddDetails;
Source: x86\Icons\Proto_GG.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\GG; AfterInstall: AddDetails;
 ; Protocols\ICQ
Source: {#AppArch}\Plugins\ICQ.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\ICQ; AfterInstall: AddDetails;
 ; Protocols\ICQ\ICQ
Source: x86\Icons\Proto_conn_ICQ.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\ICQ\ICQ; AfterInstall: AddDetails;
Source: x86\Icons\Proto_ICQ.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\ICQ\ICQ; AfterInstall: AddDetails;
 ; Protocols\ICQ\MRA
Source: x86\Icons\Proto_conn_MRA.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\ICQ\MRA; AfterInstall: AddDetails;
Source: x86\Icons\Proto_MRA.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\ICQ\MRA; AfterInstall: AddDetails;
 ; Protocols\IRC
Source: {#AppArch}\Plugins\IRC.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\IRC; AfterInstall: AddDetails;
Source: x86\Icons\Proto_conn_IRC.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\IRC; AfterInstall: AddDetails;
Source: x86\Icons\Proto_IRC.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\IRC; AfterInstall: AddDetails;
Source: x86\Skins\Avatars\IRC.png; DestDir: {app}\Skins\Avatars; Flags: ignoreversion; Components: Protocols\IRC; AfterInstall: AddDetails;
 ; Protocols\Jabber
Source: {#AppArch}\Plugins\Jabber.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Jabber; AfterInstall: AddDetails;
Source: x86\Icons\xStatus_Jabber.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber; AfterInstall: AddDetails;
Source: x86\Skins\Avatars\Jabber.png; DestDir: {app}\Skins\Avatars; Flags: ignoreversion; Components: Protocols\Jabber; AfterInstall: AddDetails;
 ; Protocols\Jabber\Jabber
Source: x86\Icons\Proto_conn_Jabber.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\Jabber; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Jabber.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\Jabber; AfterInstall: AddDetails;
 ; Protocols\Jabber\Jabberru
Source: x86\Icons\Proto_conn_Jabberru.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\Jabberru; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Jabberru.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\Jabberru; AfterInstall: AddDetails;
 ; Protocols\Jabber\OK
Source: x86\Icons\Proto_conn_OK.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\OK; AfterInstall: AddDetails;
Source: x86\Icons\Proto_OK.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\OK; AfterInstall: AddDetails;
 ; Protocols\Jabber\XMPP
Source: x86\Icons\Proto_conn_XMPP.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\XMPP; AfterInstall: AddDetails;
Source: x86\Icons\Proto_XMPP.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Jabber\XMPP; AfterInstall: AddDetails;
 ; Protocols\Skype
Source: {#AppArch}\Plugins\SkypeWeb.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Skype; AfterInstall: AddDetails;
Source: x86\Icons\Proto_conn_Skype.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Skype; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Skype.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Skype; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\flags\*; DestDir: {app}\Skins\Smileys\flags; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Protocols\Skype and Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_dark\Skype\*; DestDir: {app}\Skins\Smileys\_dark\Skype; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Protocols\Skype and Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_dark\Skype\Skype_big_pack.msl; DestDir: {app}\Skins\Smileys\_dark\Skype; DestName: Skype.msl; Flags: ignoreversion; Components: Protocols\Skype and Resources\Smileys\big_pack; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_dark\Skype\Skype_small_pack.msl; DestDir: {app}\Skins\Smileys\_dark\Skype; DestName: Skype.msl; Flags: ignoreversion; Components: Protocols\Skype and Resources\Smileys\small_pack; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\Skype\*; DestDir: {app}\Skins\Smileys\_light\Skype; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Protocols\Skype and Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\Skype\Skype_big_pack.msl; DestDir: {app}\Skins\Smileys\_light\Skype; DestName: Skype.msl; Flags: ignoreversion; Components: Protocols\Skype and Resources\Smileys\big_pack; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\Skype\Skype_small_pack.msl; DestDir: {app}\Skins\Smileys\_light\Skype; DestName: Skype.msl; Flags: ignoreversion; Components: Protocols\Skype and Resources\Smileys\small_pack; AfterInstall: AddDetails;
 ; Protocols\Twitter
Source: {#AppArch}\Plugins\Twitter.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Twitter; AfterInstall: AddDetails;
Source: x86\Icons\Proto_conn_Twitter.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Twitter; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Twitter.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Twitter; AfterInstall: AddDetails;
 ; Protocols\VKontakte
Source: {#AppArch}\Plugins\VKontakte.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\VKontakte; AfterInstall: AddDetails;
Source: x86\Icons\Proto_conn_VKontakte.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\VKontakte; AfterInstall: AddDetails;
Source: x86\Icons\Proto_VKontakte.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\VKontakte; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\stickers\VK\*; DestDir: {app}\Skins\Smileys\stickers\VK; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Protocols\VKontakte and Resources\Smileys; AfterInstall: AddDetails;
 ; Protocols\Pseudo
 ; Protocols\Pseudo\CurrencyRates
Source: {#AppArch}\Plugins\CurrencyRates.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Pseudo\CurrencyRates; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\CurrencyRates\*.exe; DestDir: {app}\Plugins\CurrencyRates; Flags: ignoreversion; Components: Protocols\Pseudo\CurrencyRates; AfterInstall: AddDetails;
Source: x86\Plugins\CurrencyRates\*.xml; DestDir: {app}\Plugins\CurrencyRates; Flags: ignoreversion; Components: Protocols\Pseudo\CurrencyRates; AfterInstall: AddDetails;
Source: x86\Icons\Proto_CurrencyRates.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Pseudo\CurrencyRates; AfterInstall: AddDetails;
Source: x86\Skins\Avatars\CurrencyRates.png; DestDir: {app}\Skins\Avatars; Flags: ignoreversion; Components: Protocols\Pseudo\CurrencyRates; AfterInstall: AddDetails;
 ; Protocols\Pseudo\mRadio
Source: {#AppArch}\Plugins\mRadio.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Pseudo\mRadio; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\BASS\*; DestDir: {app}\Plugins\BASS; Flags: ignoreversion; Components: Protocols\Pseudo\mRadio; AfterInstall: AddDetails;
Source: x86\Plugins\mRadio\*; DestDir: {app}\Plugins\mRadio; Flags: ignoreversion; Components: Protocols\Pseudo\mRadio; AfterInstall: AddDetails;
Source: x86\Icons\Proto_mRadio.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Pseudo\mRadio; AfterInstall: AddDetails;
Source: x86\Skins\Avatars\mRadio.png; DestDir: {app}\Skins\Avatars; Flags: ignoreversion; Components: Protocols\Pseudo\mRadio; AfterInstall: AddDetails;
 ; Protocols\Pseudo\NewsAggregator
Source: {#AppArch}\Plugins\NewsAggregator.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Pseudo\NewsAggregator; AfterInstall: AddDetails;
Source: x86\Icons\Proto_NewsAggregator.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Pseudo\NewsAggregator; AfterInstall: AddDetails;
Source: x86\Skins\Avatars\rss.png; DestDir: {app}\Skins\Avatars; Flags: ignoreversion; Components: Protocols\Pseudo\NewsAggregator; AfterInstall: AddDetails;
 ; Protocols\Pseudo\Weather
Source: {#AppArch}\Plugins\Weather.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Pseudo\Weather; AfterInstall: AddDetails;
Source: x86\Plugins\Weather\*; DestDir: {app}\Plugins\Weather; Flags: ignoreversion; Components: Protocols\Pseudo\Weather; AfterInstall: AddDetails;
Source: x86\Icons\Proto_Weather.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Pseudo\Weather; AfterInstall: AddDetails;
 ; Protocols\Pseudo\YAMN
Source: {#AppArch}\Plugins\YAMN.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Protocols\Pseudo\YAMN; AfterInstall: AddDetails;
Source: x86\Icons\Proto_YAMN.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Protocols\Pseudo\YAMN; AfterInstall: AddDetails;

 ; Plugins
 ; Plugins\BossKey
Source: {#AppArch}\Plugins\BossKey.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\BossKey; AfterInstall: AddDetails;
 ; Plugins\DbEditorPP
Source: {#AppArch}\Plugins\DbEditorPP.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\DbEditorPP; AfterInstall: AddDetails;
 ; Plugins\Fingerprint
Source: x86\Icons\Fp_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Plugins\Fingerprint; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\Fingerprint.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\Fingerprint; AfterInstall: AddDetails;
 ; Plugins\Flags
Source: {#AppArch}\Plugins\Flags.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\Flags; AfterInstall: AddDetails;
Source: x86\Icons\Flag_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Plugins\Flags; AfterInstall: AddDetails;
 ; Plugins\HistoryPP
Source: x86\Icons\HistoryPP_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: MainCore; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\HistoryPP.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\HistoryPP; AfterInstall: AddDetails;
 ; Plugins\NewXstatusNotify
Source: {#AppArch}\Plugins\NewXstatusNotify.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\NewXstatusNotify; AfterInstall: AddDetails;
 ; Plugins\QuickMessages
Source: x86\Icons\QuickMessages_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Plugins\QuickMessages; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\QuickMessages.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\QuickMessages; AfterInstall: AddDetails;
 ; Plugins\QuickSearch
Source: {#AppArch}\Plugins\QuickSearch.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\QuickSearch; AfterInstall: AddDetails;
 ; Plugins\Sessions
Source: {#AppArch}\Plugins\Sessions.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\Sessions; AfterInstall: AddDetails;
 ; Plugins\SpellChecker
Source: {#AppArch}\Libs\hunspell.mir; DestDir: {app}\Libs; Flags: ignoreversion; Components: Plugins\SpellChecker; AfterInstall: AddDetails;
Source: x86\Icons\Flags_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Plugins\SpellChecker; AfterInstall: AddDetails;
Source: x86\Plugins\Dictionaries\en_US.*; DestDir: {app}\Plugins\Dictionaries; Flags: ignoreversion; Components: Plugins\SpellChecker; AfterInstall: AddDetails;
Source: x86\Plugins\Dictionaries\ru_RU.*; DestDir: {app}\Plugins\Dictionaries; Languages: ru; Flags: ignoreversion; Components: Plugins\SpellChecker; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\SpellChecker.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\SpellChecker; AfterInstall: AddDetails;
 ; Plugins\StopSpam
Source: {#AppArch}\Plugins\StopSpam.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\StopSpam; AfterInstall: AddDetails;
 ; Plugins\UInfoEx
Source: x86\Icons\UInfoEx_icons.dll; DestDir: {app}\Icons; Flags: ignoreversion; Components: Plugins\UInfoEx; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\UInfoEx.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\UInfoEx; AfterInstall: AddDetails;
 ; Plugins\WhenWasIt
Source: {#AppArch}\Plugins\WhenWasIt.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Plugins\WhenWasIt; AfterInstall: AddDetails;

 ; Resources
 ; Resources\IEView
Source: {#AppArch}\Plugins\IEView.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\!tools\filetypes\*; DestDir: {app}\Skins\IEView\!tools\filetypes; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\!tools\fonts\*; DestDir: {app}\Skins\IEView\!tools\fonts; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\!tools\Icons\*; DestDir: {app}\Skins\IEView\!tools\Icons; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\!tools\Icons\packs\fugue.7z; DestDir: {app}\Skins\IEView\!tools\Icons; Check: IsStyleChecked('IconsFugue'); AfterInstall: Extract();
Source: x86\Skins\IEView\!tools\Icons\packs\nova.7z; DestDir: {app}\Skins\IEView\!tools\Icons; Check: IsStyleChecked('IconsNova'); AfterInstall: Extract();
Source: x86\Skins\IEView\!tools\Icons\packs\xpk.7z; DestDir: {app}\Skins\IEView\!tools\Icons; Check: IsStyleChecked('IconsXpk'); AfterInstall: Extract();
Source: x86\Skins\IEView\!tools\player\*; DestDir: {app}\Skins\IEView\!tools\player; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\!tools\scripts\*; DestDir: {app}\Skins\IEView\!tools\scripts; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\!tools\tZersFiles\animationen\*; DestDir: {app}\Skins\IEView\!tools\tZersFiles\animationen; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\!tools\tZersFiles\grafiken\*; DestDir: {app}\Skins\IEView\!tools\tZersFiles\grafiken; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\styles\Current_Windows\*; DestDir: {app}\Skins\IEView\styles\Current_Windows; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\styles\Current_Windows.css; DestDir: {app}\Skins\IEView\styles; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\styles\*.png; DestDir: {app}\Skins\IEView\styles; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\config.css; DestDir: {app}\Skins\IEView; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\noavatar.png; DestDir: {app}\Skins\IEView; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\Current_Windows.ivt; DestDir: {app}\Skins\IEView; Flags: ignoreversion; Components: Resources\IEView; AfterInstall: AddDetails;
 ; Resources\PopupPlus
Source: {#AppArch}\Plugins\PopupPlus.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Resources\PopupPlus; AfterInstall: AddDetails;
Source: x86\Skins\Popup\Default_Miranda\*; DestDir: {app}\Skins\Popup\Default_Miranda; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\PopupPlus; AfterInstall: AddDetails;
 ; Resources\Smileys
Source: {#AppArch}\Plugins\SmileyAdd.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_dark\emoji\*; DestDir: {app}\Skins\Smileys\_dark\emoji; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\emoji\*; DestDir: {app}\Skins\Smileys\_light\emoji; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_dark\kolobok\*; DestDir: {app}\Skins\Smileys\_dark\kolobok; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\kolobok\*; DestDir: {app}\Skins\Smileys\_light\kolobok; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\emoji\*; DestDir: {app}\Skins\Smileys\emoji; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\Smileys; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\flash\*; DestDir: {app}\Skins\Smileys\flash; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\Smileys; AfterInstall: AddDetails;
 ; Resources\Smileys\big_pack emoji
Source: x86\Skins\Smileys\_dark\emoji\emoji_big_pack.msl; DestDir: {app}\Skins\Smileys\_dark\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: Resources\Smileys\big_pack; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\emoji\emoji_big_pack.msl; DestDir: {app}\Skins\Smileys\_light\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: Resources\Smileys\big_pack; AfterInstall: AddDetails;
 ; Resources\Smileys\small_pack emoji
Source: x86\Skins\Smileys\_dark\emoji\emoji_small_pack.msl; DestDir: {app}\Skins\Smileys\_dark\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: Resources\Smileys\small_pack; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\emoji\emoji_small_pack.msl; DestDir: {app}\Skins\Smileys\_light\emoji; DestName: emoji.msl; Flags: ignoreversion; Components: Resources\Smileys\small_pack; AfterInstall: AddDetails;
 ; Resources\Smileys\big_pack kolobok
Source: x86\Skins\Smileys\_dark\kolobok\kolobok_big_pack.msl; DestDir: {app}\Skins\Smileys\_dark\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: Resources\Smileys\big_pack; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\kolobok\kolobok_big_pack.msl; DestDir: {app}\Skins\Smileys\_light\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: Resources\Smileys\big_pack; AfterInstall: AddDetails;
 ; Resources\Smileys\small_pack kolobok
Source: x86\Skins\Smileys\_dark\kolobok\kolobok_small_pack.msl; DestDir: {app}\Skins\Smileys\_dark\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: Resources\Smileys\small_pack; AfterInstall: AddDetails;
Source: x86\Skins\Smileys\_light\kolobok\kolobok_small_pack.msl; DestDir: {app}\Skins\Smileys\_light\kolobok; DestName: kolobok.msl; Flags: ignoreversion; Components: Resources\Smileys\small_pack; AfterInstall: AddDetails;
 ; Resources\Sounds
Source: {#AppArch}\Plugins\BASS\*; DestDir: {app}\Plugins\BASS; Flags: ignoreversion; Components: Resources\Sounds; AfterInstall: AddDetails;
Source: {#AppArch}\Plugins\BASS_interface.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Resources\Sounds; AfterInstall: AddDetails;
Source: x86\Skins\Sounds\*; DestDir: {app}\Skins\Sounds; Flags: ignoreversion; Components: Resources\Sounds; AfterInstall: AddDetails;
 ; Resources\SplashScreen
Source: {#AppArch}\Plugins\SplashScreen.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Resources\SplashScreen; AfterInstall: AddDetails;
Source: x86\Skins\SplashScreen\*; DestDir: {app}\Skins\SplashScreen; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resources\SplashScreen; AfterInstall: AddDetails;
Source: x86\Skins\SplashScreen\en\HotSplash5.png; DestDir: {app}\Skins\SplashScreen; DestName: HotSplash5.png; Languages: en; Flags: ignoreversion; Components: Resources\SplashScreen; AfterInstall: AddDetails;
Source: x86\Skins\SplashScreen\ru\HotSplash5.png; DestDir: {app}\Skins\SplashScreen; DestName: HotSplash5.png; Languages: ru; Flags: ignoreversion; Components: Resources\SplashScreen; AfterInstall: AddDetails;
 ; Resources\Tipper
Source: {#AppArch}\Plugins\Tipper.dll; DestDir: {app}\Plugins; Flags: ignoreversion; Components: Resources\Tipper; AfterInstall: AddDetails;
Source: x86\Skins\Tipper\Default_Miranda\*; DestDir: {app}\Skins\Tipper\Default_Miranda; Flags: ignoreversion; Components: Resources\Tipper; AfterInstall: AddDetails;
#define public i 2
#sub AddTheme
 ; Resources\Themes
Source: x86\Skins\Modern contact list\{#theme[i]}\*; DestDir: {app}\Skins\Modern contact list\{#theme[i]}; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]}; AfterInstall: AddDetails;
Source: x86\Skins\Modern contact list\{#theme[i]}.msf; DestDir: {app}\Skins\Modern contact list; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]}; AfterInstall: AddDetails;
Source: x86\Skins\TabSRMM\{#theme[i]}\*; DestDir: {app}\Skins\TabSRMM\{#theme[i]}; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]}; AfterInstall: AddDetails;
Source: x86\Skins\Tipper\{#theme[i]}\*; DestDir: {app}\Skins\Tipper\{#theme[i]}; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]} and Resources\Tipper; AfterInstall: AddDetails;
Source: x86\Skins\Popup\{#theme[i]}\*; DestDir: {app}\Skins\Popup\{#theme[i]}; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: Resources\Themes\{#theme[i]} and Resources\PopupPlus; AfterInstall: AddDetails;
Source: x86\Skins\IEView\styles\{#theme[i]}\*; DestDir: {app}\Skins\IEView\styles\{#theme[i]}; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]} and Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\styles\{#theme[i]}.css; DestDir: {app}\Skins\IEView\styles; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]} and Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\IEView\{#theme[i]}.ivt; DestDir: {app}\Skins\IEView; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]} and Resources\IEView; AfterInstall: AddDetails;
Source: x86\Skins\{#theme[i]}.ini; DestDir: {app}\Skins; Flags: ignoreversion; Components: Resources\Themes\{#theme[i]}; AfterInstall: AddDetails;
#endsub
#for {i = 2; i < 31; i++} AddTheme
 ; copy autoexec_skin.ini for clean installation default themes
#if AppSkinUp == "0"
Source: x86\Skins\Default_Miranda.ini; DestDir: {app}\Profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('Skin_Default_Miranda') and not IsUpdate; AfterInstall: AddDetails;
Source: x86\Skins\Current_Windows.ini; DestDir: {app}\Profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('Skin_Current_Windows') and not IsUpdate; AfterInstall: AddDetails;
#endif
#if AppSkinUp == "1"
Source: x86\Skins\Default_Miranda.ini; DestDir: {app}\Profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('Skin_Default_Miranda'); AfterInstall: AddDetails;
Source: x86\Skins\Current_Windows.ini; DestDir: {app}\Profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('Skin_Current_Windows'); AfterInstall: AddDetails;
#endif
 ; copy autoexec_skin.ini for clean installation custom themes
#if AppSkinUp == "0"
#define public i 2
#sub AddThemeAutoexecSkin
Source: x86\Skins\{#theme[i]}.ini; DestDir: {app}\Profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('Skin_{#theme[i]}') and not IsUpdate; AfterInstall: AddDetails;
#endsub
#for {i = 2; i < 31; i++} AddThemeAutoexecSkin
#endif
#if AppSkinUp == "1"
#define public i 2
#sub AddThemeAutoexecSkin
Source: x86\Skins\{#theme[i]}.ini; DestDir: {app}\Profiles; DestName: autoexec_skin.ini; Flags: ignoreversion; Check: IsStyleChecked('Skin_{#theme[i]}'); AfterInstall: AddDetails;
#endsub
#for {i = 2; i < 31; i++} AddThemeAutoexecSkin
#endif
#endif

[Components]
#if fulltype == 0
 ; Core
Name: MainCore; Description: {code:ComponentsHelper|CoreFiles}; Types: minimal optimal advanced custom; Flags: fixed disablenouninstallwarning;

 ; Protocols
Name: Protocols; Description: {code:ComponentsHelper|Protocols}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Protocols\Discord; Description: {code:ComponentsHelper|ProtocolsDiscord}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Facebook; Description: {code:ComponentsHelper|ProtocolsFacebook}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\GG; Description: {code:ComponentsHelper|ProtocolsGG}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\ICQ; Description: {code:ComponentsHelper|ProtocolsICQ}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: Protocols\ICQ\ICQ; Description: {code:ComponentsHelper|Protocols_ICQ}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Protocols\ICQ\MRA; Description: {code:ComponentsHelper|Protocols_MRA}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\IRC; Description: {code:ComponentsHelper|ProtocolsIRC}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Jabber; Description: {code:ComponentsHelper|ProtocolsJabber}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: Protocols\Jabber\Jabber; Description: {code:ComponentsHelper|ProtocolsJabberJabber}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Protocols\Jabber\Jabberru; Description: {code:ComponentsHelper|ProtocolsJabberJabberru}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Jabber\OK; Description: {code:ComponentsHelper|ProtocolsJabberOK}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Jabber\XMPP; Description: {code:ComponentsHelper|ProtocolsJabberXMPP}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Skype; Description: {code:ComponentsHelper|ProtocolsSkype}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Protocols\Twitter; Description: {code:ComponentsHelper|ProtocolsTwitter}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\VKontakte; Description: {code:ComponentsHelper|ProtocolsVKontakte}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Pseudo; Description: {code:ComponentsHelper|ProtocolsPseudo}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: Protocols\Pseudo\CurrencyRates; Description: {code:ComponentsHelper|ProtocolsPseudoCurrencyRates}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Pseudo\mRadio; Description: {code:ComponentsHelper|ProtocolsPseudomRadio}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Pseudo\NewsAggregator; Description: {code:ComponentsHelper|ProtocolsPseudoNewsAggregator}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Pseudo\Weather; Description: {code:ComponentsHelper|ProtocolsPseudoWeather}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Protocols\Pseudo\YAMN; Description: {code:ComponentsHelper|ProtocolsPseudoYAMN}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;

 ; Plugins
Name: Plugins; Description: {code:ComponentsHelper|PluginsFiles}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: Plugins\BossKey; Description: {code:ComponentsHelper|BossKey}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\DbEditorPP; Description: {code:ComponentsHelper|DbEditorPP}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\Fingerprint; Description: {code:ComponentsHelper|Fingerprint}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\Flags; Description: {code:ComponentsHelper|Flags}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\HistoryPP; Description: {code:ComponentsHelper|HistoryPP}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\NewXstatusNotify; Description: {code:ComponentsHelper|NewXstatusNotify}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\QuickMessages; Description: {code:ComponentsHelper|QuickMessages}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Plugins\QuickSearch; Description: {code:ComponentsHelper|QuickSearch}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\Sessions; Description: {code:ComponentsHelper|Sessions}; Types: custom; Flags: dontinheritcheck disablenouninstallwarning;
Name: Plugins\SpellChecker; Description: {code:ComponentsHelper|SpellChecker}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\StopSpam; Description: {code:ComponentsHelper|StopSpam}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\UInfoEx; Description: {code:ComponentsHelper|UInfoEx}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Plugins\WhenWasIt; Description: {code:ComponentsHelper|WhenWasIt}; Types: advanced custom; Flags: disablenouninstallwarning;

 ; Resources
Name: Resources; Description: {code:ComponentsHelper|Resources}; Types: minimal optimal advanced custom; Flags: collapsed disablenouninstallwarning;
Name: Resources\IEView; Description: {code:ComponentsHelper|IEView}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Resources\PopupPlus; Description: {code:ComponentsHelper|PopupPlus}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Smileys; Description: {code:ComponentsHelper|Smileys}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Smileys\big_pack; Description: {code:ComponentsHelper|SmileysBigPack}; Flags: exclusive disablenouninstallwarning;
Name: Resources\Smileys\small_pack; Description: {code:ComponentsHelper|SmileysSmallPack}; Types: minimal optimal advanced custom; Flags: exclusive disablenouninstallwarning;
Name: Resources\Sounds; Description: {code:ComponentsHelper|Sounds}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\SplashScreen; Description: {code:ComponentsHelper|SplashScreen}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Tipper; Description: {code:ComponentsHelper|Tipper}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes
Name: Resources\Themes; Description: {code:ComponentsHelper|Themes}; Types: advanced custom; Flags: collapsed disablenouninstallwarning;
 ; Resources\Themes\Custom_Miranda
Name: Resources\Themes\Custom_Miranda; Description: {code:ComponentsHelper|Custom_Miranda}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Custom_Miranda_Dark; Description: {code:ComponentsHelper|Custom_Miranda_Dark}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Custom_Miranda_Light; Description: {code:ComponentsHelper|Custom_Miranda_Light}; Types: advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Native_7
Name: Resources\Themes\Native_7_Dark; Description: {code:ComponentsHelper|Native_7_Dark}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Native_7_Light; Description: {code:ComponentsHelper|Native_7_Light}; Types: advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\WinStyle_Classic
Name: Resources\Themes\WinStyle_Classic_Dark; Description: {code:ComponentsHelper|WinStyle_Classic_Dark}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\WinStyle_Classic_Light; Description: {code:ComponentsHelper|WinStyle_Classic_Light}; Types: advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\WinStyle
Name: Resources\Themes\WinStyle_Dark; Description: {code:ComponentsHelper|WinStyle_Dark}; Types: advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\WinStyle_Light; Description: {code:ComponentsHelper|WinStyle_Light}; Types: advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Diplomat
Name: Resources\Themes\Diplomat_Dark; Description: {code:ComponentsHelper|Diplomat_Dark}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Diplomat_Light; Description: {code:ComponentsHelper|Diplomat_Light}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Glamour
Name: Resources\Themes\Glamour_Aqua_Dark; Description: {code:ComponentsHelper|Glamour_Aqua_Dark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Glamour_Aqua_Light; Description: {code:ComponentsHelper|Glamour_Aqua_Light}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Glamour_Dark; Description: {code:ComponentsHelper|Glamour_Dark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Glamour_Light; Description: {code:ComponentsHelper|Glamour_Light}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\GoldTime
Name: Resources\Themes\GoldTime_Dark; Description: {code:ComponentsHelper|GoldTime_Dark}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\GoldTime_Light; Description: {code:ComponentsHelper|GoldTime_Light}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Graphite
Name: Resources\Themes\Graphite_Brown_Dark; Description: {code:ComponentsHelper|Graphite_Brown_Dark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Graphite_Brown_Light; Description: {code:ComponentsHelper|Graphite_Brown_Light}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Graphite_Gray_Dark; Description: {code:ComponentsHelper|Graphite_Gray_Dark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Graphite_Gray_Light; Description: {code:ComponentsHelper|Graphite_Gray_Light}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\PhotoOne
Name: Resources\Themes\PhotoOne_Dark; Description: {code:ComponentsHelper|PhotoOne_Dark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\PhotoOne_Light; Description: {code:ComponentsHelper|PhotoOne_Light}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Surface
Name: Resources\Themes\Surface_Black; Description: {code:ComponentsHelper|Surface_Black}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Surface_White; Description: {code:ComponentsHelper|Surface_White}; Types: optimal advanced custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Textolite
Name: Resources\Themes\Textolite_Brown_Dark; Description: {code:ComponentsHelper|Textolite_Brown_Dark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Textolite_Brown_Light; Description: {code:ComponentsHelper|Textolite_Brown_Light}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Textolite_Gray_Dark; Description: {code:ComponentsHelper|Textolite_Gray_Dark}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Textolite_Gray_Light; Description: {code:ComponentsHelper|Textolite_Gray_Light}; Types: minimal optimal advanced custom; Flags: disablenouninstallwarning;
#endif

#if fulltype == 1
 ; Core
Name: MainCore; Description: {code:ComponentsHelper|CoreFiles}; Types: minimal optimal advanced full custom; Flags: fixed disablenouninstallwarning;

 ; Protocols
Name: Protocols; Description: {code:ComponentsHelper|Protocols}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Protocols\Discord; Description: {code:ComponentsHelper|ProtocolsDiscord}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Facebook; Description: {code:ComponentsHelper|ProtocolsFacebook}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\GG; Description: {code:ComponentsHelper|ProtocolsGG}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\ICQ; Description: {code:ComponentsHelper|ProtocolsICQ}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: Protocols\ICQ\ICQ; Description: {code:ComponentsHelper|Protocols_ICQ}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Protocols\ICQ\MRA; Description: {code:ComponentsHelper|Protocols_MRA}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\IRC; Description: {code:ComponentsHelper|ProtocolsIRC}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Jabber; Description: {code:ComponentsHelper|ProtocolsJabber}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: Protocols\Jabber\Jabber; Description: {code:ComponentsHelper|ProtocolsJabberJabber}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Protocols\Jabber\Jabberru; Description: {code:ComponentsHelper|ProtocolsJabberJabberru}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Jabber\OK; Description: {code:ComponentsHelper|ProtocolsJabberOK}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Jabber\XMPP; Description: {code:ComponentsHelper|ProtocolsJabberXMPP}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Skype; Description: {code:ComponentsHelper|ProtocolsSkype}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Protocols\Twitter; Description: {code:ComponentsHelper|ProtocolsTwitter}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\VKontakte; Description: {code:ComponentsHelper|ProtocolsVKontakte}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Pseudo; Description: {code:ComponentsHelper|ProtocolsPseudo}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: Protocols\Pseudo\CurrencyRates; Description: {code:ComponentsHelper|ProtocolsPseudoCurrencyRates}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Pseudo\mRadio; Description: {code:ComponentsHelper|ProtocolsPseudomRadio}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Pseudo\NewsAggregator; Description: {code:ComponentsHelper|ProtocolsPseudoNewsAggregator}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Pseudo\Weather; Description: {code:ComponentsHelper|ProtocolsPseudoWeather}; Types: full custom; Flags: disablenouninstallwarning;
Name: Protocols\Pseudo\YAMN; Description: {code:ComponentsHelper|ProtocolsPseudoYAMN}; Types: full custom; Flags: disablenouninstallwarning;

 ; Plugins
Name: Plugins; Description: {code:ComponentsHelper|PluginsFiles}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: Plugins\BossKey; Description: {code:ComponentsHelper|BossKey}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\DbEditorPP; Description: {code:ComponentsHelper|DbEditorPP}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\Fingerprint; Description: {code:ComponentsHelper|Fingerprint}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\Flags; Description: {code:ComponentsHelper|Flags}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\HistoryPP; Description: {code:ComponentsHelper|HistoryPP}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\NewXstatusNotify; Description: {code:ComponentsHelper|NewXstatusNotify}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\QuickMessages; Description: {code:ComponentsHelper|QuickMessages}; Types: full custom; Flags: disablenouninstallwarning;
Name: Plugins\QuickSearch; Description: {code:ComponentsHelper|QuickSearch}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\Sessions; Description: {code:ComponentsHelper|Sessions}; Types: full custom; Flags: disablenouninstallwarning;
Name: Plugins\SpellChecker; Description: {code:ComponentsHelper|SpellChecker}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\StopSpam; Description: {code:ComponentsHelper|StopSpam}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\UInfoEx; Description: {code:ComponentsHelper|UInfoEx}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Plugins\WhenWasIt; Description: {code:ComponentsHelper|WhenWasIt}; Types: advanced full custom; Flags: disablenouninstallwarning;

 ; Resources
Name: resources; Description: {code:ComponentsHelper|Resources}; Types: minimal optimal advanced full custom; Flags: collapsed disablenouninstallwarning;
Name: Resources\IEView; Description: {code:ComponentsHelper|IEView}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\PopupPlus; Description: {code:ComponentsHelper|PopupPlus}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Smileys; Description: {code:ComponentsHelper|Smileys}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Smileys\big_pack; Description: {code:ComponentsHelper|SmileysBigPack}; Flags: exclusive disablenouninstallwarning;
Name: Resources\Smileys\small_pack; Description: {code:ComponentsHelper|SmileysSmallPack}; Types: minimal optimal advanced full custom; Flags: exclusive disablenouninstallwarning;
Name: Resources\Sounds; Description: {code:ComponentsHelper|Sounds}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\SplashScreen; Description: {code:ComponentsHelper|SplashScreen}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Tipper; Description: {code:ComponentsHelper|Tipper}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes
Name: Resources\Themes; Description: {code:ComponentsHelper|Themes}; Types: advanced full custom; Flags: collapsed disablenouninstallwarning;
 ; Resources\Themes\Custom_Miranda
Name: Resources\Themes\Custom_Miranda; Description: {code:ComponentsHelper|Custom_Miranda}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Custom_Miranda_Dark; Description: {code:ComponentsHelper|Custom_Miranda_Dark}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Custom_Miranda_Light; Description: {code:ComponentsHelper|Custom_Miranda_Light}; Types: advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Native_7
Name: Resources\Themes\Native_7_Dark; Description: {code:ComponentsHelper|Native_7_Dark}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Native_7_Light; Description: {code:ComponentsHelper|Native_7_Light}; Types: advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\WinStyle_Classic
Name: Resources\Themes\WinStyle_Classic_Dark; Description: {code:ComponentsHelper|WinStyle_Classic_Dark}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\WinStyle_Classic_Light; Description: {code:ComponentsHelper|WinStyle_Classic_Light}; Types: advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\WinStyle
Name: Resources\Themes\WinStyle_Dark; Description: {code:ComponentsHelper|WinStyle_Dark}; Types: advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\WinStyle_Light; Description: {code:ComponentsHelper|WinStyle_Light}; Types: advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Diplomat
Name: Resources\Themes\Diplomat_Dark; Description: {code:ComponentsHelper|Diplomat_Dark}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Diplomat_Light; Description: {code:ComponentsHelper|Diplomat_Light}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Glamour
Name: Resources\Themes\Glamour_Aqua_Dark; Description: {code:ComponentsHelper|Glamour_Aqua_Dark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Glamour_Aqua_Light; Description: {code:ComponentsHelper|Glamour_Aqua_Light}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Glamour_Dark; Description: {code:ComponentsHelper|Glamour_Dark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Glamour_Light; Description: {code:ComponentsHelper|Glamour_Light}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\GoldTime
Name: Resources\Themes\GoldTime_Dark; Description: {code:ComponentsHelper|GoldTime_Dark}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\GoldTime_Light; Description: {code:ComponentsHelper|GoldTime_Light}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Graphite
Name: Resources\Themes\Graphite_Brown_Dark; Description: {code:ComponentsHelper|Graphite_Brown_Dark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Graphite_Brown_Light; Description: {code:ComponentsHelper|Graphite_Brown_Light}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Graphite_Gray_Dark; Description: {code:ComponentsHelper|Graphite_Gray_Dark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Graphite_Gray_Light; Description: {code:ComponentsHelper|Graphite_Gray_Light}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\PhotoOne
Name: Resources\Themes\PhotoOne_Dark; Description: {code:ComponentsHelper|PhotoOne_Dark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\PhotoOne_Light; Description: {code:ComponentsHelper|PhotoOne_Light}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Surface
Name: Resources\Themes\Surface_Black; Description: {code:ComponentsHelper|Surface_Black}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Surface_White; Description: {code:ComponentsHelper|Surface_White}; Types: optimal advanced full custom; Flags: disablenouninstallwarning;
 ; Resources\Themes\Textolite
Name: Resources\Themes\Textolite_Brown_Dark; Description: {code:ComponentsHelper|Textolite_Brown_Dark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Textolite_Brown_Light; Description: {code:ComponentsHelper|Textolite_Brown_Light}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Textolite_Gray_Dark; Description: {code:ComponentsHelper|Textolite_Gray_Dark}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
Name: Resources\Themes\Textolite_Gray_Light; Description: {code:ComponentsHelper|Textolite_Gray_Light}; Types: minimal optimal advanced full custom; Flags: disablenouninstallwarning;
#endif

[Tasks]
Name: alluser; Description: {code:TasksHelper|ForAllComputerUsers}; GroupDescription: {cm:CreateShortcut}; Flags: exclusive; Check: IsDefaultSetupType;
Name: curuser; Description: {code:TasksHelper|OnlyForTheCurrentUser}; GroupDescription: {cm:CreateShortcut}; Flags: exclusive unchecked; Check: IsDefaultSetupType;
Name: curuser; Description: {code:TasksHelper|OnlyForTheCurrentUser}; GroupDescription: {cm:CreateShortcut}; Flags: exclusive; Check: IsPortableSetupType;
Name: desktopicon; Description: {code:TasksHelper|CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Check: IsDefaultSetupType;
Name: desktopicon; Description: {code:TasksHelper|CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; Check: IsPortableSetupType;
Name: quicklaunchicon; Description: {code:TasksHelper|CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1;
Name: pintotaskbar; Description: {code:TasksHelper|PinToTaskbarIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; MinVersion: 0,6.1;
Name: pintostartmenu; Description: {code:TasksHelper|PinToStartMenuIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked;
Name: autorun; Description: {code:TasksHelper|CreateAutorunIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked;

[Icons]
 ; all users
Name: {group}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:Dbtool}; Filename: {app}\{#AppExeName}; Parameters: /svc:dbchecker; IconFilename: {app}\Plugins\DbChecker.dll; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:Homepage}; Filename: {cm:AppURL}; Tasks: alluser; Check: not WizardNoIcons;
;Name: {group}\{cm:SupportWiki}; Filename: {cm:AppURLWiki}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:SupportMNG}; Filename: {cm:AppURLMNG}; Tasks: alluser; Check: not WizardNoIcons;
;Name: {group}\{cm:SupportMP}; Filename: {cm:AppURLMP}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:SupportBlog}; Filename: {cm:AppSupportBlogURL}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:SupportFaq}; Filename: {cm:AppFaqURL}; Tasks: alluser; Check: not WizardNoIcons;
Name: {group}\{cm:Uninstall}; Filename: {uninstallexe}; Tasks: alluser; Check: not WizardNoIcons;
Name: {commondesktop}\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: alluser and desktopicon;
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: alluser and quicklaunchicon; AfterInstall: CreateQLShortcuts;
Name: {commonstartup}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: alluser and autorun;
 ; current user
Name: {userprograms}\{code:ExtractFileName|{group}}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:Dbtool}; Filename: {app}\{#AppExeName}; Parameters: /svc:dbchecker; IconFilename: {app}\Plugins\DbChecker.dll; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:Homepage}; Filename: {cm:AppURL}; Tasks: curuser; Check: not WizardNoIcons;
;Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportWiki}; Filename: {cm:AppURLWiki}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportMNG}; Filename: {cm:AppURLMNG}; Tasks: curuser; Check: not WizardNoIcons;
;Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportMP}; Filename: {cm:AppURLMP}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportBlog}; Filename: {cm:AppSupportBlogURL}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:SupportFaq}; Filename: {cm:AppFaqURL}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userprograms}\{code:ExtractFileName|{group}}\{cm:Uninstall}; Filename: {uninstallexe}; Tasks: curuser; Check: not WizardNoIcons;
Name: {userdesktop}\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: curuser and desktopicon;
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}; Filename: {app}\{#AppExeName}; Tasks: curuser and quicklaunchicon;
Name: {userstartup}\{#AppLnk}; Filename: {app}\{#AppExeName}; Tasks: curuser and autorun;

[Run]
 ; patcher
Filename: {app}\Skins\IconPacks\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Fugue /SILENT"; Flags: runhidden; Check: IsStyleChecked('IconsFugue');
Filename: {app}\Skins\IconPacks\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Fugue_HotCoffee /VERYSILENT"; Flags: runhidden; Check: IsStyleChecked('IconsFugue');
Filename: {app}\Skins\IconPacks\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Nova /SILENT"; Flags: runhidden; Check: IsStyleChecked('IconsNova');
Filename: {app}\Skins\IconPacks\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Nova_HotCoffee /VERYSILENT"; Flags: runhidden; Check: IsStyleChecked('IconsNova');
;Filename: {app}\Skins\IconPacks\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Xpk /SILENT"; Flags: runhidden; Check: IsStyleChecked('IconsXpk');
;Filename: {app}\Skins\IconPacks\IconPatcher.exe; Parameters: "/bin=""{app}\{#AppExeName}"" /arc=Xpk_HotCoffee /VERYSILENT"; Flags: runhidden; Check: IsStyleChecked('IconsXpk');
 ; postinstall
Filename: {app}\{#AppExeName}; Description: {cm:LaunchProgram,{#AppName}}; Flags: nowait postinstall runascurrentuser skipifsilent;
Filename: {cm:AppURL}; Description: {cm:AppURLOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
;Filename: {cm:AppURLWiki}; Description: {cm:AppURLWikiOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
Filename: {cm:AppURLMNG}; Description: {cm:AppURLMNGOpen}; Flags: nowait postinstall skipifsilent shellexec;
;Filename: {cm:AppURLMP}; Description: {cm:AppURLMPOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
Filename: {cm:AppSupportBlogURL}; Description: {cm:AppSupportBlogURLOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;
Filename: {cm:AppFaqURL}; Description: {cm:AppFaqURLOpen}; Flags: nowait postinstall skipifsilent shellexec unchecked;

[Registry]
 ; all users
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppExeName}; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Check: IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {group}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser; Check: not WizardNoIcons and IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {commondesktop}\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser and desktopicon; Check: IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser and quicklaunchicon; Check: IsRunAsAdmin
Root: HKLM; Subkey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {commonstartup}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: alluser and autorun; Check: IsRunAsAdmin
 ; current user
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppExeName}; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Check: IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userprograms}\{code:ExtractFileName|{group}}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser; Check: not WizardNoIcons and IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userdesktop}\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser and desktopicon; Check: IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser and quicklaunchicon; Check: IsRunAsAdmin
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: {userstartup}\{#AppLnk}.lnk; ValueData: RUNASADMIN; Flags: uninsdeletevalue; MinVersion: 0,6.0; Tasks: curuser and autorun; Check: IsRunAsAdmin

#define DarkSkin "IsStyleChecked('Skin_Custom_Miranda_Dark') or IsStyleChecked('Skin_Native_7_Dark') or IsStyleChecked('WinStyle_Classic_Dark') or IsStyleChecked('Skin_WinStyle_Dark') or IsStyleChecked('Skin_Diplomat_Dark') or IsStyleChecked('Skin_Glamour_Aqua_Dark') or IsStyleChecked('Skin_Glamour_Dark') or IsStyleChecked('Skin_GoldTime_Dark') or IsStyleChecked('Skin_Graphite_Brown_Dark') or IsStyleChecked('Skin_Graphite_Gray_Dark') or IsStyleChecked('Skin_PhotoOne_Dark') or IsStyleChecked('Skin_Surface_Black') or IsStyleChecked('Skin_Textolite_Brown_Dark') or IsStyleChecked('Skin_Textolite_Gray_Dark')"
#define LightSkin "IsStyleChecked('Skin_Custom_Miranda') or IsStyleChecked('Skin_Custom_Miranda_Light') or IsStyleChecked('Skin_Default_Miranda') or IsStyleChecked('Skin_Current_Windows') or IsStyleChecked('Skin_Native_7_Light') or IsStyleChecked('WinStyle_Classic_Light') or IsStyleChecked('Skin_WinStyle_Light') or IsStyleChecked('Skin_Diplomat_Light') or IsStyleChecked('Skin_Glamour_Aqua_Light') or IsStyleChecked('Skin_Glamour_Light') or IsStyleChecked('Skin_GoldTime_Light') or IsStyleChecked('Skin_Graphite_Brown_Light') or IsStyleChecked('Skin_Graphite_Gray_Light') or IsStyleChecked('Skin_PhotoOne_Light') or IsStyleChecked('Skin_Surface_White') or IsStyleChecked('Skin_Textolite_Brown_Light') or IsStyleChecked('Skin_Textolite_Gray_Light')"

[INI]
 ; mirandaboot.ini
Filename: {app}\mirandaboot.ini; Section: Database; Key: ProfileDir; String: {#AppProfile}\Profiles; Check: IsDefaultSetupType;
Filename: {app}\mirandaboot.ini; Section: Language; Key: DefaultLanguage; String: langpack_russian.txt; Languages: ru;
 ; settings.ini
Filename: {app}\Profiles\settings.ini; Section: Langpack; Key: Current; String: udefault; Languages: en;
Filename: {app}\Profiles\settings.ini; Section: Langpack; Key: Current; String: ulangpack_russian.txt; Languages: ru;
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: "Name"; String: u{#AppName};
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: Version; String: u{#AppVer} {#AppStatus} {#AppRelease};
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: Architecture; String: u{#AppArch};
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: MirVer; String: u{#AppMirVer};
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: Contacts; String: g\r\ne-mail: {#AppContacts}\r\njid: hotcoffee@XMPP.ru;
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: ReleaseDate; String: u{#GetDateTimeString("dd.mm.yyyy", "", "")};
Filename: {app}\Profiles\settings.ini; Section: PackUpdater; Key: File_VersionURL; String: uhttp://im-hotcoffee.narod.ru/hotcoffee_{#AppArch}.ini;
Filename: {app}\Profiles\settings.ini; Section: PackUpdater; Key: File_1_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\Profiles\settings.ini; Section: PackUpdater; Key: File_30_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\Profiles\settings.ini; Section: PackUpdater; Key: File_35_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\Profiles\settings.ini; Section: CLUIFrames; Key: Height12; String: w{code:GetCLUIFrames|Height12};
Filename: {app}\Profiles\settings.ini; Section: CLUIFrames; Key: TBVisile12; String: b{code:GetCLUIFrames|TBVisile12};
Filename: {app}\Profiles\settings.ini; Section: CLUI; Key: EqualSections; String: b{code:GetCLUIFrames|EqualSections};
Filename: {app}\Profiles\settings.ini; Section: CLUI; Key: StatusBarProtosPerLine; String: b{code:GetCLUIFrames|StatusBarProtosPerLine};
 ; update.ini
Filename: {app}\Profiles\update.ini; Section: Langpack; Key: Current; String: udefault; Languages: en;
Filename: {app}\Profiles\update.ini; Section: Langpack; Key: Current; String: ulangpack_russian.txt; Languages: ru;
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: "Name"; String: u{#AppName};
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: Version; String: u{#AppVer} {#AppStatus} {#AppRelease};
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: Architecture; String: u{#AppArch};
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: MirVer; String: u{#AppMirVer};
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: Contacts; String: g\r\ne-mail: {#AppContacts}\r\njid: hotcoffee@XMPP.ru;
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: ReleaseDate; String: u{#GetDateTimeString("dd.mm.yyyy", "", "")};
Filename: {app}\Profiles\update.ini; Section: PackUpdater; Key: File_VersionURL; String: uhttp://im-hotcoffee.narod.ru/hotcoffee_{#AppArch}.ini;
Filename: {app}\Profiles\update.ini; Section: PackUpdater; Key: File_1_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\Profiles\update.ini; Section: PackUpdater; Key: File_30_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\Profiles\update.ini; Section: PackUpdater; Key: File_35_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")};
Filename: {app}\Profiles\update.ini; Section: CLUIFrames; Key: Height12; String: w{code:GetCLUIFrames|Height12};
Filename: {app}\Profiles\update.ini; Section: CLUIFrames; Key: TBVisile12; String: b{code:GetCLUIFrames|TBVisile12};
Filename: {app}\Profiles\update.ini; Section: CLUI; Key: EqualSections; String: b{code:GetCLUIFrames|EqualSections};
Filename: {app}\Profiles\update.ini; Section: CLUI; Key: StatusBarProtosPerLine; String: b{code:GetCLUIFrames|StatusBarProtosPerLine};
 ; autoexec_update.ini
Filename: {app}\Profiles\autoexec_update.ini; Section: Langpack; Key: Current; String: udefault; Languages: en; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Langpack; Key: Current; String: ulangpack_russian.txt; Languages: ru; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: "Name"; String: u{#AppName}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: Version; String: u{#AppVer} {#AppStatus} {#AppRelease}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: Architecture; String: u{#AppArch}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: MirVer; String: u{#AppMirVer}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: Contacts; String: g\r\ne-mail: {#AppContacts}\r\njid: hotcoffee@XMPP.ru; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: ReleaseDate; String: u{#GetDateTimeString("dd.mm.yyyy", "", "")}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackUpdater; Key: File_VersionURL; String: uhttp://im-hotcoffee.narod.ru/hotcoffee_{#AppArch}.ini; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackUpdater; Key: File_1_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackUpdater; Key: File_30_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: PackUpdater; Key: File_35_CurrentVersion; String: u{#GetDateTimeString("yyyy.m.d", "", "")}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: CLUIFrames; Key: Height12; String: w{code:GetCLUIFrames|Height12}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: CLUIFrames; Key: TBVisile12; String: b{code:GetCLUIFrames|TBVisile12}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: CLUI; Key: EqualSections; String: b{code:GetCLUIFrames|EqualSections}; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: CLUI; Key: StatusBarProtosPerLine; String: b{code:GetCLUIFrames|StatusBarProtosPerLine}; Check: IsUpdate;

 ; Protocols\Pseudo\CurrencyRates
Filename: {app}\Profiles\settings.ini; Section: CurrencyRates; Key: AM_BaseProto; String: sCurrencyRates; Flags: uninsdeleteentry; Components: Protocols\Pseudo\CurrencyRates;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 0; String: sCurrencyRates; Flags: uninsdeleteentry; Components: Protocols\Pseudo\CurrencyRates;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 200; String: d0; Flags: uninsdeleteentry; Components: Protocols\Pseudo\CurrencyRates;
 ; Protocols\Discord
Filename: {app}\Profiles\settings.ini; Section: Discord; Key: AM_BaseProto; String: sDiscord; Flags: uninsdeleteentry; Components: Protocols\Discord;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 4; String: sDiscord; Flags: uninsdeleteentry; Components: Protocols\Discord;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 204; String: d4; Flags: uninsdeleteentry; Components: Protocols\Discord;
Filename: {app}\Profiles\update.ini; Section: Discord; Key: AM_BaseProto; String: sDiscord; Flags: uninsdeleteentry; Components: Protocols\Discord;
Filename: {app}\Profiles\autoexec_update.ini; Section: Discord; Key: AM_BaseProto; String: sDiscord; Flags: uninsdeleteentry; Components: Protocols\Discord; Check: IsUpdate;
 ; CloudFile/Dropbox
Filename: {app}\Profiles\settings.ini; Section: Dropbox; Key: AM_BaseProto; String: sCloudFile/Dropbox; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 8; String: sDropbox; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 208; String: d8; Flags: uninsdeleteentry;
 ; Protocols\Facebook
Filename: {app}\Profiles\settings.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: Protocols\Facebook;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 12; String: sFacebook; Flags: uninsdeleteentry; Components: Protocols\Facebook;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 212; String: d12; Flags: uninsdeleteentry; Components: Protocols\Facebook;
Filename: {app}\Profiles\update.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: Protocols\Facebook;
Filename: {app}\Profiles\autoexec_update.ini; Section: Facebook; Key: AM_BaseProto; String: sFacebook; Flags: uninsdeleteentry; Components: Protocols\Facebook; Check: IsUpdate;
 ; CloudFile/GDrive
Filename: {app}\Profiles\settings.ini; Section: GDrive; Key: AM_BaseProto; String: sCloudFile/GDrive; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 16; String: sGDrive; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 216; String: d16; Flags: uninsdeleteentry;
 ; Protocols\GG
Filename: {app}\Profiles\settings.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: Protocols\GG;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 20; String: sGG; Flags: uninsdeleteentry; Components: Protocols\GG;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 220; String: d20; Flags: uninsdeleteentry; Components: Protocols\GG;
Filename: {app}\Profiles\update.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: Protocols\GG;
Filename: {app}\Profiles\autoexec_update.ini; Section: GG; Key: AM_BaseProto; String: sGG; Flags: uninsdeleteentry; Components: Protocols\GG; Check: IsUpdate;
 ; Protocols\ICQ\ICQ
Filename: {app}\Profiles\settings.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: Protocols\ICQ\ICQ;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 24; String: sICQ; Flags: uninsdeleteentry; Components: Protocols\ICQ\ICQ;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 224; String: d24; Flags: uninsdeleteentry; Components: Protocols\ICQ\ICQ;
Filename: {app}\Profiles\update.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: Protocols\ICQ\ICQ;
Filename: {app}\Profiles\autoexec_update.ini; Section: ICQ; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: Protocols\ICQ\ICQ; Check: IsUpdate;
 ; Protocols\IRC
Filename: {app}\Profiles\settings.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: Protocols\IRC;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 28; String: sIRC; Flags: uninsdeleteentry; Components: Protocols\IRC;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 228; String: d28; Flags: uninsdeleteentry; Components: Protocols\IRC;
Filename: {app}\Profiles\update.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: Protocols\IRC;
Filename: {app}\Profiles\autoexec_update.ini; Section: IRC; Key: AM_BaseProto; String: sIRC; Flags: uninsdeleteentry; Components: Protocols\IRC; Check: IsUpdate;
 ; Protocols\Jabber\Jabber
Filename: {app}\Profiles\settings.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabber;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 32; String: sJabber; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabber;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 232; String: d32; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabber;
Filename: {app}\Profiles\update.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabber;
Filename: {app}\Profiles\autoexec_update.ini; Section: Jabber; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabber; Check: IsUpdate;
 ; Protocols\Jabber\Jabberru
Filename: {app}\Profiles\settings.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabberru;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 36; String: sJabberru; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabberru;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 236; String: d36; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabberru;
Filename: {app}\Profiles\update.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabberru;
Filename: {app}\Profiles\autoexec_update.ini; Section: Jabberru; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\Jabberru; Check: IsUpdate;
 ; Protocols\ICQ\MRA
Filename: {app}\Profiles\settings.ini; Section: MRA; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: Protocols\ICQ\MRA;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 40; String: sMRA; Flags: uninsdeleteentry; Components: Protocols\ICQ\MRA;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 240; String: d40; Flags: uninsdeleteentry; Components: Protocols\ICQ\MRA;
Filename: {app}\Profiles\update.ini; Section: MRA; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: Protocols\ICQ\MRA;
Filename: {app}\Profiles\autoexec_update.ini; Section: MRA; Key: AM_BaseProto; String: sICQ; Flags: uninsdeleteentry; Components: Protocols\ICQ\MRA; Check: IsUpdate;
 ; MetaContacts
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 44; String: sMetaContacts; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 244; String: d44; Flags: uninsdeleteentry;
 ; Protocols\Pseudo\NewsAggregator
Filename: {app}\Profiles\settings.ini; Section: NewsAggregator; Key: AM_BaseProto; String: sNewsAggregator; Flags: uninsdeleteentry; Components: Protocols\Pseudo\NewsAggregator;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 48; String: sNewsAggregator; Flags: uninsdeleteentry; Components: Protocols\Pseudo\NewsAggregator;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 248; String: d48; Flags: uninsdeleteentry; Components: Protocols\Pseudo\NewsAggregator;
 ; Protocols\Jabber\OK
Filename: {app}\Profiles\settings.ini; Section: OK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\OK;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 52; String: sOK; Flags: uninsdeleteentry; Components: Protocols\Jabber\OK;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 252; String: d52; Flags: uninsdeleteentry; Components: Protocols\Jabber\OK;
Filename: {app}\Profiles\update.ini; Section: OK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\OK;
Filename: {app}\Profiles\autoexec_update.ini; Section: OK; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\OK; Check: IsUpdate;
 ; CloudFile/OneDrive
Filename: {app}\Profiles\settings.ini; Section: OneDrive; Key: AM_BaseProto; String: sCloudFile/OneDrive; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 56; String: sOneDrive; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 256; String: d56; Flags: uninsdeleteentry;
 ; Protocols\Skype
Filename: {app}\Profiles\settings.ini; Section: Skype; Key: AM_BaseProto; String: sSKYPE; Flags: uninsdeleteentry; Components: Protocols\Skype;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 60; String: sSkype; Flags: uninsdeleteentry; Components: Protocols\Skype;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 260; String: d60; Flags: uninsdeleteentry; Components: Protocols\Skype;
Filename: {app}\Profiles\update.ini; Section: Skype; Key: AM_BaseProto; String: sSKYPE; Flags: uninsdeleteentry; Components: Protocols\Skype;
Filename: {app}\Profiles\autoexec_update.ini; Section: Skype; Key: AM_BaseProto; String: sSKYPE; Flags: uninsdeleteentry; Components: Protocols\Skype; Check: IsUpdate;
 ; Protocols\Twitter
Filename: {app}\Profiles\settings.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: Protocols\Twitter;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 64; String: sTwitter; Flags: uninsdeleteentry; Components: Protocols\Twitter;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 264; String: d64; Flags: uninsdeleteentry; Components: Protocols\Twitter;
Filename: {app}\Profiles\update.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: Protocols\Twitter;
Filename: {app}\Profiles\autoexec_update.ini; Section: Twitter; Key: AM_BaseProto; String: sTwitter; Flags: uninsdeleteentry; Components: Protocols\Twitter; Check: IsUpdate;
 ; Protocols\VKontakte
Filename: {app}\Profiles\settings.ini; Section: VKontakte; Key: AM_BaseProto; String: sVKontakte; Flags: uninsdeleteentry; Components: Protocols\VKontakte;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 68; String: sVKontakte; Flags: uninsdeleteentry; Components: Protocols\VKontakte;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 268; String: d68; Flags: uninsdeleteentry; Components: Protocols\VKontakte;
Filename: {app}\Profiles\update.ini; Section: VKontakte; Key: AM_BaseProto; String: sVKontakte; Flags: uninsdeleteentry; Components: Protocols\VKontakte;
Filename: {app}\Profiles\autoexec_update.ini; Section: VKontakte; Key: AM_BaseProto; String: sVKontakte; Flags: uninsdeleteentry; Components: Protocols\VKontakte; Check: IsUpdate;
 ; Protocols\Pseudo\Weather
Filename: {app}\Profiles\settings.ini; Section: Weather; Key: AM_BaseProto; String: sWeather; Flags: uninsdeleteentry; Components: Protocols\Pseudo\Weather;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 72; String: sWeather; Flags: uninsdeleteentry; Components: Protocols\Pseudo\Weather;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 272; String: d72; Flags: uninsdeleteentry; Components: Protocols\Pseudo\Weather;
 ; Protocols\Jabber\XMPP
Filename: {app}\Profiles\settings.ini; Section: XMPP; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\XMPP;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 74; String: sXMPP; Flags: uninsdeleteentry; Components: Protocols\Jabber\XMPP;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 274; String: d74; Flags: uninsdeleteentry; Components: Protocols\Jabber\XMPP;
Filename: {app}\Profiles\update.ini; Section: XMPP; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\XMPP;
Filename: {app}\Profiles\autoexec_update.ini; Section: XMPP; Key: AM_BaseProto; String: sJABBER; Flags: uninsdeleteentry; Components: Protocols\Jabber\XMPP; Check: IsUpdate;
 ; Protocols\Pseudo\YAMN
Filename: {app}\Profiles\settings.ini; Section: YAMN; Key: AM_BaseProto; String: sYAMN; Flags: uninsdeleteentry; Components: Protocols\Pseudo\YAMN;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 78; String: sYAMN; Flags: uninsdeleteentry; Components: Protocols\Pseudo\YAMN;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 278; String: d78; Flags: uninsdeleteentry; Components: Protocols\Pseudo\YAMN;
 ; CloudFile/YandexDisk
Filename: {app}\Profiles\settings.ini; Section: YandexDisk; Key: AM_BaseProto; String: sCloudFile/YandexDisk; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 82; String: sYandexDisk; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 282; String: d82; Flags: uninsdeleteentry;
 ; Protocols\Pseudo\mRadio
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 86; String: smRadio; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Protocols; Key: 286; String: d86; Flags: uninsdeleteentry;

 ; Plugins\NewXstatusNotify
Filename: {app}\Profiles\settings.ini; Section: Ignore; Key: Default1; String: d0; Flags: uninsdeleteentry; Components: Plugins\NewXstatusNotify;
Filename: {app}\Profiles\settings.ini; Section: Ignore; Key: Default1; String: d8; Flags: uninsdeleteentry; Components: not Plugins\NewXstatusNotify;
Filename: {app}\Profiles\update.ini; Section: Ignore; Key: Default1; String: d0; Flags: uninsdeleteentry; Components: Plugins\NewXstatusNotify;
Filename: {app}\Profiles\update.ini; Section: Ignore; Key: Default1; String: d8; Flags: uninsdeleteentry; Components: not Plugins\NewXstatusNotify;
Filename: {app}\Profiles\autoexec_update.ini; Section: Ignore; Key: Default1; String: d0; Flags: uninsdeleteentry; Components: Plugins\NewXstatusNotify; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Ignore; Key: Default1; String: d8; Flags: uninsdeleteentry; Components: not Plugins\NewXstatusNotify; Check: IsUpdate;
 ; UserInfoEx RemindEnabled - on
Filename: {app}\Profiles\settings.ini; Section: UserInfoEx; Key: RemindEnabled; String: b3; Flags: uninsdeleteentry; Components: (Plugins\UInfoEx and not Plugins\WhenWasIt) or not (Plugins\UInfoEx and Plugins\WhenWasIt);
Filename: {app}\Profiles\update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b3; Flags: uninsdeleteentry; Components: (Plugins\UInfoEx and not Plugins\WhenWasIt) or not (Plugins\UInfoEx and Plugins\WhenWasIt);
Filename: {app}\Profiles\autoexec_update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b3; Flags: uninsdeleteentry; Components: (Plugins\UInfoEx and not Plugins\WhenWasIt) or not (Plugins\UInfoEx and Plugins\WhenWasIt); Check: IsUpdate;
 ; UserInfoEx RemindEnabled - off
Filename: {app}\Profiles\settings.ini; Section: UserInfoEx; Key: RemindEnabled; String: b2; Flags: uninsdeleteentry; Components: Plugins\WhenWasIt or (Plugins\UInfoEx and Plugins\WhenWasIt);
Filename: {app}\Profiles\update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b2; Flags: uninsdeleteentry; Components: Plugins\WhenWasIt or (Plugins\UInfoEx and Plugins\WhenWasIt);
Filename: {app}\Profiles\autoexec_update.ini; Section: UserInfoEx; Key: RemindEnabled; String: b2; Flags: uninsdeleteentry; Components: Plugins\WhenWasIt or (Plugins\UInfoEx and Plugins\WhenWasIt); Check: IsUpdate;
 ; Tab_SRMsg default
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and not Plugins\HistoryPP;
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and not Plugins\HistoryPP;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and not Plugins\HistoryPP;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and not Plugins\HistoryPP;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and not Plugins\HistoryPP; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and not Plugins\HistoryPP; Check: IsUpdate;
 ; Tab_SRMsg IEView
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (Resources\IEView and Plugins\HistoryPP) or (Resources\IEView and not Plugins\HistoryPP);
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (Resources\IEView and Plugins\HistoryPP) or (Resources\IEView and not Plugins\HistoryPP);
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (Resources\IEView and Plugins\HistoryPP) or (Resources\IEView and not Plugins\HistoryPP);
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (Resources\IEView and Plugins\HistoryPP) or (Resources\IEView and not Plugins\HistoryPP);
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b1; Flags: uninsdeleteentry; Components: (Resources\IEView and Plugins\HistoryPP) or (Resources\IEView and not Plugins\HistoryPP); Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b0; Flags: uninsdeleteentry; Components: (Resources\IEView and Plugins\HistoryPP) or (Resources\IEView and not Plugins\HistoryPP); Check: IsUpdate;
 ; Tab_SRMsg history++
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and Plugins\HistoryPP;
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not Resources\IEView and Plugins\HistoryPP;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and Plugins\HistoryPP;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not Resources\IEView and Plugins\HistoryPP;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_ieview; String: b0; Flags: uninsdeleteentry; Components: not Resources\IEView and Plugins\HistoryPP; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: default_hpp; String: b1; Flags: uninsdeleteentry; Components: not Resources\IEView and Plugins\HistoryPP; Check: IsUpdate;

#define public i 0
#sub AddThemeIni
 ; theme ini
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: Skin; String: u{#theme[i]}; Flags: uninsdeleteentry; Check: IsStyleChecked('Skin_{#theme[i]}');
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: Skin; String: u{#theme[i]}; Flags: uninsdeleteentry; Check: IsStyleChecked('Skin_{#theme[i]}');
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: Skin; String: u{#theme[i]}; Flags: uninsdeleteentry; Check: IsStyleChecked('Skin_{#theme[i]}') and IsUpdate;
#endsub
#for {i = 0; i < 31; i++} AddThemeIni

 ; Smileys for the dark skin
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: clist-filename; String: uSkins\Smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Standard-filename; String: uSkins\Smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Tipper-filename; String: uSkins\Smileys\_dark\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uSkins\Smileys\_dark\MRA\MRA.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoSkype-filename; String: uSkins\Smileys\_dark\Skype\Skype.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: GMail-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Google-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: GTalk-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: OK-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Yandex-filename; String: uSkins\Smileys\_dark\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#DarkSkin};
 ; Smileys for the light skin
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: clist-filename; String: uSkins\Smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Standard-filename; String: uSkins\Smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Tipper-filename; String: uSkins\Smileys\_light\kolobok\kolobok.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoFacebook-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMRA-filename; String: uSkins\Smileys\_light\MRA\MRA.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoMSN-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoSkype-filename; String: uSkins\Smileys\_light\Skype\Skype.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTOX-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoTwitter-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoVKontakte-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: AllProtoWhatsApp-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: GMail-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Google-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: GTalk-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Hangouts-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: OK-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};
Filename: {app}\Profiles\settings.ini; Section: SmileyAdd; Key: Yandex-filename; String: uSkins\Smileys\_light\emoji\emoji.msl; Flags: uninsdeleteentry; Check: {#LightSkin};

 ; Handwriting font
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: Font; String: uHandwriting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: Font; String: uHandwriting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting');
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: Font; String: uHandwriting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontHandwriting') and IsUpdate;
 ; Printing font
Filename: {app}\Profiles\settings.ini; Section: PackInfo; Key: Font; String: uPrinting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting');
Filename: {app}\Profiles\update.ini; Section: PackInfo; Key: Font; String: uPrinting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting');
Filename: {app}\Profiles\autoexec_update.ini; Section: PackInfo; Key: Font; String: uPrinting; Flags: uninsdeleteentry; Check: IsStyleChecked('FontPrinting') and IsUpdate;

 ; IEViewScrollBar
Filename: {app}\Profiles\settings.ini; Section: IEView_Template; Key: ScrollBar; String: b{code:SetBoolStyle|IEViewScrollBar}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\update.ini; Section: IEView_Template; Key: ScrollBar; String: b{code:SetBoolStyle|IEViewScrollBar}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\autoexec_update.ini; Section: IEView_Template; Key: ScrollBar; String: b{code:SetBoolStyle|IEViewScrollBar}; Flags: uninsdeleteentry;  Components: Resources\IEView; Check: IsUpdate;
 ; IEViewAnimation
Filename: {app}\Profiles\settings.ini; Section: IEView_Template; Key: Animation; String: b{code:SetBoolStyle|IEViewAnimation}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\update.ini; Section: IEView_Template; Key: Animation; String: b{code:SetBoolStyle|IEViewAnimation}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\autoexec_update.ini; Section: IEView_Template; Key: Animation; String: b{code:SetBoolStyle|IEViewAnimation}; Flags: uninsdeleteentry;  Components: Resources\IEView; Check: IsUpdate;
 ; IEViewAvatar
Filename: {app}\Profiles\settings.ini; Section: IEView_Template; Key: Avatars; String: b{code:SetBoolStyle|IEViewAvatar}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\update.ini; Section: IEView_Template; Key: Avatars; String: b{code:SetBoolStyle|IEViewAvatar}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\autoexec_update.ini; Section: IEView_Template; Key: Avatars; String: b{code:SetBoolStyle|IEViewAvatar}; Flags: uninsdeleteentry;  Components: Resources\IEView; Check: IsUpdate;
 ; IEViewShortLink
Filename: {app}\Profiles\settings.ini; Section: IEView_Template; Key: ShortLinks; String: b{code:SetBoolStyle|IEViewShortLink}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\update.ini; Section: IEView_Template; Key: ShortLinks; String: b{code:SetBoolStyle|IEViewShortLink}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\autoexec_update.ini; Section: IEView_Template; Key: ShortLinks; String: b{code:SetBoolStyle|IEViewShortLink}; Flags: uninsdeleteentry;  Components: Resources\IEView; Check: IsUpdate;
 ; IEViewContextMenu
Filename: {app}\Profiles\settings.ini; Section: IEView_Template; Key: CustomContextMenu; String: b{code:SetBoolStyle|IEViewContextMenu}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b{code:SetBoolStyle|IEViewContextMenu}; Flags: uninsdeleteentry; Components: Resources\IEView;
Filename: {app}\Profiles\autoexec_update.ini; Section: IEView_Template; Key: CustomContextMenu; String: b{code:SetBoolStyle|IEViewContextMenu}; Flags: uninsdeleteentry;  Components: Resources\IEView; Check: IsUpdate;

 ; Settings Page
 ; on/off sending messages
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: sendonshiftenter; String: b{code:SetBoolSetting|SendShiftEnter}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: SendOnEnter; String: b{code:SetBoolSetting|SendEnter}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: SendOnDblEnter; String: b{code:SetBoolSetting|SendDoubleEnter}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: sendonshiftenter; String: b{code:SetBoolSetting|SendShiftEnter}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: SendOnEnter; String: b{code:SetBoolSetting|SendEnter}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: SendOnDblEnter; String: b{code:SetBoolSetting|SendDoubleEnter}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: sendonshiftenter; String: b{code:SetBoolSetting|SendShiftEnter}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: SendOnEnter; String: b{code:SetBoolSetting|SendEnter}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: SendOnDblEnter; String: b{code:SetBoolSetting|SendDoubleEnter}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; OnTop
Filename: {app}\Profiles\settings.ini; Section: CList; Key: OnTop; String: b{code:SetBoolSetting|OnTop}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: CList; Key: OnTop; String: b{code:SetBoolSetting|OnTop}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: CList; Key: OnTop; String: b{code:SetBoolSetting|OnTop}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; ViewModes
Filename: {app}\Profiles\settings.ini; Section: CLUIFrames; Key: Visible5; String: b{code:SetBoolSetting|ViewModes}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: CLUIFrames; Key: Visible5; String: b{code:SetBoolSetting|ViewModes}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: CLUIFrames; Key: Visible5; String: b{code:SetBoolSetting|ViewModes}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; CompactMode
Filename: {app}\Profiles\settings.ini; Section: CLC; Key: CompactMode; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: CList; Key: AlignLeftItemsToLeft; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: CList; Key: AlignRightItemsToRight; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: CLC; Key: CompactMode; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: CList; Key: AlignLeftItemsToLeft; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: CList; Key: AlignRightItemsToRight; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: CLC; Key: CompactMode; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: CList; Key: AlignLeftItemsToLeft; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: CList; Key: AlignRightItemsToRight; String: b{code:SetBoolSetting|CompactMode}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; UseSound
Filename: {app}\Profiles\settings.ini; Section: Skin; Key: UseSound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Skin; Key: UseSound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Skin; Key: UseSound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; UseSound for SplashScreen
Filename: {app}\Profiles\settings.ini; Section: SplashScreen; Key: PlaySound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SplashScreen; Key: PlaySound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: SplashScreen; Key: PlaySound; String: b{code:SetBoolSetting|UseSound}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; CLCNoVScrollBar
Filename: {app}\Profiles\settings.ini; Section: CLC; Key: NoVScrollBar; String: b{code:SetBoolSetting|!CLCNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: CLC; Key: NoVScrollBar; String: b{code:SetBoolSetting|!CLCNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: CLC; Key: NoVScrollBar; String: b{code:SetBoolSetting|!CLCNoVScrollBar}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; LogStatusChanges
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: logstatuschanges; String: b{code:SetBoolSetting|LogStatusChanges}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: logstatuschanges; String: b{code:SetBoolSetting|LogStatusChanges}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: logstatuschanges; String: b{code:SetBoolSetting|LogStatusChanges}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; TypingNotification
Filename: {app}\Profiles\settings.ini; Section: TypingNotify; Key: Disabled; String: b{code:SetBoolSetting|!TypingNotification}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: TypingNotify; Key: Disabled; String: b{code:SetBoolSetting|!TypingNotification}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: TypingNotify; Key: Disabled; String: b{code:SetBoolSetting|!TypingNotification}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; TabSRMMNoVScrollBar
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: disableVScroll; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: HistoryPlusPlus; Key: NoLogScrollBar; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: disableVScroll; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: HistoryPlusPlus; Key: NoLogScrollBar; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: disableVScroll; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: HistoryPlusPlus; Key: NoLogScrollBar; String: b{code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Check: IsUpdate;

 ; TabSRMMNoVScrollBar for TabSRMM Skin
Filename: {app}\Skins\TabSRMM\Default_Miranda\Default_Miranda.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry;
#define public i 2
#sub AddThemeTskNoScrollbars
Filename: {app}\Skins\TabSRMM\{#theme[i]}\{#theme[i]}.tsk; Section: Global; Key: NoScrollbars; String: {code:SetBoolSetting|!TabSRMMNoVScrollBar}; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]};
#endsub
#for {i = 2; i < 31; i++} AddThemeTskNoScrollbars

 ; DialogStatusMessages off NewAwaySys
Filename: {app}\Profiles\settings.ini; Section: NewAwaySys; Key: DontPopDlg; String: w1022; Flags: uninsdeleteentry; Check: not IsSettingChecked('DialogStatusMessages');
Filename: {app}\Profiles\update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w1022; Flags: uninsdeleteentry; Check: not IsSettingChecked('DialogStatusMessages');
Filename: {app}\Profiles\autoexec_update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w1022; Flags: uninsdeleteentry; Check: not IsSettingChecked('DialogStatusMessages') and IsUpdate;
 ; DialogStatusMessages on NewAwaySys
Filename: {app}\Profiles\settings.ini; Section: NewAwaySys; Key: DontPopDlg; String: w0; Flags: uninsdeleteentry; Check: IsSettingChecked('DialogStatusMessages');
Filename: {app}\Profiles\update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w0; Flags: uninsdeleteentry; Check: IsSettingChecked('DialogStatusMessages');
Filename: {app}\Profiles\autoexec_update.ini; Section: NewAwaySys; Key: DontPopDlg; String: w0; Flags: uninsdeleteentry; Check: IsSettingChecked('DialogStatusMessages') and IsUpdate;
 ; DialogStatusMessages SRAway
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: IdlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: OtpNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: OtlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: InvNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: FreeChatNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: DndNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: OccupiedNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: NaNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: AwayNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\settings.ini; Section: SRAway; Key: OnNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: IdlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: OtpNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: OtlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: InvNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: FreeChatNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: DndNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: OccupiedNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: NaNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: AwayNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: SRAway; Key: OnNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: IdlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: OtpNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: OtlNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: InvNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: FreeChatNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: DndNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: OccupiedNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: NaNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: AwayNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRAway; Key: OnNoDlg; String: b{code:SetBoolSetting|!DialogStatusMessages}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; Autoreply
Filename: {app}\Profiles\settings.ini; Section: NewAwaySys; Key: EnableReply; String: b{code:SetBoolSetting|Autoreply}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: NewAwaySys; Key: EnableReply; String: b{code:SetBoolSetting|Autoreply}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: NewAwaySys; Key: EnableReply; String: b{code:SetBoolSetting|Autoreply}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; AutoAwayDetection off
Filename: {app}\Profiles\settings.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w52; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoAwayDetection');
Filename: {app}\Profiles\update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w52; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoAwayDetection');
Filename: {app}\Profiles\autoexec_update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w52; Flags: uninsdeleteentry; Check: not IsSettingChecked('AutoAwayDetection') and IsUpdate;
 ; AutoAwayDetection on
Filename: {app}\Profiles\settings.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w183; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoAwayDetection');
Filename: {app}\Profiles\update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w183; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoAwayDetection');
Filename: {app}\Profiles\autoexec_update.ini; Section: AdvancedAutoAway; Key: ALLPROTOS_OptionFlags; String: w183; Flags: uninsdeleteentry; Check: IsSettingChecked('AutoAwayDetection') and IsUpdate;
 ; AutoIdleDetection IdleOnFullScr
Filename: {app}\Profiles\settings.ini; Section: Idle; Key: IdleOnFullScr; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Idle; Key: IdleOnFullScr; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Idle; Key: IdleOnFullScr; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; AutoIdleDetection IdleOnLock
Filename: {app}\Profiles\settings.ini; Section: Idle; Key: IdleOnLock; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Idle; Key: IdleOnLock; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Idle; Key: IdleOnLock; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; AutoIdleDetection IdleOnSaver
Filename: {app}\Profiles\settings.ini; Section: Idle; Key: IdleOnSaver; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Idle; Key: IdleOnSaver; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Idle; Key: IdleOnSaver; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; AutoIdleDetection IdleOnTerminalDisconnect
Filename: {app}\Profiles\settings.ini; Section: Idle; Key: IdleOnTerminalDisconnect; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Idle; Key: IdleOnTerminalDisconnect; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Idle; Key: IdleOnTerminalDisconnect; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; AutoIdleDetection UserIdleCheck
Filename: {app}\Profiles\settings.ini; Section: Idle; Key: UserIdleCheck; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: Idle; Key: UserIdleCheck; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: Idle; Key: UserIdleCheck; String: b{code:SetBoolSetting|AutoIdleDetection}; Flags: uninsdeleteentry; Check: IsUpdate;
 ; CheckUpdates
#if AppStatus == "Final"
Filename: {app}\Profiles\settings.ini; Section: PluginUpdater; Key: UpdateOnStartup; String: b{code:SetBoolSetting|CheckUpdates}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: PluginUpdater; Key: UpdateOnStartup; String: b{code:SetBoolSetting|CheckUpdates}; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: PluginUpdater; Key: UpdateOnStartup; String: b{code:SetBoolSetting|CheckUpdates}; Flags: uninsdeleteentry; Check: IsUpdate;
#endif
#if AppStatus != "Test" && AppStatus != "Alpha" && AppStatus != "Beta"
 ; StableVersion
Filename: {app}\Profiles\settings.ini; Section: PluginUpdater; Key: UpdateMode; String: b1; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: PluginUpdater; Key: UpdateMode; String: b1; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: PluginUpdater; Key: UpdateMode; String: b1; Flags: uninsdeleteentry; Check: IsUpdate;
 ; DontSwitchToStable
Filename: {app}\Profiles\settings.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b0; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b0; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b0; Flags: uninsdeleteentry; Check: IsUpdate;
#endif
#if AppStatus != "Final"
 ; DevelopmentVersion
Filename: {app}\Profiles\settings.ini; Section: PluginUpdater; Key: UpdateMode; String: b2; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: PluginUpdater; Key: UpdateMode; String: b2; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: PluginUpdater; Key: UpdateMode; String: b2; Flags: uninsdeleteentry; Check: IsUpdate;
 ; DontSwitchToStable
Filename: {app}\Profiles\settings.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b1; Flags: uninsdeleteentry;
Filename: {app}\Profiles\update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b1; Flags: uninsdeleteentry;
Filename: {app}\Profiles\autoexec_update.ini; Section: PluginUpdater; Key: DontSwitchToStable; String: b1; Flags: uninsdeleteentry; Check: IsUpdate;
#endif
 ; DialogFontSize
Filename: {app}\UserSet\Fonts\Handwriting.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\UserSet\Fonts\Handwriting.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\UserSet\Fonts\Handwriting.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\UserSet\Fonts\Handwriting.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\UserSet\Fonts\Handwriting.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\UserSet\Fonts\Handwriting.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
Filename: {app}\UserSet\Fonts\Printing.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\UserSet\Fonts\Printing.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\UserSet\Fonts\Printing.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\UserSet\Fonts\Printing.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\UserSet\Fonts\Printing.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\UserSet\Fonts\Printing.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
Filename: {app}\Profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\Profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\Profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\Profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\Profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\Profiles\settings.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
Filename: {app}\Profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\Profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\Profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\Profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\Profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\Profiles\update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
Filename: {app}\Profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5') and IsUpdate;
#if AppSkinUp == "0"
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0') and not IsUpdate;
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1') and not IsUpdate;
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2') and not IsUpdate;
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3') and not IsUpdate;
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4') and not IsUpdate;
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5') and not IsUpdate;
#endif
#if AppSkinUp == "1"
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\Profiles\autoexec_skin.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
#endif

#define public i 0
#sub AddDefaultThemeIni
 ; default theme ini
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('DialogFontSize,5');
#endsub
#for {i = 0; i < 2; i++} AddDefaultThemeIni

#define public i 2
#sub AddCustomThemeIni
 ; custom theme ini
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\Skins\{#theme[i]}.ini; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,5');
 ; custom theme msf
Filename: {app}\Skins\Modern contact list\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b-12; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,0');
Filename: {app}\Skins\Modern contact list\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b-13; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,1');
Filename: {app}\Skins\Modern contact list\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b-15; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,2');
Filename: {app}\Skins\Modern contact list\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b-16; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,3');
Filename: {app}\Skins\Modern contact list\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b-19; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,4');
Filename: {app}\Skins\Modern contact list\{#theme[i]}.msf; Section: TabSRMM_Fonts; Key: Font16Size; String: b-21; Flags: uninsdeleteentry; Components: Resources\Themes\{#theme[i]}; Check: IsAdditionalSettingChecked('DialogFontSize,5');
#endsub
#for {i = 2; i < 31; i++} AddCustomThemeIni

 ; LoadHistorySize
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w5; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w10; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w20; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w50; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadCount; String: w100; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b0; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,0');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\Profiles\settings.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w5; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w10; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w20; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w50; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadCount; String: w100; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b0; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,0');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4');
Filename: {app}\Profiles\update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5');
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w5; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w10; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w20; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w50; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadCount; String: w100; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b0; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,0') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,1') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,2') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,3') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,4') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: SRMsg; Key: LoadHistory; String: b1; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LoadHistorySize,5') and IsUpdate;
 ; LocationTabsMessageWindow and AutoSizeInputArea on
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144541508; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144541508; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144541508; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077432644; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and IsSettingChecked('AutoSizeInputArea') and IsUpdate;
 ; LocationTabsMessageWindow and AutoSizeInputArea off
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144525124; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\settings.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144525124; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea');
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,0') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1144525124; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33569800; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,1') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570056; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,2') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_Flags; String: d1077416260; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;
Filename: {app}\Profiles\autoexec_update.ini; Section: Tab_SRMsg; Key: CNTW_Def_FlagsEx; String: d33570312; Flags: uninsdeleteentry; Check: IsAdditionalSettingChecked('LocationTabsMessageWindow,3') and not IsSettingChecked('AutoSizeInputArea') and IsUpdate;

[UninstallDelete]
Type: dirifempty; Name: {#SetupSetting("UninstallFilesDir")};
Type: dirifempty; Name: {app};

[Code]
#define A = (Defined UNICODE) ? "W" : "A"
const
  WM_NCPAINT = $0085;
  WM_PAINT = $000F;
  WM_PRINTCLIENT = $0318;
  WM_ERASEBKGND = $0014;
  WM_GETFONT = $0031;
  WM_MOUSEMOVE = $0200;
  WM_LBUTTONDOWN = $0201;
  WM_MOUSEHOVER = $02A1;
  WM_MOUSELEAVE = $02A3;
  WM_HSCROLL = $0114;
  WM_DRAWITEM = $002B;
  WM_SETCURSOR = $0020;
  WM_SYSCOLORCHANGE = $0015;
  WM_ENABLE = $000A;
  WM_DWMCOMPOSITIONCHANGED = $031E;
  WM_DWMNCRENDERINGCHANGED = $031F;
  WM_CLOSE = $0010;
  WM_DESTROY = $0002;
  WM_NCHITTEST = $0084;
  CN_CTLCOLOREDIT = $BD33;
  CN_CTLCOLORSTATIC = $BD38;

  LVM_FIRST = $1000;
  LVM_GETIMAGELIST = (LVM_FIRST + 2);
  LVM_SETIMAGELIST = (LVM_FIRST + 3);
  LVM_SETCOLUMNWIDTH = (LVM_FIRST + 30);
  LVM_GETHEADER = (LVM_FIRST + 31);
  LVM_SETEXTENDEDLISTVIEWSTYLE = (LVM_FIRST + 54);
  LVM_GETSUBITEMRECT = (LVM_FIRST + 56);
  LVM_GETHOTITEM = (LVM_FIRST + 61);
  HDM_FIRST = $1200;
  HDM_LAYOUT = HDM_FIRST + 5;
  HDM_HITTEST = HDM_FIRST + 6;
  TV_FIRST = $1100;
  TVM_GETITEMRECT = TV_FIRST + 4;
  TVM_GETIMAGELIST = TV_FIRST + 8;
  TVM_GETNEXTITEM = TV_FIRST + 10;
  TVM_GETITEMA = TV_FIRST + 12;
  TVM_HITTEST = TV_FIRST + 17;
  TVM_SETEXTENDEDSTYLE = TV_FIRST + 44;
  TVM_GETEXTENDEDSTYLE = TV_FIRST + 45;
  TVM_GETITEMW = TV_FIRST + 62;
  STM_GETICON = $0171;
  BM_GETSTATE = $00F2;
  TCM_FIRST = $1300;
  TCM_GETITEMRECT = (TCM_FIRST + 10);

  TVGN_FIRSTVISIBLE = $5;
  TVGN_NEXTVISIBLE = $6;

  LVSIL_SMALL = 1;
  LVIR_LABEL = 2;
  TVIF_TEXT = $1;
  TVIF_IMAGE = $2;
  TVIF_STATE = $8;
  TVIF_HANDLE = $10;
  TVIF_CHILDREN = $40;
  TVIS_SELECTED = $2;
  TVIS_EXPANDED = $20;
  TVSIL_NORMAL = 0;
  TVHT_ONITEMICON = $2;
  TVHT_ONITEMLABEL = $4;
  TVHT_ONITEMBUTTON = $10;

  PRF_CHECKVISIBLE = $1;
  PRF_CLIENT = $4;

  GWL_STYLE = (-16);
  GWL_EXSTYLE = (-20);

  SRCCOPY = $CC0020;
  AC_SRC_OVER = $0;
  AC_SRC_ALPHA = $1;
  ULW_ALPHA = $2;

  DTT_GLOWSIZE = $800;
  DTT_COMPOSITED = $2000;
  DTT_TEXTCOLOR = $1;

  BPBF_TOPDOWNDIB = $2;

  BP_PUSHBUTTON = 1;
  BP_RADIOBUTTON = 2;
  BP_CHECKBOX = 3;

  PBS_NORMAL = 1;
  PBS_HOT = 2;
  PBS_PRESSED = 3;
  PBS_DISABLED = 4;
  RBS_UNCHECKEDNORMAL = 1;
  RBS_UNCHECKEDDISABLED = 4;
  CBS_UNCHECKEDNORMAL = 1;
  CBS_UNCHECKEDDISABLED = 4;
  CBRO_NORMAL = 1;
  CBRO_HOT = 2;
  CBRO_PRESSED = 3;
  CBRO_DISABLED = 4;
  CBXSR_NORMAL = 1;
	CBXSR_HOT = 2;
	CBXSR_PRESSED = 3;
	CBXSR_DISABLED = 4;
  EPSN_HOT = 2;
  EPSN_FOCUSED = 3;
  EPSH_HOT = 2;
  EPSH_FOCUSED = 3;
  EPSV_HOT = 2;
  EPSV_FOCUSED = 3;
  EPSHV_HOT = 2;
  EPSHV_FOCUSED = 3;
  GLPS_CLOSED = 1;
  GLPS_OPENEDED = 2;
  HGLPS_CLOSED = 1;
  HGLPS_OPENEDED = 2;
  TREIS_NORMAL = 1;
  TREIS_DISABLED = 4;
  BST_PUSHED = $4;
  BST_HOT = $0200;

  BS_PUSHBUTTON = $0;
  BS_DEFPUSHBUTTON = $1;
  BS_CHECKBOX = $2;
  BS_AUTOCHECKBOX = $3;
  BS_RADIOBUTTON = $4;
  BS_3STATE = $5;
  BS_AUTO3STATE = $6;
  BS_AUTORADIOBUTTON = $9;
  CP_READONLY = $5;
  CP_DROPDOWNBUTTONRIGHT = $6;
  EP_EDITBORDER_NOSCROLL = $6;
  EP_EDITBORDER_HSCROLL = $7;
  EP_EDITBORDER_VSCROLL = $8;
  EP_EDITBORDER_HVSCROLL = $9;
  TVP_TREEITEM = 1;
  TVP_GLYPH = 2;
  TVP_HOTGLYPH = 4;

  TS_DRAW = 2;
  RGN_OR = 2;
  RGN_DIFF = 4;
  NULLREGION  = 1;
  GA_ROOT = 2;
  OBJ_BRUSH = 2;
  OBJ_BITMAP = 7;

  SM_CXSCREEN = 0;
  SM_CYSCREEN = 1;

  DT_SINGLELINE = $20;
  DT_VCENTER = $4;
  DT_LEFT = $0;
  DT_CENTER = $1;
  DT_RIGHT = $2;
  DT_WORD_ELLIPSIS = $40000;
  DT_END_ELLIPSIS = $8000;
  DT_WORDBREAK = $10;
  DT_CALCRECT = $400;

  WS_HSCROLL = $00100000;
  WS_VSCROLL = $00200000;
  WS_CLIPSIBLINGS = $04000000;
  WS_DISABLED = $08000000;
  WS_VISIBLE = $10000000;
  WS_CHILDWINDOW = $40000000;
  WS_EX_CLIENTEDGE= $0200;
  WS_EX_LAYERED = $00080000;
  WS_EX_COMPOSITED = $02000000;
  ES_MULTILINE = $4;
  SS_RIGHT = $2;
  SS_ICON = $3;

  EM_LINEINDEX = $BB;
  EM_LINEFROMCHAR = $C9;
  EM_GETRECT = $B2;
  EM_POSFROMCHAR = $D6;

  COLOR_BACKGROUND = 1;
  COLOR_WINDOW = 5;
  COLOR_CAPTIONTEXT = 9;
  COLOR_HIGHLIGHT = 13;
  COLOR_HIGHLIGHTTEXT = 14;
  COLOR_BTNFACE = 15;
  COLOR_INACTIVECAPTIONTEXT = 19;

  NULL_BRUSH = 5;
  TRANSPARENT = 1;

  OBJID_HSCROLL = $FFFFFFFA;
  OBJID_VSCROLL = $FFFFFFFB;
  STATE_SYSTEM_UNAVAILABLE = $1;
  SB_HORZ = $0;
  SB_VERT = $1;
  SIF_RANGE = $1;
  SIF_PAGE = $2;
  SIF_POS = $4;

  MAX_PATH = 260;
  SHGFI_ICON = $100;
  SHGFI_SMALLICON = $1;
  SHGFI_DISPLAYNAME = $0200;
  SHGFI_TYPENAME = $0400;
  CSIDL_PROGRAMS = $0002;
  CSIDL_STARTMENU = $000B;
  DRIVE_NO_ROOT_DIR = 1;
  DRIVE_REMOVABLE = 2;
  DRIVE_FIXED = 3;
  LVS_EX_FULLROWSELECT = $20;
  LVSCW_AUTOSIZE = -1;
  LVSCW_AUTOSIZE_USEHEADER = -2;

  RT_RCDATA = 10;
  RT_ICON = 3;
  IMAGE_ICON = 1;
  OIC_ERROR = 32513;
  LR_SHARED = $8000;
  DI_NORMAL = $3;
  ILC_COLOR32 = $20;

  TH32CS_SNAPPROCESS = $2;
  INVALID_HANDLE_VALUE = (-1);
  PROCESS_TERMINATE = $1;
  PROCESS_CREATE_THREAD = $2;
  PROCESS_DUP_HANDLE = $0040;
  PROCESS_QUERY_INFORMATION = $0400;
  PROCESS_VM_READ = $0010;
  SYNCHRONIZE = $00100000;

  TOKEN_QUERY = $8;
  TOKEN_ADJUST_PRIVILEGES = $0020;
  SE_PRIVILEGE_ENABLED = $2;

  SystemHandleInformation = 16;
  ObjectNameInformation = 1;
  ObjectTypeInformation = 2;

  HEAP_ZERO_MEMORY = $8;
  DUPLICATE_SAME_ACCESS = $2;
  FILE_TYPE_DISK = $1;

  TA_FAILED = 0;
  TA_SUCCESS_CLEAN = 1;
  TA_SUCCESS_KILL = 2;

  WAIT_OBJECT_0 = $0;
  WAIT_TIMEOUT = $102;
  WAIT_FAILED = $FFFFFFFF;
  INFINITE = -1;

  BM_CLICK = $00F5;
  VK_ESCAPE = $1B;
  TME_HOVER = $1;
  TME_LEAVE = $2;

  KEY_READ = $00020019;
  KEY_ALL_ACCESS = $000F003F;
  KEY_WOW64_32KEY = $0200;
  KEY_WOW64_64KEY = $0100;
  REG_OPTION_NON_VOLATILE = $0;
  REG_OPENED_EXISTING_KEY = $0002;

  ERROR_SUCCESS = $0;
  NT_SUCCESS = $0;
  FILE_CREATE_PIPE_INSTANCE = $0004;
  FILE_READ_EA = $0008;
  FILE_EXECUTE = $0020;
  PAGE_READONLY = $0002;

  SCS_32BIT_BINARY = 0;
  SCS_64BIT_BINARY = 6;

  FO_MOVE = $0001;
  FOF_NOCONFIRMMKDIR = $0200;

  LOAD_LIBRARY_AS_DATAFILE = $0002;
  LOAD_LIBRARY_AS_IMAGE_RESOURCE = $0020;

  SMTO_BLOCK = $0001;
  SMTO_ABORTIFHUNG = $0002;

  SWP_NOZORDER = $0004;
  SWP_NOACTIVATE = $0010;

  WH_CBT = 5;
  HCBT_CREATEWND = 3;

  WC_BUTTON = 'Button';
  WC_STATIC = 'Static';
  WC_DIALOG = '#32770';

  ImageFormatBMP = '{B96B3CAB-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatPNG = '{B96B3CAF-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatJPEG = '{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatGIF = '{B96B3CB0-0728-11D3-9D7B-0000F81EF32E}';
  ImageFormatTIFF = '{B96B3CB1-0728-11D3-9D7B-0000F81EF32E}';
  FrameDimensionPage = '{7462DC86-6180-4C7E-8E3F-EE7333A7A483}';
  FrameDimensionTime = '{6AEDBD6D-3FB5-418A-83A6-7F45229DC872}';
  PropertyTagFrameDelay = $5100;
  PixelFormat32bppPARGB = $000E200B;
  Rotate180FlipX = 6;

type
  PAINTSTRUCT = record
    hdc: Longint;
    fErase: BOOL;
    rcPaint: TRect;
    fRestore: BOOL;
    fIncUpdate: BOOL;
    rgbReserved: array [0..31] of Byte;
  end;

  MARGINS = record
    cxLeftWidth: Integer;
    cxRightWidth: Integer;
    cyTopHeight: Integer;
    cyBottomHeight: Integer;
  end;

  DTTOPTS = record
    dwSize: DWORD;
    dwFlags: DWORD;
    crText: DWORD;
    crBorder: DWORD;
    crShadow: DWORD;
    iTextShadowType: Integer;
    ptShadowOffset: TPoint;
    iBorderSize: Integer;
    iFontPropId: Integer;
    iColorPropId: Integer;
    iStateId: Integer;
    fApplyOverlay: BOOL;
    iGlowSize: Integer;
    pfnDrawTextCallback: Longint;
    lParam: Longint;
  end;

  BITMAPFILEHEADER = record
    bfType: WORD;
    bfSize: DWORD;
    bfReserved1: WORD;
    bfReserved2: WORD;
    bfOffBits: DWORD;
  end;

  BITMAPINFOHEADER = record
    biSize: DWORD;
    biWidth: Longint;
    biHeight: Longint;
    biPlanes: WORD;
    biBitCount: WORD;
    biCompression: DWORD;
    biSizeImage: DWORD;
    biXPelsPerMeter: Longint;
    biYPelsPerMeter: Longint;
    biClrUsed: DWORD;
    biClrImportant: DWORD;
  end;

  BITMAPINFO = record
    bmiHeader: BITMAPINFOHEADER;
    bmiColors: array of DWORD;
  end;

  BLENDFUNCTION = record
    BlendOp: Byte;
    BlendFlags: Byte;
    SourceConstantAlpha: Byte;
    AlphaFormat: Byte;
  end;

  BP_PAINTPARAMS = record
    cbSize: DWORD;
    dwFlags: DWORD;
    prcExclude: Longint;
    pBlendFunction: Longint;
  end;

  SCROLLBARINFO = record
    cbSize: DWORD;
    rcScrollBar: TRect;
    dxyLineButton: Integer;
    xyThumbTop: Integer;
    xyThumbBottom: Integer;
    reserved: Integer;
    rgstate: array [0..5] of DWORD;
  end;

  SCROLLINFO = record
    cbSize: UINT;
    fMask: UINT;
    nMin: Integer;
    nMax: Integer;
    nPage: UINT;
    nPos: Integer;
    nTrackPos: Integer;
  end;

  ULARGE_INTEGER = record
    LowPart: Longint;
    HighPart: DWORD;
  end;

  SHFILEINFO = record
    hIcon: HICON;
    iIcon: Integer;
    dwAttributes: DWORD;
    szDisplayName: array [0..259] of Char;
    szTypeName: array [0..79] of Char;
  end;

  COMBOBOXINFO = record
    cbSize: DWORD;
    rcItem: TRect;
    rcButton: TRect;
    stateButton: DWORD;
    hwndCombo: HWND;
    hwndItem: HWND;
    hwndList: HWND;
  end;

  HD_HITTESTINFO = record
    pt: TPoint;
    flags: UINT;
    iItem: Integer;
  end;

  TVITEM = record
    mask: UINT;
    hItem: THandle;
    state: UINT;
    stateMask: UINT;
    pszText: Longint;
    cchTextMax: Integer;
    iImage: Integer;
    iSelectedImage: Integer;
    cChildren: Integer;
    lParam: Longint;
  end;

  TVHITTESTINFO = record
    pt: TPoint;
    flags: UINT;
    hItem: THandle;
  end;

  TPROCESSENTRY32 = record
    dwSize, cntUsage, th32ProcessID: DWORD;
    th32DefaultHeapID: Longint;
    th32ModuleID, cntThreads, th32ParentProcessID: DWORD;
    pcPriClassBase: Longint;
    dwFlags: DWORD;
    szExeFile: array [0..MAX_PATH - 1] of Char;
  end;

  LUID = record
    LowPart: DWORD;
    HighPart: Longint;
  end;

  LUID_AND_ATTRIBUTES = record
    Luid: LUID;
    Attributes: DWORD;
  end;

  TOKEN_PRIVILEGES = record
    PrivilegeCount: DWORD;
    Privileges: array [0..0] of LUID_AND_ATTRIBUTES;
  end;

  SYSTEM_HANDLE_TABLE_ENTRY_INFO = record
    UniqueProcessId: WORD;
    CreatorBackTraceIndex: WORD;
    ObjectTypeIndex: Byte;
    HandleAttributes: Byte;
    HandleValue: WORD;
    Object: Longint;
    GrantedAccess: Longint;
  end;

  SYSTEM_HANDLE_INFORMATION = record
    NumberOfHandles: Longint;
    Handles: SYSTEM_HANDLE_TABLE_ENTRY_INFO;
  end;

  PROCESS_BASIC_INFORMATION = record
    ExitStatus: Longint;
    PebBaseAddress: Longint;
    AffinityMask: DWORD;
    BasePriority: Longint;
    UniqueProcessId: THandle;
    InheritedFromUniqueProcessId: THandle;
  end;

  UNICODE_STRING = record
    Length: WORD;
    MaximumLength: WORD;
    Buffer: Longint;
  end;

  RTL_USER_PROCESS_PARAMETERS = record
    Reserved1: array [0..15] of Byte;
    Reserved2: array [0..9] of Longint;
    ImagePathName: UNICODE_STRING;
    CommandLine: UNICODE_STRING;
  end;

  SHFILEOPSTRUCT = record
    hwnd: HWND;
    wFunc: UINT;
    pFrom: string;
    pTo: string;
    fFlags: Longint;
    fAnyOperationsAborted: BOOL;
    hNameMappings: Longint;
    lpszProgressTitle: string;
  end;

  TRACKMOUSEEVENT = record
    cbSize: DWORD;
    dwFlags: DWORD;
    hwndTrack: HWND;
    dwHoverTime: DWORD;
  end;

  GDIPLUSSTARTUPINPUT = record
    GdiplusVersion: DWORD;
    DebugEventProc: Longint;
    SuppressBackgroundThread: BOOL;
    SuppressExternalCodecs: BOOL;
  end;

  CLSID = record
    Data1: Longint;
    Data2: Integer;
    Data3: Integer;
    Data4: array [0..7] of Byte;
  end;

  PROPERTYITEM = record
    uId: UINT;
    uLength: UINT;
    dwType: DWORD;
    lpValue: Longint;
  end;

  TIMERPARAM = record     // user defined
    bmp: TBitmap;
    bf: BLENDFUNCTION;
    dwStart: DWORD;
    dwFadeIn: DWORD;
    dwNormal: DWORD;
    dwFadeOut: DWORD;
  end;

  ANITIMERPARAM = record     // user defined
    ABitmapImage: TBitmapImage;
    lpImage: Longint;
    hbmFrames: array of TBitmap;
    uFrameIndex: UINT;
    uDelay: array of UINT;
    uStart: UINT;
  end;

  TYPEHELPER = record        // user defined
    szInternalName: string;
    szDescription: string;
  end;

  COMPHELPER = record        // user defined
    szInternalName: string;
    szDescription: string;
  end;

  TASKHELPER = record        // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
  end;

  STYLEHELPER = record        // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
    szPreviewBitmap: string;
    szSelectedBitmap: string;
    szUnselectedBitmap: string;
  end;

  SETTINGHELPER = record      // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
  end;

  ADDSETTINGHELPER = record   // user defined
    szInternalName: string;
    szName: string;
    szDescription: string;
    szInternalValues: string;
    szInternalDefault: string;
  end;

// Window Class Functions
function GetClassName(hWnd: HWND; lpClassName: string; nMaxCount: Integer): Integer; external 'GetClassName{#A}@user32.dll stdcall';
function GetWindowLong(hWnd: HWND; nIndex: Integer): Longint; external 'GetWindowLong{#A}@user32.dll stdcall';
function SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: Longint): Longint; external 'SetWindowLong{#A}@user32.dll stdcall';

// Shell Functions
function SetWindowSubclass(hWnd: HWND; pfnSubclass: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): BOOL; external 'SetWindowSubclass@comctl32.dll stdcall';
function RemoveWindowSubclass(hWnd: HWND; pfnSubclass: Longint; uIdSubclass: UINT_PTR): BOOL; external 'RemoveWindowSubclass@comctl32.dll stdcall';
function DefSubclassProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint): Longint; external 'DefSubclassProc@comctl32.dll stdcall';

// Window Functions
function CreateWindowEx(dwExStyle: DWORD; lpClassName, lpWindowName: string; dwStyle: DWORD; x, y, nWidth, nHeight: Integer; hWndParent: HWND; hMenu: HMENU; hInstance, lpParam: Longint): HWND; external 'CreateWindowEx{#A}@user32.dll stdcall';
function DestroyWindow(hWnd: HWND): BOOL; external 'DestroyWindow@user32.dll stdcall';
function EnumWindows(lpEnumFunc, lParam: Longint): BOOL; external 'EnumWindows@user32.dll stdcall';
function FindWindowEx(hwndParent, hwndChildAfter: HWND; lpszClass, lpszWindow: string): HWND; external 'FindWindowEx{#A}@user32.dll stdcall';
function GetAncestor(hwnd: HWND; gaFlags: UINT): HWND; external 'GetAncestor@user32.dll stdcall';
function GetClientRect(hWnd: HWND; var lpRect: TRect): BOOL; external 'GetClientRect@user32.dll stdcall';
function GetSysColor(nIndex: Integer): DWORD; external 'GetSysColor@user32.dll stdcall';
function SetWindowPos(hWnd, hWndInsertAfter: HWND; X, Y, cx, cy: Integer; uFlags: UINT): BOOL; external 'SetWindowPos@user32.dll stdcall';
function GetWindowRect(hWnd: HWND; var lpRect: TRect): BOOL; external 'GetWindowRect@user32.dll stdcall';
function GetWindowText(hWnd: HWND; lpString: string; nMaxCount: Integer): Integer; external 'GetWindowText{#A}@user32.dll stdcall';
function GetWindowTextLength(hWnd: HWND): Integer; external 'GetWindowTextLength{#A}@user32.dll stdcall';
function GetWindowThreadProcessId(hWnd: HWND; var lpdwProcessId: DWORD): DWORD; external 'GetWindowThreadProcessId@user32.dll stdcall';
function UpdateLayeredWindow(hwnd: HWND; hdcDst: Longint; pptDst, psize: TPoint; hdcSrc: Longint; pptSrc: TPoint; crKey: DWORD; pblend: BLENDFUNCTION; dwFlags: DWORD): BOOL; external 'UpdateLayeredWindow@user32.dll stdcall delayload';

// Window Property Functions
function GetProp(hWnd: HWND; lpString: string): THandle; external 'GetProp{#A}@user32.dll stdcall';
function RemoveProp(hWnd: HWND; lpString: string): THandle; external 'RemoveProp{#A}@user32.dll stdcall';
function SetProp(hWnd: HWND; lpString: string; hData: THandle): BOOL; external 'SetProp{#A}@user32.dll stdcall';

// Message Functions
function SendMessageRECT(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: TRect): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageHDHTI(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: HD_HITTESTINFO): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageTVITEM(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: TVITEM): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageTVHTI(hWnd: HWND; Msg: UINT; wParam: Longint; var lParam: TVHITTESTINFO): Longint; external 'SendMessage{#A}@user32.dll stdcall';
function SendMessageTimeout(hWnd: HWND; Msg: UINT; wParam, lParam: Longint; fuFlags, uTimeout: UINT; var lpdwResult: Longint): Longint; external 'SendMessageTimeout{#A}@user32.dll stdcall';

// Coordinate Space and Transformation Functions
function MapWindowPointsRECT(hWndFrom, hWndTo: HWND; var lpPoints: TRect; cPoints: UINT): Integer; external 'MapWindowPoints@user32.dll stdcall';
function MapWindowPointsPOINT(hWndFrom, hWndTo: HWND; var lpPoints: TPoint; cPoints: UINT): Integer; external 'MapWindowPoints@user32.dll stdcall';
function SetViewportOrgEx(hdc: THandle; X, Y: Integer; var lpPoint: TPoint): BOOL; external 'SetViewportOrgEx@gdi32.dll stdcall';

// Device Context Functions
function CreateCompatibleDC(hdc: THandle): THandle; external 'CreateCompatibleDC@gdi32.dll stdcall';
function DeleteDC(hdc: THandle): BOOL; external 'DeleteDC@gdi32.dll stdcall';
function DeleteObject(hObject: Longint): BOOL; external 'DeleteObject@gdi32.dll stdcall';
function GetCurrentObject(hdc: Longint; uObjectType: UINT): Longint; external 'GetCurrentObject@gdi32.dll stdcall';
function GetDC(hWnd: HWND): Longint; external 'GetDC@User32.dll stdcall';
function GetStockObject(fnObject: Integer): Longint; external 'GetStockObject@gdi32.dll stdcall';
function ReleaseDC(hWnd: HWND; hDC: Longint): Integer; external 'ReleaseDC@user32.dll stdcall';
function SelectObject(hdc: Longint; hgdiobj: Longint): Longint; external 'SelectObject@gdi32.dll stdcall';

// Painting and Drawing Functions
function BeginPaint(hWnd: HWND; var lpPaint: PAINTSTRUCT): Longint; external 'BeginPaint@user32.dll stdcall';
function EndPaint(hWnd: HWND; const lpPaint: PAINTSTRUCT): Boolean; external 'EndPaint@user32.dll stdcall';
function GetUpdateRect(hWnd: HWND; var lpRect: TRect; bErase: BOOL): BOOL; external 'GetUpdateRect@user32.dll stdcall';
function GetWindowDC(hWnd: HWND): Longint; external 'GetWindowDC@user32.dll stdcall';
function InvalidateRect(hWnd: HWND; lpRect: TRect; bErase: Boolean): BOOL; external 'InvalidateRect@user32.dll stdcall';
function SetBkColor(hdc: THandle; crColor: DWORD): DWORD; external 'SetBkColor@gdi32.dll stdcall';
function SetBkMode(hdc: THandle; iBkMode: Integer): Integer; external 'SetBkMode@gdi32.dll stdcall';

// Bitmap Functions
function CreateCompatibleBitmap(hdc: THandle; nWidth, nHeight: Integer): HBITMAP; external 'CreateCompatibleBitmap@gdi32.dll stdcall';
function BitBlt(hdcDest: THandle; nXDest, nYDest, nWidth, nHeight: Integer; hdcSrc: THandle; nXSrc, nYSrc: Integer; dwRop: DWORD): BOOL; external 'BitBlt@gdi32.dll stdcall';
function GdiAlphaBlend(hdcDest: Longint; xoriginDest, yoriginDest, wDest, hDest: Integer; hdcSrc: Longint; xoriginSrc, yoriginSrc, wSrc, hSrc: Integer; ftn: Longint): BOOL; external 'GdiAlphaBlend@gdi32.dll stdcall';
function GetDIBits(hdc: THandle; hbmp: HBITMAP; uStartScan, cScanLines: UINT; var lpvBits: DWORD; var lpbi: BITMAPINFO; uUsage: UINT): Integer; external 'GetDIBits@gdi32.dll stdcall';

// Rectangle Functions
function InflateRect(var lprc: TRect; dx, dy: Integer): BOOL; external 'InflateRect@user32.dll stdcall';
function IsRectEmpty(const lprc: TRect): BOOL; external 'IsRectEmpty@user32.dll stdcall';
function SetRect(var lprc: TRect; xLeft, yTop, xRight, yBottom: Integer): BOOL; external 'SetRect@user32.dll stdcall';
function OffsetRect(var lprc: TRect; dx, dy: Integer): BOOL; external 'OffsetRect@user32.dll stdcall';

// Region Functions
function CombineRgn(hrgnDest, hrgnSrc1, hrgnSrc2: Longint; fnCombineMode: Integer): Integer; external 'CombineRgn@gdi32.dll stdcall';
function CreateRectRgn(nLeftRect, nTopRect, nRightRect, nBottomRect: Integer): Longint; external 'CreateRectRgn@gdi32.dll stdcall';
function CreateRectRgnIndirect(const lprc: TRect): Longint; external 'CreateRectRgnIndirect@gdi32.dll stdcall';
function FillRgn(hdc, hrgn, hbr: THandle): BOOL; external 'FillRgn@gdi32.dll stdcall';
function OffsetRgn(hrgn: THandle; nXOffset, nYOffset: Integer): Integer; external 'OffsetRgn@gdi32.dll stdcall';

// Brush Functions
function GetSysColorBrush(nIndex: Integer): Longint; external 'GetSysColorBrush@user32.dll stdcall';
function CreatePatternBrush(hbmp: HBITMAP): THandle; external 'CreatePatternBrush@gdi32.dll stdcall';
function CreateSolidBrush(crColor: DWORD): THandle; external 'CreateSolidBrush@gdi32.dll stdcall';

// Font and Text Functions
function DrawText(hDC: Longint; lpchText: string; nCount: Integer; var lpRect: TRect; uFormat: UINT): Integer; external 'DrawText{#A}@user32.dll stdcall';

// Clipping Functions
function ExcludeClipRect(hdc: Longint; nLeftRect, nTopRect, nRightRect, nBottomRect: Integer): Integer; external 'ExcludeClipRect@gdi32.dll stdcall';
function GetClipRgn(hdc, hrgn: Longint): Integer; external 'GetClipRgn@gdi32.dll stdcall';
function SelectClipRgn(hdc, hrgn: Longint): Integer; external 'SelectClipRgn@gdi32.dll stdcall';

// Filled Shape Functions
function FillRect(hDC: Longint; const lprc: TRect; hbr: Longint): Integer; external 'FillRect@user32.dll stdcall';

// GDI Print API Functions
function PrintWindow(hwnd: HWND; hdcBlt: Longint; nFlags: UINT): BOOL; external 'PrintWindow@user32.dll stdcall';

// Visual Styles Functions
function BeginBufferedPaint(hdcTarget: Longint; const prcTarget: TRect; dwFormat: Longint; pPaintParams: Longint; var phdc: Longint): Longint; external 'BeginBufferedPaint@uxtheme.dll stdcall delayload';
function BufferedPaintClear(hBufferedPaint: Longint; const prc: TRect): Longint; external 'BufferedPaintClear@uxtheme.dll stdcall delayload';
function BufferedPaintInit(): Longint; external 'BufferedPaintInit@uxtheme.dll stdcall delayload';
function BufferedPaintSetAlpha(hBufferedPaint: Longint; const prc: TRect; alpha: Byte): Longint; external 'BufferedPaintSetAlpha@uxtheme.dll stdcall delayload';
function BufferedPaintUnInit(): Longint; external 'BufferedPaintUnInit@uxtheme.dll stdcall delayload';
function CloseThemeData(hTheme: THandle): Longint; external 'CloseThemeData@uxtheme.dll stdcall';
function DrawThemeBackground(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; pRect: TRect; pClipRect: Longint): Longint; external 'DrawThemeBackground@uxtheme.dll stdcall';
function DrawThemeTextEx(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; pszText: string; iCharCount: Integer; dwFlags: DWORD; var pRect: TRect; const pOptions: DTTOPTS): Longint; external 'DrawThemeTextEx@uxtheme.dll stdcall delayload';
function EndBufferedPaint(hBufferedPaint: Longint; fUpdateTarget: BOOL): Longint; external 'EndBufferedPaint@uxtheme.dll stdcall delayload';
function GetThemePartSize(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; prc, eSize: Longint; var psz: TPoint): Longint; external 'GetThemePartSize@uxtheme.dll stdcall delayload';
function GetThemeTextExtent(hTheme: THandle; hdc: Longint; iPartId, iStateId: Integer; pszText: string; iCharCount: Integer; dwTextFlags: DWORD; pBoundingRect: Longint; var pExtentRect: TRect): Longint; external 'GetThemeTextExtent@uxtheme.dll stdcall delayload';
function GetWindowTheme(hWnd: HWND): THandle; external 'GetWindowTheme@uxtheme.dll stdcall';
function OpenThemeDataEx(hwnd: HWND; pszClassList: string; dwFlags: DWORD): THandle; external 'OpenThemeDataEx@uxtheme.dll stdcall delayload';
function SetWindowTheme(hwnd: HWND; pszSubAppName, pszSubIdList: string): Longint; external 'SetWindowTheme@uxtheme.dll stdcall';

// DWM Functions
function DwmExtendFrameIntoClientArea(hWnd: HWND; const pMarInset: MARGINS): Longint; external 'DwmExtendFrameIntoClientArea@dwmapi.dll stdcall delayload';
function DwmIsCompositionEnabled(var pfEnabled: BOOL): Longint; external 'DwmIsCompositionEnabled@dwmapi.dll stdcall delayload';

// Unicode and Character Set Functions
function MultiByteToWideChar(CodePage: UINT; dwFlags: DWORD; lpMultiByteStr: string; cbMultiByte: Integer; lpWideCharStr: string; cchWideChar: Integer): Integer; external 'MultiByteToWideChar@kernel32.dll stdcall';
function WideCharToMultiByte(CodePage: UINT; dwFlags: DWORD; lpWideCharStr: Longint; cchWideChar: Integer; lpMultiByteStr: string; cbMultiByte, lpDefaultChar: Integer; lpUsedDefaultChar: Longint): Integer; external 'WideCharToMultiByte@kernel32.dll stdcall';

// ComboBox Control Functions
function GetComboBoxInfo(hwndCombo: HWND; var pcbi: COMBOBOXINFO): BOOL; external 'GetComboBoxInfo@user32.dll stdcall';

// Scroll Bar Functions
function GetScrollBarInfo(hwnd: HWND; idObject: Longint; var psbi: SCROLLBARINFO): BOOL; external 'GetScrollBarInfo@user32.dll stdcall';
function GetScrollInfo(hwnd: HWND; fnBar: Integer; var lpsi: SCROLLINFO): BOOL; external 'GetScrollInfo@user32.dll stdcall';

// Keyboard Input Functions
function GetFocus: HWND; external 'GetFocus@user32.dll stdcall';

// Mouse Input Functions
function _TrackMouseEvent(var lpEventTrack: TRACKMOUSEEVENT): BOOL; external '_TrackMouseEvent@comctl32.dll stdcall';
function SetCapture(hWnd: HWND): HWND; external 'SetCapture@user32.dll stdcall';

// Cursor Functions
function GetCursorPos(var lpPoint: TPoint): BOOL; external 'GetCursorPos@user32.dll stdcall';

// Image List Functions
function ImageList_Create(cx, cy: Integer; flags: UINT; cInitial, cGrow: Integer): THandle; external 'ImageList_Create@comctl32.dll stdcall';
function ImageList_DrawEx(himl: THandle; i: Integer; hdcDst: Longint; x, y, dx, dy: Integer; rgbBk, rgbFg: DWORD; fStyle: UINT): BOOL; external 'ImageList_DrawEx@comctl32.dll stdcall';
function ImageList_GetIconSize(himl: THandle; var cx, cy: Integer): BOOL; external 'ImageList_GetIconSize@comctl32.dll stdcall';
function ImageList_ReplaceIcon(himl: THandle; i: Integer; hicon: HICON): Integer; external 'ImageList_ReplaceIcon@comctl32.dll stdcall';

// Icon Functions
function CreateIconFromResourceEx(pbIconBits: Longint; cbIconBits: DWORD; fIcon: BOOL; dwVersion: DWORD; cxDesired, cyDesired: Integer; uFlags: UINT): HICON; external 'CreateIconFromResourceEx@user32.dll stdcall';
function DestroyIcon(hIcon: HICON): BOOL; external 'DestroyIcon@user32.dll stdcall';
function DrawIconEx(hdc: Longint; xLeft, yTop: Integer; hIcon: HICON; cxWidth, cyWidth: Integer; istepIfAniCur: UINT; hbrFlickerFreeDraw: Longint; diFlags: UINT): BOOL; external 'DrawIconEx@user32.dll stdcall';
function ExtractIcon(hInst: Longint; lpszExeFileName: string; nIconIndex: UINT): HICON; external 'ExtractIcon{#A}@shell32.dll stdcall';

// Volume Management Functions
function GetLogicalDrives: DWORD; external 'GetLogicalDrives@kernel32.dll stdcall';
function GetDriveType(lpRootPathName: string): UINT; external 'GetDriveType{#A}@kernel32.dll stdcall';
function GetVolumeInformation(lpRootPathName: string; lpVolumeNameBuffer: Longint; nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags: DWORD; lpFileSystemNameBuffer: string; nFileSystemNameSize: DWORD): BOOL; external 'GetVolumeInformation{#A}@kernel32.dll stdcall';
function QueryDosDevice(lpDeviceName, lpTargetPath: string; ucchMax: DWORD): DWORD; external 'QueryDosDevice{#A}@kernel32.dll stdcall';

// Disk Management Functions
function GetDiskFreeSpaceEx(lpDirectoryName: string; var lpFreeBytesAvailableToCaller, lpTotalNumberOfBytes, lpTotalNumberOfFreeBytes: ULARGE_INTEGER): BOOL; external 'GetDiskFreeSpaceEx{#A}@kernel32.dll stdcall';

// Shell Functions
function SHFileOperation(var lpFileOp: SHFILEOPSTRUCT): Integer; external 'SHFileOperation{#A}@shell32.dll stdcall';
function SHGetFileInfo(pszPath: string; dwFileAttributes: DWORD; var psfi: SHFILEINFO; cbFileInfo, uFlags: UINT): DWORD; external 'SHGetFileInfo{#A}@shell32.dll stdcall';
function SHGetNewLinkInfo(pszLinkTo, pszDir: string; pszName: string; var pfMustCopy: Longint; uFlags: UINT): BOOL; external 'SHGetNewLinkInfo{#A}@shell32.dll stdcall';

// Shell Lightweight Utility Functions
function StrFormatByteSize64(qdw: Currency; pszBuf: AnsiString; cchBuf: UINT): Longint; external 'StrFormatByteSize64A@shlwapi.dll stdcall';

// Shell Registry Handling Functions
function SHCopyKey(hkeySrc: THandle; pszSrcSubKey: string; hkeyDest: THandle; fReserved: DWORD): Longint; external 'SHCopyKey{#A}@shlwapi.dll stdcall';
function SHRegGetPath(const hkey: Integer; pszSubkey, pszValue: string; var pszPath: Char; dwFlags: DWORD): Longint; external 'SHRegGetPath{#A}@shlwapi.dll stdcall';

// Dynamic-Link Library Functions
function LoadLibraryEx(lpFileName: string; hFile: THandle; dwFlags: DWORD): THandle; external 'LoadLibraryEx{#A}@kernel32.dll stdcall';
function GetModuleHandle(lpModuleName: string): THandle; external 'GetModuleHandle{#A}@kernel32.dll stdcall';
function GetProcAddress(hModule: THandle; lpProcName: AnsiString): Longint; external 'GetProcAddress@kernel32.dll stdcall';

// Resource Functions
function EnumResourceNames(hModule: THandle; lpszType, lpEnumFunc, lParam: Longint): BOOL; external 'EnumResourceNames{#A}@kernel32.dll stdcall';
function LoadResource(hModule, hResInfo: THandle): THandle; external 'LoadResource@kernel32.dll stdcall';
function LockResource(hResData: THandle): Longint; external 'LockResource@kernel32.dll stdcall';
function FindResource(hModule: THandle; lpName: Longint; lpType: Integer): THandle; external 'FindResource{#A}@kernel32.dll stdcall';
function SizeofResource(hModule, hResInfo: THandle): DWORD; external 'SizeofResource@kernel32.dll stdcall';
function LoadImage(hInst: THandle; lpszName: Longint; uType: UINT; cxDesired, cyDesired: Integer; fuLoad: UINT): THandle; external 'LoadImage{#A}@user32.dll stdcall';

// CRT Functions
function memcpy(dest: Longint; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyBFH(var dest: BITMAPFILEHEADER; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyBIH(var dest: BITMAPINFOHEADER; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyDWORD(var dest: DWORD; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyLONG(var dest: Longint; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyPI(var dest: PROPERTYITEM; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpySHTEI(var dest: SYSTEM_HANDLE_TABLE_ENTRY_INFO; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyUS(var dest: UNICODE_STRING; const src: Longint; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';
function memcpyBF(var dest: Longint; const src: BLENDFUNCTION; count: UINT): Longint; external 'memcpy@ntdll.dll cdecl';

// Large Integer Functions
function MulDiv(nNumber, nNumerator, nDenominator: Integer): Integer; external 'MulDiv@kernel32.dll stdcall';

// Tool Help Functions
function CreateToolhelp32Snapshot(dwFlags, th32ProcessID: DWORD): THandle; external 'CreateToolhelp32Snapshot@kernel32.dll stdcall';
#ifdef UNICODE
function Process32First(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32First{#A}@kernel32.dll stdcall';
function Process32Next(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32Next{#A}@kernel32.dll stdcall';
#else
function Process32First(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32First@kernel32.dll stdcall';
function Process32Next(hSnapshot: THandle; var lppe: TPROCESSENTRY32): Boolean; external 'Process32Next@kernel32.dll stdcall';
#endif

// Process and Thread Functions
function CreateRemoteThread(hProcess: THandle; lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags: DWORD; var lpThreadId: DWORD): THandle; external 'CreateRemoteThread@kernel32.dll stdcall';
function GetCurrentProcess: THandle; external 'GetCurrentProcess@kernel32.dll stdcall';
function GetCurrentThreadId: DWORD; external 'GetCurrentThreadId@kernel32.dll stdcall';
function OpenProcess(dwDesiredAccess: DWORD; bInheritHandle: BOOL; dwProcessId: DWORD): THandle; external 'OpenProcess@kernel32.dll stdcall';
function TerminateProcess(hProcess: THandle; uExitCode: UINT): BOOL; external 'TerminateProcess@kernel32.dll stdcall';

// Debugging Functions
function ReadProcessMemoryLONG(hProcess: THandle; lpBaseAddress: Longint; out lpBuffer: Longint; nSize: Longint; out lpNumberOfBytesRead: DWORD): BOOL; external 'ReadProcessMemory@kernel32.dll stdcall';
function ReadProcessMemoryUPP(hProcess: THandle; lpBaseAddress: Longint; out lpBuffer: RTL_USER_PROCESS_PARAMETERS; nSize: Longint; out lpNumberOfBytesRead: DWORD): BOOL; external 'ReadProcessMemory@kernel32.dll stdcall';
function ReadProcessMemoryString(hProcess: THandle; lpBaseAddress: Longint; lpBuffer: string; nSize: Longint; out lpNumberOfBytesRead: DWORD): BOOL; external 'ReadProcessMemory@kernel32.dll stdcall';

// Authorization Functions
function AdjustTokenPrivileges(TokenHandle: THandle; DisableAllPrivileges: BOOL; NewState: TOKEN_PRIVILEGES; BufferLength: DWORD; var PreviousState: TOKEN_PRIVILEGES; var ReturnLength: Longint): BOOL; external 'AdjustTokenPrivileges@advapi32.dll stdcall';
function LookupPrivilegeValue(lpSystemName, lpName: string; var lpLuid: LUID): BOOL; external 'LookupPrivilegeValue{#A}@advapi32.dll stdcall';
function OpenProcessToken(ProcessHandle: THandle; DesiredAccess: DWORD; var TokenHandle: THandle): BOOL; external 'OpenProcessToken@advapi32.dll stdcall';

// Handle and Object Functions
function CloseHandle(hObject: THandle): BOOL; external 'CloseHandle@kernel32.dll stdcall';
function DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle: THandle; var lpTargetHandle: THandle; dwDesiredAccess: DWORD; bInheritHandle: BOOL; dwOptions: DWORD): BOOL; external 'DuplicateHandle@kernel32.dll stdcall';

// PSAPI Functions
function GetProcessImageFileName(hProcess: THandle; lpImageFileName: string; nSize: DWORD): DWORD; external 'GetProcessImageFileName{#A}@psapi.dll stdcall';

// Synchronization Functions
function _CreateMutex(lpMutexAttributes: Longint; bInitialOwner: BOOL; lpName: string): Longint; external 'CreateMutex{#A}@kernel32.dll stdcall';
function ReleaseMutex(hMutex: Longint): BOOL; external 'ReleaseMutex@kernel32.dll stdcall';
function WaitForSingleObject(hHandle: THandle; dwMilliseconds: DWORD): DWORD; external 'WaitForSingleObject@kernel32.dll stdcall';

// System Information Functions
function ExpandEnvironmentStrings(lpSrc: string; lpDst: Longint; nSize: DWORD): DWORD; external 'ExpandEnvironmentStrings{#A}@kernel32.dll stdcall';

// File Management Functions
function GetLongPathName(lpszShortPath, lpszLongPath: string; cchBuffer: DWORD): DWORD; external 'GetLongPathName{#A}@kernel32.dll stdcall';
function GetBinaryType(lpApplicationName: string; out lpBinaryType: DWORD): BOOL; external 'GetBinaryType{#A}@kernel32.dll stdcall';
function GetFileType(hFile: THandle): DWORD; external 'GetFileType@kernel32.dll stdcall';

// Memory Management Functions
function GetProcessHeap: THandle; external 'GetProcessHeap@kernel32.dll stdcall';
function HeapAlloc(hHeap: THandle; dwFlags, dwBytes: DWORD): Longint; external 'HeapAlloc@kernel32.dll stdcall';
function HeapFree(hHeap: THandle; dwFlags: DWORD; lpMem: Longint): BOOL; external 'HeapFree@kernel32.dll stdcall';
function HeapSize(hHeap: THandle; dwFlags: DWORD; lpMem: Longint): DWORD; external 'HeapSize@kernel32.dll stdcall';

// Registry Functions
function RegCreateKeyEx(hKey: THandle; lpSubKey: string; Reserved: DWORD; lpClass: string; dwOptions, samDesired: DWORD; lpSecurityAttributes: Longint; var phkResult: THandle; var lpdwDisposition: Longint): Longint; external 'RegCreateKeyEx{#A}@advapi32.dll stdcall';
function RegOpenKeyEx(hKey: THandle; lpSubKey: string; ulOptions, samDesired: DWORD; var phkResult: THandle): Longint; external 'RegOpenKeyEx{#A}@advapi32.dll stdcall';

// Time Functions
function GetSystemTimeAdjustment(var lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled: DWORD): BOOL; external 'GetSystemTimeAdjustment@kernel32.dll stdcall';
function GetTickCount: DWORD; external 'GetTickCount@kernel32.dll stdcall delayload';

// Timer Functions
function KillTimer(hWnd: HWND; var uIDEvent: TIMERPARAM): BOOL; external 'KillTimer@user32.dll stdcall delayload';
function SetTimer(hWnd: HWND; var nIDEvent: TIMERPARAM; uElapse: UINT; lpTimerFunc: Longint): UINT_PTR; external 'SetTimer@user32.dll stdcall delayload';

// string Functions
function LoadString(hInstance: THandle; uID: SmallInt; lpBuffer: string; nBufferMax: Integer): Integer; external 'LoadString{#A}@user32.dll stdcall';

// Configuration Reference
function GetSystemMetrics(nIndex: Integer): Integer; external 'GetSystemMetrics@user32.dll stdcall';

// System Information Functions
function NtQuerySystemInformation(SystemInformationClass, SystemInformation, SystemInformationLength: Longint; var ReturnLength: DWORD): DWORD; external 'NtQuerySystemInformation@ntdll.dll stdcall';
function NtQueryInformationProcess(ProcessHandle: THandle; ProcessInformationClass: Longint; out ProcessInformation: PROCESS_BASIC_INFORMATION; ProcessInformationLength: Longint; out ReturnLength: DWORD): DWORD; external 'NtQueryInformationProcess@ntdll.dll stdcall';

// NtXxx Routines
function NtQueryObject(Handle: THandle; ObjectInformationClass: DWORD; ObjectInformation: Longint; ObjectInformationLength: DWORD; var ReturnLength: DWORD): DWORD; external 'NtQueryObject@ntdll.dll stdcall';

// Hook Functions
function CallNextHookEx(hhk: THandle; nCode: Integer; wParam, lParam: Longint): Longint; external 'CallNextHookEx@user32.dll stdcall';
function SetWindowsHookEx(idHook: Integer; lpfn, hMod: Longint; dwThreadId: DWORD): THandle; external 'SetWindowsHookEx{#A}@user32.dll stdcall';
function UnhookWindowsHookEx(hhk: THandle): BOOL; external 'UnhookWindowsHookEx@user32.dll stdcall';

// Structured Storage Functions
function CreateStreamOnHGlobal(hGlobal: THandle; fDeleteOnRelease: BOOL; var ppstm: Longint): Longint; external 'CreateStreamOnHGlobal@ole32.dll stdcall';

// COM Fundamentals Functions
function CLSIDFromString(lpsz: string; var pclsid: CLSID): Longint; external 'CLSIDFromString@ole32.dll stdcall';
function StringFromCLSID(rclsid: CLSID; var lplpsz: Longint): Longint; external 'StringFromCLSID@ole32.dll stdcall';

// GDI+ Functions
procedure GdiplusShutdown(lpToken: Longint); external 'GdiplusShutdown@gdiplus.dll stdcall';
function GdiplusStartup(var lpToken: Longint; const gdipInput: GDIPLUSSTARTUPINPUT; gdipOutput: Longint): Longint; external 'GdiplusStartup@gdiplus.dll stdcall';

// GDI+ Image Functions
function GdipDisposeImage(lpImage: Longint): Longint; external 'GdipDisposeImage@gdiplus.dll stdcall';
function GdipGetImageHeight(lpImage: Longint; var lpHeight: UINT): Longint; external 'GdipGetImageHeight@gdiplus.dll stdcall';
function GdipGetImageWidth(lpImage: Longint; var lpWidth: UINT): Integer; external 'GdipGetImageWidth@gdiplus.dll stdcall';
function GdipGetImageRawFormat(lpImage: Longint; var lpFormat: CLSID): Longint; external 'GdipGetImageRawFormat@gdiplus.dll stdcall';
function GdipGetPropertyItem(lpImage: Longint; uPropId, uPropSize: UINT; lppi: Longint): Longint; external 'GdipGetPropertyItem@gdiplus.dll stdcall';
function GdipGetPropertyItemSize(lpImage: Longint; uPropId: UINT; var uSize: UINT): Longint; external 'GdipGetPropertyItemSize@gdiplus.dll stdcall';
function GdipImageGetFrameCount(lpImage: Longint; dimCLSID: CLSID; var lpCount: UINT): Longint; external 'GdipImageGetFrameCount@gdiplus.dll stdcall';
function GdipImageRotateFlip(lpImage: Longint; rfType: Longint): Longint; external 'GdipImageRotateFlip@gdiplus.dll stdcall';
function GdipImageSelectActiveFrame(lpImage: Longint; dimCLSID: CLSID; uFrameIndex: UINT): Longint; external 'GdipImageSelectActiveFrame@gdiplus.dll stdcall';
function GdipLoadImageFromStream(lpStream: Longint; var lpImage: Longint): Longint; external 'GdipLoadImageFromStream@gdiplus.dll stdcall';

// GDI+ Bitmap Functions
function GdipCreateBitmapFromScan0(nWidth, nHeight, nStride, nFormat, lpScan0: Longint; var lpBitmap: Longint): Longint; external 'GdipCreateBitmapFromScan0@gdiplus.dll stdcall';
function GdipCreateHBITMAPFromBitmap(lpBitmap: Longint; var hbmReturn: HBITMAP; crBackground: DWORD): Longint; external 'GdipCreateHBITMAPFromBitmap@gdiplus.dll stdcall';

var
  InstallTypePage, SettingsPage, StylesPage, PreparePage: TInputOptionWizardPage;
  DefaultInstallTypeBitmapImage, PortableInstallTypeBitmapImage, DefaultUninstallTypeBitmapImage, ThumbsBitmapImage, PreviewFormBitmapImage, PreparePageBitmap: TBitmapImage;
  g_DriveHeader: THeaderControl;
  g_DriveListView, g_PrepareListView: TListView;
  PreviewForm: TForm;
  WelcomeMessage, DefaultInstallTypeCaption, PortableInstallTypeCaption, DefaultUninstallTypeCaption, ComponentListInfoLabel, SettingsInfoLabel, StylesInfoLabel, TasksInfoLabel, SetupDone, FinishedMessage, URLLabel: TNewStaticText;
  DefaultInstallType, PortableInstallType, DefaultUninstallType: TNewRadioButton;
  AddSettingsListBox: TListBox;
  PreviewButton, DetailsButton: TNewButton;
  DetailsMemo: TNewMemo;
  StartMenuTreeView: TStartMenuFolderTreeView;
  ComponentsPageDescriptionBevel, SettingsPageDescriptionBevel, PreviewBevel, StylePageDescriptionBevel, SelectTasksPageDescriptionBevel: TBevel;
  SettingsPageControl: TPageControl;
  g_UninstallFilesHelper: TStringList;

  g_TypesHelper: array of TYPEHELPER;
  g_ComponentsHelper: array of COMPHELPER;
  g_TasksHelper: array of TASKHELPER;
  g_StylesHelper: array of STYLEHELPER;
  g_SetHelper: array of SETTINGHELPER;
  g_AddSetHelper: array of ADDSETTINGHELPER;

  PercentTimer: TTimer;
  szProfilesPath, szPreviousSelectedDefaultAppPath, szPreviousSelectedPortableAppPath: string;
  g_AeroControls: array of TControl;
  g_fEnabled, g_bLoadAppOppKey: BOOL;
  g_Border: TBitmap;
  g_pWndProc, g_pStaticWndProc, g_pButtonWndProc, g_pEditWndProc, g_pRichEditWndProc,
  g_pCheckListBoxWndProc, g_pListBoxWndProc, g_pHeaderWndProc, g_pListViewWndProc, g_pTreeViewWndProc,
  g_pComboBoxWndProc, g_pComboLBoxWndProc, g_pPageControlWndProc, g_pTabSheetWndProc, g_pUpDownWndProc: Longint;
#if aero == 1
  g_pCBTProc, g_pDlgProc, g_pStaticDlgProc, g_pButtonDlgProc: Longint;
  g_hDlgHook, g_hVertShowDesktopThemeButton: THandle;
#endif
  g_hMutex,
  g_hThemeHeader, g_hThemeButton, g_hThemeArrowBtnUp, g_hThemeArrowBtnDown, g_hThemeArrowBtnLeft,
  g_hThemeArrowBtnRight, g_hThemeEdit, g_hThemeComboBox, g_hThemeTreeView: THandle;
  g_anitp: ANITIMERPARAM;
  g_pToken: Longint;
  g_GlassRgn: THandle;
#if debug == 1
  g_hDC: THandle;
#endif

///////////////////////////////////////////////////
function StrToWStr(const szString: string): string;
#ifndef UNICODE
var
  iLen: Integer;
#endif
begin
#ifndef UNICODE
  iLen := MultiByteToWideChar(0, 1, szString, -1, '', 0);
  if iLen > 1 then
  begin
    Result := StringOfChar(#0, iLen shl 1);
    MultiByteToWideChar(0, 1, szString, -1, Result, iLen);
  end;
#else
  Result := szString;
#endif
end;

/////////////////////////////////////////////////////////
function CharArrayToString(AChar: array of Char): string;
begin
  Result := '';
  while AChar[Length(Result)] <> #0 do
    Insert(AChar[Length(Result)], Result, Length(Result) + 1);
end;

//////////////////////////////////////////////////////////
function GetClassNameFromHandle(const hWnd: HWND): string;
begin
  Result := StringOfChar(#0, 64);
  GetClassName(hWnd, Result, Length(Result));
  Result := TrimRight(Result);
end;

////////////////////////////////////////////////////////
function GetCaptionFromHandle(const hWnd: HWND): string;
begin
  Result := StringOfChar(#0, GetWindowTextLength(hWnd) + 1);
  GetWindowText(hWnd, Result, Length(Result));
  Result := TrimRight(Result);
end;

////////////////////////////////////////////////////
function GetCLUIFrames(const Param: string): string;
var
  i, n: Integer;
begin
  with TStringList.Create do
  begin
    Sorted := True;
    CommaText := WizardSelectedComponents(False);
    for i := 0 to Count - 1 do
      if Pos(Format(',%s,', [Strings[i]]), ',{#CLUIFrames},') > 0 then
        n := n + 1;
    case Param of
//      'Height12':
//        Result := Format('%d', [4 * (n + (5 - (n mod 5)) mod 5) + 1]);
      'Height12':
        case n of
          1..8: Result := '21';
          9..16: Result := '39';
          17, 18: Result := '57';
          19, 20: Result := '57';
          21..24: Result := '57';
          25: Result := '75';
          26..32: Result := '75';
          33..40: Result := '93';
          41..48: Result := '111';
        end;
      'TBVisile12':
        Result := Format('%d', [integer(n > 8)]);
    end;
    // если параметр функции GetCLUIFrames равен EqualSections, ...
    // то в зависимости от числа протоколов n ...
    // результатом функции будет '1' (от 1 до 5 протоколов)...
    // иначе '0' (6 или 7 протоколов)
    case Param of
      'EqualSections':
        case n of
          1..5: Result := '1';
          6..8: Result := '0';
          9, 10: Result := '1';
          11, 12: Result := '0';
          13, 14: Result := '0';
          15, 16: Result := '0';
          17, 18: Result := '0';
          19, 20: Result := '0';
          21..24: Result := '0';
          25: Result := '0';
          26..48: Result := '0';
        end;
    end;
    case Param of
      'StatusBarProtosPerLine':
        case n of
          1..5: Result := '5';
          6..8: Result := '8';
          9, 10: Result := '5';
          11, 12: Result := '6';
          13, 14: Result := '7';
          15, 16: Result := '8';
          17, 18: Result := '6';
          19, 20: Result := '7';
          21: Result := '7';
          22..24: Result := '8';
          25: Result := '7';
          26..28: Result := '7';
          29..32: Result := '8';
          33..35: Result := '7';
          36..40: Result := '8';
          41, 42: Result := '7';
          43..48: Result := '8';
        end;
    end;
    Free;
  end;
end;

/////////////////////////////////////////////////////////
function EnumerateCSIDLUsers(Param: string): TStringList;
var
  Names: TArrayOfString;
  szRes: string;
  pszPath: array [0..259] of Char;
  i: Integer;
begin
  if (Result = nil) then
    Result := TStringList.Create;
  Result.Sorted := True;
  if not RegGetSubkeyNames(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList', Names) then Exit;
  for i := 0 to GetArrayLength(Names) - 1 do
    if Length(Names[i]) > 8 then
    begin
      szRes := '';
      if SHRegGetPath(HKLM, Format('%s\%s', ['SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList', Names[i]]), 'ProfileImagePath', pszPath[0], 0) <> 0 then Continue;
      while pszPath[Length(szRes)] <> #0 do
          Insert(pszPath[Length(szRes)], szRes, Length(szRes) + 1);
      if not FileExists(Format('%s\NTUSER.DAT', [szRes])) then Continue;
      StringChangeEx(Param, GetUserNameString, ExtractFileName(szRes), True);
      Result.Add(Param);
  end;
end;

////////////////////////////
procedure CreateQLShortcuts;
var
  iUsers: TStringList;
  i: Integer;
begin
  iUsers := EnumerateCSIDLUsers(ExpandConstant('{userappdata}'));
  for i := 0 to iUsers.Count - 1 do
    if (CompareText(ExpandConstant('{userappdata}'), iUsers[i]) <> 0) and DirExists(Format('%s\%s', [iUsers[i], 'Microsoft\Internet Explorer\Quick Launch'])) then
      CreateShellLink(Format('%s\%s.lnk', [iUsers[i], 'Microsoft\Internet Explorer\Quick Launch\{#AppName}']), '', ExpandConstant('{app}\{#AppExeName}'), '', ExpandConstant('{app}'), '', 0, SW_SHOWNORMAL);
  iUsers.Free;
end;

////////////////////////////
procedure DeleteQLShortcuts;
var
  iUsers: TStringList;
  i: Integer;
begin
  iUsers := EnumerateCSIDLUsers(ExpandConstant('{userappdata}'));
  for i := 0 to iUsers.Count - 1 do
    if CompareText(ExpandConstant('{userappdata}'), iUsers[i]) <> 0 then
      DeleteFile(Format('%s\%s.lnk', [iUsers[i], 'Microsoft\Internet Explorer\Quick Launch\{#AppName}']));
  iUsers.Free;
end;

#if splash == 1
/////////////////////////////////////////////////////////////////////////////////////////
procedure SplashTimerProc(hwnd: HWND; uMsg: UINT; var wParam: TIMERPARAM; dwTime: DWORD);
var
  dwCurrentTime: DWORD;
  ptSize, ptSrc, ptDst: TPoint;
begin
  { get coords }
  ptDst.x := (GetSystemMetrics(SM_CXSCREEN) - wParam.bmp.Width) shr 1;
  ptDst.y := (GetSystemMetrics(SM_CYSCREEN) - wParam.bmp.Height) shr 1;
  ptSize.x := wParam.bmp.Width;
  ptSize.y := wParam.bmp.Height;

  { current time }
  dwCurrentTime := dwTime - wParam.dwStart;

  { kill timer }
  if dwCurrentTime > wParam.dwFadeIn + wParam.dwNormal + wParam.dwFadeOut then
  begin
    KillTimer(hwnd, wParam);
    SendMessage(hwnd, WM_CLOSE, 0, 0);
  end;

  { fade in }
  if dwCurrentTime < wParam.dwFadeIn then
  begin
    wParam.bf.SourceConstantAlpha := MulDiv($FF, dwCurrentTime, wParam.dwFadeIn + 1);
    UpdateLayeredWindow(hwnd, 0, ptDst, ptSize, wParam.bmp.Canvas.Handle, ptSrc, 0, wParam.bf, ULW_ALPHA);
  end;

  { normal }
  if (dwCurrentTime > wParam.dwFadeIn) and (dwCurrentTime < wParam.dwFadeIn + wParam.dwNormal) then
  begin
    wParam.bf.SourceConstantAlpha := $FF;
    UpdateLayeredWindow(hwnd, 0, ptDst, ptSize, wParam.bmp.Canvas.Handle, ptSrc, 0, wParam.bf, ULW_ALPHA);
  end;

  { fade out }
  if dwCurrentTime > wParam.dwFadeIn + wParam.dwNormal then
  begin
    wParam.bf.SourceConstantAlpha := $FF - MulDiv($FF, dwCurrentTime - wParam.dwFadeIn - wParam.dwNormal, wParam.dwFadeOut + 1);
    UpdateLayeredWindow(hwnd, 0, ptDst, ptSize, wParam.bmp.Canvas.Handle, ptSrc, 0, wParam.bf, ULW_ALPHA);
  end;
end;

/////////////////////////////////////////////////////
function GetBitmapBitCount(const bmp: TBitmap): WORD;
var
  MemStream: TMemoryStream;
  szBuffer: string;
begin
  Result := -1;
  MemStream := TMemoryStream.Create;
  try
    bmp.SaveToStream(MemStream);
    MemStream.Position := $1C; // biBitCount member of BITMAPINFOHEADER struct offset
    szBuffer := StringOfChar(#0, 1);
    if MemStream.Read(szBuffer, 1) = 1 then
      Result := Ord(szBuffer[1]);
  finally
    MemStream.Free;
  end;
end;

/////////////////////////////////////////////////////////////////
procedure ShowSplash(const dwFadeIn, dwNormal, dwFadeOut: DWORD);
// dwFadeIn..: fade in stage in ms
// dwNormal..: normal stage in ms
// dwFadeOut : fade out stage in ms
var
  lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled: DWORD;
  tp: TIMERPARAM;
begin
  if WizardSilent then Exit;

  { load bitmap }
  tp.bmp := TBitmap.Create;
  TBitmap(tp.bmp).LoadFromResourceName(HInstance, '_IS_SPLASH');

  { get bitmap bit count }
  case GetBitmapBitCount(tp.bmp) of
    -1:
      begin
        tp.bmp.Free;
        Exit;
      end;
    32:
      tp.bf.AlphaFormat := AC_SRC_ALPHA;
  end;

  { create splash form }
  with TForm.Create(nil) do
  begin
    BorderStyle := bsNone;
    FormStyle := fsStayOnTop;
    Position := poScreenCenter;

    { set dimensions }
    Width := tp.bmp.Width;
    Height := tp.bmp.Height;

    { set layered exstyle }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or WS_EX_LAYERED);

    { get minimal timer interval }
    GetSystemTimeAdjustment(lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);

    { fill user defined struct }
    tp.bf.BlendOp := AC_SRC_OVER;
    tp.dwStart := GetTickCount;
    tp.dwFadeIn := dwFadeIn;
    tp.dwNormal := dwNormal;
    tp.dwFadeOut := dwFadeOut;

    { start timer }
    SetTimer(Handle, tp, lpTimeIncrement div 10000, CallbackAddr('SplashTimerProc'));

    { show form }
    ShowModal;

    { cleanup }
    Close;
    tp.bmp.Free;
    Free;
  end;
end;
#endif

/////////////////////////////////////////////////////////////////////////////////
function GetFilesInUse(const szPath: string; const AListView: TListView): string;
var
  dwDrives, dwLength, dwBufferLength, dwHandles, dwObjectTypeLength, dwObjectNameLength, dwFileType: DWORD;
  sht: SYSTEM_HANDLE_TABLE_ENTRY_INFO;
  shi: SYSTEM_HANDLE_INFORMATION;
  szBuffer, szProcess, szFile: string;
  lpBuffer, lpObjectType, lpObjectName: Longint;
  hHeap, hProcess, hDuplicate, hImgList: THandle;
  i, j: Integer;
  us: UNICODE_STRING;
  DrivesList, ProcessNamesList, FileNamesList: TStringList;
  shfi: SHFILEINFO;
begin
  if not DirExists(szPath) then Exit;

  if Assigned(AListView) then
    AListView.Items.Clear;
  ProcessNamesList := TStringList.Create;
  ProcessNamesList.Sorted := True;
  ProcessNamesList.Duplicates := dupIgnore;

  { get drives DOS names }
  DrivesList := TStringList.Create;
  DrivesList.Sorted := True;
  dwDrives := GetLogicalDrives;
  for i := 2 to 25 do if dwDrives and (1 shl i) <> 0 then
  begin
    szBuffer := StringOfChar(#0, MAX_PATH);
    QueryDosDevice(Format('%s:', [Chr(Ord('A') + i)]), szBuffer, Length(szBuffer));
    DrivesList.Add(Format('%s:=%s', [Chr(Ord('A') + i), TrimRight(szBuffer)]));
  end;

  { convert path to DOS name }
  szBuffer := StringOfChar(#0, MAX_PATH);
  QueryDosDevice(ExtractFileDrive(szPath), szBuffer, Length(szBuffer));
  szBuffer := TrimRight(szBuffer);
  StringChangeEx(szPath, ExtractFileDrive(szPath), szBuffer, True);

  { enumerate processes }
  hHeap := GetProcessHeap;
  try
    { mem alloc }
    dwLength := 1024;
    repeat
      if lpBuffer <> 0 then
        HeapFree(hHeap, 0, lpBuffer);
      lpBuffer := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, dwLength);
      if lpBuffer = 0 then Exit;
      dwBufferLength := HeapSize(hHeap, 0, lpBuffer);
    until NtQuerySystemInformation(SystemHandleInformation, lpBuffer, dwBufferLength, dwLength) = NT_SUCCESS;
    dwHandles := (dwLength - SizeOf(shi.NumberOfHandles)) div SizeOf(shi.Handles);

    { enumerate handles }
    for i := 0 to dwHandles - 1 do
    begin
      memcpySHTEI(sht, lpBuffer + SizeOf(shi.NumberOfHandles) + i * SizeOf(sht), SizeOf(sht));
      if (sht.GrantedAccess and FILE_CREATE_PIPE_INSTANCE = FILE_CREATE_PIPE_INSTANCE) then Continue;
      if not ((sht.GrantedAccess and FILE_READ_EA = FILE_READ_EA) or
        (sht.GrantedAccess and FILE_EXECUTE = FILE_EXECUTE)) then Continue;

      { open process }
      hProcess := OpenProcess(PROCESS_DUP_HANDLE or PROCESS_QUERY_INFORMATION, False, sht.UniqueProcessId);
      if hProcess <> 0 then
      try
        if DuplicateHandle(hProcess, sht.HandleValue, GetCurrentProcess, hDuplicate, 0, False, DUPLICATE_SAME_ACCESS) then
        try
          { get object type }
          dwLength := SizeOf(us);
          repeat
            if lpObjectType <> 0 then
              HeapFree(hHeap, 0, lpObjectType);
            lpObjectType := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, dwLength);
            if lpObjectType = 0 then Exit;
            dwObjectTypeLength := HeapSize(hHeap, 0, lpObjectType);
          until NtQueryObject(hDuplicate, ObjectTypeInformation, lpObjectType, dwObjectTypeLength, dwLength) = NT_SUCCESS;
          memcpyUS(us, lpObjectType, SizeOf(us));
        #ifdef UNICODE
          szFile := CastIntegerToString(us.Buffer);
        #else
          szFile := StringOfChar(#0, us.Length shr 1);
          WideCharToMultiByte(0, 0, us.Buffer, -1, szFile, us.Length shr 1, 0, 0);
        #endif
          { if file }
          if CompareText(szFile, 'File') = 0 then
          begin
            dwFileType := GetFileType(hDuplicate);
            if dwFileType <> FILE_TYPE_DISK then Continue;

            { get file name }
            dwLength := SizeOf(us);
            repeat
              HeapFree(hHeap, 0, lpObjectName);
              lpObjectName := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, dwLength);
              dwObjectNameLength := HeapSize(hHeap, 0, lpObjectName);
            until NtQueryObject(hDuplicate, ObjectNameInformation, lpObjectName, dwObjectNameLength, dwLength) = NT_SUCCESS;
            memcpyUS(us, lpObjectName, SizeOf(us));
          #ifdef UNICODE
            szFile := CastIntegerToString(us.Buffer);
          #else
            szFile := StringOfChar(#0, us.Length shr 1);
            WideCharToMultiByte(0, 0, us.Buffer, -1, szFile, us.Length shr 1, 0, 0);
          #endif
            { convert short filename to long if need }
            for j := 0 to DrivesList.Count - 1 do
              if Pos(DrivesList.Values[DrivesList.Names[j]], szFile) = 1 then
              begin
                StringChangeEx(szFile, DrivesList.Values[DrivesList.Names[j]], DrivesList.Names[j], True);
                szBuffer := StringOfChar(#0, MAX_PATH);
                if GetLongPathName(szFile, szBuffer, Length(szBuffer)) > 0 then
                begin
                  szFile := TrimRight(szBuffer);
                  StringChangeEx(szFile, DrivesList.Names[j], DrivesList.Values[DrivesList.Names[j]], True);
                end;
                Break;
              end;

            { get process name }
            szProcess := StringOfChar(#0, 1024);
            if GetProcessImageFileName(hProcess, szProcess, Length(szProcess)) > 0 then
            begin
              szProcess := TrimRight(szProcess);
              if ((Pos(Lowercase(szPath), Lowercase(szProcess)) = 1) and (sht.GrantedAccess and FILE_EXECUTE = FILE_EXECUTE)) or  // executed process in path specified by param
                  ((Pos(Lowercase(szPath), Lowercase(szFile)) = 1) and (sht.GrantedAccess and FILE_EXECUTE = 0)) then             // read extended file attribute
              begin
                { dos name to name }
                for j := 0 to DrivesList.Count - 1 do
                  if Pos(DrivesList.Values[DrivesList.Names[j]], szProcess) = 1 then
                  begin
                    StringChangeEx(szProcess, DrivesList.Values[DrivesList.Names[j]], DrivesList.Names[j], True);
                    Break;
                  end;
                for j := 0 to DrivesList.Count - 1 do
                  if Pos(DrivesList.Values[DrivesList.Names[j]], szFile) = 1 then
                  begin
                    StringChangeEx(szFile, DrivesList.Values[DrivesList.Names[j]], DrivesList.Names[j], True);
                    Break;
                  end;

                { add process/file }
                if CompareText(szProcess, ExpandConstant('{uninstallexe}')) <> 0 then   // exlude uninstaller
                begin
                  ProcessNamesList.AddObject(szProcess, TStringList.Create);
                  with TStringList(ProcessNamesList.Objects[ProcessNamesList.Count - 1]) do
                  begin
                    Sorted := True;
                    Duplicates := dupIgnore;
                    Add(Format(' • %s', [szFile]));
                  end;
                  //SaveStringToFile('{#SourcePath}\processes.log', Format('GrantedAccess: %x'#13#10'Process: %s'#13#10'File: %s'#13#10#13#10, [sht.GrantedAccess, szProcess, szFile]), True);
                end;
              end;
            end;
          end;
        finally
          CloseHandle(hDuplicate);
        end;
      finally
        CloseHandle(hProcess);
      end;
    end;
  finally
    { result }
    Result := ProcessNamesList.Text;
    StringChangeEx(Result, #13#10, '|', True);

    { fill listview }
    if Assigned(AListView) then
    begin
      { create imagelist }
      if Assigned(AListView.SmallImages) then
          AListView.SmallImages.Free;
      hImgList := ImageList_Create(16, 16, ILC_COLOR32, 0, 0);
      AListView.Perform(LVM_SETIMAGELIST, LVSIL_SMALL, hImgList);

      { add items }
      with AListView.Items do
      begin
        BeginUpdate;
        for i := 0 to ProcessNamesList.Count - 1 do
        begin
          { add process name }
          Add;
          with Item[Count - 1] do
          begin
            SHGetFileInfo(ProcessNamesList[i], 0, shfi, SizeOf(shfi), SHGFI_ICON or SHGFI_SMALLICON);
            Caption := ExtractFileName(ProcessNamesList[i]);
            ImageIndex := ImageList_ReplaceIcon(hImgList, -1, shfi.hIcon);
          end;

          { add files }
          FileNamesList := TStringList(ProcessNamesList.Objects[i]);
          if Assigned(FileNamesList) then
          begin
            for j := 0 to FileNamesList.Count - 1 do
            begin
              Add;
              with Item[Count - 1] do
              begin
                Caption := FileNamesList[j];
                ImageIndex := -1;
              end;
            end;
            FileNamesList.Free;
          end;
        end;
        EndUpdate;
      end;

      { adjust horz size }
      SendMessage(AListView.Handle, LVM_SETCOLUMNWIDTH, 0, LVSCW_AUTOSIZE_USEHEADER);
    end;

    { free memory }
    if lpBuffer <> 0 then
      HeapFree(hHeap, 0, lpBuffer);
    if lpObjectType <> 0 then
      HeapFree(hHeap, 0, lpObjectType);
    if lpObjectName <> 0 then
      HeapFree(hHeap, 0, lpObjectName);
    DrivesList.Free;
    ProcessNamesList.Free;
  end;
end;

////////////////////////////////////////////////////////////
function EnumWindowsProc(hwnd: HWND; lParam: Longint): BOOL;
var
  dwID: DWORD;
  lResult: Longint;
begin
  Result := True;
  GetWindowThreadProcessId(hwnd, dwID);
  if dwID = lParam then
    Result := SendMessageTimeout(hwnd, WM_CLOSE, 0, 0, SMTO_BLOCK or SMTO_ABORTIFHUNG, 5000, lResult) <> 0;
end;

//////////////////////////////////////////////////////////////////////////////////
function TerminateApp(const szProcessList: string; const dwTimeout: DWORD): DWORD;
// szProcessList.:   process names or full paths of processes delimited by vertical bar, e.g. calc.exe|notepad.exe|c:\hungtest.exe
// dwTimeout.....:   kill timeout in ms
var
  hProcessSnap, hProc, hToken, hThread, lpProcName: THandle;
  pe32: TPROCESSENTRY32;
  bProcFind: Boolean;
  szExeFile, szExePath, szFileName, szDeviceName: string;
  tkp: TOKEN_PRIVILEGES;
  SeDebugNameValue: LUID;
  i, ret: Longint;
  lpThreadId, dwDrives: DWORD;
begin
  hProcessSnap := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if hProcessSnap = INVALID_HANDLE_VALUE then Exit;
  try
    with TStringList.Create do
    begin
      StringChangeEx(szProcessList, '|', #13#10, True);
      Text := szProcessList;

      { enumerate processes }
      pe32.dwSize := SizeOf(pe32);
      if not Process32First(hProcessSnap, pe32) then Exit;
      repeat
        bProcFind := False;
        szExeFile := CharArrayToString(pe32.szExeFile);
        for i := 0 to Count - 1 do
        begin
          if CompareText(szExeFile, ExtractFileName(Strings[i])) = 0 then
          begin
            bProcFind := True;
            szExePath := Strings[i];
            Break;
          end;
        end;
        if not bProcFind then Continue;

        // try open process
        hProc := OpenProcess(PROCESS_TERMINATE or PROCESS_CREATE_THREAD or PROCESS_QUERY_INFORMATION or SYNCHRONIZE, False, pe32.th32ProcessID);
        if hProc = TA_FAILED then
        begin
          // open process token adjust privileges
          if not OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY, hToken) then Exit;
          if not LookupPrivilegeValue('', 'SeDebugPrivilege', SeDebugNameValue) then Exit;
          try
            // fill token privileges struct
            tkp.PrivilegeCount := 1;
            tkp.Privileges[0].Luid := SeDebugNameValue;
            tkp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED;

            // set debug privileges
            if not AdjustTokenPrivileges(hToken, False, tkp, SizeOf(tkp), tkp, ret) then Exit;

            // try open process with debug privileges
            hProc := OpenProcess(PROCESS_TERMINATE or PROCESS_CREATE_THREAD or PROCESS_QUERY_INFORMATION or SYNCHRONIZE, False, pe32.th32ProcessID);
            if hProc = TA_FAILED then Exit;
          finally
            tkp.Privileges[0].Attributes := 0;
            AdjustTokenPrivileges(hToken, False, tkp, SizeOf(tkp), tkp, ret);
            CloseHandle(hToken);
          end;
        end;

        // if szProcess is full path
        if CompareText(szExePath, szExeFile) <> 0 then
        begin
          szFileName := StringOfChar(#0, 1024);
          if GetProcessImageFileName(hProc, szFileName, Length(szFileName)) > 0 then
          begin
            szFileName := TrimRight(szFileName);
            dwDrives := GetLogicalDrives;
            for i := 2 to 25 do if dwDrives and (1 shl i) <> 0 then
            begin
              szDeviceName := StringOfChar(#0, MAX_PATH);
              QueryDosDevice(Format('%s:', [Chr(Ord('A') + i)]), szDeviceName, Length(szDeviceName));
              szDeviceName := TrimRight(szDeviceName);
              if Pos(szDeviceName, szFileName) = 0 then Continue;
              StringChangeEx(szFileName, szDeviceName, Format('%s:', [Chr(Ord('A') + i)]), True);
              if CompareText(szExePath, szFileName) = 0 then Break;
            end;
            if CompareText(szExePath, szFileName) <> 0 then
            begin
              CloseHandle(hProc);
              Continue;
            end;
          end;
        end;

        // try stop process
        try
          if not EnumWindows(CallbackAddr('EnumWindowsProc'), pe32.th32ProcessID) then
          begin
            if TerminateProcess(hProc, 0) then
              Result := TA_SUCCESS_KILL;
          end
          else
          case WaitForSingleObject(hProc, dwTimeout) of
            WAIT_OBJECT_0:
              Result := TA_SUCCESS_CLEAN;
            WAIT_TIMEOUT:
              try
                lpProcName := GetProcAddress(GetModuleHandle('kernel32.dll'), 'ExitProcess');
                if lpProcName = 0 then Exit;
                hThread := CreateRemoteThread(hProc, 0, 0, lpProcName, 0, 0, lpThreadId);
                case WaitForSingleObject(hThread, dwTimeout) of
                  WAIT_OBJECT_0:
                    Result := TA_SUCCESS_CLEAN;
                  WAIT_TIMEOUT,
                  WAIT_FAILED:
                    if TerminateProcess(hProc, 0) then
                      Result := TA_SUCCESS_KILL;
                end;
              finally
                CloseHandle(hThread);
              end;
          end;
        finally
          CloseHandle(hProc);
        end;
      until not Process32Next(hProcessSnap, pe32);
      Free;
    end;
  finally
    CloseHandle(hProcessSnap);
  end;
end;

///////////////////////////////////////////////////////////
procedure WaitUninstaller(const szUninstallString: string);
var
  hProcessSnap, hProcess: THandle;
  pe32: TPROCESSENTRY32;
  pbi: PROCESS_BASIC_INFORMATION;
  upp: RTL_USER_PROCESS_PARAMETERS;
  lpUserProcessInfo: Longint;
  ReturnLength: DWORD;
  szCommandLine: string;
begin
  hProcessSnap := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if hProcessSnap = INVALID_HANDLE_VALUE then Exit;
  try
    pe32.dwSize := SizeOf(pe32);
    if not Process32First(hProcessSnap, pe32) then Exit;
    repeat
      { open process }
      hProcess := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ or SYNCHRONIZE, False, pe32.th32ProcessID);
      if hProcess = 0 then Continue;

      { get command line }
      try
        if NtQueryInformationProcess(hProcess, 0, pbi, SizeOf(pbi), ReturnLength) = NT_SUCCESS then
        begin
          if ReadProcessMemoryLONG(hProcess, pbi.PebBaseAddress + $10{ ProcessParameters offset }, lpUserProcessInfo, SizeOf(lpUserProcessInfo), ReturnLength) then
          begin
            if ReadProcessMemoryUPP(hProcess, lpUserProcessInfo, upp, SizeOf(upp), ReturnLength) then
            begin
              szCommandLine := StringOfChar(#0, upp.CommandLine.Length);
              if ReadProcessMemoryString(hProcess, upp.CommandLine.Buffer, szCommandLine, upp.CommandLine.Length, ReturnLength) then
              begin
                szCommandLine := Uppercase(TrimRight(szCommandLine));
                if (Pos('/SECONDPHASE=', szCommandLine) > 0) and                // /SECONDPHASE command line parameter exists
                (Pos(Uppercase(szUninstallString), szCommandLine) > 0) then     // UninstallString in command line
                begin
                  WaitForSingleObject(hProcess, INFINITE);
                  Break;
                end;
              end;
            end;
          end;
        end;
      finally
        CloseHandle(hProcess);
      end;
    until not Process32Next(hProcessSnap, pe32);
  finally
    CloseHandle(hProcessSnap);
  end;
end;

///////////////////////////////
function IsRunAsAdmin: Boolean;
var
  ResultCode: Integer;
  AppRoot: string;
begin
  AppRoot := ExpandConstant('{app}');
  while not DirExists(AppRoot) do
    AppRoot := RemoveBackslash(ExtractFilePath(AppRoot));
  if ExecAsOriginalUser(ExpandConstant('{cmd}'), Format('/c md "%s\MirandaWriteTest"', [AppRoot]), '', SW_HIDE, ewWaitUntilTerminated, ResultCode) then
    DelTree(Format('%s\MirandaWriteTest', [AppRoot]), True, True, True);
  Result := (ResultCode <> 0);
end;
/////////////////////////////////////
/////////////////////////////////////
/////////////////////////////////////
function IsDefaultSetupType: Boolean;
begin
  Result := DefaultInstallType.Checked;
end;

//////////////////////////////////////
function IsPortableSetupType: Boolean;
begin
  Result := PortableInstallType.Checked;
end;

///////////////////////////////////////
function IsUninstallSetupType: Boolean;
begin
  Result := DefaultUninstallType.Checked;
end;

///////////////////////////
function IsUpdate: Boolean;
begin
  Result := CompareText(WizardForm.Caption, FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}'])) = 0;
end;

///////////////////////////////////////////////////////////////////////////////////
function GetSetupPreviousDataEx(const ValueName, DefaultValueData: string): string;
begin
  Result := RemoveBackslash(RemoveQuotes(GetSetupPreviousData(ValueName, DefaultValueData)));
end;

///////////////////////////////////////////////////////////////
function CheckUpdateVersion(const szVersions: string): Boolean;
var
  i: Integer;
begin
  with TStringList.Create do
  try
    Sorted := True;
    CommaText := szVersions;
    Result := Find(GetSetupPreviousDataEx('DisplayVersion', ''), i);
    if not Result then
      Result := Find(ExpandConstant(Format('{ini:%s\Profiles\{#AppINI},{#AppNameSetup},AppVerBuild|}', [WizardDirValue])), i);
  finally
    Free;
  end;
end;

//////////////////////////////
procedure CheckDefaultInstall;
begin
  if GetSetupPreviousDataEx('InstallLocation', '') = '' then
  begin
    DefaultInstallTypeCaption.Caption := FmtMessage(CustomMessage('DefaultInstallTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);    // default caption
    WizardForm.Caption := FmtMessage(SetupMessage(msgSetupWindowTitle), ['{#AppName}']);        // default caption
    WizardForm.TypesCombo.Enabled := True;
    WizardForm.TypesCombo.Color := clWindow;                                                    // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clWindowText;                                           // for ownerdraw style
  end
  else if CheckUpdateVersion('{#AppUpdateVersion}') then
  begin
    DefaultInstallTypeCaption.Caption := CustomMessage('DefaultUpdateTypeCaption');             // update caption
    WizardForm.Caption := FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}']);       // update caption
    WizardForm.TypesCombo.Enabled := False;
    WizardForm.TypesCombo.Color := clBtnFace;                                                   // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clBtnShadow;                                            // for ownerdraw style
  end;
  szPreviousSelectedPortableAppPath := '';
end;

///////////////////////////////
procedure CheckPortableInstall;
begin
  if (FileExists(Format('%s\{#AppExeName}', [WizardDirValue])) or FileExists(Format('%s\{#AppExeOppName}', [WizardDirValue]))) and
    FileExists(Format('%s\Profiles\{#AppINI}', [WizardDirValue])) and CheckUpdateVersion('{#AppUpdateVersion}') then
  begin
    PortableInstallTypeCaption.Caption := CustomMessage('PortableUpdateTypeCaption');           // update caption
    WizardForm.Caption := FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}']);       // update caption
    WizardForm.TypesCombo.Enabled := False;
    WizardForm.TypesCombo.Color := clBtnFace;                                                   // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clBtnShadow;                                            // for ownerdraw style
  end
  else
  begin
    PortableInstallTypeCaption.Caption := CustomMessage('PortableInstallTypeCaption');          // default caption
    WizardForm.Caption := FmtMessage(SetupMessage(msgSetupWindowTitle), ['{#AppName}']);        // default caption
    WizardForm.TypesCombo.Enabled := True;
    WizardForm.TypesCombo.Color := clWindow;                                                    // for ownerdraw style
    WizardForm.TypesCombo.Font.Color := clWindowText;                                           // for ownerdraw style
  end;
  szPreviousSelectedDefaultAppPath := '';
end;

////////////////////////////////////////////////////////
function IsSettingChecked(const Param: string): Boolean;
var
  i: Integer;
begin
  for i := 0 to GetArrayLength(g_SetHelper) - 1 do
    if CompareText(Param, g_SetHelper[i].szInternalName) = 0 then
    begin
      Result := SettingsPage.Values[i];
      Break;
    end;
end;

/////////////////////////////////////////////////////
function SetBoolSetting(const Param: string): string;
begin
  if Param[1] = '!' then
    Result := Format('%d', [not IsSettingChecked(Copy(Param, 2, Length(Param)))])
  else
    Result := Format('%d', [IsSettingChecked(Param)]);
end;

//////////////////////////////////////////////////////
function IsStyleChecked(const Param: string): Boolean;
var
  i: Integer;
begin
  for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
    if CompareText(Param, g_StylesHelper[i].szInternalName) = 0 then
    begin
      Result := StylesPage.Values[i];
      Break;
    end;
end;

///////////////////////////////////////////////////
function SetBoolStyle(const Param: string): string;
begin
  Result := Format('%d', [IsStyleChecked(Param)]);
end;

//////////////////////////////////////////////////////////////////
function IsAdditionalSettingChecked(const Param: string): Boolean;
var
  i: Integer;
begin
  with TStringList.Create do
  try
    CommaText := Param;
    for i := 0 to AddSettingsListBox.Items.Count - 1 do
      if CompareText(g_AddSetHelper[i].szInternalName, Strings[0]) = 0 then
      begin
        Result := TNewComboBox(AddSettingsListBox.Items.Objects[i]).ItemIndex = StrToIntDef(Strings[1], -1);
        Break;
      end;
  finally
    Free;
  end;
end;

/////////////////////
procedure AddDetails;
var
  szFile: string;
begin
  szFile := ExpandConstant(CurrentFilename);
  StringChangeEx(szFile, ExpandConstant('{app}\'), '', True);

  { add line to details memo }
  DetailsMemo.Lines.Add(Format('%s %s', [CustomMessage('Extract'), szFile]));

  // add uninstall files to {#AppINI} for portable install
  if g_UninstallFilesHelper = nil then
  begin
    g_UninstallFilesHelper := TStringList.Create;
    g_UninstallFilesHelper.Sorted := True;
    g_UninstallFilesHelper.Duplicates := dupIgnore;
  end;
  g_UninstallFilesHelper.Add(CurrentFilename);
end;

///////////////////////
//procedure IEViewConfig;
//var
//  FileName: string;
//  ASource: AnsiString;
//  Source: string;
//begin
  // read config.js
//  FileName := ExpandConstant(CurrentFilename);
//  LoadStringFromFile(FileName, ASource);
//  Source := string(ASource);

  // checkboxes
//  if IsStyleChecked('IEViewAvatar') then
//    StringChangeEx(Source, '!enable_avatars!', '1', True)
//  else
//    StringChangeEx(Source, '!enable_avatars!', '0', True);
//  if IsStyleChecked('IEViewAnimation') then
//    StringChangeEx(Source, '!enable_animation!', '1', True)
//  else
//    StringChangeEx(Source, '!enable_animation!', '0', True);
//  if IsStyleChecked('IEViewShortLink') then
//    StringChangeEx(Source, '!linkverkuerzen!', 'yes', True)
//  else
//    StringChangeEx(Source, '!linkverkuerzen!', 'no', True);

  // radiobuttons
//  if IsStyleChecked('FontPrinting') then
//    StringChangeEx(Source, '!font!', 'Printing', True)
//  else if IsStyleChecked('FontHandwritting') then
//    StringChangeEx(Source, '!font!', 'handwritting', True);

  // save config.js
//  ASource := AnsiString(Source);
//  SaveStringToFile(FileName, ASource, False);
//end;

//////////////////////////////////////////////////
function GetDescription(const S: string): string;
begin
  StringChangeEx(S, '%n', #13#10, True);
  Result := S;
end;

//////////////////////////////////////////////////
function TypesHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { type name directive | type description directive | type description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_TypesHelper);
    SetArrayLength(g_TypesHelper, i + 1);

    { fill array element }
    if Count > 0 then
      g_TypesHelper[i].szInternalName := Trim(Strings[0]);
    if Count > 1 then
      Result := Trim(Strings[1]);   // result: type description directive
    if Count > 2 then
      g_TypesHelper[i].szDescription := GetDescription(Trim(Strings[2]));
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

///////////////////////////////////////////////////////
function ComponentsHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { component name directive | component description directive | component description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_ComponentsHelper);
    SetArrayLength(g_ComponentsHelper, i + 1);

    { fill array element }
    if Count > 0 then
      g_ComponentsHelper[i].szInternalName := Trim(Strings[0]);
    if Count > 1 then
      Result := Trim(Strings[1]);   // result: component description directive
    if Count > 2 then
      g_ComponentsHelper[i].szDescription := GetDescription(Trim(Strings[2]));
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

//////////////////////////////////////////////////
function TasksHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { task description directive | task description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { check }
    if WizardForm.TasksList.ItemCount = 0 then
      SetArrayLength(g_TasksHelper, 0);
    for i := 0 to GetArrayLength(g_TasksHelper) - 1 do
      if CompareText(g_TasksHelper[i].szInternalName, Trim(Strings[0])) = 0 then Exit;

    { inc array size }
    i := GetArrayLength(g_TasksHelper);
    SetArrayLength(g_TasksHelper, i + 1);

    { fill array element }
    if Count > 0 then
      g_TasksHelper[i].szInternalName := Trim(Strings[0]);
    if Count > 1 then
      g_TasksHelper[i].szName := Trim(Strings[1]);
    if Count > 2 then
      g_TasksHelper[i].szDescription := GetDescription(Trim(Strings[2]));

    { result }
    Result := g_TasksHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

////////////////////////////////////////////////////
function SettingsHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { settings name | setting description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_SetHelper);
    SetArrayLength(g_SetHelper, i + 1);

    { fill array element }
    g_SetHelper[i].szInternalName := Param;
    if Count > 0 then
      g_SetHelper[i].szName := Trim(Strings[0]);
    if Count > 1 then
      g_SetHelper[i].szDescription := GetDescription(Trim(Strings[1]));

    { result }
    Result := g_SetHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

///////////////////////////////////////////////////
function AddSetHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { additional settings display name | additional setting description }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_AddSetHelper);
    SetArrayLength(g_AddSetHelper, i + 1);

    { fill array element }
    g_AddSetHelper[i].szInternalName := Param;
    if Count > 0 then
      g_AddSetHelper[i].szName := Trim(Strings[0]);
    if Count > 1 then
      g_AddSetHelper[i].szDescription := GetDescription(Trim(Strings[1]));
    g_AddSetHelper[i].szInternalValues := Trim(CustomMessage(Format('%sValues', [Param])));
    g_AddSetHelper[i].szInternalDefault := Trim(CustomMessage(Format('%sDefaultValue', [Param])));

    { result }
    Result := g_AddSetHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;

///////////////////////////////////////////////////
function StylesHelper(const Param: string): string;
var
  i: Integer;
  S: string;
begin
  { parse Param }
  with TStringList.Create do
  try
    { style name | style description | style preview bitmap | style selected bitmap | style unselected bitmap }
    S := CustomMessage(Param);
    StringChangeEx(S, #13#10, '%n', True);
    StringChangeEx(S, '|', #13#10, True);
    Text := S;

    { inc array size }
    i := GetArrayLength(g_StylesHelper);
    SetArrayLength(g_StylesHelper, i + 1);

    { fill array element }
    g_StylesHelper[i].szInternalName := Param;
    if Count > 0 then
      g_StylesHelper[i].szName := Trim(Strings[0]);
    if Count > 1 then
      g_StylesHelper[i].szDescription := GetDescription(Trim(Strings[1]));
    if (Count > 2) and (Trim(Strings[2]) <> '*') then
      g_StylesHelper[i].szPreviewBitmap := Trim(Strings[2]);
    if (Count > 3) and (Trim(Strings[3]) <> '*') then
      g_StylesHelper[i].szSelectedBitmap := Trim(Strings[3]);
    if (Count > 4) and (Trim(Strings[4]) <> '*') then
      g_StylesHelper[i].szUnselectedBitmap := Trim(Strings[4]);

    { result }
    Result := g_StylesHelper[i].szName;
  except
    RaiseLastException;
  finally
    Free;
  end;
end;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
function PtInRect(const lprc: TRect; const pt: TPoint): Boolean;
begin
  Result := (pt.x > lprc.Left) and (pt.x < lprc.Right) and (pt.y > lprc.Top) and (pt.y < lprc.Bottom);
end;

//////////////////////////////
procedure ReleaseThemeHandles;
begin
  if g_hThemeButton <> 0 then
    CloseThemeData(g_hThemeButton);
  if g_hThemeHeader <> 0 then
    CloseThemeData(g_hThemeHeader);
  if g_hThemeArrowBtnUp <> 0 then
    CloseThemeData(g_hThemeArrowBtnUp);
  if g_hThemeArrowBtnDown <> 0 then
    CloseThemeData(g_hThemeArrowBtnDown);
  if g_hThemeArrowBtnLeft <> 0 then
    CloseThemeData(g_hThemeArrowBtnLeft);
  if g_hThemeArrowBtnRight <> 0 then
    CloseThemeData(g_hThemeArrowBtnRight);
  if g_hThemeEdit <> 0 then
    CloseThemeData(g_hThemeEdit);
  if g_hThemeComboBox <> 0 then
    CloseThemeData(g_hThemeComboBox);
  if g_hThemeTreeView <> 0 then
    CloseThemeData(g_hThemeTreeView);
end;

//////////////////////////////////////////////////////////
procedure GetThemeHandles(const AWinControl: TWinControl);
begin
  { release previous theme handles }
  ReleaseThemeHandles;

  { exit if not composited }
  if not g_fEnabled then Exit;

  { load resources }
  g_Border := TBitmap.Create;
  g_Border.LoadFromResourceName(HInstance, '_IS_BORDER');

  { button theme }
  with TNewButton.Create(nil) do
  try
    Parent := AWinControl;

    // button theme
    SetWindowTheme(Handle, StrToWStr('Button'), '');
    g_hThemeButton := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // header theme
    SetWindowTheme(Handle, StrToWStr('ShowDesktop'), '');
    g_hThemeHeader := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn up theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyHorizComposited'), '');
    g_hThemeArrowBtnUp := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn down theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyHorizOpenComposited'), '');
    g_hThemeArrowBtnDown := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn left theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyVertComposited'), '');
    g_hThemeArrowBtnLeft := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);

    // arrowbtn right theme
    SetWindowTheme(Handle, StrToWStr('TrayNotifyVertOpenComposited'), '');
    g_hThemeArrowBtnRight := OpenThemeDataEx(Handle, StrToWStr('Button'), 1);
  finally
    Free;
  end;

  { edit theme }
  with TEdit.Create(nil) do
  try
    Parent := AWinControl;
    SetWindowTheme(Handle, StrToWStr('CommonItemDialogPreviewPaneControl'), '');
    g_hThemeEdit := OpenThemeDataEx(Handle, StrToWStr('Edit'), 1);
  finally
    Free;
  end;

  { combobox theme }
  with TComboBox.Create(nil) do
  try
    Parent := AWinControl;
    SetWindowTheme(Handle, StrToWStr('Communications'), '');
    g_hThemeComboBox := OpenThemeDataEx(Handle, StrToWStr('Combobox'), 1);
  finally
    Free;
  end;

  { treeview theme }
  with TStartMenuFolderTreeView.Create(nil) do
  try
    Parent := AWinControl;
    SetWindowTheme(Handle, StrToWStr('Explorer'), '');
    g_hThemeTreeView := OpenThemeDataEx(Handle, StrToWStr('Treeview'), 1);
  finally
    Free;
  end;
end;

/////////////////////////////////
function InitializeGdiPlus: BOOL;
var
  gdipInput: GDIPLUSSTARTUPINPUT;
begin
  gdipInput.GdiplusVersion := 1;
  Result := GdiplusStartup(g_pToken, gdipInput, 0) = 0;
end;

////////////////////////////////////////////
procedure AnimateTimerProc(Sender: TObject);
begin
  with TTimer(Sender) do
  begin
    Enabled := g_anitp.ABitmapImage.Parent.Showing and (g_anitp.ABitmapImage.Tag = 1);
    if Enabled then
    begin
      if GetTickCount - g_anitp.uStart >= g_anitp.uDelay[g_anitp.uFrameIndex] * 10 then
      begin
        with g_anitp.ABitmapImage.Bitmap do
          BitBlt(Canvas.Handle, 0, 0, Width, Height, g_anitp.hbmFrames[g_anitp.uFrameIndex].Canvas.Handle, 0, 0, SRCCOPY);
        g_anitp.ABitmapImage.Invalidate;
        g_anitp.uFrameIndex := (g_anitp.uFrameIndex + 1) mod GetArrayLength(g_anitp.hbmFrames);
        g_anitp.uStart := GetTickCount;
      end;
    end
    else
      Free;
  end;
end;

///////////////////////////////////////
function ARGB(const BGR: DWORD): DWORD;
var
  a, r, b, g: DWORD;
begin
  a := $FF;
  r := BGR and $0000FF;
  g := BGR and $00FF00 shr 8;
  b := BGR and $FF0000 shr 16;
  Result := (a shl 24) or (r shl 16) or (g shl 8) or b;
end;

//////////////////////////////////////////////////////////////////////////////////////
function EnumResNameProc(hModule: THandle; lpszType, lpszName, lParam: Longint): BOOL;
var
  hResource, hIcon: THandle;
  ico: TIcon;
begin
  if lParam <> 0 then
  begin
    { create frame }
    with g_anitp.hbmFrames[lpszName-1] do
    try
      Width := g_anitp.ABitmapImage.Width;
      Height := g_anitp.ABitmapImage.Height;
      hResource := FindResource(hModule, lpszName, lpszType);
      hIcon := CreateIconFromResourceEx(LockResource(LoadResource(hModule, hResource)), SizeofResource(hModule, hResource), True, $00030000, Width, Height, 0);
      DrawIconEx(Canvas.Handle, 0, 0, hIcon, Width, Height, 0, lParam, DI_NORMAL);
    finally
      DestroyIcon(hIcon);
    end;
  end
  else
  begin
    { get dimensions }
    try
      hResource := FindResource(hModule, lpszName, lpszType);
      hIcon := CreateIconFromResourceEx(LockResource(LoadResource(hModule, hResource)), SizeofResource(hModule, hResource), True, $00030000, 0, 0, 0);
      ico := TIcon.Create;
      ico.Handle := hIcon;
      g_anitp.ABitmapImage.Width := ico.Width;
      g_anitp.ABitmapImage.Height := ico.Height;
      ico.Free;
    finally
      DestroyIcon(hIcon);
    end;
  end;
  Result := lParam <> 0;
end;

type
  TResourceType = (rUnknown, rRes, rFile, rDll);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure DrawImageOnBitmap(const ABitmapImage: TBitmapImage; const szResource: string; const crBackground: DWORD);
var
  uRes: TResourceType;
  hResource, hHeap, hModule, hbrBackground: THandle;
  lpResource, lpszFormat, lpImage, lpStream, lpBuffer, lppi: Longint;
  lpFormat, lpClsid: CLSID;
  uWidth, uHeight, uCount, uSize: UINT;
  pi: PROPERTYITEM;
  i: Integer;
  hbmReturn: HBITMAP;
  bfh: BITMAPFILEHEADER;
  bih: BITMAPINFOHEADER;
begin
  { exit }
  if szResource = '' then Exit;
  if ABitmapImage = nil then Exit;

  { free resources }
  if GetArrayLength(g_anitp.hbmFrames) > 0 then
  begin
    for i := 0 to GetArrayLength(g_anitp.hbmFrames) - 1 do
      g_anitp.hbmFrames[i].Free;
    SetArrayLength(g_anitp.hbmFrames, 0);
  end;

  { get resource type }
  if Pos('_IS_', Uppercase(szResource)) = 1 then
    uRes := rRes;   // resource
  if (Length(ExtractFileExt(szResource)) > 0) and (CompareText(ExtractFileExt(szResource), '.dll') <> 0) then
    uRes := rFile;  // file
  if (Length(ExtractFileExt(szResource)) > 0) and (CompareText(ExtractFileExt(szResource), '.dll') = 0) then
    uRes := rDll;   // dll
  if uRes = rUnknown then Exit;

  { case resource }
  case uRes of
    rRes:
      begin
        // load image to buffer
        hResource := FindResource(HInstance, CastStringToInteger(szResource), RT_RCDATA);
        lpResource := LockResource(LoadResource(HInstance, hResource));
        uSize := SizeofResource(HInstance, hResource);
        hHeap := GetProcessHeap;
        lpBuffer := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, uSize);
        memcpy(lpBuffer, lpResource, uSize);
      end;
    rFile:
      begin
        // load image to buffer
        uSize := ExtractTemporaryFileSize(szResource);
        hHeap := GetProcessHeap;
        lpBuffer := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, uSize);
        ExtractTemporaryFileToBuffer(szResource, lpBuffer);
      end;
    rDll:
      begin
        // load module
        if not FileExists(ExpandConstant(Format('{tmp}\%s', [szResource]))) then
          ExtractTemporaryFile(szResource);
        hModule := LoadLibraryEx(ExpandConstant(Format('{tmp}\%s', [szResource])), 0, LOAD_LIBRARY_AS_DATAFILE or LOAD_LIBRARY_AS_IMAGE_RESOURCE);
        if hModule = 0 then Exit;

        // get icons count
        uCount := ExtractIcon(HInstance, ExpandConstant(Format('{tmp}\%s', [szResource])), -1);
        if uCount = 0 then Exit;

        // tag
        ABitmapImage.Tag := 0;

        // get image dimensions
        g_anitp.ABitmapImage := ABitmapImage;
        EnumResourceNames(hModule, RT_ICON, CallbackAddr('EnumResNameProc'), 0);

        // set frame delay
        if uCount > 1 then
        begin
          SetArrayLength(g_anitp.uDelay, uCount);
          for i := 0 to uCount - 1 do
            g_anitp.uDelay[i] := 5;
        end;

        // create frames
        SetArrayLength(g_anitp.hbmFrames, uCount);
        for i := 0 to uCount - 1 do
          g_anitp.hbmFrames[i] := TBitmap.Create;
        if g_fEnabled then
          hbrBackground := GetSysColorBrush(COLOR_BACKGROUND)
        else
          hbrBackground := GetSysColorBrush(COLOR_BTNFACE);
        EnumResourceNames(hModule, RT_ICON, CallbackAddr('EnumResNameProc'), hbrBackground);

        // initialize frame
        ABitmapImage.Bitmap.Assign(g_anitp.hbmFrames[0]);

        // timer
        if uCount > 1 then
        begin
          // set tag
          ABitmapImage.Tag := 1;

          // fill timer struct
          g_anitp.uFrameIndex := 0;
          g_anitp.uStart := GetTickCount;

          // initialize timer
          with TTimer.Create(WizardForm) do
          begin
            Interval := 1;
            OnTimer := @AnimateTimerProc;
          end;
        end;

        // exit
        Exit;
      end;
  end;

  { tag }
  ABitmapImage.Tag := 0;

  { load image to stream }
  if CreateStreamOnHGlobal(lpBuffer, True, lpStream) <> 0 then Exit;
  if GdipLoadImageFromStream(lpStream, lpImage) <> 0 then Exit;

  { get raw format }
  if GdipGetImageRawFormat(lpImage, lpFormat) <> 0 then Exit;
  if StringFromCLSID(lpFormat, lpszFormat) <> 0 then Exit;

  { check image }
  crBackground := ARGB(crBackground);
  case CastIntegerToString(lpszFormat) of
    ImageFormatBMP:
      begin
        // create image from data
        memcpyBFH(bfh, lpBuffer, SizeOf(bfh));
        memcpyBIH(bih, lpBuffer + SizeOf(bfh), SizeOf(bih));
        if GdipCreateBitmapFromScan0(bih.biWidth, bih.biHeight, bih.biWidth * 4, PixelFormat32bppPARGB, lpBuffer + bfh.bfOffBits, lpImage) <> 0 then Exit;
        if GdipImageRotateFlip(lpImage, Rotate180FlipX) <> 0 then Exit;

        // create bitmap and assign to destination image
        if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
        ABitmapImage.Bitmap.Handle := hbmReturn;
      end;
    ImageFormatPNG,
    ImageFormatJPEG:
      begin
        // create bitmap and assign to destination image
        if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
        ABitmapImage.Bitmap.Handle := hbmReturn;
      end;
    ImageFormatTIFF:
      begin
        // get frame count
        CLSIDFromString(StrToWStr(FrameDimensionPage), lpClsid);
        if GdipImageGetFrameCount(lpImage, lpClsid, uCount) <> 0 then Exit;

        // set frame delay
        if uCount > 1 then
        begin
          SetArrayLength(g_anitp.uDelay, uCount);
          for i := 0 to uCount - 1 do
            g_anitp.uDelay[i] := 5;
        end;

        // create frames
        SetArrayLength(g_anitp.hbmFrames, uCount);
        for i := 0 to uCount - 1 do
        begin
          if GdipImageSelectActiveFrame(lpImage, lpClsid, i) <> 0 then Exit;
          g_anitp.hbmFrames[i] := TBitmap.Create;
          with g_anitp.hbmFrames[i] do
          begin
            if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
            Handle := hbmReturn;
          end;
        end;

        // initialize frame
        ABitmapImage.Bitmap.Assign(g_anitp.hbmFrames[0]);

        // timer
        if uCount > 1 then
        begin
          // set tag
          ABitmapImage.Tag := 1;

          // fill timer struct
          g_anitp.ABitmapImage := ABitmapImage;
          g_anitp.lpImage := lpImage;
          g_anitp.uFrameIndex := 0;
          g_anitp.uStart := GetTickCount;

          // initialize timer
          with TTimer.Create(WizardForm) do
          begin
            Interval := 1;
            OnTimer := @AnimateTimerProc;
          end;
        end;
      end;
    ImageFormatGIF:
      begin
        // get frame count
        CLSIDFromString(StrToWStr(FrameDimensionTime), lpClsid);
        if GdipImageGetFrameCount(lpImage, lpClsid, uCount) <> 0 then Exit;

        // get frame delay
        if uCount > 1 then
        begin
          if GdipGetPropertyItemSize(lpImage, PropertyTagFrameDelay, uSize) <> 0 then Exit;
          lppi := HeapAlloc(hHeap, HEAP_ZERO_MEMORY, uSize);
          try
            if GdipGetPropertyItem(lpImage, PropertyTagFrameDelay, uSize, lppi) <> 0 then Exit;
            memcpyPI(pi, lppi, SizeOf(pi));
            SetArrayLength(g_anitp.uDelay, pi.uLength div SizeOf(pi.lpValue));
            memcpyDWORD(g_anitp.uDelay[0], pi.lpValue, pi.uLength);
          finally
            HeapFree(hHeap, 0, lppi);
          end;
        end;

        // create frames
        SetArrayLength(g_anitp.hbmFrames, uCount);
        for i := 0 to uCount - 1 do
        begin
          if GdipImageSelectActiveFrame(lpImage, lpClsid, i) <> 0 then Exit;
          g_anitp.hbmFrames[i] := TBitmap.Create;
          with g_anitp.hbmFrames[i] do
          begin
            if GdipCreateHBITMAPFromBitmap(lpImage, hbmReturn, crBackground) <> 0 then Exit;
            Handle := hbmReturn;
          end;
        end;

        // initialize frame
        ABitmapImage.Bitmap.Assign(g_anitp.hbmFrames[0]);

        // timer
        if uCount > 1 then
        begin
          // set tag
          ABitmapImage.Tag := 1;

          // fill timer struct
          g_anitp.ABitmapImage := ABitmapImage;
          g_anitp.lpImage := lpImage;
          g_anitp.uFrameIndex := 0;
          g_anitp.uStart := GetTickCount;

          // initialize timer
          with TTimer.Create(WizardForm) do
          begin
            Interval := 1;
            OnTimer := @AnimateTimerProc;
          end;
        end;
      end;
  else
    Exit;
  end;

  { get image size }
  if GdipGetImageWidth(lpImage, uWidth) <> 0 then Exit;
  if GdipGetImageHeight(lpImage, uHeight) <> 0 then Exit;

  { set destination image size }
  ABitmapImage.Width := uWidth;
  ABitmapImage.Height := uHeight;

  { free }
  HeapFree(hHeap, 0, lpBuffer);
  GdipDisposeImage(lpImage);
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure DrawImageWithMargins(hdcDest: THandle; xoriginDest, yoriginDest, wDest, hDest: Integer; bmpSrc: TBitmap; iImageCount, iStateId: Integer; marLeft, marTop, marRight, marBottom: UINT);
var
  bf: BLENDFUNCTION;
  lpbf: Longint;
  hMemDC: THandle;
  hMemBitmap, hOldBitmap: HBITMAP;
begin
  { blend function }
  bf.BlendOp := AC_SRC_OVER;
  bf.SourceConstantAlpha := $FF;
  bf.AlphaFormat := AC_SRC_ALPHA;
  memcpyBF(lpbf, bf, SizeOf(lpbf));

  { create memory bitmap }
  hMemDC := CreateCompatibleDC(hdcDest);
  hMemBitmap := CreateCompatibleBitmap(hdcDest, wDest, hDest);
  hOldBitmap := SelectObject(hMemDC, hMemBitmap);

  { draw parts }
  if (marLeft > 0) and (marTop > 0) then
    GdiAlphaBlend(hMemDC, 0, 0, marLeft, marTop, bmpSrc.Canvas.Handle, 0, iStateId*(bmpSrc.Height div iImageCount), marLeft, marTop, lpbf);

  if marTop > 0 then
    GdiAlphaBlend(hMemDC, marLeft, 0, wDest - marLeft - marRight, marTop, bmpSrc.Canvas.Handle,  marLeft, iStateId*(bmpSrc.Height div iImageCount), bmpSrc.Width - marLeft - marRight, marTop, lpbf);

  if (marRight > 0) and (marTop > 0) then
    GdiAlphaBlend(hMemDC, wDest - marRight, 0, marRight, marTop, bmpSrc.Canvas.Handle, bmpSrc.Width - marRight, iStateId*(bmpSrc.Height div iImageCount), marRight, marTop, lpbf);

  if marLeft > 0 then
    GdiAlphaBlend(hMemDC, 0, marTop, marLeft, hDest - marTop - marBottom, bmpSrc.Canvas.Handle, 0, iStateId*(bmpSrc.Height div iImageCount) + marTop, marLeft, bmpSrc.Height div iImageCount - marTop - marBottom, lpbf);

  GdiAlphaBlend(hMemDC, marLeft, marTop, wDest - marLeft - marRight, hDest - marTop - marBottom, bmpSrc.Canvas.Handle, marLeft, iStateId*(bmpSrc.Height div iImageCount) + marTop, bmpSrc.Width - marLeft - marRight, bmpSrc.Height div iImageCount - marTop - marBottom, lpbf);

  if marRight > 0 then
    GdiAlphaBlend(hMemDC, wDest - marRight, marTop, marRight, hDest - marTop - marBottom, bmpSrc.Canvas.Handle, bmpSrc.Width - marRight, iStateId*(bmpSrc.Height div iImageCount) + marTop, marRight, bmpSrc.Height div iImageCount - marTop - marBottom, lpbf);

  if (marLeft > 0) and (marBottom > 0) then
    GdiAlphaBlend(hMemDC, 0, hDest - marBottom, marLeft, marBottom, bmpSrc.Canvas.Handle, 0, (iStateId + 1)*(bmpSrc.Height div iImageCount) - marBottom, marLeft, marBottom, lpbf);

  if marBottom > 0 then
    GdiAlphaBlend(hMemDC, marLeft, hDest - marBottom, wDest - marLeft - marRight, marBottom, bmpSrc.Canvas.Handle, marLeft, (iStateId + 1)*(bmpSrc.Height div iImageCount) - marBottom, bmpSrc.Width - marLeft - marRight, marBottom, lpbf);

  if (marRight > 0) and (marBottom > 0) then
    GdiAlphaBlend(hMemDC, wDest - marRight, hDest - marBottom, marRight, marBottom, bmpSrc.Canvas.Handle, bmpSrc.Width - marRight, (iStateId + 1)*(bmpSrc.Height div iImageCount) - marBottom, marRight, marBottom, lpbf);

  // blit
  GdiAlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hMemDC, 0, 0, wDest, hDest, lpbf);

  // free objects
  DeleteObject(SelectObject(hMemDC, hOldBitmap));
  DeleteDC(hMemDC);
end;

//////////////////////////////////////////////
procedure DrawAeroBevel(const ABevel: TBevel);
var
  hDC, hTheme, hPaintBuffer, hBufferedDC: THandle;
  rt, rtt: TRect;
  iPartId, iStateId: Integer;
begin
  with ABevel do
  begin
    SetRect(rt, Left, Top, Left + Width, Top + Height);
    if Height > 4 then
    begin
      hTheme := g_hThemeEdit;
      iPartId := EP_EDITBORDER_NOSCROLL;
      if Enabled then
        iStateId := EPSN_HOT
      else
        iStateId := EPSN_FOCUSED;
    end
    else
      hTheme := g_hThemeHeader;

    { paint to buffer }
    hDC := GetDC(Parent.Handle);
    try
      hPaintBuffer := BeginBufferedPaint(hDC, rt, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rt);
      if Height > 4 then
      begin
        rtt := rt;
        InflateRect(rtt, -2, -2);
        ExcludeClipRect(hDC, rtt.Left, rtt.Top, rtt.Right, rtt.Bottom);
      end
      else
      begin
        InflateRect(rt, 2, 0);
        rtt := rt;
        InflateRect(rtt, -2, 0);
      end;
      DrawThemeBackground(hTheme, hBufferedDC, iPartId, iStateId, rt, 0);
      EndBufferedPaint(hPaintBuffer, True);
    finally
      ReleaseDC(Parent.Handle, hDC);
    end;
  end;
end;

///////////////////////////////////////////
procedure DrawAeroBorder(const hWnd: HWND);
var
  rClient, rWindow: TRect;
  hDC, hPaintBuffer, hBufferedDC, hRgn: THandle;
  dwStyle, dwExStyle: DWORD;
  iPartId, iStateId: Integer;
  sbi: SCROLLBARINFO;
begin
  { get window style }
  dwExStyle := GetWindowLong(hWnd, GWL_EXSTYLE);
  dwStyle := GetWindowLong(hWnd, GWL_STYLE);
  if dwExStyle and WS_EX_CLIENTEDGE = 0 then Exit;

  { paint to buffer }
  hDC := GetWindowDC(hWnd);
  try
    // exclude rect
    sbi.cbSize := SizeOf(sbi);
    if dwStyle and WS_VSCROLL <> 0 then
      if GetScrollBarInfo(hWnd, OBJID_VSCROLL, sbi) then
      begin
        GetWindowRect(hWnd, rWindow);
        MapWindowPointsRECT(0, hWnd, rWindow, 2);
        MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
        OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);
        ExcludeClipRect(hDC, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top, sbi.rcScrollBar.Right, sbi.rcScrollBar.Bottom);
      end;
    if dwStyle and WS_HSCROLL <> 0 then
      if GetScrollBarInfo(hWnd, OBJID_HSCROLL, sbi) then
      begin
        GetWindowRect(hWnd, rWindow);
        MapWindowPointsRECT(0, hWnd, rWindow, 2);
        MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
        OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);
        ExcludeClipRect(hDC, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top, sbi.rcScrollBar.Right, sbi.rcScrollBar.Bottom);
      end;
    GetWindowRect(hWnd, rWindow);
    GetClientRect(hWnd, rClient);
    MapWindowPointsRECT(0, hWnd, rWindow, 2);
    OffsetRect(rClient, -rWindow.Left, -rWindow.Top);
    ExcludeClipRect(hDC, rClient.Left, rClient.Top, rClient.Right, rClient.Bottom);

    { create buffer }
    GetWindowRect(hWnd, rWindow);
    OffsetRect(rWindow, -rWindow.Left, -rWindow.Top);
    hPaintBuffer := BeginBufferedPaint(hDC, rWindow, BPBF_TOPDOWNDIB, 0, hBufferedDC);
    BufferedPaintClear(hPaintBuffer, rWindow);

    { select clip region }
    hRgn := CreateRectRgn(0, 0, 0, 0);
    if GetClipRgn(hDC, hRgn) = 1 then
      SelectClipRgn(hBufferedDC, hRgn);

    { draw border }
    iPartId := EP_EDITBORDER_NOSCROLL;  // partid
    if dwStyle and WS_DISABLED <> 0 then
      iStateId := EPSN_FOCUSED
    else
      iStateId := EPSN_HOT;           // stateid
    DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rWindow, 0);

    { apply buffer }
    EndBufferedPaint(hPaintBuffer, True);
  finally
    if hRgn <> 0 then
        DeleteObject(hRgn);
    ReleaseDC(hWnd, hDC);
  end;
end;

//////////////////////////////////////////////
procedure DrawAeroScrollBar(const hWnd: HWND);
var
  rWindow, rTemp: TRect;
  pt, ptt: TPoint;
  hDC, hPaintBuffer, hBufferedDC: THandle;
  sbi: SCROLLBARINFO;
  dwStyle, dwExStyle: DWORD;
  iPartId, iStateId: Integer;
begin
  { paint to buffer }
  hDC := GetWindowDC(hWnd);
  try
    { get window style }
    dwStyle := GetWindowLong(hWnd, GWL_STYLE);

    { draw vertical scrollbar }
    sbi.cbSize := SizeOf(sbi);
    if dwStyle and WS_VSCROLL <> 0 then if GetScrollBarInfo(hWnd, OBJID_VSCROLL, sbi) then
    begin
      // offset scrollbar rect
      GetWindowRect(hWnd, rWindow);
      MapWindowPointsRECT(0, hWnd, rWindow, 2);
      MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
      OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);

      // create buffer
      hPaintBuffer := BeginBufferedPaint(hDC, sbi.rcScrollBar, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, sbi.rcScrollBar);

      // draw background
      iPartId := EP_EDITBORDER_VSCROLL;
      if dwStyle and WS_DISABLED <> 0 then
      begin
        iStateId := EPSN_FOCUSED;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSV_FOCUSED
        else
          InflateRect(rWindow, 1, 1);
      end
      else
      begin
        iStateId := EPSN_HOT;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSV_HOT
        else
          InflateRect(rWindow, 1, 1);
      end;
      DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rWindow, 0);
      EndBufferedPaint(hPaintBuffer, True);

      // partid, stateid
      iPartId := BP_PUSHBUTTON;
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE <> 0 then
        iStateId := PBS_HOT
      else
        iStateId := PBS_NORMAL;   // hot state instead disabled

      // get cursor coord
      GetCursorPos(ptt);
      MapWindowPointsPOINT(0, hWnd, ptt, 1);

    { draw up arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnUp, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton - pt.x) div 2, (sbi.dxyLineButton - pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnUp, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw down arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Bottom-sbi.dxyLineButton);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnDown, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton-pt.x) div 2, (sbi.dxyLineButton-pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnDown, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw thumb }
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
      begin
        // create buffer
        SetRect(rTemp, 0, sbi.xyThumbTop, sbi.dxyLineButton, sbi.xyThumbBottom);
        OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
        hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
        BufferedPaintClear(hPaintBuffer, rTemp);

        // draw background
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
        DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);
      end;

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);
    end;

    { draw horizontal scrollbar }
    if dwStyle and WS_HSCROLL <> 0 then if GetScrollBarInfo(hWnd, OBJID_HSCROLL, sbi) then
    begin
      { offset scrollbar rect }
      GetWindowRect(hWnd, rWindow);
      MapWindowPointsRECT(0, hWnd, rWindow, 2);
      MapWindowPointsRECT(0, hWnd, sbi.rcScrollBar, 2);
      OffsetRect(sbi.rcScrollBar, -rWindow.Left, -rWindow.Top);

      { create buffer }
      hPaintBuffer := BeginBufferedPaint(hDC, sbi.rcScrollBar, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, sbi.rcScrollBar);

      { draw background }
      iPartId := EP_EDITBORDER_HSCROLL;
      if dwStyle and WS_DISABLED <> 0 then
      begin
        iStateId := EPSN_FOCUSED;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSH_FOCUSED
        else
          InflateRect(rWindow, 1, 1);
      end
      else
      begin
        iStateId := EPSN_HOT;
        if dwExStyle and WS_EX_CLIENTEDGE <> 0 then
          iStateId := EPSH_HOT
        else
          InflateRect(rWindow, 1, 1);
      end;
      DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rWindow, 0);

      { apply buffer }
      EndBufferedPaint(hPaintBuffer, True);

      { partid, stateid }
      iPartId := BP_PUSHBUTTON;
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE <> 0 then
        iStateId := PBS_HOT
      else
        iStateId := PBS_NORMAL;   // hot state instead disabled

      { get cursor coord }
      GetCursorPos(ptt);
      MapWindowPointsPOINT(0, hWnd, ptt, 1);

    { draw left arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton - pt.x) div 2, (sbi.dxyLineButton - pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw right arrow }
      // create buffer
      SetRect(rTemp, 0, 0, sbi.dxyLineButton, sbi.dxyLineButton);
      OffsetRect(rTemp, sbi.rcScrollBar.Right - sbi.dxyLineButton, sbi.rcScrollBar.Top);
      hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
      BufferedPaintClear(hPaintBuffer, rTemp);

      // draw background
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
      DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

      // draw arrow
      GetThemePartSize(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
      OffsetRect(rTemp, (sbi.dxyLineButton - pt.x) div 2, (sbi.dxyLineButton - pt.y) div 2);
      DrawThemeBackground(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, rTemp, 0);

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);

    { draw thumb }
      if sbi.rgstate[0] and STATE_SYSTEM_UNAVAILABLE = 0 then
      begin
        // create buffer
        SetRect(rTemp, sbi.xyThumbTop, 0, sbi.xyThumbBottom, sbi.dxyLineButton);
        OffsetRect(rTemp, sbi.rcScrollBar.Left, sbi.rcScrollBar.Top);
        hPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
        BufferedPaintClear(hPaintBuffer, rTemp);

        // draw background
        if PtInRect(rTemp, ptt) then
          iStateId := PBS_HOT
        else
          iStateId := PBS_NORMAL;
        DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);
      end;

      // apply buffer
      EndBufferedPaint(hPaintBuffer, True);
    end;
  finally
    ReleaseDC(hWnd, hDC);
  end;
end;

//////////////////////////////////////////////////////////////////////////
procedure DrawIntersectedBackground(const hWnd: HWND; const hDC: THandle);
var
  rClip: TRect;
  hClipRgn: THandle;
begin
  GetClientRect(hWnd, rClip);
  MapWindowPointsRECT(hWnd, GetAncestor(hWnd, GA_ROOT), rClip, 2);
  hClipRgn := CreateRectRgnIndirect(rClip);
  try
    if CombineRgn(hClipRgn, hClipRgn, g_GlassRgn, RGN_DIFF) <> NULLREGION then
    begin
      OffsetRgn(hClipRgn, -rClip.Left, -rClip.Top);
      FillRgn(hDC, hClipRgn, GetSysColorBrush(COLOR_BTNFACE));
    end;
  finally
    DeleteObject(hClipRgn);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////
function SetMargins(const cxLeftWidth, cxRightWidth, cyTopHeight, cyBottomHeight: Integer): MARGINS;
begin
  Result.cxLeftWidth := cxLeftWidth;
  Result.cxRightWidth := cxRightWidth;
  Result.cyTopHeight := cyTopHeight;
  Result.cyBottomHeight := cyBottomHeight;
end;
#if aero == 1
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function DlgProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): Longint;
var
  margins: MARGINS;
  ps: PAINTSTRUCT;
  rClient: TRect;
  hDC: THandle;
begin
  case uMsg of
    WM_DWMNCRENDERINGCHANGED:
      begin
        if BOOL(wParam = 1) and g_fEnabled then
        begin
          margins := SetMargins(-1, -1, -1, -1);
          DwmExtendFrameIntoClientArea(hWnd, margins);
        end;
      end;
    WM_PAINT:
      begin
        if g_fEnabled then
        begin
          hDC := BeginPaint(hWnd, ps);
          try
            GetClientRect(hWnd, rClient);
            FillRect(hDC, rClient, GetSysColorBrush(COLOR_BACKGROUND));
          finally
            EndPaint(hWnd, ps);
          end;
        end
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
    WM_DESTROY:
      begin
        RemoveWindowSubclass(hWnd, g_pDlgProc, 0);
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function StaticDlgProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  dwStyle, dwFlags: DWORD;
  dtt: DTTOPTS;
begin
  case uMsg of
    WM_PAINT:
      if g_fEnabled then
      begin
        dwStyle := GetWindowLong(hWnd, GWL_STYLE);
        if dwStyle and WS_VISIBLE <> 0 then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);
            OffsetRect(rClient, 2, 0);

            { text style }
            if dwStyle and SS_ICON = 0 then
            begin
              { draw text }
              dwFlags := DT_WORDBREAK or DT_WORD_ELLIPSIS;
              dtt.dwSize := SizeOf(dtt);
              dtt.iGlowSize := 6;
              dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
              if dwStyle and WS_DISABLED = 0 then
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
              else
                dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
              hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(GetCaptionFromHandle(hWnd)), -1, dwFlags, rClient, dtt);
              if hFontOld <> 0 then
                SelectObject(hBufferedDC, hFontOld);
            end;

            { icon style }
            if dwStyle and SS_ICON <> 0 then
            begin
              OffsetRect(rClient, -2, 0);
              DrawIconEx(hBufferedDC, 0, 0, SendMessage(hWnd, STM_GETICON, 0, 0), rClient.Right, rClient.Bottom, 0, GetSysColorBrush(COLOR_BACKGROUND), DI_NORMAL);
            end;

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_DESTROY:
      begin
        RemoveWindowSubclass(hWnd, g_pStaticDlgProc, 0);
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ButtonDlgProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; dwRefData: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  dwStyle, dwFlags, dwState: DWORD;
  dtt: DTTOPTS;
  iPartId, iStateId: Integer;
begin
  case uMsg of
    WM_ENABLE:
      if g_fEnabled then
      begin
        GetClientRect(hWnd, rClient);
        InvalidateRect(hWnd, rClient, False);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        { get button type }
        dwStyle := GetWindowLong(hWnd, GWL_STYLE);
        case dwStyle and $000F of
          BS_PUSHBUTTON,
          BS_DEFPUSHBUTTON:
            begin
              { partid, stateid }
              iPartId := BP_PUSHBUTTON;
              if dwStyle and WS_DISABLED = 0 then
              begin
                iStateId := PBS_NORMAL;
                dwState := SendMessage(hWnd, BM_GETSTATE, 0, 0);
                if dwState and BST_HOT <> 0 then
                  iStateId := PBS_HOT;
                if dwState and BST_PUSHED <> 0 then
                  iStateId := PBS_PRESSED;
              end
              else
                iStateId := PBS_DISABLED;
            end;
        end;

        { paint to buffer }
        hDC := BeginPaint(hWnd, ps);
        try
          { create buffer }
          GetClientRect(hWnd, rClient);
          hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rClient);

          { draw background }
          DrawThemeBackground(g_hVertShowDesktopThemeButton, hBufferedDC, iPartId, iStateId, rClient, 0);

          { draw text }
          dwFlags := DT_SINGLELINE or DT_CENTER or DT_VCENTER;
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
          if dwStyle and WS_DISABLED = 0 then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, StrToWStr(GetCaptionFromHandle(hWnd)), -1, dwFlags, rClient, dtt);
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_DESTROY:
      begin
        RemoveWindowSubclass(hWnd, g_pButtonDlgProc, 0);
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////
procedure GetDlgResources(const hWnd: HWND);
var
  hDummy: HWND;
begin
  { release previous theme handles }
  if g_hVertShowDesktopThemeButton <> 0 then
    CloseThemeData(g_hVertShowDesktopThemeButton);
  if g_hThemeTreeView <> 0 then
    CloseThemeData(g_hThemeTreeView);

  { exit if not composited }
  if not g_fEnabled then Exit;

  { button theme }
  hDummy := CreateWindowEx(0, WC_BUTTON, '', WS_CHILDWINDOW, 0, 0, 10, 10, hWnd, 0, HInstance, 0);
  SetWindowTheme(hDummy, StrToWStr('VerticalShowDesktop'), '');
  g_hVertShowDesktopThemeButton := OpenThemeDataEx(hDummy, StrToWStr('Button'), 1);
  DestroyWindow(hDummy);

  { treeview theme }
  hDummy := CreateWindowEx(0, 'SysTreeView32', '', WS_CHILDWINDOW, 0, 0, 10, 10, hWnd, 0, HInstance, 0);
  SetWindowTheme(hDummy, StrToWStr('Explorer'), '');
  g_hThemeTreeView := OpenThemeDataEx(hDummy, StrToWStr('TreeView'), 1);
  DestroyWindow(hDummy);
end;

///////////////////////////////////////////////////////////////////
function CBTProc(nCode: Integer; wParam, lParam: Longint): Longint;
begin
  if nCode < 0 then
    CallNextHookEx(g_hDlgHook, nCode, wParam, lParam);
  case nCode of
    HCBT_CREATEWND:
      begin
        case GetClassNameFromHandle(wParam) of
          WC_DIALOG:
            begin
              { check composition }
              if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
                DwmIsCompositionEnabled(g_fEnabled);

              { get resources }
              GetDlgResources(wParam);

              { subclass }
              if g_pDlgProc = 0 then
                g_pDlgProc := CallbackAddr('DlgProc');
              SetWindowSubclass(wParam, g_pDlgProc, 0, nil);
            end;
          WC_STATIC:
            begin
              if g_pStaticDlgProc = 0 then
                g_pStaticDlgProc := CallbackAddr('StaticDlgProc');
              SetWindowSubclass(wParam, g_pStaticDlgProc, 0, nil);
            end;
          WC_BUTTON:
            begin
              if g_pButtonDlgProc = 0 then
                g_pButtonDlgProc := CallbackAddr('ButtonDlgProc');
              SetWindowSubclass(wParam, g_pButtonDlgProc, 0, nil);
            end;
        end;
        Result := 0;
      end;
  end;
  Result := CallNextHookEx(g_hDlgHook, nCode, wParam, lParam);
end;

/////////////////////
procedure SetDlgHook;
begin
  if g_pCBTProc = 0 then
    g_pCBTProc := CallbackAddr('CBTProc');
  g_hDlgHook := SetWindowsHookEx(WH_CBT, g_pCBTProc, 0, GetCurrentThreadId);
end;

////////////////////
procedure UnHookDlg;
begin
  UnhookWindowsHookEx(g_hDlgHook);
end;
#endif
///////////////////////////////////////
///////////////////////////////////////
///////////////////////////////////////
procedure FormOnPaint(Sender: TObject);
var
  i: Integer;
begin
  if not g_fEnabled then Exit;

  { TBevel }
  if Sender is TBevel then
    DrawAeroBevel(TBevel(Sender));

  { recurse }
  if Sender is TWinControl then
    for i := 0 to TWinControl(Sender).ControlCount - 1 do
      FormOnPaint(TWinControl(Sender).Controls[i]);
end;

/////////////////////////////////////////////////
function GetParentForm(Control: TControl): TForm;
begin
  while (not (Control is TForm)) and (Control.Parent <> nil) do
    Control := Control.Parent;
  if Control is TForm then
    Result := TForm(Control)
  else
    Result := nil;
end;

////////////////////////////////////////////////////////////////////
procedure GetGlassRegion(const hWnd: HWND; const ClipRect: MARGINS);
var
  rClient, rClip: TRect;
  hClipRgn: THandle;
begin
  GetClientRect(hWnd, rClient);
  if g_GlassRgn <> 0 then
  begin
    DeleteObject(g_GlassRgn);
    g_GlassRgn := 0;
  end;

  g_GlassRgn := CreateRectRgnIndirect(rClient);
  SetRect(rClip, ClipRect.cxLeftWidth, ClipRect.cyTopHeight, rClient.Right - ClipRect.cxRightWidth, rClient.Bottom - ClipRect.cyBottomHeight);
  if not IsRectEmpty(rClip) then
  begin
    hClipRgn := CreateRectRgnIndirect(rClip);
    if CombineRgn(g_GlassRgn, g_GlassRgn, hClipRgn, RGN_DIFF) = NULLREGION then
    begin
      DeleteObject(g_GlassRgn);
      g_GlassRgn := 0;
      g_GlassRgn := CreateRectRgnIndirect(rClient);
    end;
    DeleteObject(hClipRgn);
//    FillRgn(g_hDC, g_GlassRgn, GetSysColorBrush(COLOR_HIGHLIGHT));
  end;
end;

///////////////////////////////////////////////////////
procedure SubclassForm(const AWinControl: TWinControl);
var
  AForm: TForm;
  crColor: TColor;
begin
  { initial settings }
  crColor := clBtnFace;
#if aero == 1 || aero == 3 || aero == 4
  if g_fEnabled then
    crColor := clBackground;
#endif

  { TForm }
  AForm := GetParentForm(AWinControl);
  if Assigned(AForm) then
  with AForm do
  begin
    { settings }
    Color := crColor;
  #if aero == 1
    OnPaint := @FormOnPaint;
  #endif
    { subclass }
    if g_pWndProc = 0 then
      g_pWndProc := CallbackAddr('WndProc');
    SetWindowSubclass(Handle, g_pWndProc, 0, AForm);
  end;
end;

/////////////////////////////////////////////////////////////////////////////
procedure SubclassControls(const AControl: TControl; const Recurse: Boolean);
var
  i: Integer;
  hUpDownCtrl: HWND;
  cbi: COMBOBOXINFO;
  crColor: TColor;
begin
  { initial settings }
  if g_fEnabled then
    crColor := clBackground
  else
    crColor := clBtnFace;

#if aero == 0 || aero == 1
  { TNewNotebook }
  if AControl is TNewNotebook then
  with TNewNotebook(AControl) do
    for i := 0 to PageCount - 1 do
      Pages[i].Color := crColor;
#endif

  { TPanel }
  if AControl is TPanel then
  with TPanel(AControl) do
  begin
    if g_fEnabled then
      Color := clBackground
    else
      Color := clWindow;
  end;

  { TNewStaticText }
  if AControl is TNewStaticText then
  with TNewStaticText(AControl) do
  begin
    { settings }
    Caption := TrimRight(Caption);
    if g_fEnabled then
      Caption := Format('%s ', [Caption]);    // static aero glow fix

    { subclass }
    if g_pStaticWndProc = 0 then
      g_pStaticWndProc := CallbackAddr('StaticWndProc');
    SetWindowSubclass(Handle, g_pStaticWndProc, 0, AControl);
  end;

  { TButtonControl }
  if AControl is TButtonControl then
  with TButtonControl(AControl) do
  begin
    { settings }
    if AControl is TNewButton then
    begin
      if g_fEnabled then
        SetWindowTheme(Handle, StrToWStr('VerticalShowDesktop'), '')
      else
        SetWindowTheme(Handle, StrToWStr('Button'), '');
      SendMessage(Handle, WM_SYSCOLORCHANGE, 0, 0);
    end;

    { subclass }
    if g_pButtonWndProc = 0 then
      g_pButtonWndProc := CallbackAddr('ButtonWndProc');
    SetWindowSubclass(Handle, g_pButtonWndProc, 0, AControl);
  end;

  { TEdit, TNewMemo }
  if (AControl is TEdit) or (AControl is TNewMemo) then
  with TCustomEdit(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pEditWndProc = 0 then
      g_pEditWndProc := CallbackAddr('EditWndProc');
    SetWindowSubclass(Handle, g_pEditWndProc, 0, AControl);
  end;

  { TRichEditViewer }
  if AControl is TRichEditViewer then
  with TRichEditViewer(AControl) do
  begin
    { subclass }
    if g_pRichEditWndProc = 0 then
      g_pRichEditWndProc := CallbackAddr('RichEditWndProc');
    SetWindowSubclass(Handle, g_pRichEditWndProc, 0, AControl);
  end;

  { TNewComboBox }
  if AControl is TNewComboBox then
  with TNewComboBox(AControl) do
  begin
    { subclass }
    if g_pComboBoxWndProc = 0 then
      g_pComboBoxWndProc := CallbackAddr('ComboBoxWndProc');
    SetWindowSubclass(Handle, g_pComboBoxWndProc, 0, AControl);

    { subclass ComboLBox }
    if AControl.Name = 'TypesCombo' then    // WizardForm.TypesCombo
    begin
      cbi.cbSize := SizeOf(cbi);
      if GetComboBoxInfo(Handle, cbi) then
      begin
        if g_pComboLBoxWndProc = 0 then
          g_pComboLBoxWndProc := CallbackAddr('TypesComboListBoxWndProc');
        SetWindowSubclass(cbi.hwndList, g_pComboLBoxWndProc, 0, AControl);
      end;
    end;
  end;

  { THeaderControl }
  if AControl is THeaderControl then
  with THeaderControl(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pHeaderWndProc = 0 then
      g_pHeaderWndProc := CallbackAddr('HeaderWndProc');
    SetWindowSubclass(Handle, g_pHeaderWndProc, 0, AControl);
  end;

  { TListView }
  if AControl is TListView then
  with TListView(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pListViewWndProc = 0 then
      g_pListViewWndProc := CallbackAddr('ListViewWndProc');
    SetWindowSubclass(Handle, g_pListViewWndProc, 0, AControl);
  end;

  { TStartMenuFolderTreeView }
  if AControl is TStartMenuFolderTreeView then
  with TStartMenuFolderTreeView(AControl) do
  begin
    { settings }
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pTreeViewWndProc = 0 then
      g_pTreeViewWndProc := CallbackAddr('TreeViewWndProc');
    SetWindowSubclass(Handle, g_pTreeViewWndProc, 0, AControl);
  end;

  { TNewCheckListBox }
  if AControl is TNewCheckListBox then
  with TNewCheckListBox(AControl) do
  begin
    { settings }
    if TListBox(WizardForm.ComponentsList as TListBox).Handle <> 0 then
    Color := crColor;
    SetProp(Handle, 'AERO_LISTBOX_WANTTABS', Longint(WantTabs));
    if g_fEnabled then
      WantTabs := True
    else
      WantTabs := GetProp(Handle, 'AERO_LISTBOX_WANTTABS') = 1;
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pCheckListBoxWndProc = 0 then
      g_pCheckListBoxWndProc := CallbackAddr('CheckListBoxWndProc');
    SetWindowSubclass(Handle, g_pCheckListBoxWndProc, 0, TNewCheckListBox(AControl));
  end;

  { TListBox }
  if (AControl is TListBox) and not(AControl is TNewCheckListBox) then
  with TListBox(AControl) do
  begin
    { settings }
    Color := crColor;
    SetWindowLong(Handle, GWL_EXSTYLE, GetWindowLong(Handle, GWL_EXSTYLE) or (DWORD(g_fEnabled) * WS_EX_COMPOSITED));

    { subclass }
    if g_pListBoxWndProc = 0 then
      g_pListBoxWndProc := CallbackAddr('ListBoxWndProc');
    SetWindowSubclass(Handle, g_pListBoxWndProc, 0, TListBox(AControl));
  end;

  { TPageControl }
  if AControl is TPageControl then
  with TPageControl(AControl) do
  begin
    { settings }
    if not MultiLine then
    begin
      hUpDownCtrl := FindWindowEx(Handle, 0, 'msctls_updown32', '');
      if hUpDownCtrl <> 0 then
      begin
        if g_pUpDownWndProc = 0 then
          g_pUpDownWndProc := CallbackAddr('UpDownWndProc');
        SetWindowSubclass(hUpDownCtrl, g_pUpDownWndProc, 0, nil);
      end;
    end;

    { subclass }
    if g_pPageControlWndProc = 0 then
      g_pPageControlWndProc := CallbackAddr('PageControlWndProc');
    SetWindowSubclass(Handle, g_pPageControlWndProc, 0, AControl);
  end;

  { TTabSheet }
  if AControl is TTabSheet then
  with TTabSheet(AControl) do
  begin
    { subclass }
    if g_pTabSheetWndProc = 0 then
      g_pTabSheetWndProc := CallbackAddr('TabSheetWndProc');
    SetWindowSubclass(Handle, g_pTabSheetWndProc, 0, AControl);
  end;

  { TBevel }
  if AControl is TBevel then
  with TBevel(AControl) do
  begin
    Visible := not g_fEnabled;
  end;

  { recurse }
  if not Recurse then Exit;
  if AControl is TWinControl then
    for i := 0 to TWinControl(AControl).ControlCount - 1 do
      SubclassControls(TWinControl(AControl).Controls[i], Recurse);
end;

////////////////////////////////////////////////////////////////
procedure UpdateGraphicControls(const AWinControl: TWinControl);
var
  hbrBackground: THandle;
  crBackground: DWORD;
  AForm: TForm;
  shfi: SHFILEINFO;
  hIcon: THandle;
  i: Integer;
begin
  { global brush }
  hbrBackground := GetSysColorBrush(COLOR_BTNFACE);
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
  begin
    hbrBackground := GetSysColorBrush(COLOR_BACKGROUND);
    crBackground := GetSysColor(COLOR_BACKGROUND);
  end;
#endif
  { root form }
  AForm := GetParentForm(AWinControl);

  { TSelectLanguageForm }
  if AForm is TSelectLanguageForm then
  with TSelectLanguageForm(AForm).IconBitmapImage.Bitmap do
    DrawIconEx(Canvas.Handle, 0, 0, Application.Icon.Handle, Width, Height, 0, hbrBackground, DI_NORMAL);

  { TWizardForm }
  if AForm is TWizardForm then
  with TWizardForm(AForm) do
  begin
    { SelectDirBitmapImage }
    SHGetFileInfo(GetShellFolderByCSIDL(CSIDL_STARTMENU, True), 0, shfi, SizeOf(shfi), SHGFI_ICON);
    with SelectDirBitmapImage.Bitmap do
      DrawIconEx(Canvas.Handle, 0, 0, shfi.hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);

    { SelectGroupBitmapImage }
    if (GetWindowsVersion > $05010000) and (GetWindowsVersion < $06000000) then
    begin
      SHGetFileInfo(GetShellFolderByCSIDL(CSIDL_PROGRAMS, True), 0, shfi, SizeOf(shfi), SHGFI_ICON);
      with SelectGroupBitmapImage.Bitmap do
        DrawIconEx(Canvas.Handle, 0, 0, shfi.hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);
    end;
    if GetWindowsVersion > $06000000 then
    begin
      shfi.hIcon := ExtractIcon(HInstance, ExpandConstant('{sys}\shell32.dll'), 39);
      with SelectGroupBitmapImage.Bitmap do
        DrawIconEx(Canvas.Handle, 0, 0, shfi.hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);
      DestroyIcon(shfi.hIcon);
    end;

    { bitmaps }
    DrawImageOnBitmap(WizardBitmapImage, '{#WizardImageFile}', crBackground);
    DrawImageOnBitmap(WizardBitmapImage2, '{#WizardImageFile}', crBackground);
    if g_fEnabled then
    #if aero == 3
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW))
    #else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_BACKGROUND))
    #endif
    else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW));
    DrawImageOnBitmap(DefaultInstallTypeBitmapImage, '{#InstallLogo}', crBackground);
    DrawImageOnBitmap(PortableInstallTypeBitmapImage, '{#PortableLogo}', crBackground);
    DrawImageOnBitmap(DefaultUninstallTypeBitmapImage, '{#RecycleLogo}', crBackground);
    with StylesPage.CheckListBox do
      if AbsItemIndex > -1 then
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[AbsItemIndex].szSelectedBitmap, crBackground);
    with PreparePageBitmap do
    begin
      hIcon := LoadImage(0, OIC_ERROR, IMAGE_ICON, 0, 0, LR_SHARED);
      DrawIconEx(Bitmap.Canvas.Handle, 0, 0, hIcon, Width, Height, 0, hbrBackground, DI_NORMAL);
    end;
  end;

  { TUninstallProgressForm }
  if AForm is TUninstallProgressForm then with TUninstallProgressForm(AForm) do
  begin
    { WizardSmallBitmapImage }
    if g_fEnabled then
    #if aero == 3
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW))
    #else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_BACKGROUND))
    #endif
    else
      DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', GetSysColor(COLOR_WINDOW));
  end;

  { PreviewForm }
  if AForm = PreviewForm then
  with PreviewForm do
  begin
    for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
    case g_StylesHelper[i].szInternalName of
      'Skin_Custom_Miranda',
      'Skin_Custom_Miranda_Dark',
      'Skin_Custom_Miranda_Light',
      'Skin_Native_7_Dark',
      'Skin_Native_7_Light',
      'Skin_WinStyle_Classic_Dark',
      'Skin_WinStyle_Classic_Light',
      'Skin_WinStyle_Dark',
      'Skin_WinStyle_Light',
      'Skin_Diplomat_Dark',
      'Skin_Diplomat_Light',
      'Skin_Glamour_Aqua_Dark',
      'Skin_Glamour_Aqua_Light',
      'Skin_Glamour_Dark',
      'Skin_Glamour_Light',
      'Skin_GoldTime_Dark',
      'Skin_GoldTime_Light',
      'Skin_Graphite_Brown_Dark',
      'Skin_Graphite_Brown_Light',
      'Skin_Graphite_Gray_Dark',
      'Skin_Graphite_Gray_Light',
      'Skin_PhotoOne_Dark',
      'Skin_PhotoOne_Light',
      'Skin_Surface_Black',
      'Skin_Surface_White',
      'Skin_Textolite_Brown_Dark',
      'Skin_Textolite_Brown_Light',
      'Skin_Textolite_Gray_Dark',
      'Skin_Textolite_Gray_Light':
        if StylesPage.CheckListBox.Checked[i] then
          DrawImageOnBitmap(PreviewFormBitmapImage, g_StylesHelper[i].szPreviewBitmap, crBackground);
    end;
    ClientWidth := PreviewFormBitmapImage.Width;
    ClientHeight := PreviewFormBitmapImage.Height;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////
procedure SubclassControlsProc(AWinControl: TWinControl; const Recurse: Boolean);
var
  i: Integer;
begin
#if aero != 0
  { check composition }
  if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
    DwmIsCompositionEnabled(g_fEnabled);
#endif
  { enable buffered paint }
  if g_fEnabled then
    BufferedPaintInit;

  { subclass }
  GetThemeHandles(AWinControl);
  SubclassForm(AWinControl);
  SubclassControls(AWinControl, Recurse);
  if not Recurse then
    for i := 0 to AWinControl.ControlCount - 1 do
      SubclassControls(AWinControl.Controls[i], False);
  UpdateGraphicControls(AWinControl);
  Application.ProcessMessages;
end;

/////////////////////////////////////////////////////////
procedure UnSubclassForm(const AWinControl: TWinControl);
var
  AForm: TForm;
begin
  AForm := GetParentForm(AWinControl);
  if Assigned(AForm) then
    RemoveWindowSubclass(AForm.Handle, g_pWndProc, 0);
end;

///////////////////////////////////////////////////////
procedure UnSubclassControls(const AControl: TControl);
var
  i: Integer;
  hUpDownCtrl: HWND;
  cbi: COMBOBOXINFO;
begin
  { TNewStaticText }
  if AControl is TNewStaticText then
    RemoveWindowSubclass(TNewStaticText(AControl).Handle, g_pStaticWndProc, 0);

  { TButtonControl }
  if AControl is TButtonControl then
    RemoveWindowSubclass(TButtonControl(AControl).Handle, g_pButtonWndProc, 0);

  { TEdit }
  if (AControl is TEdit) or (AControl is TNewMemo) then
  with TCustomEdit(AControl) do
  begin
    DeleteObject(GetProp(Handle, 'AERO_EDIT_SELRGN'));
    RemoveProp(Handle, 'AERO_EDIT_SELRGN');
    RemoveWindowSubclass(Handle, g_pEditWndProc, 0);
  end;

  { TRichEditViewer }
  if AControl is TRichEditViewer then
  with TRichEditViewer(AControl) do
  begin
    DeleteObject(GetProp(Handle, 'AERO_RICHEDIT_BRUSH'));
    RemoveProp(Handle, 'AERO_RICHEDIT_BRUSH');
    RemoveWindowSubclass(Handle, g_pRichEditWndProc, 0);
  end;

  { TNewComboBox }
  if AControl is TNewComboBox then
  with TNewComboBox(AControl) do
  begin
    RemoveProp(Handle, 'AERO_COMBOBOX_READONLYSTATES');
    RemoveWindowSubclass(Handle, g_pComboBoxWndProc, 0);

    { unsubclass ComboLBox }
    if AControl.Name = 'TypesCombo' then    // WizardForm.TypesCombo
    begin
      cbi.cbSize := SizeOf(cbi);
      if GetComboBoxInfo(Handle, cbi) then
        RemoveWindowSubclass(cbi.hwndList, g_pComboLBoxWndProc, 0);
    end;
  end;

  { THeaderControl }
  if AControl is THeaderControl then
    RemoveWindowSubclass(THeaderControl(AControl).Handle, g_pHeaderWndProc, 0);


  { TListView }
  if AControl is TListView then
    RemoveWindowSubclass(TListView(AControl).Handle, g_pListViewWndProc, 0);

  { TStartMenuFolderTreeView }
  if AControl is TStartMenuFolderTreeView then
    RemoveWindowSubclass(TStartMenuFolderTreeView(AControl).Handle, g_pTreeViewWndProc, 0);

  { TNewCheckListBox }
  if AControl is TNewCheckListBox then
  with TNewCheckListBox(AControl) do
  begin
    RemoveProp(Handle, 'AERO_LISTBOX_WANTTABS');
    RemoveWindowSubclass(Handle, g_pCheckListBoxWndProc, 0);
  end;

  { TListBox }
  if AControl is TListBox then
    RemoveWindowSubclass(TListBox(AControl).Handle, g_pListBoxWndProc, 0);

  { TPageControl }
  if AControl is TPageControl then
  with TPageControl(AControl) do
  begin
    if not MultiLine then
    begin
      hUpDownCtrl := FindWindowEx(Handle, 0, 'msctls_updown32', '');
      RemoveWindowSubclass(hUpDownCtrl, g_pUpDownWndProc, 0);
    end;
    RemoveWindowSubclass(Handle, g_pPageControlWndProc, 0);
  end;

  { TTabSheet }
  if AControl is TTabSheet then
    RemoveWindowSubclass(TTabSheet(AControl).Handle, g_pTabSheetWndProc, 0);

  { recurse }
  if AControl is TWinControl then
    for i := 0 to TWinControl(AControl).ControlCount - 1 do
      UnSubclassControls(TWinControl(AControl).Controls[i]);
end;

/////////////////////////////////////////////////////////////////
procedure UnSubclassControlsProc(const AWinControl: TWinControl);
begin
  { unsubclass }
  UnSubclassForm(AWinControl);
  UnSubclassControls(AWinControl);
  UpdateGraphicControls(AWinControl);

  { disable buffered paint }
  if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
    BufferedPaintUnInit;
end;
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
procedure CreateWizardForm(const cx, cy: DWORD);
var
  dx: DWORD;
begin
  { load bitmap }
  DrawImageOnBitmap(WizardForm.WizardBitmapImage, '{#WizardImageFile}', 0);
  DrawImageOnBitmap(WizardForm.WizardBitmapImage2, '{#WizardImageFile}', 0);
  DrawImageOnBitmap(WizardForm.WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', 0);

  { redesign form }
  with WizardForm do
  begin
    // metrics
    cx := ScaleX(cx);
    cy := ScaleY(cy);
    ClientWidth := ClientWidth + cx;
    ClientHeight := ClientHeight + cy;

    // Buttons
    CancelButton.Left := CancelButton.Left + cx;
    CancelButton.Top := CancelButton.Top + cy;
    NextButton.Left := NextButton.Left + cx;
    NextButton.Top := NextButton.Top + cy;
    BackButton.Left := BackButton.Left + cx;
    BackButton.Top := BackButton.Top + cy;

    // Common
    OuterNotebook.ClientWidth := ClientWidth;
    OuterNotebook.ClientHeight := OuterNotebook.ClientHeight + cy;
    InnerNotebook.Width := InnerNotebook.Width + cx;
    InnerNotebook.Height := InnerNotebook.Height + cy;
    MainPanel.ClientWidth := ClientWidth;
    dx := MulDiv(cy, WizardBitmapImage.Width, WizardBitmapImage.Height);
    WizardBitmapImage.Width := WizardBitmapImage.Width + dx;
    WizardBitmapImage.Height := WizardBitmapImage.Height + cy;
    WizardSmallBitmapImage.Width := WizardSmallBitmapImage.Bitmap.Width;
    WizardSmallBitmapImage.Left := MainPanel.ClientWidth - WizardSmallBitmapImage.Width - ScaleX(8);
    PageNameLabel.Width := WizardSmallBitmapImage.Left - PageNameLabel.Left - ScaleX(8);
    PageDescriptionLabel.Width := WizardSmallBitmapImage.Left - PageDescriptionLabel.Left - ScaleX(8);
    Bevel1.Width := Bevel1.Width + cx;
    Bevel.Width := Bevel.Width + cx;
    Bevel.Top := Bevel.Top + cy;
    BeveledLabel.Left := ScaleX(25);
    BeveledLabel.Top := BeveledLabel.Top + cy;

    // Welcome page
    WelcomeLabel1.Left := WelcomeLabel1.Left + dx;
    WelcomeLabel1.Width := WelcomeLabel1.Width + cx;
    WelcomeLabel2.Left := WelcomeLabel2.Left + dx;
    WelcomeLabel2.Width := WelcomeLabel2.Width + cx;
    WelcomeLabel2.Height := WelcomeLabel2.Height + cy;

    // License page
    LicenseLabel1.Width := LicenseLabel1.Width + cx;
    LicenseMemo.Width := LicenseMemo.Width + cx;
    LicenseMemo.Height := LicenseMemo.Height + cy;
    LicenseAcceptedRadio.Top := LicenseAcceptedRadio.Top + cy;
    LicenseAcceptedRadio.Checked := True;
    LicenseAcceptedRadio.Hide;
    LicenseNotAcceptedRadio.Top := LicenseNotAcceptedRadio.Top + cy;
    LicenseNotAcceptedRadio.Hide;
    LicenseMemo.Height := LicensePage.Height - LicenseMemo.Top - ScaleY(8);

    // Password page
    PasswordLabel.Width := PasswordLabel.Width + cx;

    // InfoBefore page
    InfoBeforeClickLabel.Width := InfoBeforeClickLabel.Width + cx;
    InfoBeforeMemo.Width := InfoBeforeMemo.Width + cx;
    InfoBeforeMemo.Height := InfoBeforeMemo.Height + cy;

    // UserInfo page
    UserInfoNameEdit.Width := UserInfoNameEdit.Width + cx;
    UserInfoOrgEdit.Width := UserInfoOrgEdit.Width + cx;
    UserInfoSerialEdit.Width := UserInfoSerialEdit.Width + cx;

    // SelectDir page
    SelectDirLabel.Width := SelectDirLabel.Width + cx;
    SelectDirBrowseLabel.Width := SelectDirBrowseLabel.Width + cx;
    DirEdit.Width := DirEdit.Width + cx;
    DirBrowseButton.Left := DirBrowseButton.Left + cx;
    DiskSpaceLabel.Top := DiskSpaceLabel.Top + cy;

    // ComponentsSelect page
    SelectComponentsLabel.Width := SelectComponentsLabel.Width + cx;
    TypesCombo.Width := TypesCombo.Width + cx;
    ComponentsList.Width := ComponentsList.Width + cx;
    ComponentsList.Height := ComponentsList.Height + cy;
    ComponentsDiskSpaceLabel.Top := ComponentsDiskSpaceLabel.Top + cy;

    // SelectProgramGroup page
    SelectStartMenuFolderLabel.Width := SelectStartMenuFolderLabel.Width + cx;
    SelectStartMenuFolderBrowseLabel.Width := SelectStartMenuFolderBrowseLabel.Width + cx;
    GroupEdit.Width := GroupEdit.Width + cx;
    GroupBrowseButton.Left := GroupBrowseButton.Left + cx;
    NoIconsCheck.Top := NoIconsCheck.Top + cy;

    // SelectTasks page
    SelectTasksLabel.Width := SelectTasksLabel.Width + cx;
    TasksList.Width := TasksList.Width + cx;
    TasksList.Height := TasksList.Height + cy;

    // Ready page
    ReadyLabel.Width := ReadyLabel.Width + cx;
    ReadyMemo.Width := ReadyMemo.Width + cx;
    ReadyMemo.Height := ReadyMemo.Height + cy;

    // Preparing page
    PreparingLabel.Width := PreparingLabel.Width + cx;
    PreparingMemo.Width := PreparingMemo.Width + cx;
    PreparingMemo.Height := PreparingMemo.Height + cy;

    // Installing page
    StatusLabel.Width := StatusLabel.Width + cx;
    FilenameLabel.Top := FilenameLabel.Top + ScaleY(3);
    FilenameLabel.Width := FilenameLabel.Width + cx;
    ProgressGauge.Width := ProgressGauge.Width + cx;

    // InfoAfter page
    InfoAfterClickLabel.Width := InfoAfterClickLabel.Width + cx;
    InfoAfterMemo.Width := InfoAfterMemo.Width + cx;
    InfoAfterMemo.Height := InfoAfterMemo.Height + cy;

    // Finished page
    WizardBitmapImage2.Width := WizardBitmapImage2.Width + dx;
    WizardBitmapImage2.Height := WizardBitmapImage2.Height + cy;
    FinishedHeadingLabel.Left := FinishedHeadingLabel.Left + dx;
    FinishedHeadingLabel.Width := FinishedHeadingLabel.Width + cx;
    FinishedLabel.Left := FinishedLabel.Left + dx;
    FinishedLabel.Width := FinishedLabel.Width + cx;
    RunList.Left := RunList.Left + dx;
    RunList.Width := RunList.Width + cx;
    YesRadio.Left := YesRadio.Left + dx;
    YesRadio.Width := YesRadio.Width + cx;
    NoRadio.Left := NoRadio.Left + dx;
    NoRadio.Width := NoRadio.Width + cx;

    //
    Center;
  end;
end;
////////////////////////////
////////////////////////////
////////////////////////////
procedure CreateWelcomePage;
begin
  { WelcomePage }
  WizardForm.WelcomePage.Color := clBtnFace;

  { WelcomeMessage }
  WelcomeMessage := TNewStaticText.Create(WizardForm);
  with WelcomeMessage do
  begin
    Parent := WizardForm.WelcomePage;
    Font.Size := 11;
    Font.Style := [fsBold];
    Caption := CustomMessage('WelcomeMessageCaption');
    AutoSize := False;
    SetBounds(WizardForm.WelcomeLabel2.Left, WizardForm.WelcomeLabel2.Top + WizardForm.WelcomeLabel2.Height shr 1 + Height, WizardForm.WelcomeLabel2.Width, WizardForm.WelcomeLabel2.Height shr 1);
    WordWrap := True;
  end;
end;
//////////////////////////////////////////////////
//////////////////////////////////////////////////
//////////////////////////////////////////////////
procedure InstallTypePageOnClick(Sender: TObject);
begin
  case Sender of
    { BitmapImage, TNewStaticText }
    DefaultInstallTypeBitmapImage,
    DefaultInstallTypeCaption:
      DefaultInstallType.Perform(BM_CLICK, 0, 0);
    PortableInstallTypeBitmapImage,
    PortableInstallTypeCaption:
      PortableInstallType.Perform(BM_CLICK, 0, 0);
    DefaultUninstallTypeBitmapImage,
    DefaultUninstallTypeCaption:
      DefaultUninstallType.Perform(BM_CLICK, 0, 0);

    { RadioButton }
    DefaultInstallType:
      CheckDefaultInstall;
    PortableInstallType:
      CheckPortableInstall;
    DefaultUninstallType:
      WizardForm.Caption := FmtMessage(CustomMessage('UninstallWindowTitle'), ['{#AppName}']);    // uninstall caption
  end;
end;

////////////////////////////////
procedure CreateInstallTypePage;
begin
  { create page }
  InstallTypePage := CreateInputOptionPage(wpInfoBefore, CustomMessage('WizardInstallType'), CustomMessage('WizardInstallTypeDesc'), SetupMessage(msgInfoBeforeClickLabel), False, False);
  InstallTypePage.CheckListBox.Free;

  { default install type }
  DefaultInstallType := TNewRadioButton.Create(InstallTypePage);
  with DefaultInstallType do
  begin
    Parent := InstallTypePage.Surface;
    Top := InstallTypePage.SubCaptionLabel.Top + InstallTypePage.SubCaptionLabel.Height + ScaleY(40);
    Width := ScaleX(16);
    Checked := (GetSetupPreviousDataEx('UninstallString', '') = '') xor CheckUpdateVersion('{#AppUpdateVersion}');  // checked if clean or updatable installation
    Enabled := Checked;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultInstallTypeBitmapImage }
  DefaultInstallTypeBitmapImage := TBitmapImage.Create(InstallTypePage);
  with DefaultInstallTypeBitmapImage do
  begin
    Parent := InstallTypePage.Surface;
    DrawImageOnBitmap(DefaultInstallTypeBitmapImage, '{#InstallLogo}', 0);
    SetBounds(DefaultInstallType.Left + DefaultInstallType.Width + ScaleX(1), DefaultInstallType.Top + (DefaultInstallType.Height - Bitmap.Height) div 2, Bitmap.Width, Bitmap.Height);
    Enabled := DefaultInstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultInstallTypeCaption }
  DefaultInstallTypeCaption := TNewStaticText.Create(InstallTypePage);
  with DefaultInstallTypeCaption do
  begin
    Parent := InstallTypePage.Surface;
    Left := DefaultInstallTypeBitmapImage.Left + DefaultInstallTypeBitmapImage.Width + ScaleX(4);
    Width := InstallTypePage.SurfaceWidth - Left - ScaleX(5);
    WordWrap := True;
    if CheckUpdateVersion('{#AppUpdateVersion}') then
    begin
      Caption := FmtMessage(CustomMessage('DefaultUpdateTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);       // update caption
      WizardForm.Caption := FmtMessage(CustomMessage('UpdateWindowTitle'), ['{#AppName}']);                                       // update caption
    end
    else
      Caption := FmtMessage(CustomMessage('DefaultInstallTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);      // default caption
    Top := DefaultInstallType.Top + (DefaultInstallType.Height - Height) div 2;
    Enabled := DefaultInstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { portable install type }
  PortableInstallType := TNewRadioButton.Create(InstallTypePage);
  with PortableInstallType do
  begin
    Parent := InstallTypePage.Surface;
    Top := DefaultInstallType.Top + (InstallTypePage.SurfaceHeight - DefaultInstallType.Top - ScaleY(5)) div 3;
    Width := ScaleX(16);
    Cursor := crHand;
    Checked := not DefaultInstallType.Checked;
    OnClick := @InstallTypePageOnClick;
  end;

  { PortableInstallTypeBitmapImage }
  PortableInstallTypeBitmapImage := TBitmapImage.Create(InstallTypePage);
  with PortableInstallTypeBitmapImage do
  begin
    Parent := InstallTypePage.Surface;
    DrawImageOnBitmap(PortableInstallTypeBitmapImage, '{#PortableLogo}', 0);
    SetBounds(PortableInstallType.Left + PortableInstallType.Width + ScaleX(1), PortableInstallType.Top + (PortableInstallType.Height - Bitmap.Height) div 2, Bitmap.Width, Bitmap.Height);
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { PortableInstallTypeCaption }
  PortableInstallTypeCaption := TNewStaticText.Create(InstallTypePage);
  with PortableInstallTypeCaption do
  begin
    Parent := InstallTypePage.Surface;
    Left := PortableInstallTypeBitmapImage.Left + PortableInstallTypeBitmapImage.Width + ScaleX(4);
    Width := InstallTypePage.SurfaceWidth - Left - ScaleX(5);
    WordWrap := True;
    Caption := CustomMessage('PortableInstallTypeCaption');
    Top := PortableInstallType.Top + (PortableInstallType.Height - Height) div 2;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { uninstall type }
  DefaultUninstallType := TNewRadioButton.Create(InstallTypePage);
  with DefaultUninstallType do
  begin
    Parent := InstallTypePage.Surface;
    Top := DefaultInstallType.Top + 2*((InstallTypePage.SurfaceHeight - DefaultInstallType.Top - ScaleY(5)) div 3);
    Width := ScaleX(16);
    Cursor := crHand;
    Enabled := GetSetupPreviousData('UninstallString', '') <> '';   // enabled if uninstall entry found
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultUninstallTypeBitmapImage }
  DefaultUninstallTypeBitmapImage := TBitmapImage.Create(InstallTypePage);
  with DefaultUninstallTypeBitmapImage do
  begin
    Parent := InstallTypePage.Surface;
    DrawImageOnBitmap(DefaultUninstallTypeBitmapImage, '{#RecycleLogo}', 0);
    SetBounds(DefaultUninstallType.Left + DefaultUninstallType.Width + ScaleX(1), DefaultUninstallType.Top + (DefaultUninstallType.Height - Bitmap.Height) div 2, Bitmap.Width, Bitmap.Height);
    Enabled := DefaultUninstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;

  { DefaultUninstallTypeCaption }
  DefaultUninstallTypeCaption := TNewStaticText.Create(InstallTypePage);
  with DefaultUninstallTypeCaption do
  begin
    Parent := InstallTypePage.Surface;
    Left := DefaultUninstallTypeBitmapImage.Left + DefaultUninstallTypeBitmapImage.Width + ScaleX(4);
    Width := InstallTypePage.SurfaceWidth - Left - ScaleX(5);
    WordWrap := True;
    Caption := CustomMessage('DefaultUninstallTypeCaption');
    Top := DefaultUninstallType.Top + (DefaultUninstallType.Height - Height) div 2;
    Enabled := DefaultUninstallType.Enabled;
    Cursor := crHand;
    OnClick := @InstallTypePageOnClick;
  end;
end;
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
function BytesToSize(const exBytes: Double): AnsiString;
begin
  Result := StringOfChar(#0, 15);
  if Abs(exBytes) > 9.223372036854775807E18 then exBytes := 0;
#ifdef UNICODE
  Result := CastIntegerToAnsiString(StrFormatByteSize64(Abs(exBytes div 1E4), Result, Length(Result)));
#else
  Result := CastIntegerToString(StrFormatByteSize64(Abs(exBytes div 1E4), Result, Length(Result)));
#endif
end;

////////////////////////////////////////////////////
function Size64(QuadPart: ULARGE_INTEGER): Extended;
begin
  Result := (QuadPart.HighPart + Integer(QuadPart.LowPart < 0))*4.294967296E9 + QuadPart.LowPart;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure DriveHeaderOnSectionTrack(HeaderControl: THeaderControl; Section: THeaderSection; Width: Integer; State: TSectionTrackState);
var
  pt: TPoint;
  rc: TRect;
  hWndHeader: HWND;
begin
  pt := TListView(HeaderControl.Parent).ViewOrigin;
  hWndHeader := SendMessage(TListView(HeaderControl.Parent).Handle, LVM_GETHEADER, 0, 0);
  if hWndHeader <> 0 then
  begin
    pt := TListView(HeaderControl.Parent).ViewOrigin;
    GetClientRect(hWndHeader, rc);
    SetWindowPos(HeaderControl.Handle, 0, -pt.x, HeaderControl.Top, rc.Right, HeaderControl.Height, SWP_NOZORDER or SWP_NOACTIVATE);
  end;
  if Width > 0 then
    TListView(HeaderControl.Parent).Column[Section.Index].Width := Width
  else
    TListView(HeaderControl.Parent).Column[Section.Index].Width := 0;
end;

////////////////////////////////////////////////
procedure DriveListViewOnClick(Sender: TObject);
var
  szDriveLetter: string;
begin
  if Assigned(TListView(Sender).Selected) then
  begin
    { get drive letter }
    szDriveLetter := TListView(Sender).Selected.Caption;
    if Length(szDriveLetter) = 0 then Exit;
    szDriveLetter := szDriveLetter[Pos('(', szDriveLetter) + 1];

    { no removable devices for default install }
    if IsDefaultSetupType then
      if GetDriveType(Format('%s:\', [szDriveLetter])) = DRIVE_REMOVABLE then Exit;

    { detect Program Files dir }
    WizardForm.DirEdit.Text := Format('%s:\{#AppPath}', [szDriveLetter]);
    if DirExists(Format('%s:\%s', [szDriveLetter, ExtractFileName(ExpandConstant('{pf}'))])) then
      WizardForm.DirEdit.Text := Format('%s:\%s\{#AppPath}', [szDriveLetter, ExtractFileName(ExpandConstant('{pf}'))]);
    if DirExists(Format('%s:\Programs', [szDriveLetter])) then
      WizardForm.DirEdit.Text := Format('%s:\Programs\{#AppPath}', [szDriveLetter]);
  end;
end;

//////////////////////////////
procedure CreateSelectDirPage;
var
  i: Integer;
  uDriveType: UINT;
  szDriveLetter, szFileSystemName: string;
  dwDrives: DWORD;
  uiFreeBytesAvailableToCaller, uiTotalNumberOfBytes, uiTotalNumberOfFreeBytes: ULARGE_INTEGER;
  shfi: SHFILEINFO;
  hImgList: THandle;
begin
  { g_DriveListView }
  g_DriveListView := TListView.Create(WizardForm);
  with g_DriveListView do
  begin
    Parent := WizardForm.SelectDirPage;
    Top := WizardForm.DirEdit.Top + WizardForm.DirEdit.Height + ScaleY(5);
    Width := WizardForm.SelectDirPage.Width;
    Height := WizardForm.DiskSpaceLabel.Top - Top - ScaleY(5);
    ViewStyle := vsReport;
    ShowColumnHeaders := False;
    ReadOnly := True;
    Color := clWindow;
    OnClick := @DriveListViewOnClick;
    SendMessage(Handle, LVM_SETEXTENDEDLISTVIEWSTYLE, 0, LVS_EX_FULLROWSELECT);

    // create imagelist
    hImgList := ImageList_Create(16, 16, ILC_COLOR32, 0, 0);
    Perform(LVM_SETIMAGELIST, LVSIL_SMALL, hImgList);

    // create columns
    for i := 0 to 4 do
    begin
      Columns.Add;
      Column[i].Caption := CustomMessage(Format('DiskListView_%d', [i]));
      Column[i].Width := LVSCW_AUTOSIZE_USEHEADER;
    end;

    // create dummy row
    Items.Add;
    Items.Item[0].ImageIndex := ImageList_ReplaceIcon(hImgList, -1, Application.Icon.Handle);

    // create rows
    dwDrives := GetLogicalDrives;
    for i := 2 to 25 do
      if dwDrives and (1 shl i) <> 0 then
      begin
        szDriveLetter := Chr(Ord('A') + i) + ':\';
        uDriveType := GetDriveType(szDriveLetter);
        case uDriveType of
          DRIVE_REMOVABLE,
          DRIVE_FIXED:
            begin
              // get filesystem
              szFileSystemName := StringOfChar(#0, MAX_PATH);
              GetVolumeInformation(szDriveLetter, 0, 0, 0, 0, 0, szFileSystemName, MAX_PATH);

              // get space
              GetDiskFreeSpaceEx(szDriveLetter, uiFreeBytesAvailableToCaller, uiTotalNumberOfBytes, uiTotalNumberOfFreeBytes);

              // get file info
              SHGetFileInfo(szDriveLetter, 0, shfi, SizeOf(shfi), SHGFI_ICON or SHGFI_TYPENAME or SHGFI_DISPLAYNAME or SHGFI_SMALLICON);

              // add item
              Items.Add;
              with Items.Item[Items.Count - 1] do
              begin
                Caption := CharArrayToString(shfi.szDisplayName);
                SubItems.Add(szFileSystemName);
                SubItems.Add(BytesToSize(Size64(uiTotalNumberOfBytes)));
                SubItems.Add(Format('%s (%d%%)', [BytesToSize(Size64(uiTotalNumberOfFreeBytes)), Round(Size64(uiTotalNumberOfFreeBytes)*100/(Size64(uiTotalNumberOfBytes)+1))]));
                SubItems.Add(CharArrayToString(shfi.szTypeName));
                ImageIndex := ImageList_ReplaceIcon(hImgList, -1, shfi.hIcon);
              end;
            end;
          DRIVE_NO_ROOT_DIR: Continue;
        end;
      end;

      // fix width iconized column
      Column[0].Width := Column[0].Width + ScaleY(16);
  end;

  { g_DriveHeader }
  g_DriveHeader := THeaderControl.Create(WizardForm);
  with g_DriveHeader do
  begin
    Parent := g_DriveListView;
    for i := 0 to 4 do
    begin
      Sections.Add;
      Sections.Items[i].Text := TListView(Parent).Column[i].Caption;
      Sections.Items[i].Width := TListView(Parent).Column[i].Width;
    end;
    OnSectionTrack := @DriveHeaderOnSectionTrack;
  end;
end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TypesComboEditWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
begin
  case uMsg of
    WM_NCHITTEST:
      begin
        ComponentListInfoLabel.Caption := g_TypesHelper[WizardForm.TypesCombo.ItemIndex].szDescription;
        ComponentListInfoLabel.Enabled := True;
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
    CN_CTLCOLOREDIT:
      begin
        ComponentListInfoLabel.Caption := CustomMessage('TypesListInfoCaption');
        ComponentListInfoLabel.Enabled := False;
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TypesComboListBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
begin
  case uMsg of
    WM_NCHITTEST:
      begin
        ComponentListInfoLabel.Caption := g_TypesHelper[WizardForm.TypesCombo.ItemIndex].szDescription;
        ComponentListInfoLabel.Enabled := True;
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure ComponentListOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  case Button of
    mbLeft:
      WizardForm.NextButton.Enabled := IsComponentSelected('Protocols');
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure ComponentsListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
begin
	if Index = -1 then
	begin
	ComponentListInfoLabel.Caption := CustomMessage('ComponentListInfoCaption');
	ComponentListInfoLabel.Enabled := False;
    SetCapture(0);
	end
  else
  begin
  	ComponentListInfoLabel.Caption := g_ComponentsHelper[Index].szDescription;
  	ComponentListInfoLabel.Enabled := True;
  	SetCapture(TNewCheckListBox(Sender).Handle);
  end;
end;

/////////////////////////////////////
procedure CreateSelectComponentsPage;
begin
  with WizardForm do
  begin
    { SelectComponentsLabel }
    SelectComponentsLabel.AdjustHeight;

    { ComponentsPageDescriptionBevel }
    ComponentsPageDescriptionBevel := TBevel.Create(WizardForm);
    with ComponentsPageDescriptionBevel do
    begin
      Parent := SelectComponentsPage;
      Left := 2 * SelectComponentsPage.Width div 3 + ScaleX(5);
      Top := SelectComponentsLabel.Top + SelectComponentsLabel.Height + ScaleY(5);
      Width := SelectComponentsPage.Width - Left;
      Height := ComponentsDiskSpaceLabel.Top - Top - ScaleY(5);
      Shape := bsFrame;
    end;

    { ComponentListInfoLabel }
    ComponentListInfoLabel := TNewStaticText.Create(WizardForm);
    with ComponentListInfoLabel do
    begin
      Parent := SelectComponentsPage;
      AutoSize := False;
      Left := ComponentsPageDescriptionBevel.Left + ScaleX(5);
      Top := ComponentsPageDescriptionBevel.Top + ScaleY(5);
      Width := ComponentsPageDescriptionBevel.Width - 2*ScaleX(5);
      Height := ComponentsPageDescriptionBevel.Height - 2*ScaleY(5);
      WordWrap := True;
      Caption := CustomMessage('ComponentListInfoCaption');
      Enabled := False;
    end;

    { TypesCombo }
    with TypesCombo do
    begin
      Top := ComponentsPageDescriptionBevel.Top;
      Width := SelectComponentsPage.Width - ComponentsPageDescriptionBevel.Width - ScaleX(5);
      Height := ComponentsPageDescriptionBevel.Height;
    end;

    { ComponentsList }
    with ComponentsList do
    begin
      Top := TypesCombo.Top + TypesCombo.Height + ScaleY(2);
      Width := TypesCombo.Width;
      Height := ComponentsDiskSpaceLabel.Top - Top - ScaleY(5);
      WantTabs := True;
      Flat := False;
      Color := clBtnFace;
      OnMouseDown := @ComponentListOnMouseDown;
      OnItemMouseMove := @ComponentsListOnItemMouseMove;
    end;
  end;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////
procedure SettingsListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
begin
	if Index = -1 then
	begin
		SettingsInfoLabel.Caption := CustomMessage('SettingsInfoCaption');
		SettingsInfoLabel.Enabled := False;
      SetCapture(0);
	end
  else
  begin
    SettingsInfoLabel.Caption := g_SetHelper[Index].szDescription;
	  SettingsInfoLabel.Enabled := True;
	  SetCapture(TNewCheckListBox(Sender).Handle);
	end;
end;

////////////////////////////////////////////////////////////////////////////////////////////
procedure AddSettingsListBoxOnMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  pt: TPoint;
  Index: Integer;
begin
  with TListBox(Sender) do
  begin
    { get cursor pos }
    GetCursorPos(pt);
    MapWindowPointsPOINT(0, Handle, pt, 1);

    { get hover item }
    Index := ItemAtPos(pt, True);
    if Index = -1 then
  	begin
  		SettingsInfoLabel.Caption := CustomMessage('SettingsInfoCaption');
  		SettingsInfoLabel.Enabled := False;
  	end
    else
    begin
      SettingsInfoLabel.Caption := g_AddSetHelper[Index].szDescription;
		  SettingsInfoLabel.Enabled := True;
	  end;
  end;
end;

/////////////////////////////
procedure CreateSettingsPage;
var
  i, j, ComboWidth: Integer;
  rt: TRect;
  SettingsTab, AddSettingsTab: TTabSheet;
begin
  SettingsPage := CreateInputOptionPage(wpSelectComponents, CustomMessage('WizardSettings'), CustomMessage('WizardSettingsDesc'), CustomMessage('SelectSettingsLabel'), False, False);
  with SettingsPage do
  begin
    { SettingsPageDescriptionBevel }
    SettingsPageDescriptionBevel := TBevel.Create(WizardForm);
    with SettingsPageDescriptionBevel do
    begin
      Parent := SettingsPage.Surface;
      Left := 2 * SurfaceWidth div 3 + ScaleX(5);
      Top := SubCaptionLabel.Top + SubCaptionLabel.Height + ScaleY(5);
      Width := SurfaceWidth - Left;
      Height := SurfaceHeight - Top - ScaleY(10);
      Shape := bsFrame;
    end;

    { SettingsInfoLabel }
    SettingsInfoLabel := TNewStaticText.Create(WizardForm);
    with SettingsInfoLabel do
    begin
      Parent := SettingsPage.Surface;
      Left := SettingsPageDescriptionBevel.Left + ScaleX(5);
      Top := SettingsPageDescriptionBevel.Top + ScaleY(5);
      Width := SettingsPageDescriptionBevel.Width - 2*ScaleX(5);
      Height := SettingsPageDescriptionBevel.Height - 2*ScaleY(5);
      AutoSize := False;
      WordWrap := True;
      Caption := CustomMessage('SettingsInfoCaption');
      Enabled := False;
    end;

    { SettingsPageControl }
    SettingsPageControl := TPageControl.Create(WizardForm);
    with SettingsPageControl do
    begin
      Parent := SettingsPage.Surface;
      Top := SettingsPageDescriptionBevel.Top;
      Width := SurfaceWidth - SettingsPageDescriptionBevel.Width - ScaleX(5);
      Height := SettingsPageDescriptionBevel.Height;

      { SettingsTab }
      SettingsTab := TTabSheet.Create(WizardForm);
      with SettingsTab do
      begin
        PageControl := SettingsPageControl;
        Caption := CustomMessage('SettingsTabCaption');

        { settings checklistbox }
        with CheckListBox do
        begin
          Parent := SettingsTab;
          Align := alClient;
          MinItemHeight := ScaleY(16);
          TreeViewStyle := True;
          Showroot := True;
          BorderStyle := bsNone;

          { add settings }
          #if AppStatus == "Final"
          AddCheckBox(SettingsHelper('UpdateSettings'), '', 0, False, False, False, True, nil);
          AddCheckBox(SettingsHelper('CheckUpdates'), '', 1, False, True, True, True, nil);
          AddRadioButton(SettingsHelper('StableVersion'), '', 1, False, True, nil);
          AddRadioButton(SettingsHelper('DevelopmentVersion'), '', 1, False, True, nil);
          #endif
          AddCheckBox(SettingsHelper('ContactList'), '', 0, False, True, False, True, nil);
//          AddRadioButton(SettingsHelper('ClistRight'), '', 1, False, True, nil);
//          AddRadioButton(SettingsHelper('ClistLeft'), '', 1, False, True, nil);
          AddCheckBox(SettingsHelper('OnTop'), '', 1, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('ViewModes'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('CompactMode'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('UseSound'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('CLCNoVScrollBar'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('MessageSessions'), '', 0, False, True, True, True, nil);
          AddCheckBoxEx(SettingsHelper('SendingMessage'), '', 1, False, True, True, True, nil, False);
          AddCheckBox(SettingsHelper('SendCtrlEnter'), '', 2, False, False, True, True, nil);
          AddCheckBox(SettingsHelper('SendShiftEnter'), '', 2, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('SendEnter'), '', 2, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('SendDoubleEnter'), '', 2, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('AutoSizeInputArea'), '', 1, False, True, True, True, nil);
//          AddCheckBox(SettingsHelper('AutoCreateNewTabs'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('LogStatusChanges'), '', 1, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('TypingNotification'), '', 1, False, True, True, False, nil);
          AddCheckBox(SettingsHelper('TabSRMMNoVScrollBar'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('Status'), '', 0, False, True, False, True, nil);
          AddCheckBox(SettingsHelper('DialogStatusMessages'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('Autoreply'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('AutoAwayDetection'), '', 1, False, True, True, True, nil);
          AddCheckBox(SettingsHelper('AutoIdleDetection'), '', 1, False, True, True, True, nil);

          { events }
          OnItemMouseMove := @SettingsListOnItemMouseMove;
        end;
      end;

      { AddSettingsTab }
      AddSettingsTab := TTabSheet.Create(WizardForm);
      with AddSettingsTab do
      begin
        PageControl := SettingsPageControl;
        Caption := CustomMessage('AdditionalSettingsTabCaption');

        { AddSettingsListBox }
        AddSettingsListBox := TListBox.Create(WizardForm);
        with AddSettingsListBox do
        begin
          Parent := AddSettingsTab;
          Align := alClient;
          Style := lbOwnerDrawFixed;
          ParentColor := True;
          ItemHeight := ScaleY(21);
          BorderStyle := bsNone;
          TabStop := False;

          { add additional settings }
          Items.AddObject(AddSetHelper('DialogFontSize'), TNewComboBox.Create(WizardForm));
          Items.AddObject(AddSetHelper('LoadHistorySize'), TNewComboBox.Create(WizardForm));
          Items.AddObject(AddSetHelper('LocationTabsMessageWindow'), TNewComboBox.Create(WizardForm));

          { get combo width }
          for i := 0 to Items.Count - 1 do
          begin
            if Canvas.TextWidth(Items.Strings[i]) > ComboWidth then
              ComboWidth := Canvas.TextWidth(Items.Strings[i]);
          end;
          ComboWidth := ClientWidth - ComboWidth - ScaleX(5);

          { adjust combo }
          for i := 0 to Items.Count - 1 do
          begin
            rt := ItemRect(i);
            TNewComboBox(Items.Objects[i]).Parent := AddSettingsTab;
            TNewComboBox(Items.Objects[i]).Top := Top + rt.Top;
            TNewComboBox(Items.Objects[i]).Width := ComboWidth;
            TNewComboBox(Items.Objects[i]).Left := AddSettingsTab.Width - TNewComboBox(Items.Objects[i]).Width;
            TNewComboBox(Items.Objects[i]).Style := csDropDownList;
            with TStringList.Create do
            try
              CommaText := g_AddSetHelper[i].szInternalValues;
              for j := 0 to Count - 1 do
                Strings[j] := CustomMessage(Strings[j]);
              TNewComboBox(Items.Objects[i]).Items.CommaText := CommaText;
            finally
              Free;
            end;
          end;

          { events }
          OnMouseMove := @AddSettingsListBoxOnMouseMove;
        end;
      end;
    end;
  end;
end;
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
procedure PreviewFormOnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
	if (Key = VK_ESCAPE) then
    TForm(Sender).Close;
end;

////////////////////////////////////////////////
procedure PreviewButtonOnClick(Sender: TObject);
var
  crBackground: DWORD;
begin
  { global color }
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
    crBackground := GetSysColor(COLOR_BACKGROUND);
#endif

  { create form }
  PreviewForm := TForm.Create(nil);
  with PreviewForm do
  try
    { PreviewFormBitmapImage }
    PreviewFormBitmapImage := TBitmapImage.Create(PreviewForm);
    PreviewFormBitmapImage.Parent := PreviewForm;
    Position := poScreenCenter;
    BorderStyle := bsDialog;
    Caption := CustomMessage('FullViewCaption');
    OnKeyDown := @PreviewFormOnKeyDown;

    { subclass }
    SubclassControlsProc(PreviewForm, True);

    { show }
    ShowModal;

    { unsubclass }
    UnSubclassControlsProc(PreviewForm);
  finally
    Free;
  end;
end;

//////////////////////////////////////////////////
procedure StylesListOnClickCheck(Sender: TObject);
var
  crBackground: DWORD;
begin
  with TNewCheckListBox(Sender) do
  begin
    if AbsItemIndex = -1 then Exit;

    { global color }
    crBackground := GetSysColor(COLOR_BTNFACE);
  #if aero == 1
    if g_fEnabled then
      crBackground := GetSysColor(COLOR_BACKGROUND);
  #endif

    { draw thumb }
    if Checked[AbsItemIndex] then
      DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[AbsItemIndex].szSelectedBitmap, crBackground)
    else
      DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[AbsItemIndex].szUnselectedBitmap, crBackground);

    { preview button enable/disable }
    PreviewButton.Enabled := (g_StylesHelper[AbsItemIndex].szPreviewBitmap <> '');
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////
procedure StylesListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
begin
	if Index = -1 then
	begin
		StylesInfoLabel.Caption := CustomMessage('StylesInfoCaption');
		StylesInfoLabel.Enabled := False;
      SetCapture(0);
	end
  else
  begin
    StylesInfoLabel.Caption := g_StylesHelper[Index].szDescription;
		StylesInfoLabel.Enabled := True;
		SetCapture(TNewCheckListBox(Sender).Handle);
	end;
end;

///////////////////////////
procedure CreateStylesPage;
begin
  StylesPage := CreateInputOptionPage(SettingsPage.ID, CustomMessage('WizardStyles'), CustomMessage('WizardStylesDesc'), SetupMessage(msgInfoBeforeClickLabel), False, False);
  with StylesPage do
  begin
    { ThumbsBitmapImage }
    ThumbsBitmapImage := TBitmapImage.Create(WizardForm);
    with ThumbsBitmapImage do
    begin
      Parent := Surface;
      DrawImageOnBitmap(ThumbsBitmapImage, 'Default_Miranda.bmp', 0);
      Bitmap.FreeImage;
    end;

    { PreviewButton }
    PreviewButton := TNewButton.Create(WizardForm);
    with PreviewButton do
    begin
      Parent := Surface;
      Left := SurfaceWidth - ThumbsBitmapImage.Width - ScaleX(4);
      Width := ThumbsBitmapImage.Width + ScaleX(4);
      Top := SurfaceHeight - Height - ScaleY(5);
      Caption := CustomMessage('FullView');
      Enabled := False;
      OnClick := @PreviewButtonOnClick;
    end;

    { PreviewBevel }
    PreviewBevel := TBevel.Create(WizardForm);
    with PreviewBevel do
    begin
      Parent := Surface;
      SetBounds(PreviewButton.Left, CheckListBox.Top, PreviewButton.Width, PreviewButton.Top - CheckListBox.Top - ScaleY(5));
      Shape := bsFrame;

      // bitmapimage adjust
      ThumbsBitmapImage.Left := Left + ScaleX(2);
      ThumbsBitmapImage.Top := Top + ScaleY(2);
    end;

    { StylePageDescriptionBevel }
    StylePageDescriptionBevel := TBevel.Create(WizardForm);
    with StylePageDescriptionBevel do
    begin
      Parent := Surface;
      SetBounds(0, SurfaceHeight - ScaleY(55), SurfaceWidth - PreviewBevel.Width - ScaleX(5), ScaleY(50));
      Shape := bsFrame;
    end;

    { StylesInfoLabel }
    StylesInfoLabel := TNewStaticText.Create(WizardForm);
    with StylesInfoLabel do
    begin
      Parent := Surface;
      AutoSize := False;
      Left := StylePageDescriptionBevel.Left + ScaleX(5);
      Top := StylePageDescriptionBevel.Top + ScaleY(5);
      Width := StylePageDescriptionBevel.Width - 2*ScaleX(5);
      Height := StylePageDescriptionBevel.Height - 2*ScaleY(5);
      WordWrap := True;
      Caption := CustomMessage('StylesInfoCaption');
      Enabled := False;
    end;

    { CheckListBox }
    with CheckListBox do
    begin
      Height := StylePageDescriptionBevel.Top - Top - ScaleY(5);
      Width := StylePageDescriptionBevel.Width;
      MinItemHeight := ScaleY(16);
      TreeViewStyle := True;
      BorderStyle := bsSingle;

      // add skin items
      AddGroup(StylesHelper('Skin'), '', 0, nil);
      AddRadioButton(StylesHelper('Skin_Default_Miranda'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Current_Windows'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Custom_Miranda'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Custom_Miranda_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Custom_Miranda_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Native_7_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Native_7_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_WinStyle_Classic_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_WinStyle_Classic_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_WinStyle_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_WinStyle_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Diplomat_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Diplomat_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Glamour_Aqua_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Glamour_Aqua_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Glamour_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Glamour_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_GoldTime_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_GoldTime_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Graphite_Brown_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Graphite_Brown_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Graphite_Gray_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Graphite_Gray_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_PhotoOne_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_PhotoOne_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Surface_Black'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Surface_White'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Textolite_Brown_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Textolite_Brown_Light'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Textolite_Gray_Dark'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('Skin_Textolite_Gray_Light'), '', 1, False, True, nil);

      // add icon patcher items
      AddGroup(StylesHelper('Icons'), '', 0, nil);
      AddRadioButton(StylesHelper('IconsFugue'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('IconsNova'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('IconsXpk'), '', 1, False, True, nil);

      // add ieview items
      AddGroup(StylesHelper('IEViewSettings'), '', 0, nil);
      AddCheckBox(StylesHelper('IEViewScrollBar'), '', 1, False, True, False, False, nil);
      AddCheckBox(StylesHelper('IEViewAnimation'), '', 1, False, True, False, False, nil);
      AddCheckBox(StylesHelper('IEViewAvatar'), '', 1, False, True, False, False, nil);
      AddCheckBox(StylesHelper('IEViewShortLink'), '', 1, False, True, False, False, nil);
      AddCheckBox(StylesHelper('IEViewContextMenu'), '', 1, False, True, False, False, nil);

      // add font items
      AddGroup(StylesHelper('Font'), '', 0, nil);
      AddRadioButton(StylesHelper('FontHandwriting'), '', 1, False, True, nil);
      AddRadioButton(StylesHelper('FontPrinting'), '', 1, False, True, nil);

      // events
      OnClickCheck := @StylesListOnClickCheck;
      OnItemMouseMove := @StylesListOnItemMouseMove;
    end;
  end;
end;
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
procedure StartMenuTreeViewOnChange(Sender: TObject);
begin
  case TObject(Sender) of
    StartMenuTreeView:
      WizardForm.GroupEdit.Text := AddBackslash(StartMenuTreeView.Directory) + '{#SetupSetting("DefaultGroupName")}';
    WizardForm.NoIconsCheck:
      begin
        WizardForm.GroupEdit.Enabled := not WizardNoIcons;
        if WizardNoIcons then
          WizardForm.GroupEdit.Color := clBtnFace
        else
          WizardForm.GroupEdit.Color := clWindow;
        WizardForm.GroupBrowseButton.Enabled := not WizardNoIcons;
        StartMenuTreeView.Enabled := not WizardNoIcons;
      end;
  end;
end;

///////////////////////////////////////
procedure CreateSelectProgramGroupPage;
begin
  StartMenuTreeView := TStartMenuFolderTreeView.Create(WizardForm);
  with StartMenuTreeView do
  begin
    Parent := WizardForm.SelectProgramGroupPage;
    Top := WizardForm.GroupEdit.Top + WizardForm.GroupEdit.Height + ScaleY(5);
    Width := WizardForm.SelectProgramGroupPage.Width;
    Height := WizardForm.NoIconsCheck.Top - Top - ScaleY(5);
    SetPaths(ExpandConstant('{userprograms}'), ExpandConstant('{commonprograms}'), ExpandConstant('{userstartup}'), ExpandConstant('{commonstartup}'));
    Cursor := crHand;
    OnChange := @StartMenuTreeViewOnChange;
    Enabled := not WizardNoIcons;
  end;
  WizardForm.NoIconsCheck.OnClick := @StartMenuTreeViewOnChange;
end;
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////
procedure TasksListOnItemMouseMove(Sender: TObject; X, Y: Integer; Index: Integer; Area: TItemArea);
var
    i: Integer;
begin
  if Index = -1 then
  begin
    TasksInfoLabel.Caption := CustomMessage('TasksListInfoCaption');
    TasksInfoLabel.Enabled := False;
    SetCapture(0);
  end
  else    // GroupDescription bugfix
  begin
    with TNewCheckListBox(Sender) do
    begin
      for i := 0 to GetArrayLength(g_TasksHelper) - 1 do
        if CompareText(g_TasksHelper[i].szName, ItemCaption[Index]) = 0 then
        begin
          TasksInfoLabel.Caption := g_TasksHelper[i].szDescription;
          TasksInfoLabel.Enabled := True;
          Break;
        end;
        if (i = GetArrayLength(g_TasksHelper)) and TasksInfoLabel.Enabled then
        begin
          TasksInfoLabel.Caption := CustomMessage('TasksListInfoCaption');
          TasksInfoLabel.Enabled := False;
        end;
        SetCapture(TNewCheckListBox(Sender).Handle);
    end;
	end;
end;

////////////////////////////////
procedure CreateSelectTasksPage;
begin
  with WizardForm do
  begin
    { SelectTasksPageDescriptionBevel }
    SelectTasksPageDescriptionBevel := TBevel.Create(WizardForm);
    with SelectTasksPageDescriptionBevel do
    begin
      Parent := SelectTasksPage;
      Left := 2 * SelectTasksPage.Width div 3 + ScaleX(5);
      Top := SelectTasksLabel.Top + SelectTasksLabel.Height + ScaleY(5);
      Width := SelectTasksPage.Width - Left;
      Height := SelectTasksPage.Height - Top - ScaleY(10);
      Shape := bsFrame;
    end;

    { TasksInfoLabel }
    TasksInfoLabel := TNewStaticText.Create(WizardForm);
    with TasksInfoLabel do
    begin
      Parent := SelectTasksPage;
      Left := SelectTasksPageDescriptionBevel.Left + ScaleX(5);
      Top := SelectTasksPageDescriptionBevel.Top + ScaleY(5);
      Width := SelectTasksPageDescriptionBevel.Width - 2*ScaleX(5);
      Height := SelectTasksPageDescriptionBevel.Height - 2*ScaleY(5);
      AutoSize := False;
      WordWrap := True;
      Caption := CustomMessage('TasksListInfoCaption');
      Enabled := False;
    end;

    { TasksList }
    with TasksList do
    begin
      Top := SelectTasksPageDescriptionBevel.Top;
      Width := SelectTasksPage.Width - SelectTasksPageDescriptionBevel.Width - ScaleX(5);
      Height := SelectTasksPageDescriptionBevel.Height;
      OnItemMouseMove := @TasksListOnItemMouseMove;
    end;
  end;
end;
///////////////////////////////////////////////////
///////////////////////////////////////////////////
///////////////////////////////////////////////////
procedure PreparePageOnClickCheck(Sender: TObject);
begin
  case Sender of
    PreparePage.CheckListBox:
      WizardForm.NextButton.Enabled := PreparePage.CheckListBox.Checked[0];
  end;
  WizardForm.NextButton.Invalidate;
end;

////////////////////////////
procedure CreatePreparePage;
begin
  PreparePage := CreateInputOptionPage(wpReady, SetupMessage(msgWizardPreparing), FmtMessage(CustomMessage('PreparingDesc'), ['{#AppName}']), CustomMessage('ApplicationsFound'), True, False);
  with PreparePage do
  begin
    { PreparePageBitmap }
    PreparePageBitmap := TBitmapImage.Create(WizardForm);
    with PreparePageBitmap do
    begin
      Parent := Surface;
      SetBounds(0, 5, 32, 32);
      Bitmap.Width := Width;
      Bitmap.Height := Height;
    end;

    { SubCaptionLabel }
    SubCaptionLabel.Left := PreparePageBitmap.Width + ScaleX(7);
    SubCaptionLabel.Width := SurfaceWidth - SubCaptionLabel.Left;
    SubCaptionLabel.AutoSize := True;

    { CheckListBox }
    with CheckListBox do
    begin
      AddRadioButton(CustomMessage('CloseApplications'), '', 0, True, True, nil);
      AddRadioButton(CustomMessage('DontCloseApplications'), '', 0, False, True, nil);
      SetBounds(0, SurfaceHeight - ItemCount * MinItemHeight - ScaleY(5), SurfaceWidth, ItemCount * MinItemHeight);
      OnClickCheck := @PreparePageOnClickCheck;
    end;

    { g_PrepareListView }
    g_PrepareListView := TListView.Create(WizardForm);
    with g_PrepareListView do
    begin
      Parent := Surface;
      Top := PreparePageBitmap.Height + ScaleY(15);
      Width := SurfaceWidth;
      Height := CheckListBox.Top - Top - ScaleY(5);
      ViewStyle := vsReport;
      ShowColumnHeaders := False;
      ReadOnly := True;
      Color := clWhite;

      // add column
      Columns.Add;
      SendMessage(Handle, LVM_SETCOLUMNWIDTH, 0, LVSCW_AUTOSIZE_USEHEADER);
    end;
  end;
end;
////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////
procedure DetailsButtonOnClick(Sender: TObject);
begin
  case TNewButton(Sender).Caption of
    CustomMessage('SetupShowDetails'):
      begin
        DetailsMemo.Show;
        TNewButton(Sender).Caption := CustomMessage('SetupHideDetails');
      end;
    CustomMessage('SetupHideDetails'):
      begin
        DetailsMemo.Hide;
        TNewButton(Sender).Caption := CustomMessage('SetupShowDetails');
      end;
  end;
end;

///////////////////////////////////////////////
procedure PercentTimerOnTimer(Sender: TObject);
begin
  SetupDone.Caption := Format('%s %d %%', [CustomMessage('SetupDone'), MulDiv(WizardForm.ProgressGauge.Position, 100, WizardForm.ProgressGauge.Max)]);
end;

///////////////////////////////
procedure CreateInstallingPage;
var
  lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled: DWORD;
begin
  { DetailsButton }
  DetailsButton := TNewButton.Create(WizardForm);
  with DetailsButton do
  begin
    Parent := WizardForm.InstallingPage;
    Top := WizardForm.ProgressGauge.Top + WizardForm.ProgressGauge.Height + ScaleY(5);
    Width := ScaleX(100);
    Left := WizardForm.InstallingPage.Width - Width;
    Caption := CustomMessage('SetupShowDetails');
    OnClick := @DetailsButtonOnClick;
  end;

  { SetupDone }
  SetupDone := TNewStaticText.Create(WizardForm);
  with SetupDone do
  begin
    Parent := WizardForm.InstallingPage;
    AutoSize := False;
    Top := DetailsButton.Top + ScaleY(6);
    Width := DetailsButton.Left - ScaleX(5);
  end;

  { DetailsMemo }
  DetailsMemo := TNewMemo.Create(WizardForm);
  with DetailsMemo do
  begin
    Parent := WizardForm.InstallingPage;
    Top := DetailsButton.Top + DetailsButton.Height + ScaleY(5);
    Width := WizardForm.InstallingPage.Width;
    Height := WizardForm.InstallingPage.Height - Top - ScaleY(8);
    ReadOnly := True;
    ScrollBars := ssVertical;
    Hide;
  end;

  { PercentTimer }
  PercentTimer := TTimer.Create(WizardForm);
  with PercentTimer do
  begin
    GetSystemTimeAdjustment(lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled);
    Enabled := False;
    Interval := lpTimeIncrement div 10000;
    OnTimer := @PercentTimerOnTimer;
  end;
end;
///////////////////////////
///////////////////////////
///////////////////////////
procedure CreateFinishPage;
begin
  { FinishedPage }
  WizardForm.FinishedPage.Color := clBtnFace;

  { FinishedMessage }
  FinishedMessage := TNewStaticText.Create(WizardForm);
  with FinishedMessage do
  begin
    Parent := WizardForm.FinishedPage;
    Font.Size := 11;
    Font.Style := [fsBold];
    Caption := CustomMessage('FinishedMessageCaption');
    AutoSize := False;
    SetBounds(WizardForm.FinishedLabel.Left, WizardForm.FinishedPage.ClientHeight - Height - ScaleY(5), WizardForm.FinishedLabel.Width, Height);
    SetWindowLong(Handle, GWL_STYLE, WS_CHILDWINDOW or WS_VISIBLE or WS_CLIPSIBLINGS or SS_RIGHT);
  end;
end;
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
procedure URLLabelOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExecAsOriginalUser('open', CustomMessage('AppURLMNG'), '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure URLLabelOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
  if Button = mbLeft then
  begin
    URLLabel.Font.Color := $FF8000; // pressed color
    URLLabel.Font.Style := URLLabel.Font.Style + [fsUnderline];
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure URLLabelOnMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
  if Button = mbLeft then
    if g_fEnabled then
      URLLabel.Font.Color := $646464
    else
      URLLabel.Font.Color := clGray;   // normal color
end;

////////////////////////////////////////////////
procedure URLLabelOnMouseEnter(Sender: TObject);
begin
  URLLabel.Font.Color := $804000;         // hover color
  URLLabel.Font.Style := URLLabel.Font.Style + [fsUnderline];
end;

////////////////////////////////////////////////
procedure URLLabelOnMouseLeave(Sender: TObject);
begin
  if g_fEnabled then
    URLLabel.Font.Color := $646464
  else
    URLLabel.Font.Color := clGray;      // normal color
  URLLabel.Font.Style := URLLabel.Font.Style - [fsUnderline];
end;

//////////////////////////////////////////////////////////////////////////////////
procedure URLLabelOnMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  rc: TRect;
  pt: TPoint;
begin
  if ssLeft in Shift then
  begin
    GetClientRect(URLLabel.Handle, rc);
    pt.x := X;
    pt.y := Y;
    if PtInRect(rc, pt) then
      URLLabel.OnMouseDown(Sender, mbLeft, Shift, X, Y)
    else
      URLLabel.OnMouseLeave(Sender);
  end;
end;

/////////////////////////
procedure CreateUrlLabel;
begin
  URLLabel := TNewStaticText.Create(WizardForm);
  with URLLabel do
  begin
    Parent := WizardForm;
    Top := WizardForm.NextButton.Top + ScaleY(5);
    Left := ScaleX(30);
    Caption := CustomMessage('Support');
    Cursor := crHand;
    if FontExists('Segoe UI') then Font.Name := 'Segoe UI';
    Font.Style := [fsBold];
    if g_fEnabled then Font.Color := $646464 else Font.Color := clGray;
    Font.Size := -11;
    OnClick := @URLLabelOnClick;
    OnMouseDown := @URLLabelOnMouseDown;
    OnMouseUp := @URLLabelOnMouseUp;
    OnMouseEnter := @URLLabelOnMouseEnter;
    OnMouseLeave := @URLLabelOnMouseLeave;
    OnMouseMove := @URLLabelOnMouseMove;
  end;
end;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function WndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  crBackground: DWORD;
  i: Integer;
#if aero != 0
  margins: MARGINS;
#endif
begin
  case uMsg of
  #if aero != 0
    WM_DWMNCRENDERINGCHANGED:
      begin
        { set glass area }
        if BOOL(wParam = 1) and g_fEnabled then
        begin
        #if aero == 1
          margins := SetMargins(-1, -1, -1, -1);
          GetGlassRegion(hWnd, margins);
        #else
          case GetClassNameFromHandle(hWnd) of
            'TWizardForm':
                with TWizardForm(AObject) do
                begin
                #if aero == 2
                  if lParam = 1 then
                    margins := SetMargins(0, 0, 0, 0);
                  if lParam = 2 then
                    margins := SetMargins(0, 0, MainPanel.Height, 0);
                  if lParam <> 0 then
                    GetGlassRegion(hWnd, margins);
                #elif aero == 3
                  margins := SetMargins(0, 0, 0, ClientHeight - OuterNotebook.ClientHeight);
                  GetGlassRegion(hWnd, margins);
                #elif aero == 4
                  if lParam = 1 then
                    margins := SetMargins(0, 0, 0, ClientHeight - OuterNotebook.ClientHeight);
                  if lParam = 2 then
                    margins := SetMargins(0, 0, MainPanel.Height, ClientHeight - OuterNotebook.ClientHeight);
                  if lParam <> 0 then
                    GetGlassRegion(hWnd, margins);
                #endif
                end;
            'TUninstallProgressForm':
                with TUninstallProgressForm(AObject) do
                begin
                #if aero == 2
                  margins := SetMargins(0, 0, MainPanel.Height, 0);
                #elif aero == 3
                  margins := SetMargins(0, 0, 0, ClientHeight - OuterNotebook.ClientHeight);
                #elif aero == 4
                  margins := SetMargins(0, 0, MainPanel.Height, ClientHeight - OuterNotebook.ClientHeight);
                #endif
                  GetGlassRegion(hWnd, margins);
                end;
            'TForm':
              begin
                margins := SetMargins(0, 0, 0, 0);
                GetGlassRegion(hWnd, margins);
              end;
          end;
        #endif
          DwmExtendFrameIntoClientArea(hWnd, margins);
        end;
      end;
  #endif
    WM_SYSCOLORCHANGE,
    WM_DWMCOMPOSITIONCHANGED:
      begin
        { subclass }
        case GetClassNameFromHandle(hWnd) of
        #if aero == 1
          'TSelectLanguageForm':
            SubclassControlsProc(TSelectLanguageForm(AObject), True);
          'TUninstallProgressForm':
            SubclassControlsProc(TUninstallProgressForm(AObject), True);
        #endif
          'TWizardForm':
          #if aero == 0 || aero == 1
            SubclassControlsProc(TWizardForm(AObject), True);
          #elif aero == 2
            SubclassControlsProc(TWizardForm(AObject).MainPanel, True);
          #elif aero == 3
            SubclassControlsProc(TWizardForm(AObject), False);
          #elif aero == 4
            begin
              SubclassControlsProc(TWizardForm(AObject), False);
              SubclassControlsProc(TWizardForm(AObject).MainPanel, True);
            end;
          #endif
          'TUninstallProgressForm':
          #if aero == 0 || aero == 1
            SubclassControlsProc(TUninstallProgressForm(AObject), True);
          #elif aero == 2
            SubclassControlsProc(TUninstallProgressForm(AObject).MainPanel, True);
          #elif aero == 3
            SubclassControlsProc(TUninstallProgressForm(AObject), False);
          #elif aero == 4
            begin
              SubclassControlsProc(TUninstallProgressForm(AObject), False);
              SubclassControlsProc(TUninstallProgressForm(AObject).MainPanel, True);
            end;
          #endif
          'TForm':
            begin
            #if aero != 0
              DwmIsCompositionEnabled(g_fEnabled);
            #endif
            #if aero == 1
              SubclassForm(TForm(AObject));
            #endif
              crBackground := GetSysColor(COLOR_BTNFACE);
            #if aero == 1
              if g_fEnabled then
                crBackground := GetSysColor(COLOR_BACKGROUND);
            #endif
              for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
              case g_StylesHelper[i].szInternalName of
                'Skin_Custom_Miranda',
                'Skin_Custom_Miranda_Dark',
                'Skin_Custom_Miranda_Light',
                'Skin_Native_7_Dark',
                'Skin_Native_7_Light',
                'Skin_WinStyle_Classic_Dark',
                'Skin_WinStyle_Classic_Light',
                'Skin_WinStyle_Dark',
                'Skin_WinStyle_Light',
                'Skin_Diplomat_Dark',
                'Skin_Diplomat_Light',
                'Skin_Glamour_Aqua_Dark',
                'Skin_Glamour_Aqua_Light',
                'Skin_Glamour_Dark',
                'Skin_Glamour_Light',
                'Skin_GoldTime_Dark',
                'Skin_GoldTime_Light',
                'Skin_Graphite_Brown_Dark',
                'Skin_Graphite_Brown_Light',
                'Skin_Graphite_Gray_Dark',
                'Skin_Graphite_Gray_Light',
                'Skin_PhotoOne_Dark',
                'Skin_PhotoOne_Light',
                'Skin_Surface_Black',
                'Skin_Surface_White',
                'Skin_Textolite_Brown_Dark',
                'Skin_Textolite_Brown_Light',
                'Skin_Textolite_Gray_Dark',
                'Skin_Textolite_Gray_Light':
                  if StylesPage.CheckListBox.Checked[i] then
                    DrawImageOnBitmap(PreviewFormBitmapImage, g_StylesHelper[i].szPreviewBitmap, crBackground);
              end;
            end;
          end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function CheckListBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  hDC, hPaintBuffer, hTempPaintBuffer, hSelPaintBuffer, hBufferedDC,
  hTempBufferedDC, hSelBufferedDC, hFontOld, hBrush: THandle;
  rTemp, rText, rClient: TRect;
  dtt: DTTOPTS;
  hBitmap: HBITMAP;
  bi: BITMAPINFO;
  i, j, k: Integer;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
      begin
        if g_fEnabled then
          Result := 1
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
      end;
    WM_PAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          with TNewCheckListBox(AObject) do if Showing then
          begin
            { paint to buffer }
            hDC := GetDC(hWnd);
            try
              { create buffer }
              GetClientRect(hWnd, rClient);
              hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
              BufferedPaintClear(hPaintBuffer, rClient);

            { temp buffer for text rect detection }
              // create temp buffer
              hTempPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hTempBufferedDC);
              BufferedPaintClear(hTempPaintBuffer, rClient);

              // fill buffer
              hBrush := CreateSolidBrush($010000); // RGB - clBackground
              FillRect(hTempBufferedDC, rClient, hBrush);
              DeleteObject(hBrush);

              // paint to buffer
              SendMessage(hWnd, WM_PRINTCLIENT, hTempBufferedDC, PRF_CLIENT or PRF_CHECKVISIBLE);

              // get temp buffer bitmap
              hBitmap := GetCurrentObject(hTempBufferedDC, OBJ_BITMAP);
              bi.bmiHeader.biSize := SizeOf(bi.bmiHeader);
              bi.bmiHeader.biWidth := rClient.Right - rClient.Left;
              bi.bmiHeader.biHeight := -(rClient.Bottom - rClient.Top);
              bi.bmiHeader.biPlanes := 1;
              bi.bmiHeader.biBitCount := 32;
              bi.bmiHeader.biCompression := 0;
              bi.bmiHeader.biSizeImage := 4 * (rClient.Right - rClient.Left) * (rClient.Bottom - rClient.Top);
              SetArrayLength(bi.bmiColors, bi.bmiHeader.biWidth);

              // items
              for i := TopIndex to Items.Count - 1 do
              begin
                // get rect
                rTemp := ItemRect(i);
                if rTemp.Top >= rClient.Bottom - rClient.Top then Break;

                // get paint offset
                if GetDIBits(hTempBufferedDC, hBitmap, rClient.Bottom - rTemp.Top - 1, 1, bi.bmiColors[0], bi, 0) = 1 then
                  repeat
                    rTemp.Left := rTemp.Left + 1
                  until (rTemp.Left = GetArrayLength(bi.bmiColors) - 1) or (bi.bmiColors[rTemp.Left] = 0);

                // draw buttons
                BitBlt(hBufferedDC, 0, rTemp.Top, rTemp.Left, rTemp.Bottom - rTemp.Top, hTempBufferedDC, 0, rTemp.Top, SRCCOPY);

                // get paint text rect
                hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
                SetRect(rText, 0, 0, rTemp.Right - rTemp.Left, rTemp.Bottom - rTemp.Top);
                DrawText(hBufferedDC, StrToWStr(Items[i]), -1, rText, DT_CALCRECT or DT_LEFT or DT_WORDBREAK or DT_WORD_ELLIPSIS);
                rText.Right := rTemp.Right - rTemp.Left;
                OffsetRect(rText, rTemp.Left, rTemp.Top + ((rTemp.Bottom - rTemp.Top - rText.Bottom) shr 1));
                InflateRect(rText, -Offset, 0);

                // get stupid bitched motherfucking absolute index
                if i = TopIndex then k := 0;
                for j := k to ItemCount - 1 do
                  if ItemCaption[j] = Items[i] then Break;
                k := j;

                // draw text
                dtt.dwSize := SizeOf(dtt);
                dtt.iGlowSize := 6;
                if (GetProp(Handle, 'AERO_LISTBOX_WANTTABS') = 0) and Selected[i] then
                begin
                  // create sel buffer
                  hSelPaintBuffer := BeginBufferedPaint(hDC, rTemp, BPBF_TOPDOWNDIB, 0, hSelBufferedDC);
                  BufferedPaintClear(hSelPaintBuffer, rTemp);
                  FillRect(hSelBufferedDC, rTemp, GetSysColorBrush(COLOR_HIGHLIGHT));

                  // draw text
                  hFontOld := SelectObject(hSelBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
                  dtt.dwFlags := DTT_COMPOSITED or DTT_TEXTCOLOR;
                  dtt.crText := GetSysColor(COLOR_HIGHLIGHTTEXT);
                  DrawThemeTextEx(g_hThemeTreeView, hSelBufferedDC, 0, 0, StrToWStr(Items[i]), -1, DT_LEFT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                  DrawThemeTextEx(g_hThemeTreeView, hSelBufferedDC, 0, 0, StrToWStr(ItemSubItem[i]), -1, DT_RIGHT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                  if hFontOld <> 0 then
                    SelectObject(hSelBufferedDC, hFontOld);

                  // blit
                  BufferedPaintSetAlpha(hSelPaintBuffer, rTemp, $FF);
                  BitBlt(hBufferedDC, 0, 0, rTemp.Right, rTemp.Bottom, hSelBufferedDC, 0, 0, SRCCOPY);

                  // apply sel buffer
                  EndBufferedPaint(hSelPaintBuffer, False);
                end
                else
                begin
                  // draw text
                  dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
                  if ItemEnabled[j] then
                    dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
                  else
                    dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
                  DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Items[i]), -1, DT_LEFT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                  DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(ItemSubItem[j]), -1, DT_RIGHT or DT_WORDBREAK or DT_WORD_ELLIPSIS, rText, dtt);
                end;
                if hFontOld <> 0 then
                  SelectObject(hBufferedDC, hFontOld);
              end;

              // apply buffers
              EndBufferedPaint(hTempPaintBuffer, False);
              EndBufferedPaint(hPaintBuffer, True);
            finally
              ReleaseDC(hWnd, hDC);
            end;
          end;
        end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ListBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  i: Integer;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rTemp, rClient: TRect;
  dwFlags: DWORD;
  dtt: DTTOPTS;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
      WM_ERASEBKGND:
        begin
          if g_fEnabled then
            Result := 1
          else
            Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        end;
      WM_PAINT:
        if g_fEnabled then
        begin
          with TListBox(AObject) do if Showing then
          begin
            { paint }
            hDC := GetDC(hWnd);
            try
              { paint to buffer }
              GetClientRect(hWnd, rClient);
              hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
              BufferedPaintClear(hPaintBuffer, rClient);

              { items }
              for i := TopIndex to Items.Count - 1 do
              begin
                { get rect }
                rTemp := ItemRect(i);
                if rTemp.Top >= rClient.Bottom - rClient.Top then Break;
                InflateRect(rTemp, -4, 0);

                { draw text }
                hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
                dwFlags := DT_LEFT or DT_VCENTER or DT_SINGLELINE or DT_WORD_ELLIPSIS;
                dtt.dwSize := SizeOf(dtt);
                dtt.iGlowSize := 6;
                dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT);
                DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Items[i]), -1, dwFlags, rTemp, dtt);
                if hFontOld <> 0 then
                  SelectObject(hBufferedDC, hFontOld);
              end;

              { apply buffer }
              EndBufferedPaint(hPaintBuffer, True);
            finally
              ReleaseDC(hWnd, hDC);
            end;
          end;
        end
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_LBUTTONDOWN:
      Result := 0;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function HeaderWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  pt: TPoint;
  rTemp, rClient: TRect;
  szText: string;
  iPartId, iStateId, i, iHotItem: Integer;
  dtt: DTTOPTS;
  dwFlags: DWORD;
  hdhti: HD_HITTESTINFO;
begin
  case uMsg of
    WM_ERASEBKGND:
      Result := 1;
    WM_PAINT:
      if g_fEnabled then
      begin
        with THeaderControl(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            // get hot item
            GetCursorPos(pt);
            MapWindowPointsPOINT(0, hWnd, pt, 1);
            hdhti.pt := pt;
            iHotItem := SendMessageHDHTI(hWnd, HDM_HITTEST, 0, hdhti);

            // dttopts
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;

            // create buffer
            GetClientRect(hWnd, rClient);
            rClient.Right := rClient.Right shl 1; // fix
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            // draw background
            iPartId := EP_EDITBORDER_NOSCROLL;  // use partid from edit class
            iStateId := EPSN_HOT;               // use stateid from edit class
            DrawThemeBackground(g_hThemeEdit, hBufferedDC, iPartId, iStateId, rClient, 0);

            // draw items
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            for i := 0 to Sections.Count - 1 do
            begin
              // partid, stateid
              iPartId := BP_PUSHBUTTON;       // use part from button class
              if Enabled then                 // use states from button class
              begin
                iStateId := PBS_NORMAL;
                if i = iHotItem then
                  iStateId := PBS_HOT;
              end
              else
                iStateId := PBS_DISABLED;

              // get item text
              szText := Sections.Items[i].Text;

              // draw item sheet
              SetRect(rTemp, Sections.Items[i].Left, Top, Sections.Items[i].Left + Sections.Items[i].Width + 1, Height);
              DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rTemp, 0);

              // draw text
              case Sections.Items[i].Alignment of
                taLeftJustify: dwFlags := DT_SINGLELINE or DT_LEFT or DT_VCENTER or DT_END_ELLIPSIS;
                taRightJustify: dwFlags := DT_SINGLELINE or DT_RIGHT or DT_VCENTER or DT_END_ELLIPSIS;
                taCenter: dwFlags := DT_SINGLELINE or DT_CENTER or DT_VCENTER or DT_END_ELLIPSIS;
              end;
              rTemp.Left := rTemp.Left + ScaleX(5);     // glow offset
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(szText), -1, dwFlags, rTemp, dtt);
            end;
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            // apply buffer
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;

          { redraw parent }
          GetClientRect(Parent.Handle, rClient);
          InvalidateRect(Parent.Handle, rClient, False);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ListViewWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld, hImgList: THandle;
  pt: TPoint;
  rTemp, rText, rClient: TRect;
  szItem: string;
  dtt: DTTOPTS;
  i, j, iPartId, iStateId, iHotItem: Integer;
  dwFlags: DWORD;
  hWndHeader: HWND;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        with TListView(AObject) do if Showing then
        begin
          { exclude header }
          GetClientRect(SendMessage(hWnd, LVM_GETHEADER, 0, 0), rClient);
          ExcludeClipRect(wParam, rClient.Left, rClient.Top, rClient.Right, rClient.Bottom);

          { get items rect }
          rText := Items.Item[0].DisplayRect(drIcon);
          rTemp := Items.Item[Items.Count - 1].DisplayRect(drBounds);
          SetRect(rTemp, rText.Left, rText.Top, rTemp.Right, rTemp.Bottom);

          { create buffer }
          hPaintBuffer := BeginBufferedPaint(wParam, rTemp, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rTemp);

          { text struct }
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          if Enabled then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;

          { hot item }
          iHotItem := SendMessage(hWnd, LVM_GETHOTITEM, 0, 0);

          { draw items }
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          for i := TopItem.Index to Items.Count - 1 do
          begin
            { skip dummy row in DriveListView }
            if (TListView(AObject) = g_DriveListView) and (i = TopItem.Index) then Continue;

            { draw icon }
            rTemp := Items.Item[i].DisplayRect(drIcon);
            if rTemp.Top >= ClientHeight then Break;   // break
            hImgList := Perform(LVM_GETIMAGELIST, LVSIL_SMALL, 0);
            if hImgList <> 0 then
              ImageList_DrawEx(hImgList, Items.Item[i].ImageIndex, hBufferedDC, rTemp.Left, rTemp.Top, rTemp.Right - rTemp.Left, rTemp.Bottom - rTemp.Top, 0, $FFFFFFFF, 0);

            { draw selected and hot rects }
            if Items.Item[i].Selected or (i = iHotItem) then
            begin
              // partid, stateid
              iPartId := CP_READONLY;     // use partid from combobox class
              if Enabled then             // use stateid from combobox class
              begin
                iStateId := CBRO_PRESSED;
                if i = iHotItem then
                  iStateId := CBRO_HOT;
              end
              else
                iStateId := CBRO_DISABLED;

              { draw background }
              rText := Items.Item[i].DisplayRect(drSelectBounds);
              rText.Left := rTemp.Left; // bounds fix
              DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, rText, 0);
            end;

            { items }
            dwFlags := DT_SINGLELINE or DT_VCENTER or DT_LEFT or DT_END_ELLIPSIS;
            case ViewStyle of
              vsReport:
                for j := 0 to Columns.Count - 1 do
                begin
                  { get item text }
                  if j = 0 then
                    szItem := Items.Item[i].Caption
                  else
                    szItem := Items.Item[i].SubItems.Strings[j-1];

                  { get item text rect }
                  SetRect(rText, LVIR_LABEL, j, 0, 0);
                  SendMessageRECT(hWnd, LVM_GETSUBITEMRECT, i, rText);
                  rText.Left := rText.Left + 4;

                  { draw text }
                  DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(szItem), -1, dwFlags, rText, dtt);
                end;
            end;
          end;
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        end;
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        with TListView(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { exclude header }
            GetClientRect(SendMessage(hWnd, LVM_GETHEADER, 0, 0), rClient);
            ExcludeClipRect(hDC, rClient.Left, rClient.Top, rClient.Right, rClient.Bottom);

            { get items rect }
            rText := Items.Item[0].DisplayRect(drIcon);
            rTemp := Items.Item[Items.Count - 1].DisplayRect(drBounds);
            ExcludeClipRect(hDC, rText.Left, rText.Top, rTemp.Right, rTemp.Bottom);

            { fill region }
            FillRect(hDC, ps.rcPaint, GetSysColorBrush(COLOR_BACKGROUND));
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_LBUTTONDOWN:
      if TListView(AObject) <> g_PrepareListView then
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_HSCROLL:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if TListView(AObject) = g_DriveListView then
        begin
          hWndHeader := SendMessage(hWnd, LVM_GETHEADER, 0, 0);
          if hWndHeader <> 0 then
          begin
            pt := g_DriveListView.ViewOrigin;
            GetClientRect(hWndHeader, rClient);
            SetWindowPos(g_DriveHeader.Handle, 0, -pt.x, g_DriveHeader.Top, rClient.Right, g_DriveHeader.Height, SWP_NOZORDER or SWP_NOACTIVATE);
          end;
        end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TreeViewWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld, hItem, hImageList: THandle;
  rt, rtt, rClient: TRect;
  szItem: string;
  pszItem: Longint;
  dtt: DTTOPTS;
  iPartId, iStateId, cx, cy: Integer;
  dwFlags: DWORD;
  tvi: TVITEM;
  tvhti: TVHITTESTINFO;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
        if g_fEnabled then
        begin
          { fill client region }
          GetClientRect(hWnd, rClient);
          FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
          Result := 1;
        end
        else
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        with TStartMenuFolderTreeView(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { get imagelist handle }
            hImageList := SendMessage(hWnd, TVM_GETIMAGELIST, TVSIL_NORMAL, 0);
            ImageList_GetIconSize(hImageList, cx, cy);

            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, ps.rcPaint, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, ps.rcPaint);

            { text struct }
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;

            { items }
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            hItem := SendMessage(hWnd, TVM_GETNEXTITEM, TVGN_FIRSTVISIBLE, 0);
            rt.Left := hItem;
            SendMessageRECT(hWnd, TVM_GETITEMRECT, 1, rt);
            while rt.Top < ClientHeight do
            begin
              { get item text }
              szItem := StringOfChar(#0, 255);
              pszItem := CastStringToInteger(szItem);
              tvi.mask := TVIF_TEXT or TVIF_IMAGE or TVIF_STATE or TVIF_HANDLE or TVIF_CHILDREN;
              tvi.hItem := hItem;
              tvi.pszText := pszItem;
              tvi.cchTextMax := Length(szItem);
              tvi.stateMask := TVIS_SELECTED or TVIS_EXPANDED;
              SendMessageTVITEM(hWnd, TVM_GETITEM{#A}, 0, tvi);
              szItem := CastIntegerToString(tvi.pszText);

              { draw selected and hot states }
              GetCursorPos(tvhti.pt);
              MapWindowPointsPOINT(0, hWnd, tvhti.pt, 1);
              tvhti.hItem := hItem;
              if (tvi.state and TVIS_SELECTED <> 0) or ((SendMessageTVHTI(hWnd, TVM_HITTEST, 0, tvhti) = hItem) and ((tvhti.flags = TVHT_ONITEMLABEL) or (tvhti.flags = TVHT_ONITEMICON))) then
              begin
                iPartId := CP_READONLY;     // use partid from combobox class
                if Enabled then             // use stateid from combobox class
                begin
                  if tvi.state and TVIS_SELECTED <> 0 then
                    iStateId := CBRO_PRESSED;
                  if SendMessageTVHTI(hWnd, TVM_HITTEST, 0, tvhti) = hItem then
                    if (tvhti.flags = TVHT_ONITEMLABEL) or (tvhti.flags = TVHT_ONITEMICON) then
                      iStateId := CBRO_HOT;
                end
                else
                  iStateId := CBRO_DISABLED;
                rtt := rt;
                rtt.Left := rtt.Left - (rtt.Bottom - rtt.Top) - 2; // bounds fix
                rtt.Top := rtt.Top - 2;
                DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, rtt, 0);
              end;

              { partid, stateid }
              iPartId := TVP_TREEITEM;          // use partid from treeview class
              if Enabled then
                iStateId := TREIS_NORMAL
              else
                iStateId := TREIS_DISABLED;   // use stateid from treeview class

              { draw text }
              dwFlags := DT_SINGLELINE or DT_VCENTER or DT_CENTER;
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, StrToWStr(szItem), -1, dwFlags, rt, dtt);

              { draw imagelist icon }
              SetRect(rtt, rt.Left, rt.Top, rt.Left + rt.Bottom - rt.Top, rt.Bottom);
              OffsetRect(rtt, -(rtt.Right - rtt.Left) - 2, 0);
              InflateRect(rtt, -(rtt.Right - rtt.Left - cx) shr 1, -(rtt.Bottom - rtt.Top - cy) shr 1);
              ImageList_DrawEx(hImageList, tvi.iImage, hBufferedDC, rtt.Left, rtt.Top, cx, cy, 0, $FFFFFFFF, 0);

              { draw glyph }
              if tvi.cChildren > 0 then
              begin
                { partid, stateid }
                iPartId := TVP_GLYPH;
                if SendMessageTVHTI(hWnd, TVM_HITTEST, 0, tvhti) = hItem then
                  if tvhti.flags = TVHT_ONITEMBUTTON then
                    iPartId := TVP_HOTGLYPH;
                if tvi.state and TVIS_EXPANDED <> 0 then
                  iStateId := GLPS_OPENEDED
                else
                  iStateId := GLPS_CLOSED;

                { draw }
                SetRect(rtt, rt.Left, rt.Top, rt.Left + rt.Bottom - rt.Top, rt.Bottom);
                OffsetRect(rtt, -(rtt.Right - rtt.Left) shl 1 - 2, 0);
                InflateRect(rtt, -(rtt.Right - rtt.Left - cx) shr 1, -(rtt.Bottom - rtt.Top - cy) shr 1);
                DrawThemeBackground(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, rtt, 0);
              end;

              { get next item rect }
              hItem := SendMessage(hWnd, TVM_GETNEXTITEM, TVGN_NEXTVISIBLE, hItem);
              if hItem = 0 then Break;
              rt.Left := hItem;
              SendMessageRECT(hWnd, TVM_GETITEMRECT, 1, rt);
            end;
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ComboBoxWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  rClient: TRect;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  dtt: DTTOPTS;
  dwFlags: DWORD;
  iPartId, iStateId: Integer;
  cbi: COMBOBOXINFO;
  tme: TRACKMOUSEEVENT;
begin
  case uMsg of
    WM_MOUSEMOVE:
      begin
        tme.cbSize := SizeOf(tme);
        tme.dwFlags := TME_HOVER or TME_LEAVE;
        tme.dwHoverTime := 1;
        tme.hwndTrack := hWnd;
        _TrackMouseEvent(tme);
      end;
    WM_MOUSEHOVER:
      with TNewComboBox(AObject) do if Showing then
      begin
        if TNewComboBox(AObject).Name = 'TypesCombo' then   // typescombo
        begin
          ComponentListInfoLabel.Caption := g_TypesHelper[TNewComboBox(AObject).ItemIndex].szDescription;
          ComponentListInfoLabel.Enabled := True;
        end;
        if g_fEnabled then
        begin
          SetProp(hWnd, 'AERO_COMBOBOX_READONLYSTATES', CBRO_HOT);
          TNewComboBox(AObject).Invalidate;
        end;
      end;
    WM_MOUSELEAVE:
      with TNewComboBox(AObject) do if Showing then
      begin
        if TNewComboBox(AObject).Name = 'TypesCombo' then   // typescombo
        begin
          ComponentListInfoLabel.Caption := CustomMessage('TypesListInfoCaption');
          ComponentListInfoLabel.Enabled := False;
        end;
        if g_fEnabled then
        begin
          SetProp(hWnd, 'AERO_COMBOBOX_READONLYSTATES', CBRO_NORMAL);
          TNewComboBox(AObject).Invalidate;
        end;
      end;
    WM_PAINT:
      if g_fEnabled then
      begin
        with TNewComboBox(AObject) do if Showing then
        begin
          { get combobox metrics }
          cbi.cbSize := SizeOf(cbi);
          GetComboBoxInfo(hWnd, cbi);

          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            hPaintBuffer := BeginBufferedPaint(hDC, ps.rcPaint, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, ps.rcPaint);

            { partid, stateid }
            iPartId := CP_READONLY;
            if Enabled then
            begin
              if DroppedDown then
                iStateId := CBRO_PRESSED
              else
                iStateId := GetProp(hWnd, 'AERO_COMBOBOX_READONLYSTATES');
            end
            else
              iStateId := CBRO_DISABLED;

            { draw edit }
            GetClientRect(hWnd, rClient);
            DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, rClient, 0);

            { draw button }
            iPartId := CP_DROPDOWNBUTTONRIGHT;
            if Enabled then
              iStateId := CBXSR_NORMAL
            else
              iStateId := CBXSR_DISABLED;
            DrawThemeBackground(g_hThemeComboBox, hBufferedDC, iPartId, iStateId, cbi.rcButton, 0);

            { draw item text }
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            dwFlags := DT_SINGLELINE or DT_VCENTER;
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Text), -1, dwFlags, cbi.rcItem, dtt);
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    CN_CTLCOLOREDIT,
    CN_CTLCOLORSTATIC:
      if g_fEnabled then
      begin
        SetBkColor(wParam, GetSysColor(COLOR_BACKGROUND));
        Result := GetSysColorBrush(COLOR_BACKGROUND);
        TNewComboBox(AObject).Invalidate;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function RichEditWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hBrushOld, hBrush: Longint;
  rClient: TRect;
  hBitmap: HBITMAP;
begin
  if g_fEnabled then
  begin
    case uMsg of
      WM_NCPAINT:
        begin
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
          DrawAeroBorder(hWnd);
        end;
      WM_ERASEBKGND:
        Result := 1;
      WM_PAINT:
        begin
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);

          { paint to buffer }
          hDC := GetDC(0);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            { print to buffer }
            PrintWindow(hWnd, hBufferedDC, 1);

            { create brush }
            BufferedPaintSetAlpha(hPaintBuffer, rClient, $FF);
            hBitmap := GetCurrentObject(hBufferedDC, OBJ_BITMAP);
            hBrush := CreatePatternBrush(hBitmap);
            hBrushOld := GetProp(hWnd, 'AERO_RICHEDIT_BRUSH');
            if hBrushOld <> 0 then
              DeleteObject(hBrushOld);
            SetProp(hWnd, 'AERO_RICHEDIT_BRUSH', hBrush);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, False);
          finally
            ReleaseDC(0, hDC);
          end;

          { paint }
          InvalidateRect(hWnd, rClient, True);
          hDC := BeginPaint(hWnd, ps);
          FillRect(hDC, ps.rcPaint, GetProp(hWnd, 'AERO_RICHEDIT_BRUSH'));
          EndPaint(hWnd, ps);
        end;
    else
      Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    end;
  end
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function EditWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld, hRgn, hRgnOld, hRgnLine: THandle;
  rt, rtt, rc: TRect;
  szText: string;
  szLine: string;
  dtt: DTTOPTS;
  iStartLine, iEndLine, iSelFirst, iSelLast, iSelFirstLine, iSelLastLine,
  iFirstPos, iSelFirstPos, iFirst, iFirstOffsetX, i: Integer;
  dwStyle: DWORD;
  siHorz, siVert: SCROLLINFO;
begin
  case uMsg of
    WM_NCPAINT:
      begin
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
        if g_fEnabled then
        begin
          DrawAeroBorder(hWnd);
          DrawAeroScrollBar(hWnd);
        end;
      end;
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetClientRect(hWnd, rc);
        FillRect(wParam, rc, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        hDC := BeginPaint(hWnd, ps);
        try
          { get scroll info }
          dwStyle := GetWindowLong(hWnd, GWL_STYLE);
          if dwStyle and ES_MULTILINE <> 0 then
          begin
            siHorz.cbSize := SizeOf(siHorz);
            siHorz.fMask := SIF_RANGE or SIF_PAGE or SIF_POS;
            GetScrollInfo(hWnd, SB_HORZ, siHorz);

            siVert.cbSize := SizeOf(siVert);
            siVert.fMask := SIF_RANGE or SIF_PAGE or SIF_POS;
            GetScrollInfo(hWnd, SB_VERT, siVert);

            iStartLine := siVert.nPos;
            iEndLine := siVert.nPos + siVert.nPage - 1;
            if iEndLine = -1 then
              iEndLine := TCustomMemo(AObject).Lines.Count - 1;
          end;

          { get selection range }
          iSelFirst := TCustomEdit(AObject).SelStart;
          iSelLast := iSelFirst + TCustomEdit(AObject).SelLength;

          { get selection lines }
          iSelFirstLine := SendMessage(hWnd, EM_LINEFROMCHAR, iSelFirst, 0);
          iSelLastLine := SendMessage(hWnd, EM_LINEFROMCHAR, iSelLast, 0);

          { get text and selection region }
          hFontOld := SelectObject(hDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          hRgn := CreateRectRgn(0, 0, 0, 0);
          for i := iStartLine to iEndLine do
          begin
            { get line }
            iFirstPos := SendMessage(hWnd, EM_LINEINDEX, i, 0);
            if AObject is TEdit then
              szLine := TEdit(AObject).Text;
            if AObject is TNewMemo then
              szLine := TNewMemo(AObject).Lines[i];
            if dwStyle and ES_MULTILINE <> 0 then
              szText := Format('%s%s'#13#10, [szText, szLine])
            else
              szText := szLine;
            if (Length(szLine) = 0) or (iSelFirst = iSelLast) or (i < iSelFirstLine) or (i > iSelLastLine) then Continue;

            { get sel text rect }
            if (i = iSelFirstLine) and (i = iSelLastLine) then
              szLine := Copy(szLine, iSelFirst - iFirstPos + 1, iSelLast - iSelFirst);
            if (i = iSelFirstLine) and (iSelFirstLine < iSelLastLine) then
              Delete(szLine, 1, iSelFirst - iFirstPos);
            if (i = iSelLastLine) and (iSelFirstLine < iSelLastLine) then
              Delete(szLine, iSelLast - iFirstPos + 1, Length(szLine));
            GetThemeTextExtent(g_hThemeTreeView, hDC, 0, 0, StrToWStr(szLine), -1, DT_CALCRECT, 0, rtt);
            if i = iSelFirstLine then
              iFirst := iSelFirst
            else
              iFirst := iFirstPos;
            iSelFirstPos := SendMessage(hWnd, EM_POSFROMCHAR, iFirst, 0);
            if iSelFirstPos and $FFFF > $7FFF then
              iFirstOffsetX := iSelFirstPos or $FFFF0000
            else
              iFirstOffsetX := iSelFirstPos and $FFFF;
            OffsetRect(rtt, iFirstOffsetX, iSelFirstPos shr $10);

            { update sel region }
            hRgnLine := CreateRectRgnIndirect(rtt);
            CombineRgn(hRgn, hRgn, hRgnLine, RGN_OR);
            DeleteObject(hRgnLine);
          end;
          if hFontOld <> 0 then
            SelectObject(hDC, hFontOld);

          { get offset rect }
          SendMessageRECT(hWnd, EM_GETRECT, 0, rt);
          if dwStyle and ES_MULTILINE <> 0 then
          begin
            SetRect(rtt, 0, 0, siHorz.nMax, rt.Bottom);
            if siHorz.nMax < rt.Right - rt.Left then
              rtt.Right := rt.Right;
            iFirstOffsetX := siHorz.nPos;
          end
          else
          begin
            hFontOld := SelectObject(hDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            GetThemeTextExtent(g_hThemeTreeView, hDC, 0, 0, StrToWStr(szText), -1, DT_CALCRECT, 0, rtt);
            if hFontOld <> 0 then
              SelectObject(hDC, hFontOld);
            if rtt.Right < rt.Right - rt.Left then
              rtt.Right := rt.Right;
            iSelFirstPos := SendMessage(hWnd, EM_POSFROMCHAR, 0, 0);
            if iSelFirstPos and $FFFF > $7FFF then
              iFirstOffsetX := (-iSelFirstPos) and $FFFF
            else
              iFirstOffsetX := -iSelFirstPos;
          end;

          { paint text to buffer }
          InflateRect(rtt, rt.Left, rt.Top);
          OffsetRect(rtt, -rtt.Left, -rtt.Top);
          hPaintBuffer := BeginBufferedPaint(hDC, rtt, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rtt);
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
          if TCustomEdit(AObject).Enabled then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          OffsetRect(rtt, rt.Left, rt.Top);
          DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(szText), -1, DT_VCENTER, rtt, dtt);
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);
          BitBlt(hDC, rt.Left, rt.Top, rt.Right - rt.Left, rt.Bottom - rt.Top, hBufferedDC, iFirstOffsetX + rt.Left, rt.Top, SRCCOPY);
          EndBufferedPaint(hPaintBuffer, False);

          { draw selecton }
          if GetFocus = hWnd then
          begin
            hRgnOld := SelectObject(hDC, hRgn);
            hPaintBuffer := BeginBufferedPaint(hDC, rt, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rt);
            SendMessage(hWnd, WM_PRINTCLIENT, hBufferedDC, PRF_CLIENT or PRF_CHECKVISIBLE);
            BufferedPaintSetAlpha(hPaintBuffer, rt, $FF);
            BitBlt(hDC, rt.Left, rt.Top, rt.Right - rt.Left, rt.Bottom - rt.Top, hBufferedDC, rt.Left, rt.Top, SRCCOPY);
            EndBufferedPaint(hPaintBuffer, False);
            if hRgnOld <> 0 then
              SelectObject(hDC, hRgnOld);
          end;
          DeleteObject(hRgn);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
         Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    CN_CTLCOLORSTATIC:
      if g_fEnabled then
      begin
        SetBkMode(wParam, TRANSPARENT);
        Result := GetStockObject(NULL_BRUSH);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    CN_CTLCOLOREDIT:
      if g_fEnabled then
      begin
        SetBkMode(wParam, TRANSPARENT);
        Result := GetSysColorBrush(COLOR_BACKGROUND);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function StaticWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  dwStyle, dwFlags: DWORD;
  dtt: DTTOPTS;
begin
  case uMsg of
    WM_PAINT:
      if g_fEnabled then
      begin
        with TNewStaticText(AObject) do if Showing then
        begin
          { paint to buffer }
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            { draw intersect bgnd }
            DrawIntersectedBackground(hWnd, hBufferedDC);

            { draw text }
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
            OffsetRect(rClient, 2, 0);
            dwStyle := GetWindowLong(hWnd, GWL_STYLE);
            dwFlags := DT_WORDBREAK or DT_WORD_ELLIPSIS;
            dtt.dwSize := SizeOf(dtt);
            dtt.iGlowSize := 6;
            dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
            if Enabled then
              dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
            else
              dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
            if Assigned(URLLabel) then
              if hWnd = URLLabel.Handle then
                dtt.crText := Font.Color;
            if dwStyle and SS_RIGHT <> 0 then
              dwFlags := dwFlags or DT_RIGHT;
            DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Caption), -1, dwFlags, rClient, dtt);
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
    end
    else
      Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function ButtonWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  pt: TPoint;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  rClient: TRect;
  szCaption: string;
  dtt: DTTOPTS;
  dwStyle, dwFlags: DWORD;
  iPartId, iStateId: Integer;
begin
  case uMsg of
    WM_ENABLE:
      if g_fEnabled then
      begin
        GetClientRect(hWnd, rClient);
        InvalidateRect(hWnd, rClient, False);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        { get type button }
        GetClientRect(hWnd, rClient);
        dwStyle := GetWindowLong(hWnd, GWL_STYLE);
        case dwStyle and $000F of
          BS_PUSHBUTTON,
          BS_DEFPUSHBUTTON:
            begin
              iPartId := BP_PUSHBUTTON;
              if TNewButton(AObject).Enabled then
                iStateId := PBS_NORMAL
              else
                iStateId := PBS_DISABLED;
              dwFlags := DT_SINGLELINE or DT_CENTER or DT_VCENTER;
              szCaption := TNewButton(AObject).Caption;
            end;
          BS_RADIOBUTTON,
          BS_AUTORADIOBUTTON:
            begin
              iPartId := BP_RADIOBUTTON;
              if TNewRadioButton(AObject).Enabled then
                iStateId := RBS_UNCHECKEDNORMAL
              else
                iStateId := RBS_UNCHECKEDDISABLED;
              dwFlags := DT_SINGLELINE or DT_LEFT or DT_VCENTER;
              GetThemePartSize(g_hThemeButton, 0, iPartId, iStateId, 0, TS_DRAW, pt);
              rClient.Left := pt.x + 4;    // padding
              szCaption := TNewRadioButton(AObject).Caption;
            end;
          BS_CHECKBOX,
          BS_AUTOCHECKBOX,
          BS_3STATE,
          BS_AUTO3STATE:
            begin
              iPartId := BP_CHECKBOX;
              if TNewCheckBox(AObject).Enabled then
                iStateId := CBS_UNCHECKEDNORMAL
              else
                iStateId := CBS_UNCHECKEDDISABLED;
              dwFlags := DT_SINGLELINE or DT_LEFT or DT_VCENTER;
              GetThemePartSize(g_hThemeButton, 0, iPartId, iStateId, 0, TS_DRAW, pt);
              rClient.Left := pt.x + 4;    // padding
              szCaption := TNewCheckBox(AObject).Caption;
            end;
        end;

        { paint to buffer }
        hDC := BeginPaint(hWnd, ps);
        try
          { create buffer }
          hPaintBuffer := BeginBufferedPaint(hDC, ps.rcPaint, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, ps.rcPaint);

          { print to buffer }
          SendMessage(hWnd, WM_PRINTCLIENT, hBufferedDC, PRF_CLIENT or PRF_CHECKVISIBLE);

          { draw text }
          dtt.dwSize := SizeOf(dtt);
          dtt.iGlowSize := 6;
          dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
          if TButtonControl(AObject).Enabled then
            dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
          else
            dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
          hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));
          DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, iPartId, iStateId, StrToWStr(szCaption), -1, dwFlags, rClient, dtt);
          if hFontOld <> 0 then
            SelectObject(hBufferedDC, hFontOld);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function PageControlWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  rClient, rTab: TRect;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC, hFontOld: THandle;
  i: Integer;
  dtt: DTTOPTS;
  dwFlags: DWORD;
  IsVisible, IsFirst: Boolean;
begin
  case uMsg of
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetUpdateRect(hWnd, rClient, False);
        FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        with TPageControl(AObject) do if Showing then
        begin
          hDC := BeginPaint(hWnd, ps);
          try
            { create buffer }
            GetClientRect(hWnd, rClient);
            hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
            BufferedPaintClear(hPaintBuffer, rClient);

            { set font }
            hFontOld := SelectObject(hBufferedDC, SendMessage(hWnd, WM_GETFONT, 0, 0));

            { draw active tab }
            with ActivePage do
            begin
              SendMessageRECT(hWnd, TCM_GETITEMRECT, PageIndex, rTab);
              IsVisible := (rTab.Left > -1);
              IsFirst := (rTab.Left > -1) and (rTab.Left < 3);
              InflateRect(rTab, 2, 2);

              { draw border }
              if IsVisible then
              begin
                DrawImageWithMargins(hBufferedDC, rTab.Left, rTab.Top, rTab.Right - rTab.Left - 4, rTab.Bottom - 4, g_Border, 4, 0, 3, 3, 0, 0);
                DrawImageWithMargins(hBufferedDC, rTab.Right - 4, rTab.Top, 4, rTab.Bottom - 4, g_Border, 4, 1, 0, 3, 3, 0);
                DrawImageWithMargins(hBufferedDC, rTab.Right - 3, rTab.Bottom - 4, 4, 4, g_Border, 4, 3, 3, 0, 0, 3);
                DrawImageWithMargins(hBufferedDC, rTab.Right + 1, rTab.Bottom - 3, rClient.Right - rTab.Right - 1, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 1, 0, 3, 3, 0);
                DrawImageWithMargins(hBufferedDC, rClient.Right - 4, rClient.Bottom - 4, 4, 4, g_Border, 4, 2, 0, 0, 3, 3);
                if not IsFirst then
                begin
                  DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom + 1, rClient.Right - 4, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 3, 3, 0, 0, 3);
                  DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom - 3, rTab.Left - 1, 4, g_Border, 4, 0, 3, 3, 0, 0);
                  DrawImageWithMargins(hBufferedDC, rTab.Left - 1, rTab.Bottom - 4, 4, 4, g_Border, 4, 2, 0, 0, 3, 3);
                end
                else
                  DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom - 4, rClient.Right - 4, rClient.Bottom - rTab.Bottom + 4, g_Border, 4, 3, 3, 0, 0, 3);
              end
              else
              begin
                DrawImageWithMargins(hBufferedDC, rClient.Left, rTab.Bottom - 3, rClient.Right - 4, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 0, 3, 3, 0, 0);
                DrawImageWithMargins(hBufferedDC, rClient.Right - 4, rTab.Bottom - 3, 4, 4, g_Border, 4, 1, 0, 3, 3, 0);
                DrawImageWithMargins(hBufferedDC, rClient.Left + 4, rTab.Bottom + 1, rClient.Right - 4, rClient.Bottom - rTab.Bottom - 1, g_Border, 4, 2, 0, 0, 3, 3);
                DrawImageWithMargins(hBufferedDC, rClient.Left, rClient.Bottom - 4, 4, 4, g_Border, 4, 3, 3, 0, 0, 3);
              end;

              { draw text }
              dwFlags := DT_CENTER or DT_VCENTER or DT_SINGLELINE;
              dtt.dwSize := SizeOf(dtt);
              dtt.iGlowSize := 6;
              dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
              if Enabled then
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
              else
                dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Caption), -1, dwFlags, rTab, dtt);

              { set clip rect }
              if IsVisible then
                ExcludeClipRect(hBufferedDC, rTab.Left + 1, rTab.Top, rTab.Right - 1, rTab.Bottom);
            end;

            { draw inactive tabs }
            for i := 0 to PageCount - 1 do if (Pages[i] <> ActivePage) then
            begin
              SendMessageRECT(hWnd, TCM_GETITEMRECT, i, rTab);
              if rTab.Left < 0 then
                Continue;
              InflateRect(rTab, 1, 0);

              { draw border }
              DrawImageWithMargins(hBufferedDC, rTab.Left, rTab.Top, rTab.Right - rTab.Left - 4, rTab.Bottom - 2, g_Border, 4, 0, 3, 3, 0, 0);
              DrawImageWithMargins(hBufferedDC, rTab.Right - 4, rTab.Top, 4, rTab.Bottom - 2, g_Border, 4, 1, 0, 3, 3, 0);

              { draw text }
              dwFlags := DT_CENTER or DT_VCENTER or DT_SINGLELINE;
              dtt.dwSize := SizeOf(dtt);
              dtt.iGlowSize := 6;
              dtt.dwFlags := DTT_GLOWSIZE or DTT_COMPOSITED or DTT_TEXTCOLOR;
              if Pages[i].Enabled then
                dtt.crText := GetSysColor(COLOR_CAPTIONTEXT)
              else
                dtt.crText := GetSysColor(COLOR_INACTIVECAPTIONTEXT);
              DrawThemeTextEx(g_hThemeTreeView, hBufferedDC, 0, 0, StrToWStr(Pages[i].Caption), -1, dwFlags, rTab, dtt);

              { set clip rect }
              ExcludeClipRect(hBufferedDC, rTab.Left + 1, rTab.Top, rTab.Right - 1, rTab.Bottom);
            end;

            { select old }
            if hFontOld <> 0 then
              SelectObject(hBufferedDC, hFontOld);

            { apply buffer }
            EndBufferedPaint(hPaintBuffer, True);
          finally
            EndPaint(hWnd, ps);
          end;
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_LBUTTONDOWN:
      begin
          Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
          if g_fEnabled then
          begin
            GetClientRect(hWnd, rClient);
            InvalidateRect(hWnd, rClient, False);
          end;
      end;
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function UpDownWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  pt: TPoint;
  rClient, rButton: TRect;
  ps: PAINTSTRUCT;
  hDC, hPaintBuffer, hBufferedDC: THandle;
  iPartId, iStateId: Integer;
begin
  case uMsg of
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetUpdateRect(hWnd, rClient, False);
        FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        hDC := BeginPaint(hWnd, ps);
        try
          { create buffer }
          GetClientRect(hWnd, rClient);
          hPaintBuffer := BeginBufferedPaint(hDC, rClient, BPBF_TOPDOWNDIB, 0, hBufferedDC);
          BufferedPaintClear(hPaintBuffer, rClient);

          { partid, stateid }
          iPartId := BP_PUSHBUTTON;
          iStateId := PBS_NORMAL;

          { draw left arrow }
          SetRect(rButton, 0, 0, rClient.Right div 2, rClient.Bottom);
          DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rButton, 0);
          GetThemePartSize(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
          OffsetRect(rButton, (rButton.Right - rButton.Left - pt.x) div 2, (rButton.Bottom - pt.y) div 2);
          DrawThemeBackground(g_hThemeArrowBtnLeft, hBufferedDC, 0, 0, rButton, 0);

          { draw right arrow }
          SetRect(rButton, rClient.Right div 2, 0, rClient.Right, rClient.Bottom);
          DrawThemeBackground(g_hThemeHeader, hBufferedDC, iPartId, iStateId, rButton, 0);
          GetThemePartSize(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, 0, TS_DRAW, pt);
          OffsetRect(rButton, (rButton.Right - rButton.Left - pt.x) div 2, (rButton.Bottom - pt.y) div 2);
          DrawThemeBackground(g_hThemeArrowBtnRight, hBufferedDC, 0, 0, rButton, 0);

          { apply buffer }
          EndBufferedPaint(hPaintBuffer, True);
        finally
          EndPaint(hWnd, ps);
        end;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function TabSheetWndProc(hWnd: HWND; uMsg: UINT; wParam, lParam: Longint; uIdSubclass: UINT_PTR; AObject: TObject): Longint;
var
  rClient: TRect;
  ps: PAINTSTRUCT;
begin
  case uMsg of
    WM_ERASEBKGND:
      if g_fEnabled then
      begin
        GetUpdateRect(hWnd, rClient, False);
        FillRect(wParam, rClient, GetSysColorBrush(COLOR_BACKGROUND));
        Result := 1;
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
    WM_PAINT:
      if g_fEnabled then
      begin
        BeginPaint(hWnd, ps);
        FillRect(ps.hdc, ps.rcPaint, GetSysColorBrush(COLOR_BACKGROUND));
        EndPaint(hWnd, ps);
      end
      else
        Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  else
    Result := DefSubclassProc(hWnd, uMsg, wParam, lParam);
  end;
end;
/////////////////////////////
/////////////////////////////
/////////////////////////////
function ErrorHelper: string;
begin
  { standart }
  if IsDefaultSetupType then
  begin
    Result := 'RestoreStandartSettings';
    if (GetSetupPreviousDataEx('InstallLocation', '') <> '') xor (FileExists(ExpandConstant('{app}\Profiles\{#AppINI}'))) then
      if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and FileExists(ExpandConstant('{app}\Profiles\{#AppINI}')) then
        Result := 'PortableDirSelectError';
  end;

  { portable }
  if IsPortableSetupType then
  begin
    Result := 'RestorePortableSettings';
    if CompareText(RemoveBackslash(WizardDirValue), GetSetupPreviousDataEx('InstallLocation', '')) = 0 then
    begin
      Result := 'DefaultDirSelectError';
      Exit;
    end;
    if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and not FileExists(ExpandConstant('{app}\Profiles\{#AppINI}')) then
    begin
      Result := 'OtherVerDirSelectError';
      Exit;
    end;
    if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and FileExists(ExpandConstant('{app}\Profiles\{#AppINI}')) and not CheckUpdateVersion('{#AppUpdateVersion}') then
    begin
      Result := 'FoundVerNotUpdatableConfirm';
      Exit;
    end;
    if (FileExists(ExpandConstant('{app}\{#AppExeName}')) or FileExists(ExpandConstant('{app}\{#AppExeOppName}'))) and FileExists(ExpandConstant('{app}\Profiles\{#AppINI}')) and CheckUpdateVersion('{#AppUpdateVersion}') then
      Result := 'FoundPortableVerUpdateActivateInfo';
  end;
end;

///////////////////////////////
procedure ReadStandartSettings;
var
  i, j, Index: Integer;
  crBackground: DWORD;
  TempList: TStringList;
  S: string;
begin
  { global color }
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
    crBackground := GetSysColor(COLOR_BACKGROUND);
#endif

  { update default captions }
  CheckDefaultInstall;

  { exit if previously restored }
  if CompareText(szPreviousSelectedDefaultAppPath, RemoveQuotes(WizardDirValue)) = 0 then Exit;

  { SelectComponentsPage }
      // check/enable components
  with TStringList.Create do
  try
    Sorted := True;
    with WizardForm.ComponentsList do
    begin
      CommaText := GetSetupPreviousDataEx('Inno Setup: Selected Components', '');
      for i := 0 to ItemCount - 1 do
      begin
        if IsUpdate then
          Checked[i] := Find(g_ComponentsHelper[i].szInternalName, Index);

        // disable previous installed themes
        case g_ComponentsHelper[i].szInternalName of
          'Resources\Themes\Custom_Miranda',
          'Resources\Themes\Custom_Miranda_Dark',
          'Resources\Themes\Custom_Miranda_Light',
          'Resources\Themes\Native_7_Dark',
          'Resources\Themes\Native_7_Light',
          'Resources\Themes\WinStyle_Classic_Dark',
          'Resources\Themes\WinStyle_Classic_Light',
          'Resources\Themes\WinStyle_Dark',
          'Resources\Themes\WinStyle_Light',
          'Resources\Themes\Diplomat_Dark',
          'Resources\Themes\Diplomat_Light',
          'Resources\Themes\Glamour_Aqua_Dark',
          'Resources\Themes\Glamour_Aqua_Light',
          'Resources\Themes\Glamour_Dark',
          'Resources\Themes\Glamour_Light',
          'Resources\Themes\GoldTime_Dark',
          'Resources\Themes\GoldTime_Light',
          'Resources\Themes\Graphite_Brown_Dark',
          'Resources\Themes\Graphite_Brown_Light',
          'Resources\Themes\Graphite_Gray_Dark',
          'Resources\Themes\Graphite_Gray_Light',
          'Resources\Themes\PhotoOne_Dark',
          'Resources\Themes\PhotoOne_Light',
          'Resources\Themes\Surface_Black',
          'Resources\Themes\Surface_White',
          'Resources\Themes\Textolite_Brown_Dark',
          'Resources\Themes\Textolite_Brown_Light',
          'Resources\Themes\Textolite_Gray_Dark',
          'Resources\Themes\Textolite_Gray_Light':
            ItemEnabled[i] := not IsUpdate or not Checked[i];
        end;
      end;
    end;
  finally
    Free;
  end;
      // types
  for i := 0 to GetArrayLength(g_TypesHelper) - 1 do
    if CompareText(g_TypesHelper[i].szInternalName, GetSetupPreviousDataEx('Inno Setup: Setup Type', '{#TypeDefault}')) = 0 then
    begin
      WizardForm.TypesCombo.ItemIndex := i;
      Break;
    end;
  WizardForm.TypesCombo.OnChange(WizardForm.TypesCombo);

  { SelectProgramGroupPage }
  WizardForm.NoIconsCheck.Checked := WizardNoIcons;

  { SettingsPage }
      // settings
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := GetPreviousData('SelectedSettings', '{#SelectedSettingsDefault}')
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedSettingsDefault}';
      S := Format('%s,%s,', [GetPreviousData('SelectedSettings', ''), GetPreviousData('DeselectedSettings', '')]);
      for i := 0 to Count - 1 do
        if Pos(Format('%s,', [Strings[i]]), S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := SettingsPage.CheckListBox.ItemCount - 1 downto 0 do
      if Find(g_SetHelper[i].szInternalName, Index) then
        SettingsPage.CheckListBox.CheckItem(i, coCheck);
  finally
    Free;
  end;
      // additional settings
  for i := 0 to GetArrayLength(g_AddSetHelper) - 1 do
  begin
    S := GetPreviousData(g_AddSetHelper[i].szInternalName, g_AddSetHelper[i].szInternalDefault);
    with TStringList.Create do
    try
      CommaText := g_AddSetHelper[i].szInternalValues;
      for j := 0 to Count - 1 do
        if CompareText(Trim(Strings[j]), S) = 0 then
        begin
          if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
            TNewComboBox(AddSettingsListBox.Items.Objects[i]).ItemIndex := j;
          Break;
        end;
    finally
      Free;
    end;
  end;

  { StylesPage }
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := GetPreviousData('SelectedStyleSettings', '{#SelectedStyleSettingsDefault}');
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedStyleSettingsDefault}';
      S := Format('%s,%s', [GetPreviousData('SelectedStyleSettings', ''), GetPreviousData('DeselectedStyleSettings', '')]);
      for i := 0 to Count - 1 do
        if Pos(Strings[i], S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := StylesPage.CheckListBox.ItemCount - 1 downto 0 do
    begin
      if Find(g_StylesHelper[i].szInternalName, Index) then
      begin
        StylesPage.CheckListBox.CheckItem(i, coCheck);
        if StylesPage.CheckListBox.ItemLevel[i] = 1 then
          PreviewButton.Enabled := g_StylesHelper[i].szPreviewBitmap <> '';
      end;

      // update thumb
      if StylesPage.CheckListBox.Checked[i] then
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szSelectedBitmap, crBackground)
      else
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szUnselectedBitmap, crBackground);
    end;
  finally
    Free;
  end;

  { set previous selected default path }
  szPreviousSelectedDefaultAppPath := RemoveQuotes(WizardDirValue);
end;

////////////////////////////////////////////////////
procedure ReadPortableSettings(const Param: string);
var
  i, j, Index: Integer;
  crBackground: DWORD;
  TempList: TStringList;
  S: string;
begin
  { global color }
  crBackground := GetSysColor(COLOR_BTNFACE);
#if aero == 1
  if g_fEnabled then
    crBackground := GetSysColor(COLOR_BACKGROUND);
#endif

  { update portable captions }
  CheckPortableInstall;

  { message if found portable }
  if CompareText(Param, 'FoundPortableVerUpdateActivateInfo') = 0 then
    MsgBox(CustomMessage('FoundPortableVerUpdateActivateInfo'), mbInformation, MB_OK);

  { exit if restored }
  if CompareText(szPreviousSelectedPortableAppPath, RemoveQuotes(WizardDirValue)) = 0 then Exit;

  { SelectComponentsPage }
  with TStringList.Create do
  try
    Sorted := True;
    with WizardForm.ComponentsList do
    begin
      CommaText := ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},SelectedComponents|}');
      for i := 0 to ItemCount - 1 do
      begin
        if (CompareText(Param, 'FoundPortableVerUpdateActivateInfo') = 0) then
          Checked[i] := Find(g_ComponentsHelper[i].szInternalName, Index);

        // disable previous installed themes
        case g_ComponentsHelper[i].szInternalName of
          'Resources\Themes\Custom_Miranda',
          'Resources\Themes\Custom_Miranda_Dark',
          'Resources\Themes\Custom_Miranda_Light',
          'Resources\Themes\Native_7_Dark',
          'Resources\Themes\Native_7_Light',
          'Resources\Themes\WinStyle_Classic_Dark',
          'Resources\Themes\WinStyle_Classic_Light',
          'Resources\Themes\WinStyle_Dark',
          'Resources\Themes\WinStyle_Light',
          'Resources\Themes\Diplomat_Dark',
          'Resources\Themes\Diplomat_Light',
          'Resources\Themes\Glamour_Aqua_Dark',
          'Resources\Themes\Glamour_Aqua_Light',
          'Resources\Themes\Glamour_Dark',
          'Resources\Themes\Glamour_Light',
          'Resources\Themes\GoldTime_Dark',
          'Resources\Themes\GoldTime_Light',
          'Resources\Themes\Graphite_Brown_Dark',
          'Resources\Themes\Graphite_Brown_Light',
          'Resources\Themes\Graphite_Gray_Dark',
          'Resources\Themes\Graphite_Gray_Light',
          'Resources\Themes\PhotoOne_Dark',
          'Resources\Themes\PhotoOne_Light',
          'Resources\Themes\Surface_Black',
          'Resources\Themes\Surface_White',
          'Resources\Themes\Textolite_Brown_Dark',
          'Resources\Themes\Textolite_Brown_Light',
          'Resources\Themes\Textolite_Gray_Dark',
          'Resources\Themes\Textolite_Gray_Light':
            ItemEnabled[i] := (CompareText(Param, 'RestorePortableSettings') = 0) or ((CompareText(Param, 'FoundPortableVerUpdateActivateInfo') = 0) and not Checked[i]);
        end;
      end;
    end;
  finally
    Free;
  end;
      // types
  for i := 0 to GetArrayLength(g_TypesHelper) - 1 do
    if CompareText(g_TypesHelper[i].szInternalName, ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},SetupType|{#TypeDefault}}')) = 0 then
    begin
        WizardForm.TypesCombo.ItemIndex := i;
        Break;
    end;
  WizardForm.TypesCombo.OnChange(WizardForm.TypesCombo);

  { SettingsPage }
    // settings
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},SelectedSettings|{#SelectedSettingsDefault}}');
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedSettingsDefault}';
      S := Format('%s,%s,', [ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},SelectedSettings|}'), ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},DeselectedSettings|}')]);
      for i := 0 to Count - 1 do
        if Pos(Format('%s,', [Strings[i]]), S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := SettingsPage.CheckListBox.ItemCount - 1 downto 0 do
      if Find(g_SetHelper[i].szInternalName, Index) then
        SettingsPage.CheckListBox.CheckItem(i, coCheck);
  finally
    Free;
  end;
    // additional settings
  for i := 0 to GetArrayLength(g_AddSetHelper) - 1 do
  begin
    S := ExpandConstant(Format('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},%s|%s}', [g_AddSetHelper[i].szInternalName, g_AddSetHelper[i].szInternalDefault]));
    with TStringList.Create do
    try
      CommaText := g_AddSetHelper[i].szInternalValues;
      for j := 0 to Count - 1 do
        if CompareText(Trim(Strings[j]), S) = 0 then
        begin
          if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
            TNewComboBox(AddSettingsListBox.Items.Objects[i]).ItemIndex := j;
          Break;
        end;
    finally
      Free;
    end;
  end;

  { StylesPage }
  TempList := TStringList.Create;
  with TempList do
  try
    Sorted := True;
    Duplicates := dupIgnore;
    CommaText := ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},SelectedStyleSettings|{#SelectedStyleSettingsDefault}}');
    if IsUpdate then with TStringList.Create do
    try
      Sorted := True;
      Duplicates := dupIgnore;
      CommaText := '{#SelectedStyleSettingsDefault}';
      S := Format('%s,%s', [ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},SelectedStyleSettings|}'), ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},DeselectedStyleSettings|}')]);
      for i := 0 to Count - 1 do
        if Pos(Strings[i], S) = 0 then
          TempList.Add(Strings[i]);
    finally
      Free;
    end;
    for i := StylesPage.CheckListBox.ItemCount - 1 downto 0 do
    begin
      if Find(g_StylesHelper[i].szInternalName, Index) then
      begin
        StylesPage.CheckListBox.CheckItem(i, coCheck);
        if StylesPage.CheckListBox.ItemLevel[i] = 1 then
          PreviewButton.Enabled := g_StylesHelper[i].szPreviewBitmap <> '';
      end;

      // update thumb
      if StylesPage.CheckListBox.Checked[i] then
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szSelectedBitmap, crBackground)
      else
        DrawImageOnBitmap(ThumbsBitmapImage, g_StylesHelper[i].szUnselectedBitmap, crBackground);
    end;
  finally
    Free;
  end;

  { SelectTasksPage }
  WizardForm.TasksList.Tag := 0;

  { set previous selected portable path }
  szPreviousSelectedPortableAppPath := RemoveQuotes(WizardDirValue);
end;
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
function PinToTaskbar(const Filename: string; IsPin: Boolean): Boolean;
var
  i, ResID, Len: Integer;
  Link, Verb: string;
  objShell, colVerbs: Variant;
  Flag: Longint;
begin
  Result := False;
  if not FileExists(Filename) then Exit;
  if (GetWindowsVersion < $06010000) or not FileExists(Filename) then Exit; { below Windows 7 }

  { String resources }
  if IsPin then
  begin
    Link := StringOfChar(#0, 255);
    if SHGetNewLinkInfo(Filename, ExpandConstant('{tmp}'), Link, Flag, 0) then
    begin
      Link := TrimRight(Link);
      if FileExists(ExpandConstant('{userappdata}\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\') + ExtractFileName(Link)) then Exit;
    end;
    ResID := 5386;  { Pin to Tas&kbar }
  end
  else
    ResID := 5387;  { Unpin from Tas&kbar }

  { Load string resource }
  Verb := StringOfChar(#0, 255);
  Len := LoadString(GetModuleHandle('shell32'), ResID, Verb, Length(Verb));
  if Len = 0 then Exit;
  SetLength(Verb, Len);

  { Do verb }
  try
    objShell := CreateOleObject('Shell.Application');
    colVerbs := objShell.Namespace(ExtractFileDir(Filename)).ParseName(ExtractFileName(Filename)).Verbs;
    for i := 1 to colVerbs.Count do
      if CompareText(colVerbs.Item[i].Name, Verb) = 0 then
      begin
        colVerbs.Item[i].DoIt;
        Result := True;
        Break;
      end;
  except
    Exit;
  end;
end;

///////////////////////////////////////////////////////////////////////////////
function PinToStartMenu(const Filename: string; const IsPin: Boolean): Boolean;
var
  i, ResID, Len: Integer;
  Link, Verb: string;
  Flag: Longint;
  Ver: Cardinal;
  objShell, colVerbs: Variant;
begin
  Result := False;
  if not FileExists(Filename) then Exit;

  { String resources }
  Ver := GetWindowsVersion;
  if IsPin then
  begin
    // Windows 7 and below
    if (Ver < $06020000) then
      ResID := 5381     { Pin to Start Men&u }
    // Windows 8, 10
    else if (Ver > $06010000) then
      ResID := 51201;   { &Pin to Start }
  end
  else
  begin
    // Windows 7 and below
    if (Ver < $06020000) then
      ResID := 5382     { Unpin from Start Men&u  }
    // Windows 8, 10
    else if (Ver > $06010000) then
      ResID := 51394;   { Un&pin from Start }
  end;

  { Check link, Windows 7 only }
  Link := StringOfChar(#0, 255);
  if (Ver > $06000000) and (Ver < $06020000) and Boolean(SHGetNewLinkInfo(Filename, ExpandConstant('{tmp}'), Link, Flag, 0)) then
  begin
    Link := TrimRight(Link);
    if FileExists(ExpandConstant('{userappdata}\Microsoft\Internet Explorer\Quick Launch\User Pinned\StartMenu\') + ExtractFileName(Link)) then Exit;
  end;

  { Load string resource }
  Verb := StringOfChar(#0, 255);
  Len := LoadString(GetModuleHandle('shell32'), ResID, Verb, Length(Verb));
  if Len = 0 then Exit;
  SetLength(Verb, Len);

  { Do verb }
  try
    objShell := CreateOleObject('Shell.Application');
    // below Windows 7
    if Ver < $06010000 then
    begin
      objShell.Namespace(ExtractFileDir(Filename)).ParseName(ExtractFileName(Filename)).InvokeVerb(Verb);
      Result := True;
    end
    // Windows 7 and above
    else if Ver > $06000000 then
    begin
      colVerbs := objShell.Namespace(ExtractFileDir(Filename)).ParseName(ExtractFileName(Filename)).Verbs;
      for i := 1 to colVerbs.Count do
        if CompareText(colVerbs.Item[i].Name, Verb) = 0 then
      begin
        colVerbs.Item[i].DoIt;
        Result := True;
        Break;
      end;
    end;
  except
    Exit;
  end;
end;

/////////////////////////////////////////////////////////////////////////////
function SortOppositeFiles(const pFrom, pTo, szExcludeList: string): Boolean;
var
  FR: TFindRec;
  fs: SHFILEOPSTRUCT;
  dwBinaryType: DWORD;
begin
  if FindFirst(Format('%s\*', [pFrom]), FR) then
  try
    SetCurrentDir(pFrom);
    repeat
      if (FR.Name <> '.') and (FR.Name <> '..') then
      begin
        if FR.Attributes and FILE_ATTRIBUTE_DIRECTORY = 0 then
        begin
          if FR.SizeLow > 0 then
          begin
            if Pos(LowerCase(Format('%s\%s,', [pFrom, FR.Name])), LowerCase(Format('%s,', [ExpandConstant(szExcludeList)]))) = 0 then
              if GetBinaryType(FR.Name, dwBinaryType) then
              case dwBinaryType of
              #if AppArch == "x86"
                SCS_64BIT_BINARY:
              #elif AppArch == "x64"
                SCS_32BIT_BINARY:
              #endif
                  begin
                    fs.wFunc := FO_MOVE;
                    fs.fFlags := FOF_NOCONFIRMMKDIR;
                    fs.pFrom := Format('%s\%s'#0, [pFrom, FR.Name]);
                    fs.pTo := Format('%s\%s'#0, [pTo, FR.Name]);
                    Result := SHFileOperation(fs) = 0;
                  end;
              end;
          end;
        end
        else
        begin
          if Pos(LowerCase(Format('%s\%s,', [pFrom, FR.Name])), LowerCase(Format('%s,', [ExpandConstant(szExcludeList)]))) = 0 then
            Result := SortOppositeFiles(Format('%s\%s', [pFrom, FR.Name]), Format('%s\%s', [pTo, FR.Name]), szExcludeList);
        end;
      end;
    until not FindNext(FR);
  finally
    FindClose(FR);
    SetCurrentDir(pTo);
    RemoveDir(pFrom);
    SetCurrentDir(pFrom);
  end;
end;

///////////////////////////////////////////////////////////
function GetProfileDir(const DefaultValue: string): string;
var
  szDst: string;
  pszDst: Longint;
begin
  Result := GetIniString('Database', 'ProfileDir', ExpandConstant('{app}\Profiles'), ExpandConstant('{app}\mirandaboot.ini'));
  if Result = '' then
    Result := DefaultValue;
  szDst := StringOfChar(#0, MAX_PATH);
  pszDst := CastStringToInteger(szDst);
  ExpandEnvironmentStrings(Result, pszDst, Length(szDst));
  Result := CastIntegerToString(pszDst);
  if ExtractFileDrive(Result) = '' then
    Result := Format('%s\%s', [ExpandConstant('{app}'), Result]);
end;

/////////////////////////
procedure BackupProfiles;
var
	FR: TFindRec;
	szPath, szProfile, szBackupProfile: string;
begin
  szPath := GetProfileDir(ExpandConstant('{app}\Profiles'));
  if not DirExists(szPath) then Exit;
  //
  if FindFirst(szPath + '\*', FR) then
  try
    repeat
      if (FR.Attributes and FILE_ATTRIBUTE_DIRECTORY <> 0) and (FR.Name <> '.') and (FR.Name <> '..') then
      begin
        szProfile := Format('%s\%s\%1:s.dat', [szPath, FR.Name]);
        if FileExists(szProfile) then
        begin
          szBackupProfile := Format('%s\backups\%s.dat_%s_%s.bak', [ExtractFileDir(szPath), FR.Name, GetDateTimeString('yyyy-mm-dd@hh-nn-ss', #0, #0), GetComputerNameString]);
          if ForceDirectories(Format('%s\backups', [ExtractFileDir(szPath)])) then
          FileCopy(szProfile, szBackupProfile, False);
        end;
      end;
    until not FindNext(FR);
  finally
    FindClose(FR);
  end;
end;

/////////////////////////////////////
function LoadAppOppositeKey: Boolean;
var
  hKeySrc, hKeyDest: THandle;
  lpdwDisposition: Longint;
begin
  if not IsWin64 then Exit;
  if RegKeyExists(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1') and RegKeyExists(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1') then Exit;
#if AppArch == "x86"
  if RegOpenKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, KEY_READ or KEY_WOW64_64KEY, hKeySrc) <> ERROR_SUCCESS then Exit;
  if RegCreateKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, '', REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS or KEY_WOW64_32KEY, 0, hKeyDest, lpdwDisposition) <> ERROR_SUCCESS then Exit;
#elif AppArch == "x64"
  if RegOpenKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, KEY_READ or KEY_WOW64_32KEY, hKeySrc) <> ERROR_SUCCESS then Exit;
  if RegCreateKeyEx(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1', 0, '', REG_OPTION_NON_VOLATILE, KEY_ALL_ACCESS or KEY_WOW64_64KEY, 0, hKeyDest, lpdwDisposition) <> ERROR_SUCCESS then Exit;
#endif
  if lpdwDisposition = REG_OPENED_EXISTING_KEY then Exit;
  Result := SHCopyKey(hKeySrc, '', hKeyDest, 0) = ERROR_SUCCESS;
end;

///////////////////////////////////////
function UnLoadAppOppositeKey: Boolean;
begin
  if not IsWin64 then Exit;
#if AppArch == "x86"
  Result := RegDeleteKeyIncludingSubkeys(HKLM32, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1');
#elif AppArch == "x64"
  Result := RegDeleteKeyIncludingSubkeys(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{#AppId}_is1');
#endif
  g_bLoadAppOppKey := False;
end;
///////////////////////////////////////////
///////////////////////////////////////////
///////////////////////////////////////////
function InitializeLanguageDialog: Boolean;
begin
  { initialize GdiPlus }
  InitializeGdiPlus;
#if aero == 1
  { subclass }
  SubclassControlsProc(SelectLanguageForm, True);
#endif
  { settings }
  SelectLanguageForm.Caption := CustomMessage('SelectLanguageTitle');
  SelectLanguageForm.SelectLabel.Caption := CustomMessage('SelectLanguageLabel');

  Result := True;
end;

//////////////////////////////////
function InitializeSetup: Boolean;
begin
  { check mutex }
  if CheckForMutexes('{#SetupSetting("AppId")}AppMutex') then
  begin
    MsgBox(FmtMessage(SetupMessage(msgSetupAppRunningError), ['{#AppName}']), mbError, MB_OK);
    Result := False;
    Exit;
  end;
  g_hMutex := _CreateMutex(0, False, '{#SetupSetting("AppId")}AppMutex');      // create mutex
#if splash == 1
  { show splash }
  ShowSplash(2000, 2000, 2000);
#endif
  { load opposite arch registry }
  g_bLoadAppOppKey := LoadAppOppositeKey;
#if aero != 0
  { check composition }
  if (GetWindowsVersion > $06000000) and (GetWindowsVersion < $06020000) then
    DwmIsCompositionEnabled(g_fEnabled);
#endif
  Result := True;
end;

///////////////////////////
procedure InitializeWizard;
begin
#if debug == 1
  g_hDC := GetDC(0);
#endif
  CreateWizardForm({#AppWidth}, {#AppHeight});
  CreateWelcomePage;
  CreateInstallTypePage;
  CreateSelectDirPage;
  CreateSelectComponentsPage;
  CreateSettingsPage;
  CreateStylesPage;
  CreateSelectProgramGroupPage;
  CreateSelectTasksPage;
  CreatePreparePage;
  CreateInstallingPage;
  CreateFinishPage;
  CreateUrlLabel;
#if aero == 0 || aero == 1
  SubclassControlsProc(WizardForm, True);
#elif aero == 2
  SubclassControlsProc(WizardForm.MainPanel, True);
#elif aero == 3
  SubclassControlsProc(WizardForm, False);
#elif aero == 4
  SubclassControlsProc(WizardForm, False);
  SubclassControlsProc(WizardForm.MainPanel, True);
#endif
#if aero == 1
  SetDlgHook;
#endif
end;

/////////////////////////////////////////////
procedure CurPageChanged(CurPageID: Integer);
var
  i, j: Integer;
  bUpdate: Boolean;
begin
  case CurPageID of
    wpLicense:
      begin
        WizardForm.NextButton.Caption := CustomMessage('LicenseAccept');
        WizardForm.CancelButton.Caption := CustomMessage('LicenseNotAccept');
      end;
    wpSelectComponents:
      WizardForm.NextButton.SetFocus;
    StylesPage.ID:
      with StylesPage.CheckListBox do
      begin
      #if AppSkinUp == "0"
        bUpdate := not IsUpdate;
      #else
        bUpdate := True;
      #endif
        for i := 0 to GetArrayLength(g_StylesHelper) - 1 do
        case g_StylesHelper[i].szInternalName of
          { enabled/disabled skins }
        #if AppSkinUp == "0"
          'Skin_Default_Miranda',
          'Skin_Current_Windows':
            ItemEnabled[i] := bUpdate;
        #endif
          'Skin_Custom_Miranda':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Custom_Miranda') and bUpdate;
          'Skin_Custom_Miranda_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Custom_Miranda_Dark') and bUpdate;
          'Skin_Custom_Miranda_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Custom_Miranda_Light') and bUpdate;
          'Skin_Native_7_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Native_7_Dark') and bUpdate;
          'Skin_Native_7_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Native_7_Light') and bUpdate;
          'Skin_WinStyle_Classic_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\WinStyle_Classic_Dark') and bUpdate;
          'Skin_WinStyle_Classic_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\WinStyle_Classic_Light') and bUpdate;
          'Skin_WinStyle_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\WinStyle_Dark') and bUpdate;
          'Skin_WinStyle_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\WinStyle_Light') and bUpdate;
          'Skin_Diplomat_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Diplomat_Dark') and bUpdate;
          'Skin_Diplomat_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Diplomat_Light') and bUpdate;
          'Skin_Glamour_Aqua_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Glamour_Aqua_Dark') and bUpdate;
          'Skin_Glamour_Aqua_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Glamour_Aqua_Light') and bUpdate;
          'Skin_Glamour_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Glamour_Dark') and bUpdate;
          'Skin_Glamour_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Glamour_Light') and bUpdate;
          'Skin_GoldTime_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\GoldTime_Dark') and bUpdate;
          'Skin_GoldTime_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\GoldTime_Light') and bUpdate;
          'Skin_Graphite_Brown_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Graphite_Brown_Dark') and bUpdate;
          'Skin_Graphite_Brown_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Graphite_Brown_Light') and bUpdate;
          'Skin_Graphite_Gray_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Graphite_Gray_Dark') and bUpdate;
          'Skin_Graphite_Gray_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Graphite_Gray_Light') and bUpdate;
          'Skin_PhotoOne_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\PhotoOne_Dark') and bUpdate;
          'Skin_PhotoOne_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\PhotoOne_Light') and bUpdate;
          'Skin_Surface_Black':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Surface_Black') and bUpdate;
          'Skin_Surface_White':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Surface_White') and bUpdate;
          'Skin_Textolite_Brown_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Textolite_Brown_Dark') and bUpdate;
          'Skin_Textolite_Brown_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Textolite_Brown_Light') and bUpdate;
          'Skin_Textolite_Gray_Dark':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Textolite_Gray_Dark') and bUpdate;
          'Skin_Textolite_Gray_Light':
            ItemEnabled[i] := IsComponentSelected('Resources\Themes\Textolite_Gray_Light') and bUpdate;

          { enabled/disabled IEView settings }
          'IEViewScrollBar',
          'IEViewAnimation',
          'IEViewAvatar',
          'IEViewShortLink',
          'IEViewContextMenu':
            ItemEnabled[i] := IsComponentSelected('Resources\IEView');

//          { enabled/disabled Font settings }
//          'FontHandwriting',
//          'FontPrinting':
//            ItemEnabled[i] := IsComponentSelected('Resources\IEView');
        end;
      end;
    wpSelectTasks:
      if IsPortableSetupType and (WizardForm.TasksList.Tag = 0) then
      begin
        { load previous tasks }
        with TStringList.Create do
        try
          CommaText := ExpandConstant('{ini:{app}\Profiles\{#AppINI},{#AppNameSetup},SelectedTasks|{#SelectedTasksDefault}}');
          for i := 0 to Count - 1 do
          begin
            for j := 0 to GetArrayLength(g_TasksHelper) - 1 do
              if CompareText(Strings[i], g_TasksHelper[j].szInternalName) = 0 then
              begin
                Strings[i] := g_TasksHelper[j].szName;
                Break;
              end;
          end;
          if Count > 0 then
          begin
            for i := WizardForm.TasksList.ItemCount - 1 downto 0 do
              WizardForm.TasksList.Checked[i] := (Pos(Format('%s'#13#10, [WizardForm.TasksList.ItemCaption[i]]), Text) > 0);
          end;
        finally
          Free;
        end;

        { store flag }
        WizardForm.TasksList.Tag := 1;
      end;
    PreparePage.ID:
      begin
        PreparePage.Values[0] := True;
        PreparePageOnClickCheck(PreparePage.CheckListBox);
      end;
#if freezecheckbox == 1
    wpFinished:
      WizardForm.RunList.ItemEnabled[2] := False;
#endif
    wpInfoAfter,
    wpFinished:
      WizardForm.BackButton.Show;
  end;

#if aero == 2 || aero == 4
  if g_fEnabled then
    case CurPageID of
      wpWelcome,
      wpFinished:
        PostMessage(WizardForm.Handle, WM_DWMNCRENDERINGCHANGED, 1, 1);
    else
      PostMessage(WizardForm.Handle, WM_DWMNCRENDERINGCHANGED, 1, 2);
    end;
#endif

  { update buttons on aero glass }
  if g_fEnabled then
  begin
    WizardForm.BackButton.Invalidate;
    WizardForm.NextButton.Invalidate;
    WizardForm.CancelButton.Invalidate;
  end;
end;

//////////////////////////////////////////////////////////////////////////////
procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
  case CurPageID of
    wpLicense:
      Confirm := False;
  end;
end;

//////////////////////////////////////////////////////
function BackButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  case CurPageID of
    wpSelectDir:
      begin
        if IsDefaultSetupType then
          CheckDefaultInstall;
        if IsPortableSetupType then
          CheckPortableInstall;
      end;
    SettingsPage.ID:
      begin
        Result := (SettingsPageControl.ActivePage = SettingsPageControl.Pages[0]);
        if not Result then
          SettingsPageControl.SelectNextPage(True);
      end;
    wpInfoAfter:
      begin
        WizardForm.InstallingPage.Show;
        if DetailsButton.Caption = CustomMessage('SetupShowDetails') then
          DetailsButton.Click;
        WizardForm.BackButton.Hide;
      end;
  end;
end;

/////////////////////////////////
procedure UninstallPortableFiles;
var
  i: Integer;
  szFiles: string;
begin
  if FileExists(ExpandConstant('{app}\Profiles\{#AppINI}')) then
  with TStringList.Create do
  try
    LoadFromFile(ExpandConstant('{app}\Profiles\{#AppINI}'));
    for i := 0 to Count - 1 do
      if CompareText(Names[i], 'UninstallFiles') = 0 then
      begin
        szFiles := Values[Names[i]];
        Break;
      end;
    if szFiles <> '' then
    begin
      Clear;
      CommaText := szFiles;
      for i := 0 to Count - 1 do
        DeleteFile(ExpandConstant(Strings[i]));
    end;
  finally
    Free;
  end;
end;

//////////////////////////////////////////////////////
function NextButtonClick(CurPageID: Integer): Boolean;
var
  i, ResultCode: Integer;
  szUninstallString: string;
begin
  Result := True;
  case CurPageID of
    InstallTypePage.ID:
      begin
        { default install }
        if IsDefaultSetupType then
        begin
          if IsUpdate then
          begin
            WizardForm.DirEdit.Text := GetSetupPreviousDataEx('InstallLocation', '');    // restore previous path
            for i := 0 to g_DriveListView.Items.Count - 1 do
              if Pos(Lowercase(RemoveBackslash(ExtractFileDrive(WizardForm.DirEdit.Text))), Lowercase(g_DriveListView.Items.Item[i].Caption)) > 0 then
              begin
                  g_DriveListView.Selected := g_DriveListView.Items.Item[i];
                  Break;
              end;
            ReadStandartSettings;
          end;
        end;

        { portable install }
        if IsPortableSetupType then
        begin
          if not IsUpdate and (CompareText(szPreviousSelectedPortableAppPath, RemoveQuotes(WizardDirValue)) <> 0) then
          begin
            g_DriveListView.Items.Item[g_DriveListView.Items.Count - 1].Selected := True;
            DriveListViewOnClick(g_DriveListView);
          end;
        end;

        { uninstall }
        if IsUninstallSetupType then
        begin
          { release mutex }
          ReleaseMutex(g_hMutex);
          CloseHandle(g_hMutex);

          { call uninstall }
          szUninstallString := GetSetupPreviousData('UninstallString', '');
          if Exec('>', szUninstallString, '', SW_SHOW, ewWaitUntilTerminated, ResultCode) then
            WaitUninstaller(szUninstallString);

          { create mutex }
          g_hMutex := _CreateMutex(0, False, '{#SetupSetting("AppId")}AppMutex');

          { unload hive }
          if BOOL(ResultCode = 0) and g_bLoadAppOppKey then
            UnLoadAppOppositeKey;

          { update UI }
          if ResultCode = 0 then
          begin
            DefaultInstallType.Checked := True;
            DefaultInstallType.Enabled := True;
            DefaultInstallTypeBitmapImage.Enabled := True;
            DefaultInstallTypeCaption.Enabled := True;
            DefaultInstallTypeCaption.Caption := FmtMessage(CustomMessage('DefaultInstallTypeCaption'), [ExtractFileName(ExpandConstant('{userappdata}'))]);    // default caption
            DefaultUninstallType.Enabled := False;
            DefaultUninstallTypeBitmapImage.Enabled := False;
            DefaultUninstallTypeCaption.Enabled := False;
            DefaultUninstallTypeCaption.Invalidate;
            WizardForm.Caption := FmtMessage(SetupMessage(msgSetupWindowTitle), ['{#AppName}']);
            WizardForm.TypesCombo.Enabled := True;
            WizardForm.TypesCombo.Color := clWindow;
            WizardForm.TypesCombo.Font.Color := clWindowText;
          end;

          Result := False;
        end;
      end;
    wpSelectDir:
      begin
        if Pos('miranda', Lowercase(WizardDirValue)) = 0 then
          Result := MsgBox(CustomMessage('NotMirandaFolderNameError'), mbError, MB_OK) = IDOK;                    // error when not "miranded" dir name select
        case ErrorHelper of
          { default select }
          'PortableDirSelectError':
            Result := MsgBox(CustomMessage('PortableDirSelectError'), mbCriticalError, MB_OK) <> IDOK;          // error when portable location dir select
          'RestoreStandartSettings':
            ReadStandartSettings;

          { portable select }
          'DefaultDirSelectError':
            Result := MsgBox(CustomMessage('DefaultDirSelectError'), mbCriticalError, MB_OK) <> IDOK;           // error when default location dir select
          'OtherVerDirSelectError':
            Result := MsgBox(CustomMessage('OtherVerDirSelectError'), mbCriticalError, MB_OK) <> IDOK;          // not HotCoffee installation
          'FoundVerNotUpdatableConfirm':
            begin
              if MsgBox(CustomMessage('FoundVerNotUpdatableConfirm'), mbConfirmation, MB_YESNO) = IDYES then  // portable update not allowed
              begin
                // close application
                TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);

                // delete app dir
                DelTree(ExpandConstant('{app}'), True, True, True);

                // set default portable settings
                ReadPortableSettings('RestorePortableSettings');
              end
              else
                Result := False;
            end;
          'FoundPortableVerUpdateActivateInfo':
            ReadPortableSettings('FoundPortableVerUpdateActivateInfo');
          'RestorePortableSettings':
            ReadPortableSettings('RestorePortableSettings');
        end;
      end;
    SettingsPage.ID:
      begin
        Result := (SettingsPageControl.ActivePage = SettingsPageControl.Pages[SettingsPageControl.PageCount - 1]);
        if not Result then
          SettingsPageControl.SelectNextPage(False);
      end;
    PreparePage.ID:
      begin
        if PreparePage.Values[0] then
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);
      end;
  end;
end;

//////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
var
  i, j, ResultCode: Integer;
  szWorkingDir, szUninstallString: string;
begin
  case CurStep of
    ssInstall:
      begin
        { update UI }
        WizardForm.StatusLabel.Caption := CustomMessage('PrepareToInstallMsg');
        WizardForm.ProgressGauge.Style := npbstMarquee;
        DetailsButton.Hide;
        SetupDone.Hide;

        { default type selected }
        if IsDefaultSetupType then
        begin
          if IsUpdate then
          begin
            { release mutex }
            ReleaseMutex(g_hMutex);
            CloseHandle(g_hMutex);

            { call uninstaller }
            szUninstallString := GetSetupPreviousDataEx('UninstallString', '');
            if Exec(szUninstallString, '/VERYSILENT /UPDATE=1', '', SW_HIDE, ewWaitUntilTerminated, ResultCode) then
              WaitUninstaller(szUninstallString);

            { create mutex }
            g_hMutex := _CreateMutex(0, False, '{#SetupSetting("AppId")}AppMutex');
          end;

          { unload hive }
          if g_bLoadAppOppKey then
            UnLoadAppOppositeKey;
        end;

        { portable type selected }
        if IsPortableSetupType then
        begin
          // close application
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);

          // delete updatable app dir
          UninstallPortableFiles;
        end;

        { message if find incompatible files after opposite update }
        if IsWin64 then
        begin
          szWorkingDir := GetCurrentDir;
        #if AppArch == "x86"
          if SortOppositeFiles(ExpandConstant('{app}'), ExpandConstant('{#IncompatibleDir}\x64'), '{#ExcludeList}') then
        #elif AppArch == "x64"
          if SortOppositeFiles(ExpandConstant('{app}'), ExpandConstant('{#IncompatibleDir}\x86'), '{#ExcludeList}') then
        #endif
            MsgBox(CustomMessage('ArchIncompatibleInfo'), mbInformation, MB_OK);
          SetCurrentDir(szWorkingDir);
        end;

        { update UI }
        WizardForm.ProgressGauge.Style := npbstNormal;
        DetailsButton.Show;
        SetupDone.Show;

        { timer on }
        PercentTimer.Enabled := True;
      end;
    ssPostInstall:
      begin
        { timer off }
        PercentTimer.Enabled := False;

        { update UI }
        DetailsMemo.Lines.Add(CustomMessage('SetupDone'));

        { pin to TaskBar }
        if IsTaskSelected('pintotaskbar') then
          PinToTaskbar(ExpandConstant('{app}\{#AppExeName}'), True);

        { pin to StartMenu }
        if IsTaskSelected('pintostartmenu') then
          PinToStartMenu(ExpandConstant('{app}\{#AppExeName}'), True);

        { portable mode }
        if IsPortableSetupType then
        begin
          // create {#AppINI}
          SetIniString('{#AppNameSetup}', 'AppVerBuild', '{#AppVer}', ExpandConstant('{app}\Profiles\{#AppINI}'));
          SetIniString('{#AppNameSetup}', 'SetupType', g_TypesHelper[WizardForm.TypesCombo.ItemIndex].szInternalName, ExpandConstant('{app}\Profiles\{#AppINI}'));
          SetIniString('{#AppNameSetup}', 'SelectedComponents', WizardSelectedComponents(False), ExpandConstant('{app}\Profiles\{#AppINI}'));
          with TStringList.Create do
          try
            for i := 0 to WizardForm.ComponentsList.ItemCount - 1 do
              if not WizardForm.ComponentsList.Checked[i] then
                Add(g_ComponentsHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'DeselectedComponents', CommaText, ExpandConstant('{app}\Profiles\{#AppINI}'));
          finally
            Free;
          end;
          SetIniString('{#AppNameSetup}', 'SelectedTasks', WizardSelectedTasks(False), ExpandConstant('{app}\Profiles\{#AppINI}'));

          { settings }
          with TStringList.Create do
          try
            // selected
            for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
              if SettingsPage.CheckListBox.Checked[i] then
                Add(g_SetHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'SelectedSettings', CommaText, ExpandConstant('{app}\Profiles\{#AppINI}'));

            // deselected
            Clear;
            for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
              if not SettingsPage.CheckListBox.Checked[i] then
                Add(g_SetHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'DeselectedSettings', CommaText, ExpandConstant('{app}\Profiles\{#AppINI}'));
          finally
            Free;
          end;

          { additional settings }
          for i := 0 to AddSettingsListBox.Items.Count - 1 do
            if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
            with TStringList.Create do
            try
              CommaText := g_AddSetHelper[i].szInternalValues;
              for j := 0 to Count - 1 do
                if CompareText(CustomMessage(Strings[j]), TNewComboBox(AddSettingsListBox.Items.Objects[i]).Text) = 0 then
                begin
                  SetIniString('{#AppNameSetup}', g_AddSetHelper[i].szInternalName, Strings[j], ExpandConstant('{app}\Profiles\{#AppINI}'));
                  Break;
                end;
            finally
              Free;
            end;

          { style settings }
          with TStringList.Create do
          try
            // selected
            for i := 0 to StylesPage.CheckListBox.ItemCount-1 do
              if StylesPage.CheckListBox.Checked[i] then
                Add(g_StylesHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'SelectedStyleSettings', CommaText, ExpandConstant('{app}\Profiles\{#AppINI}'));

            // deselected
            Clear;
            for i := 0 to StylesPage.CheckListBox.ItemCount - 1 do
              if not StylesPage.CheckListBox.Checked[i] then
                Add(g_StylesHelper[i].szInternalName);
            SetIniString('{#AppNameSetup}', 'DeselectedStyleSettings', CommaText, ExpandConstant('{app}\Profiles\{#AppINI}'));
          finally
            Free;
          end;

            { uninstall files }
            if IsTaskSelected('curuser') and IsTaskSelected('desktopicon') then
              g_UninstallFilesHelper.Add('{userdesktop}\{#AppName}.lnk');
            if IsTaskSelected('quicklaunchicon') then
              g_UninstallFilesHelper.Add('{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#AppName}.lnk');
            if IsTaskSelected('curuser') and IsTaskSelected('autorun') then
              g_UninstallFilesHelper.Add('{userstartup}\{#AppLnk}.lnk');
            if not IsTaskSelected('pintotaskbar') then
              PinToTaskbar(ExpandConstant('{app}\{#AppExeName}'), False);
            if not IsTaskSelected('pintostartmenu') then
              PinToStartMenu(ExpandConstant('{app}\{#AppExeName}'), False);
            g_UninstallFilesHelper.Add('{app}\Profiles\{#AppINI}');
            SetIniString('{#AppNameSetup}', 'UninstallFiles', g_UninstallFilesHelper.CommaText, ExpandConstant('{app}\Profiles\{#AppINI}'));
        end;
      end;
  end;
end;

//////////////////////////////////////////////////
function ShouldSkipPage(PageID: Integer): Boolean;
begin
  case PageID of
    wpSelectDir:
      Result := IsUpdate and IsDefaultSetupType;
    wpSelectProgramGroup:
      begin
        Result := IsPortableSetupType;
        if Result then
          WizardForm.NoIconsCheck.Checked := True;
      end;
    PreparePage.ID:
      Result := GetFilesInUse(ExpandConstant('{app}'), g_PrepareListView) = '';
  end;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: string): string;
begin
  if IsDefaultSetupType then
    Result := MemoDirInfo + NewLine + NewLine + MemoTypeInfo + NewLine + NewLine + MemoComponentsInfo + NewLine + NewLine + MemoGroupInfo + NewLine + NewLine + MemoTasksInfo;
  if IsPortableSetupType then
    Result := MemoDirInfo + NewLine + NewLine + MemoTypeInfo + NewLine + NewLine + MemoComponentsInfo;
end;

/////////////////////////////////////////////////////////
procedure RegisterPreviousData(PreviousDataKey: Integer);
var
  i, j: Integer;
begin
  { save settings }
  with TStringList.Create do
  try
    // selected
    for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
      if SettingsPage.CheckListBox.Checked[i] then
        Add(g_SetHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'SelectedSettings', CommaText);

    // deselected
    Clear;
    for i := 0 to SettingsPage.CheckListBox.ItemCount - 1 do
      if not SettingsPage.CheckListBox.Checked[i] then
        Add(g_SetHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'DeselectedSettings', CommaText);
  finally
    Free;
  end;

  { save additional settings }
  for i := 0 to AddSettingsListBox.Items.Count - 1 do
    if AddSettingsListBox.Items.Objects[i] is TNewComboBox then
    with TStringList.Create do
    try
      CommaText := g_AddSetHelper[i].szInternalValues;
      for j := 0 to Count - 1 do
        if CompareText(CustomMessage(Strings[j]), TNewComboBox(AddSettingsListBox.Items.Objects[i]).Text) = 0 then
        begin
          SetPreviousData(PreviousDataKey, g_AddSetHelper[i].szInternalName, Strings[j]);
          Break;
        end;
    finally
      Free;
    end;

  { save style settings }
  with TStringList.Create do
  try
    // selected
    for i := 0 to StylesPage.CheckListBox.ItemCount - 1 do
      if StylesPage.CheckListBox.Checked[i] then
        Add(g_StylesHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'SelectedStyleSettings', CommaText);

    // deselected
    Clear;
    for i := 0 to StylesPage.CheckListBox.ItemCount - 1 do
      if not StylesPage.CheckListBox.Checked[i] then
        Add(g_StylesHelper[i].szInternalName);
    SetPreviousData(PreviousDataKey, 'DeselectedStyleSettings', CommaText);
  finally
    Free;
  end;
end;

////////////////////////////////////////////////////////////////////
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  i, ResultCode: Integer;
begin
	case CurUninstallStep of
    usAppMutexCheck:
      begin
        { get profiles dir path }
        szProfilesPath := GetProfileDir(ExpandConstant('{app}\Profiles'));

        { close application }
        if UninstallSilent then
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);
        if not UninstallSilent then if msgConfirmUninstall then
        begin
          TerminateApp(GetFilesInUse(ExpandConstant('{app}'), nil), 5000);
          if MsgBox(CustomMessage('DeleteUserProfiles'), mbConfirmation, MB_YESNO) = IDNO then
            BackupProfiles;
        end;

        { delete shortcuts }
        with TStringList.Create do
        try
          Sorted := True;
          CommaText := GetSetupPreviousData('Inno Setup: Selected Tasks', '');
          if Find('alluser', i) and Find('quicklaunchicon', i) then
            DeleteQLShortcuts;
          if Find('curuser', i) and Find('pintotaskbar', i) then
            PinToTaskbar(ExpandConstant('{app}\{#AppExeName}'), False);
          if Find('pintostartmenu', i) then
            PinToStartMenu(ExpandConstant('{app}\{#AppExeName}'), False);
        finally
          Free;
        end;
      end;
    usPostUninstall:
      { delete profiles dir }
      if ExpandConstant('{param:UPDATE|}') <> '1' then
      begin
        DelTree(ExpandConstant('{#IncompatibleDir}'), True, True, True);
        DelTree(szProfilesPath, True, True, True);
        RemoveDir(ExtractFileDir(szProfilesPath));
      end;
    usDone:
      { open folders }
      if DirExists(Format('%s\backups', [ExtractFileDir(szProfilesPath)])) then
        ShellExec('open', Format('%s\backups', [ExtractFileDir(szProfilesPath)]), '', '', SW_SHOW, ewNoWait, ResultCode)
      else if not UninstallSilent and DirExists(ExpandConstant('{app}')) then
        ShellExec('open', ExpandConstant('{app}'), '', '', SW_SHOW, ewNoWait, ResultCode);
	end;
end;

//////////////////////////////////////
function InitializeUninstall: Boolean;
begin
  Result := True;

  { initialize GdiPlus }
  InitializeGdiPlus;
#if aero == 1
  { set dialog hook }
  SetDlgHook;
#endif
end;

//////////////////////////////////////////
procedure InitializeUninstallProgressForm;
begin
  { settings }
  with UninstallProgressForm do
  begin
    DrawImageOnBitmap(WizardSmallBitmapImage, '_IS_WIZARDSMALLIMAGE', 0);
    WizardSmallBitmapImage.Left := MainPanel.ClientWidth - WizardSmallBitmapImage.Width - ScaleX(5);
    PageNameLabel.Width := WizardSmallBitmapImage.Left - PageNameLabel.Left - ScaleX(5);
    PageDescriptionLabel.Width := WizardSmallBitmapImage.Left - PageDescriptionLabel.Left - ScaleX(5);
  end;

  { subclass }
#if aero == 0 || aero == 1
  SubclassControlsProc(UninstallProgressForm, True);
#elif aero == 2
  SubclassControlsProc(UninstallProgressForm.MainPanel, True);
#elif aero == 3
  SubclassControlsProc(UninstallProgressForm, False);
#elif aero == 4
  SubclassControlsProc(UninstallProgressForm, False);
  SubclassControlsProc(UninstallProgressForm.MainPanel, True);
#endif
end;

////////////////////////////
procedure DeinitializeSetup;
begin
  if ExpandConstant('{wizardhwnd}') = '0' then Exit;

  { unsubclass }
#if aero == 2
  UnSubclassControlsProc(WizardForm.MainPanel);
#else
  UnSubclassControlsProc(WizardForm);
#endif
  SetArrayLength(g_AeroControls, 0);
  ReleaseThemeHandles;
#if aero == 1
  { unhook dialog }
  UnHookDlg;
#endif
  { deinitialize GdiPlus }
  GdiplusShutdown(g_pToken);

  { free resources }
  if Assigned(ThumbsBitmapImage) then
    ThumbsBitmapImage.Free;
  if g_GlassRgn <> 0 then
    DeleteObject(g_GlassRgn);

  { release mutex }
  ReleaseMutex(g_hMutex);
  CloseHandle(g_hMutex);

  { unload registry }
  if g_bLoadAppOppKey then
    UnLoadAppOppositeKey;
#if debug == 1
  ReleaseDC(0, g_hDC);
#endif
end;

////////////////////////////////
procedure DeinitializeUninstall;
begin
#if aero == 1
  { unhook }
  UnHookDlg;
#endif
  { deinitialize GdiPlus }
  GdiplusShutdown(g_pToken);
end;

///////////////////////////////////////////
//function BoolToStr(Value: Boolean): string;
//begin
//	if Value then
//		Result := 'true'
//	else
//		Result := 'false';
//end;

//function FormatIEJSON(Param: string): string;
//var
//	Font: string;
//begin
//	if IsStyleChecked('FontPrinting') then
//		Font := 'Printing'
//	else
//		Font := 'Handwriting';
//	Result := Format(
//    'u{"animation":{"enable":%s,"on_window_open":false},' +
//    '"avatars":{"enable":%s},' +
//    '"files":{"inbox":"/inbox/"},' +
//    '"font":{"change_size_button":1,"name":"%s"},' +
//    '"media":{"enable":1,"images_preview":1,"inline_images":{"maxheight":200,"maxwidth":300},"video":{"external_window":{"enable":0,"height":600,"width":800}}},' +
//    '"shortlink":{"global":%3:s,"localy":%3:s},' +
//    '"tooltipify":{"animationDuration":150,"animationOffset":0,"animationProperty":"top","displayAware":1,"opacity":1,"position":"bottom"},' +
//    '"tZers":{"autoplay":0,"enable":1,"only_supported_protos":0},' +
//    '"version":"2.1.3"}', [
//      BoolToStr(IsStyleChecked('IEViewAnimation')),
//      BoolToStr(IsStyleChecked('IEViewAvatar')),
//      Font,
//      BoolToStr(IsStyleChecked('IEViewShortLink'))]
//    );
//end;

////////////////////
procedure Extract();
var
rs: integer;
strFile: String;
begin
  strFile := ExpandConstant(CurrentFileName);
  if not FileExists(ExpandConstant('{tmp}\7za.exe')) then ExtractTemporaryFile('7za.exe');
  Exec(ExpandConstant('{tmp}\7za.exe'), ' x '+'"'+ExpandConstant(strFile)+'" -y -o'+'"'+ExpandConstant(ExtractFilePath(strFile))+'"', '', SW_Hide, ewWaitUntilTerminated, rs);
  DeleteFile(ExpandConstant(strFile));
end;

//компиляция прервётся, создастся файл MirandaHotCoffee_full.iss после отработки препроцессором, в таком виде скрипт уже поступает на обработку компилятору, можно посмотреть, что там оно нагенерило.
//#expr SaveToFile(SourcePath + "MirandaHotCoffee_full.iss")
//#pragma error "Stop compile"