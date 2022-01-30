@echo off
set bat_path=%cd%

set url="https://miranda-ng.org/distr/miranda-ng-alpha-latest.7z"
set dest="x86\miranda-ng.7z"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -x!mirandaboot.ini -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Languages/langpack_russian.zip"
set dest="x86\langpack_russian.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/authstate.zip"
set dest="x86\authstate.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/bass_interface.zip"
set dest="x86\bass_interface.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/bosskey.zip"
set dest="x86\bosskey.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/buddyexpectator.zip"
set dest="x86\buddyexpectator.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/changekeyboardlayout.zip"
set dest="x86\changekeyboardlayout.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/cloudfile.zip"
set dest="x86\cloudfile.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/console.zip"
set dest="x86\console.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/currencyrates.zip"
set dest="x86\currencyrates.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/dbeditorpp.zip"
set dest="x86\dbeditorpp.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/dbx_mdbx.zip"
set dest="x86\dbx_mdbx.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/dbx_mmap.zip"
set dest="x86\dbx_mmap.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/emlanproto.zip"
set dest="x86\emlanproto.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/fingerprint.zip"
set dest="x86\fingerprint.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/flags.zip"
set dest="x86\flags.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/folders.zip"
set dest="x86\folders.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/gg.zip"
set dest="x86\gg.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/gmailnotifier.zip"
set dest="x86\gmailnotifier.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/historypp.zip"
set dest="x86\historypp.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/icqcorp.zip"
set dest="x86\icqcorp.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/ieview.zip"
set dest="x86\ieview.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/menuex.zip"
set dest="x86\menuex.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/messagestate.zip"
set dest="x86\messagestate.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/mirlua.zip"
set dest="x86\mirlua.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/mradio.zip"
set dest="x86\mradio.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/newawaysys.zip"
set dest="x86\newawaysys.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/newsaggregator.zip"
set dest="x86\newsaggregator.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/newxstatusnotify.zip"
set dest="x86\newxstatusnotify.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/omegle.zip"
set dest="x86\omegle.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/packupdater.zip"
set dest="x86\packupdater.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/popupplus.zip"
set dest="x86\popupplus.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/quickmessages.zip"
set dest="x86\quickmessages.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/quicksearch.zip"
set dest="x86\quicksearch.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/sametime.zip"
set dest="x86\sametime.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/sessions.zip"
set dest="x86\sessions.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/skypeweb.zip"
set dest="x86\skypeweb.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/smileyadd.zip"
set dest="x86\smileyadd.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/spellchecker.zip"
set dest="x86\spellchecker.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/splashscreen.zip"
set dest="x86\splashscreen.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/statusmanager.zip"
set dest="x86\statusmanager.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/steam.zip"
set dest="x86\steam.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/stopspam.zip"
set dest="x86\stopspam.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/tipper.zip"
set dest="x86\tipper.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/tox.zip"
set dest="x86\tox.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/translitswitcher.zip"
set dest="x86\translitswitcher.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/twitter.zip"
set dest="x86\twitter.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/uinfoex.zip"
set dest="x86\uinfoex.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/variables.zip"
set dest="x86\variables.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/vkontakte.zip"
set dest="x86\vkontakte.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/weather.zip"
set dest="x86\weather.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/webview.zip"
set dest="x86\webview.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/whenwasit.zip"
set dest="x86\whenwasit.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

set url="https://miranda-ng.org/distr/x32/Plugins/yamn.zip"
set dest="x86\yamn.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x86\" -y
del %dest%

goto :eof