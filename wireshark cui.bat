@echo off
set "PATH=%PATH%;C:\Program Files\Wireshark"
title Network Toolkit CUI
mode con: cols=90 lines=30
color 0B

color 0A
cls

:MENU
cls
echo ====================================
echo  Wireshark Automation Menu
echo ====================================
echo 1. Start Live Packet Capture
echo 2. Filter existing capture file
echo 3. Exit
echo.

set /p "choice=Please enter your option (1-3): "

if "%choice%"=="1" goto capture
if "%choice%"=="2" goto filter
if "%choice%"=="3" goto exit

echo Invalid choice, try again.
timeout /t 2 >nul
goto MENU

:capture
cls
echo Starting packet capture...
:: Example tshark command goes here
tshark -i 1 -a duration:10 -w capture.pcap
pause
goto MENU

:filter
cls
set /p "pcap=Enter pcap file name: "
set /p "search=Enter search filter (e.g. http): "
:: Example tshark filter command
tshark -r %pcap% -Y %search%
pause
goto MENU

:exit
exit
