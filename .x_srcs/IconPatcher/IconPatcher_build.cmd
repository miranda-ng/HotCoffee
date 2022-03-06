@echo off
setlocal

rem UI query
set /p ui="e = English, r = Russian [e]: "
if /i "%ui%" == "r" (
	:: ru
	set no7zerror=[ERROR] ���� 7z.exe �� ������!
	set no7zinfo=[INFO] ��⠭���� 7-Zip ��� ࠧ����� 7z.exe � 7z.dll � ����� "..\..\.tools"
	set nocurlerror=[ERROR] ���� curl.exe �� ������!
	set nocurlinfo=[INFO] �������� curl.exe � ����� "..\..\.tools"
	set "needcompilerprompt=��� �த������� �ॡ���� ���७��� ����� ��������� Inno Setup �� ResTools. �த������ (y/n)? [y]: "
	set "compilesetup=���ઠ ����� . . . "
	set downloading=����㧪�
	set extracting=�����祭��
	set fail=��㤠�
	set done=��⮢�
) else (
	:: en
	set no7zerror=[ERROR] No 7z.exe found!
	set no7zinfo=[INFO] Install 7-Zip or place 7z.exe and 7z.dll files to "..\..\.tools"
	set nocurlerror=[ERROR] No curl.exe found!
	set nocurlinfo=[INFO] Place curl.exe to "..\..\.tools"
	set "needcompilerprompt=To continue, an extended version of the Inno Setup compiler from ResTools is required. Continue (y/n)? [y]: "
	set "compilesetup=Compile setup . . . "
	set downloading=Downloading
	set extracting=Extracting
	set fail=FAIL
	set done=Done
)

rem Check curl
set bcurl=..\..\.tools\curl.exe
if not exist "%bcurl%" goto :err_1

rem Check 7zip
for /f "tokens=2*" %%a in ('^(reg query "HKLM\SOFTWARE\7-Zip" /v Path /reg:64^|^|reg query "HKLM\SOFTWARE\7-Zip" /v Path /reg:32^) 2^>nul^|find /i "REG_SZ"') do set b7zip=%%b7z.exe
if not exist "%b7zip%" set b7zip=..\..\.tools\7z.exe
if not exist "%b7zip%" goto :err_2

rem Check Inno Setup
if exist "..\..\.tools\InnoRT\Compil32.exe" goto :remcompile
:checkinnosetup
set query=
set /p "query=%needcompilerprompt%"
if /i "%query%" == "n" exit /b 0
if /i not "%query%" == "" if /i not "%query%" == "y" goto :checkinnosetup
set "dest=..\..\.tools\InnoRT.7z"
call :download "https://miranda-ng.org/distr/packs/HotCoffee/.InnoRT.7z" "%dest%"
call :extract "%dest%" "..\..\.tools\InnoRT"
del /q "%dest%" 2>nul

:remcompile

rem Compile
<nul set /p "=%compilesetup%"
(
	..\..\.tools\InnoRT\iscc.exe /d IconPatcher.iss /q
) 2>err&&echo:OK||(echo:%fail%&type err)
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
