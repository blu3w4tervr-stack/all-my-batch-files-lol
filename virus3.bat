:BEGIN
PING -n 10 -w 1000 127.0.0.1
IF %ERRORLEVEL%==0 (
ECHO %DATE% %TIME% Success>>C:\File_Path\Your_Log.log
GOTO BEGIN
)
IF %ERRORLEVEL%==1 (
ECHO %DATE% %TIME% Fail>>C:\File_Path\Your_Log.log
GOTO BEGIN
)