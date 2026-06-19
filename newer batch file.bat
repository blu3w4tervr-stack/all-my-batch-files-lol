@echo off
title hello, ty for downloading my batch file
echo hello there, thanks for booting up your pc 
x:
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" 
	
	goto:x
	pause