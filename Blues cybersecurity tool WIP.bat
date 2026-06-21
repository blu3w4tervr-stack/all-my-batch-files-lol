@echo off
title Blues cybersecurity tool
set /p pass="ENTER THE FUCKING PASSWORD: "
if %pass% Neq "Blueswater"exit
menu
echo.
echo *****************
echo     Menu
echo *****************
echo.
echo.
echo 1) list users on computer
echo 2)Create A New users
echo 3) Change a Users Password 
echo 4) Delete a user Account
echo.5)exit BLUES CYBERSECURITY tool
echo.
set /p input="©"
if"%input%" EQU "" 1()
	net user
	pause
	cls
	goto menu
	
	)
if"%input%" EQU "" 2)
cls
set /p username="Enter New Users Username: "
set /p
net user username password /add
if"%input%" EQU "" 3
if"%input%" EQU "" 4
if"%input%" EQU "" 5))