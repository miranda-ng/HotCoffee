@echo off
set build_type=%1
if "%build_type%"=="" (echo "please specify target platform x32 or x64!" && pause && goto :eof)
set build_lang=%2
if "%build_lang%"=="" (echo "please specify language en or ru!" && pause && goto :eof)
set timestamp=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set build_path="%build_type%\%timestamp%"
mkdir %build_path%

set url="https://www.miranda-ng.org/distr/miranda-ng-alpha-latest.7z"
set dest="%build_path%\miranda-ng.7z"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"%build_path%\" -x!mirandaboot.ini -y
del %dest%

set url="https://miranda-ng.org/distr/%build_type%/Plugins/dbeditorpp.zip"
set dest="%build_path%\dbeditorpp.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"%build_path%\" -y
del %dest%

set url="https://miranda-ng.org/distr/%build_type%/Plugins/mirlua.zip"
set dest="%build_path%\mirlua.zip"
call ".tools\curl.exe" %url% --output %dest%
call ".tools\7z.exe" x %dest% -aoa -o"%build_path%\" -y
del %dest%

xcopy "Profiles" "%build_path%\Profiles\"
xcopy "Profiles\%build_lang%" "%build_path%\Profiles"
xcopy "Scripts" "%build_path%\Scripts\"
xcopy /s "Skins" "%build_path%\Skins\"
xcopy "mirandaboot.ini" "%build_path%\"

call "%build_path%\Skins\Icons\IconPatcher.exe" /bin="%build_path%\miranda%build_type:~1,2%.exe" /arc=xpk /res=* /verysilent

goto :eof