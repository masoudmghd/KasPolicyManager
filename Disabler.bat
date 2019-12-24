@ECHO off
ECHO Welcome
ECHO -------------------------
ECHO This script will disable some items on the group policies of Kaspersky Endpoint Security (Version 11)
ECHO -------------------------
ECHO.
ECHO Processing . . . (Please wait)
ECHO.
ECHO.
ECHO 1- Disabling Group Policies Results:
REG add "HKLM\SOFTWARE\WOW6432Node\KasperskyLab\protected\KES\policy\subItems\DeviceControl" /f /v enabled /t REG_DWORD /d 0
ECHO.
ECHO 2- Disabling NetAgent Results:
SC config "klnagent" start=disabled
ECHO.
ECHO -------------------------
ECHO Have a Nice Day!
ECHO -------------------------
pause
