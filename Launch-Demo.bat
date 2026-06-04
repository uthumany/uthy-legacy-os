@echo off
title Uthy Legacy OS — Live Demo
color 0A
echo.
echo  ╔═══════════════════════════════════════════════╗
echo  ║   UTHY LEGACY OS — LIVE DEMO RECORDING        ║
echo  ╚═══════════════════════════════════════════════╝
echo.
echo  INSTRUCTIONS:
echo  1. Press Win+Alt+R to START recording (Xbox Game Bar)
echo  2. The demo will ask for your OpenRouter API key
echo  3. Watch 3 PM tasks run in real-time
echo  4. Press Win+Alt+R to STOP recording when done
echo.
echo  Recording saves to Videos/Captures folder
echo.
pause

start "" powershell.exe -NoExit -ExecutionPolicy Bypass -Command "Set-Location '%~dp0'; .\run-demo.ps1"
