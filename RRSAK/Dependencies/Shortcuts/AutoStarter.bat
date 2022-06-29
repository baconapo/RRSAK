tasklist /fi "ImageName eq RobloxPlayerBeta.exe" /fo csv 2>NUL | find /I "RobloxPlayerBeta.exe">NUL
if "%ERRORLEVEL%"=="0" cd /D "%localappdata%\RRSAK\Dependencies\Scripts"&&wscript.exe "invisible.vbs" UpdateFilter.bat&&exit

cd /D "%localappdata%\RRSAK\Dependencies\Scripts"
wscript.exe "invisible.vbs" "AutoStarter.bat"
exit
