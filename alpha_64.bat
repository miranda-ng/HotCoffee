@echo off
set bat_path=%cd%

set url="https://miranda-ng.org/distr/miranda-ng-alpha-latest_x64.7z"
set dest="x64\miranda-ng.7z"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -x!Plugins\Import -x!mirandaboot.ini -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/authstate.zip"
set dest="x64\authstate.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/bass_interface.zip"
set dest="x64\bass_interface.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/bosskey.zip"
set dest="x64\bosskey.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/buddyexpectator.zip"
set dest="x64\buddyexpectator.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/changekeyboardlayout.zip"
set dest="x64\changekeyboardlayout.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/cloudfile.zip"
set dest="x64\cloudfile.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/console.zip"
set dest="x64\console.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/currencyrates.zip"
set dest="x64\currencyrates.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -x!Plugins\CurrencyRates\*.xml -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/dbeditorpp.zip"
set dest="x64\dbeditorpp.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/dbx_mdbx.zip"
set dest="x64\dbx_mdbx.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/dbx_mmap.zip"
set dest="x64\dbx_mmap.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/emlanproto.zip"
set dest="x64\emlanproto.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/fingerprint.zip"
set dest="x64\fingerprint.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/flags.zip"
set dest="x64\flags.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/folders.zip"
set dest="x64\folders.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/gg.zip"
set dest="x64\gg.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/gmailnotifier.zip"
set dest="x64\gmailnotifier.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/historypp.zip"
set dest="x64\historypp.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/icqcorp.zip"
set dest="x64\icqcorp.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/ieview.zip"
set dest="x64\ieview.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/menuex.zip"
set dest="x64\menuex.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/messagestate.zip"
set dest="x64\messagestate.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/mirlua.zip"
set dest="x64\mirlua.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/mradio.zip"
set dest="x64\mradio.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/newawaysys.zip"
set dest="x64\newawaysys.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/neweventnotify.zip"
set dest="x64\neweventnotify.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/newsaggregator.zip"
set dest="x64\newsaggregator.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/newxstatusnotify.zip"
set dest="x64\newxstatusnotify.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/omegle.zip"
set dest="x64\omegle.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/packupdater.zip"
set dest="x64\packupdater.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/popupplus.zip"
set dest="x64\popupplus.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/quickmessages.zip"
set dest="x64\quickmessages.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/quicksearch.zip"
set dest="x64\quicksearch.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/sametime.zip"
set dest="x64\sametime.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/sessions.zip"
set dest="x64\sessions.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/skypeweb.zip"
set dest="x64\skypeweb.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/smileyadd.zip"
set dest="x64\smileyadd.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/spellchecker.zip"
set dest="x64\spellchecker.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/splashscreen.zip"
set dest="x64\splashscreen.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/statusmanager.zip"
set dest="x64\statusmanager.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/steam.zip"
set dest="x64\steam.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/stopspam.zip"
set dest="x64\stopspam.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/tipper.zip"
set dest="x64\tipper.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/tox.zip"
set dest="x64\tox.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/translitswitcher.zip"
set dest="x64\translitswitcher.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/twitter.zip"
set dest="x64\twitter.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/uinfoex.zip"
set dest="x64\uinfoex.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/variables.zip"
set dest="x64\variables.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/vkontakte.zip"
set dest="x64\vkontakte.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/weather.zip"
set dest="x64\weather.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -x!Plugins\Weather -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/webview.zip"
set dest="x64\webview.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/whenwasit.zip"
set dest="x64\whenwasit.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -y
del %dest%

set url="https://miranda-ng.org/distr/x64/Plugins/yamn.zip"
set dest="x64\yamn.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"x64\" -x!Icons -y
del %dest%

goto :eof