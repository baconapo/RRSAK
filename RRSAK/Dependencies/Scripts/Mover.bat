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






::go to and delete roblox
cd "%localappdata%\Roblox\Versions"
del * /S /Q
rmdir /S /Q "%localappdata%\Roblox\Versions"

cd "C:\Program Files (x86)\Roblox\Versions"
del * /S /Q
rmdir /S /Q "C:\Program Files (x86)\Roblox\Versions"













::INSTALLER PART
cd /D "%~dp0"
start countdown.bat
::generate ReShadeini
cd /D "%~dp0"
cd !versions_ShaderFiles
start ReShadeini.bat
timeout 1
::go roblox directory and install
cd /D "%~dp0"
cd ./..
start RobloxPlayerLauncher.exe
cd /D "%~dp0"
::put rrsak in the presets
if not exist "%localappdata%\Roshade" mkdir %localappdata%\Roshade
if not exist "%localappdata%\Roshade\Presets" mkdir %localappdata%\Roshade\Presets

::set source
cd /D "%~dp0"
for /f "delims=" %%A in ('dir /ad /b') do set sourceR=%%~dpARRSAK.ini

xcopy /s/y "%sourceR%" "%localappdata%\Roshade\Presets"

timeout 15
::set variables for copying files -- target
cd %localappdata%\Roblox\Versions
for /f "delims=" %%A in ('dir /ad /b %localappdata%\Roblox\Versions') do set target=%%~dpA%%~nA

cd C:\Program Files (x86)\Roblox\Versions
for /f "delims=" %%A in ('dir /ad /b "C:\Program Files (x86)\Roblox\Versions"') do set target2=%%~dpA%%~nA
::above but source
cd /D "%~dp0"
for /f "delims=" %%A in ('dir /ad /b') do set source=%%~dpA%%~nA
::copy
xcopy /s/y "%source%" "%target%"
xcopy /s/y "%source%" "%target2%"
::start auto updater
cd /D "%~dp0"
timeout 1
start AutoStarter.bat
exit
