//Provided by Dudekahedron - 2021

@echo off

color 07

SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

cls
title BeamMP Server Watchdog
echo.
echo  Protecting BeamMP Server from crashes^^!
echo.
echo  Should you want to close BeamMP Server and this script:
echo.
echo    1. Close this window.
echo    2. Close the BeamMP Server window.
echo  _________________________________________________________________
echo.

IF NOT EXIST BeamMP-Server.exe (

GOTO:nobmps

) ELSE (

GOTO:bmps

)

:bmps

echo  [%date% - %time%] 
call :colorEcho 09 "   BeamMP Server started"
echo.

call :colorEcho 0A "   [MONITORING]"
start "BeamMP Server" /w BeamMP-Server.exe | set /p exitkey= ""
echo.

echo  [%date% - %time%]
call :colorEcho 06 "   [WARNING] BeamMP Server crashed, or was closed"
echo.

call :colorEcho 0C "   Restarting server"
echo.

GOTO:bmps

:nobmps

echo  [%date% - %time%]

call :colorEcho 4F "[FATAL] BeamMP-Server.exe NOT FOUND - EXITING"
echo.

pause

GOTO:EOF

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i

