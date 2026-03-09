@echo off
REM Network Speed Fix - One Click Solution

REM Request Admin Privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process cmd.exe -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /b
)

REM Run the PowerShell script
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0fix-internet-speed.ps1"
pause
