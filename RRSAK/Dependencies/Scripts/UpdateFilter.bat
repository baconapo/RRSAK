cd %localappdata%\Roblox\Versions
for /f "delims=" %%A in ('dir /O-N /ad /b %localappdata%\Roblox\Versions') do set last=%%~dpA%%~nA&&set lastname=%%~nA
echo "%lastname%"

for /f "delims=" %%A in ('dir /ON /ad /b %localappdata%\Roblox\Versions') do set seclast=%%~dpA%%~nA&&set seclastname=%%~nA
echo "%seclastname%"
If "%lastname%"=="%seclastname%" (GOTO:they_same) ELSE (taskkill /IM "RobloxPlayerBeta.exe" /F&&cd /D "%~dp0"&&cd ../..&&start Starter.bat&&exit)
pause

:they_same
if not ""=="%seclastname%" (
cd %localappdata%\Roblox\Versions
for /f "delims=" %%A in ('dir /ad /b %localappdata%\Roblox\Versions') do cd %%~dpA%%~nA
for /f "delims=" %%A in ('dir /ON /a-d /b') do set cancel=%%~nA
if "zzCancelUpdate"=="%cancel%" (cd /D "%~dp0"
wscript.exe "invisible.vbs" "AutoStarter.bat"
exit) ELSE (taskkill /IM "RobloxPlayerBeta.exe" /F&&cd /D "%~dp0"&&cd ../..&&start Starter.bat&&exit)
) ELSE (GOTO:check_pf86)
pause


:check_pf86
cd "C:\Program Files (x86)\Roblox\Versions"
for /f "delims=" %%A in ('dir /O-N /ad /b "C:\Program Files (x86)\Roblox\Versions"') do set last2=%%~dpA%%~nA&&set lastname2=%%~nA
echo "%lastname2%"

for /f "delims=" %%A in ('dir /ON /ad /b "C:\Program Files (x86)\Roblox\Versions"') do set seclast2=%%~dpA%%~nA&&set seclastname2=%%~nA
echo "%seclastname2%"
If "%lastname2%"=="%seclastname2%" (GOTO:they_same2) ELSE (taskkill /IM "RobloxPlayerBeta.exe" /F&&cd /D "%~dp0"&&cd ../..&&start Starter.bat&&exit)
pause

:they_same2
if not ""=="%seclastname2%" (
cd "C:\Program Files (x86)\Roblox\Versions"
for /f "delims=" %%A in ('dir /ad /b "C:\Program Files (x86)\Roblox\Versions"') do cd %%~dpA%%~nA
for /f "delims=" %%A in ('dir /ON /a-d /b') do set cancel=%%~nA
if "zzCancelUpdate"=="%cancel%" (cd /D "%~dp0"
wscript.exe "invisible.vbs" "AutoStarter.bat"
exit) ELSE (taskkill /IM "RobloxPlayerBeta.exe" /F&&cd /D "%~dp0"&&cd ../..&&start Starter.bat&&exit)
) ELSE (taskkill /IM "RobloxPlayerBeta.exe" /F&&cd /D "%~dp0"&&cd ../..&&start Starter.bat&&exit)
pause