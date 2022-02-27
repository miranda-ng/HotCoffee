@echo off
setlocal

rem UI query
set /p ui="e = English, r = Russian [e]: "
if /i "%ui%" == "r" (
	:: ru
	set "done=Ваш горячий кофе готов. Он был приготовлен из свежемолотых зёрен арабики. Теперь вы можете наслаждаться его вкусом и ароматом в любое удобное для вас время ;)"
	set downloading=Загрузка
	set extracting=Извлечение
	set fail=Неудача
	set no7zerror=[ERROR] Файл 7z.exe не найден!
	set no7zinfo=[INFO] Установите 7-Zip или разместите 7z.exe и 7z.dll в папке "%~dp0.tools"
	set nocurlerror=[ERROR] Файл curl.exe не найден!
	set nocurlinfo=[INFO] Разместите curl.exe в папке "%~dp0.tools"
	set "needcompilerprompt=Для продолжения требуется компилятор Inno Setup ResTools. Продолжить (y/n)? [y]: "
	set "queryversionprompt=Какую версию вы предпочитаете (s = Стабильную, d = В разработке)? [s]: "
	set "patchingicons=Патч иконок . . . "
	set "compilesetup=Сборка установщика . . . "
	set "deletedirsprompt=Удалить папки x64 и x86 (y/n)? [y]: "
) else (
	:: en
	set "done=Your hot coffee is ready. It was made from freshly ground arabica beans. Now you can enjoy its taste and aroma at any time convenient for you ;)"
	set downloading=Downloading
	set extracting=Extracting
	set fail=FAIL
	set no7zerror=[ERROR] No 7z.exe found!
	set no7zinfo=[INFO] Install 7-Zip or place 7z.exe and 7z.dll files to "%~dp0.tools"
	set nocurlerror=[ERROR] No curl.exe found!
	set nocurlinfo=[INFO] Place curl.exe to "%~dp0.tools"
	set "needcompilerprompt=Inno Setup ResTools is required to continue. Continue (y/n)? [y]: "
	set "queryversionprompt=Which version would you prefer (s = Stable, d = Development)? [s]: "
	set "patchingicons=Patching icons . . . "
	set "compilesetup=Compile setup . . . "
	set "deletedirsprompt=Delete x64 and x86 folders (y/n)? [y]: "
)

rem Check curl
set bcurl=%~dp0.tools\curl.exe
if not exist "%bcurl%" goto :err_1

rem Check 7zip
for /f "tokens=2*" %%a in ('^(reg query "HKLM\SOFTWARE\7-Zip" /v Path /reg:64^|^|reg query "HKLM\SOFTWARE\7-Zip" /v Path /reg:32^) 2^>nul^|find /i "REG_SZ"') do set b7zip=%%b7z.exe
if not exist "%b7zip%" set b7zip=%~dp0.tools\7z.exe
if not exist "%b7zip%" goto :err_2

rem Check Inno Setup
if exist ".tools\InnoRT\Compil32.exe" goto :recreatedirs
:checkinnosetup
set query=
set /p "query=%needcompilerprompt%"
if /i "%query%" == "n" exit /b 0
if /i not "%query%" == "" if /i not "%query%" == "y" goto :checkinnosetup
set "dest=%~dp0InnoRT.7z"
call :download "https://miranda-ng.org/distr/packs/HotCoffee/.InnoRT.7z" "%dest%"
call :extract "%dest%" ".tools\InnoRT"
del /q "%dest%" 2>nul

rem Recreate x86, x64 dirs
:recreatedirs
rd /s /q x86 2>nul&md x86 2>nul
rd /s /q x64 2>nul&md x64 2>nul

rem Downloads
set "components=authstate bass_interface bosskey buddyexpectator changekeyboardlayout cloudfile currencyrates dbeditorpp dbx_mdbx dbx_mmap emlanproto fingerprint flags folders gg gmailnotifier historypp icqcorp ieview menuex messagestate mirlua mradio newawaysys neweventnotify newsaggregator newxstatusnotify omegle packupdater popupplus quickmessages quicksearch sametime sessions skypeweb smileyadd spellchecker splashscreen statusmanager steam stopspam tipper tox translitswitcher twitter uinfoex variables vkontakte weather webview whenwasit yamn alarms assocmgr buddypounce console favcontacts fltcontacts historysweeperlight keyboardnotify listeningto mydetails mirotr nudge secureim cryptopp winterspeak"
goto start
set query=
set /p "query=%queryversionprompt%"
if /i "%query%" == "d" (
:start
	set "dest=%~dp0x86\miranda-ng.7z"
	call :download "https://www.miranda-ng.org/distr/miranda-ng-alpha-latest.7z" "%%dest%%"
	call :extract "%%dest%%" "%~dp0x86" "-x!mirandaboot.ini"
	call del /q "%%dest%%" 2>nul

	set "dest=%~dp0x64\miranda-ng.7z"
	call :download "https://www.miranda-ng.org/distr/miranda-ng-alpha-latest_x64.7z" "%%dest%%"
	call :extract "%%dest%%" "%~dp0x64" "-x!Icons -x!Plugins\Import -x!mirandaboot.ini"
	call del /q "%%dest%%" 2>nul

	set "dest=%~dp0x86\langpack_russian.zip"
	call :download "https://miranda-ng.org/distr/x32/Languages/langpack_russian.zip" "%%dest%%"
	call :extract "%%dest%%" "%~dp0x86"
	call del /q "%%dest%%" 2>nul

	for %%? in (%components%) do (
		set "dest=%~dp0x86\%%?.zip"
		call :download "https://miranda-ng.org/distr/x32/Plugins/%%?.zip" "%%dest%%"
		call :extract "%%dest%%" "%~dp0x86" "-x!Gadgets -x!Sounds"
		call del /q "%%dest%%" 2>nul

		set "dest=%~dp0x64\%%?.zip"
		call :download "https://miranda-ng.org/distr/x64/Plugins/%%?.zip" "%%dest%%"
		call :extract "%%dest%%" "%~dp0x64" "-x!Gadgets -x!Icons -x!Plugins\CurrencyRates\*.xml -x!Plugins\Weather -x!Sounds"
		call del /q "%%dest%%" 2>nul
	)
goto start
) else (
	set "dest=%~dp0x86\miranda-ng.7z"
	call :download "https://miranda-ng.org/distr/stable/miranda-ng-v0.95.13.1.7z" "%%dest%%"
	call :extract "%%dest%%" "%~dp0x86" "-x!mirandaboot.ini"
	call del /q "%%dest%%" 2>nul

	set "dest=%~dp0x64\miranda-ng.7z"
	call :download "https://miranda-ng.org/distr/stable/miranda-ng-v0.95.13.1_x64.7z" "%%dest%%"
	call :extract "%%dest%%" "%~dp0x64" "-x!Icons -x!Plugins\Import -x!mirandaboot.ini"
	call del /q "%%dest%%" 2>nul

	set "dest=%~dp0x86\langpack_russian.zip"
	call :download "https://miranda-ng.org/distr/stable/x32/Languages/langpack_russian.zip" "%%dest%%"
	call :extract "%%dest%%" "%~dp0x86"
	call del /q "%%dest%%" 2>nul

	for %%? in (%components%) do (
		set "dest=%~dp0x86\%%?.zip"
		call :download "https://miranda-ng.org/distr/stable/x32/Plugins/%%?.zip" "%%dest%%"
		call :extract "%%dest%%" "%~dp0x86" "-x!Gadgets -x!Sounds"
		call del /q "%%dest%%" 2>nul

		set "dest=%~dp0x64\%%?.zip"
		call :download "https://miranda-ng.org/distr/stable/x64/Plugins/%%?.zip" "%%dest%%"
		call :extract "%%dest%%" "%~dp0x64" "-x!Gadgets -x!Icons -x!Plugins\CurrencyRates\*.xml -x!Plugins\Weather -x!Sounds"
		call del /q "%%dest%%" 2>nul
	)
)
:start

rem Download sources
set "dest=%~dp0Sources.7z"
call :download "https://miranda-ng.org/distr/packs/HotCoffee/.Sources.7z" "%dest%"
call :extract "%dest%" "%~dp0x86"
del /q "%dest%" 2>nul

rem Download debug
set "dest=%~dp0debug.7z"
call :download "https://miranda-ng.org/distr/packs/HotCoffee/.debug.7z" "%dest%"
call :extract "%dest%" "%~dp0output"
del /q "%dest%" 2>nul

rem Icons
pushd "%~dp0x86\Skins\IconPacks"
<nul set /p "=%patchingicons%"
(
	IconPatcher.exe /bin="%~dp0x64\Miranda64.exe" /arc=xpk /silent
	IconPatcher.exe /bin="%~dp0x64\Miranda64.exe" /arc=xpk_hotcoffee /verysilent
	IconPatcher.exe /bin="%~dp0x86\Miranda32.exe" /arc=xpk /silent
	IconPatcher.exe /bin="%~dp0x86\Miranda32.exe" /arc=xpk_hotcoffee /verysilent
) 2>err&&echo:OK||(echo:%fail%&type err)
popd

rem Compile
<nul set /p "=%compilesetup%"
(
	.tools\InnoRT\iscc.exe /dAppArch=x64 MirandaHotCoffee.iss /q
	.tools\InnoRT\iscc.exe /dAppArch=x86 MirandaHotCoffee.iss /q
) 2>err&&echo:OK||(echo:%fail%&type err)

rem Delete x86, x64 dirs
goto start
set query=y
set /p "query=%deletedirsprompt%"
if /i "%query%" == "y" rd /s /q x86 2>nul&rd /s /q x64 2>nul
:start
rd /s /q x86 2>nul&rd /s /q x64 2>nul
del /f /q "%~dp0err"

:err_0
echo:%done%
pause
exit /b 0

:err_1
echo:%nocurlerror%
echo:%nocurlinfo%
pause
exit /b 1

:err_2
echo:%no7zerror%
echo:%no7zinfo%
pause
exit /b 2

:download
echo:%downloading% %~2 . . .
"%bcurl%" "%~1" --progress-bar --insecure --output "%~2"
goto :eof

:extract
echo:%extracting% %~1 . . .
"%b7zip%" x "%~1" -aoa -o"%~2\" %~3 -y -bso0
goto :eof
