@echo off
title Uthy Legacy OS — Recorded Demo
color 0A

echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║   UTHY LEGACY OS — RECORDED DEMO             ║
echo  ╚═══════════════════════════════════════════════╝
echo.
echo  This will:
echo    1. Start Windows Steps Recorder (built-in, no setup)
echo    2. Open the demo in a new PowerShell window
echo    3. Run 3 PM tasks via OpenRouter
echo    4. Save the recording to Desktop
echo.
echo  Steps Recorder captures every click and keystroke
echo  as screenshots — no Xbox Game Bar needed.
echo.
pause

echo Starting Steps Recorder...
start "" psr.exe /start /output "%USERPROFILE%\Desktop\Uthy-Legacy-OS-Demo.zip"

echo Waiting for Steps Recorder to initialize...
timeout /t 3 /nobreak >nul

echo Launching demo...
start "" powershell.exe -NoExit -ExecutionPolicy Bypass -Command "Set-Location '%~dp0'; .\run-demo.ps1"

echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║   RECORDING IS ACTIVE                         ║
echo  ╚═══════════════════════════════════════════════╝
echo.
echo  The demo is running in the new window.
echo  Steps Recorder is capturing every step.
echo.
echo  When the demo finishes:
echo    1. Come back to THIS window
echo    2. Press any key to stop recording
echo    3. The ZIP will be on your Desktop
echo.
pause

echo Stopping Steps Recorder...
psr.exe /stop
timeout /t 2 /nobreak >nul

echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║   RECORDING COMPLETE                          ║
echo  ╚═══════════════════════════════════════════════╝
echo.
echo  File saved to: %USERPROFILE%\Desktop\Uthy-Legacy-OS-Demo.zip
echo.
echo  Open the ZIP to see step-by-step screenshots
echo  of the entire demo.
echo.
pause
