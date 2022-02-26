@echo off

set url="https://miranda-ng.org/distr/packs/HotCoffee/.xx_srcs.7z"
set dest=".xx_srcs.7z"
call "..\.tools\curl.exe" %url% --output %dest%
call "..\.tools\7z.exe" x %dest% -aoa -o"xx_srcs\" -y
del %dest%

goto :eof