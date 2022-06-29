@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
::stop roblox & cmd
taskkill /IM "RobloxPlayerBeta.exe" /F
::delete roblos if in wrong directories
cd %programfiles%
cd ../.
cd "C:\Program Files (x86)"

del /f /s /q "C:\Program Files\Roblox"
rmdir /s /q "C:\Program Files (x86)\Roblox"
if exist C:\Program Files (x86)\Roblox" rd /s /q C:\Program Files (x86)\Roblox"

del /f /s /q "C:\Program Files\Roblox"
rmdir /s /q "C:\Program Files\Roblox"
if exist "C:\Program Files\Roblox" rmdir /s /q "C:\Program Files\Roblox"
timeout 1
::install roblos
cd /D "%~dp0"
cd RRSAK
cd Dependencies
start RobloxPlayerLauncher.exe
::setting source var
cd /D "%~dp0"
for /f "delims=" %%A in ('dir /ad /b') do set source=%%~dpARRSAK
::putting files in appdata
mkdir %localappdata%\RRSAK
xcopy /s/y "%source%" "%localappdata%\RRSAK"
::creating shortcut
cd /D "%~dp0"
cd RRSAK
cd Dependencies
for /f "delims=" %%A in ('dir /ad /b') do set source=%%~dpA
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
xcopy /s/y "%source%Shortcuts\AutoStarter.bat" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\"


::start auto updater
cd /D "%~dp0"
cd RRSAK
cd Dependencies
cd Scripts
start AutoStarter.bat


::start timer
cd /D "%~dp0"
start timer.bat
timeout 16
move /Y "C:\Program Files (x86)\Roblox" "%localappdata%"
timeout 3
::delete roblos if in wrong directories
del /f /s /q "C:\Program Files\Roblox"
rmdir /s /q "C:\Program Files (x86)\Roblox"
if exist C:\Program Files (x86)\Roblox" rd /s /q C:\Program Files (x86)\Roblox"

del /f /s /q "C:\Program Files\Roblox"
rmdir /s /q "C:\Program Files\Roblox"
if exist "C:\Program Files\Roblox" rmdir /s /q "C:\Program Files\Roblox"
timeout 1
::making sure roblox is installed
cd /D "%~dp0"
cd RRSAK
cd Dependencies
start RobloxPlayerLauncher.exe
::delete roblos if in wrong directories
del /f /s /q "C:\Program Files\Roblox"
rmdir /s /q "C:\Program Files (x86)\Roblox"
if exist C:\Program Files (x86)\Roblox" rd /s /q C:\Program Files (x86)\Roblox"

del /f /s /q "C:\Program Files\Roblox"
rmdir /s /q "C:\Program Files\Roblox"
if exist "C:\Program Files\Roblox" rmdir /s /q "C:\Program Files\Roblox"
timeout 1
::starting roshade setup
cd /D "%~dp0"
cd RSI
start RoshadeSetup.exe

::exit
exit