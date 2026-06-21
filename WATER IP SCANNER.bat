@echo off
title WATER IP SCANNER
color A
SET SaveFile="c:\temp\ipaddresses.txt"
del %SaveFile%
Set IPRange=
Set IPStart=
Set IPEnd=
Set choice=
set IPCount=
set IPValue=
ipconfig /flushdns
arp -d
echo Here is a list of currently in use IPv4 addresses:
ipconfig | FIND /v "VirtualBox Host" | FIND /v "Ethernet adapter vEthernet (Default Switch)" | FIND /v "Ethernet adapter vEthernet (WiFi):" | FIND /v "Ethernet adapter vEthernet (Ethernet):" | FIND /v "Media disconnected"
echo.
echo.
echo The above list is all the connected IPs, here is a summary:
echo.
ipconfig | FIND "IPv4 Address"
echo.
echo.
set /p IPRange=Enter the first 3 octets of the network you want to scan (e.g 192.168.1): 
:start
echo.
echo. Do you want to scan the entire network range or a partial range?
set choice=
echo 1) Full Network Scan: IPs 1-254
echo 2) Partial Network Scan: Select IP range
set /p choice=Enter number: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto Full
if '%choice%'=='2' goto Partial
echo "%choice%" is not valid, try again.
echo.
goto start

:Full
echo.
echo Pinging %IPCount% network devices
echo This could take up to 5 minutes depending on how many IPs are being scanned.
FOR /L %%i IN (1,1,%IPCount%) DO (ping -n 1 %IPRange%.%%i | FIND /i "bytes=">>%SaveFile%)
Goto End

:Partial
echo.
set /p IPStart=Enter last octet start IP (E.G %IPRange%.XXX): 
set /p IPEnd=Enter End IP: 
set /a IPValue=%IPEnd%-%IPStart%
echo.
echo Scanning IPs: %IPRange%.%IPStart% - %IPRange%.%IPEnd%
echo Total IP's: %IPValue%
echo Please wait... Collecting results
FOR /L %%i IN (%IPStart%,1,%IPEnd%) DO (ping -n 1 %IPRange%.%%i | FIND /i "bytes=">>%SaveFile%)
Goto End

:End
set delsavefile=
echo View or Delete results file?
echo 1) View results only
echo 2) View and save results
set /p delsavefile=Enter number: 
if not '%choice%'== set choice=%choice:~0,1%
if '%choice%'=='1' goto ViewOnly
if '%choice%'=='2' goto ViewAndSave
echo "%choice%" is not valid, try again.
echo.
goto start

:ViewOnly
cls
type %SaveFile%
del %SaveFile%

:ViewAndSave
cls
type %SaveFile%
echo.
echo.
echo Results file is in %SaveFile%