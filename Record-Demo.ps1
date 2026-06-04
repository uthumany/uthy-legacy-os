<#
╔══════════════════════════════════════════════════════════╗
║   UTHY LEGACY OS — RECORDED DEMO LAUNCHER              ║
║                                                         ║
║   Records the demo using Windows Steps Recorder         ║
║   (built-in, zero setup, no Xbox Game Bar needed)       ║
╚══════════════════════════════════════════════════════════╝
#>

$OutputPath = "$env:USERPROFILE\Desktop\Uthy-Legacy-OS-Demo.zip"
$DemoScript = Join-Path $PSScriptRoot "run-demo.ps1"

Clear-Host
Write-Host @"
╔═══════════════════════════════════════════════╗
║   UTHY LEGACY OS — RECORDED DEMO              ║
╚═══════════════════════════════════════════════╝

This will record the entire demo using Windows Steps Recorder
(built into every Windows 10/11 — no installation needed).

Recording saves to: $OutputPath

"@ -ForegroundColor Cyan

# ─── CHECK STEPS RECORDER ──────────────────
$psrPath = Get-Command "psr.exe" -ErrorAction SilentlyContinue
if (-not $psrPath) {
    Write-Host "❌ Steps Recorder (psr.exe) not found!" -ForegroundColor Red
    pause
    exit 1
}
Write-Host "✅ Steps Recorder found at: $($psrPath.Source)" -ForegroundColor Green
Write-Host "✅ Demo script at: $DemoScript" -ForegroundColor Green

# ─── CHECK OPENROUTER KEY ──────────────────
Write-Host "`n📋 You will need your OpenRouter API key for the demo." -ForegroundColor Yellow
Write-Host "   (The demo script will prompt you to enter it)`n" -ForegroundColor Yellow

Write-Host "Press any key to START recording and launch the demo..." -ForegroundColor White -BackgroundColor DarkGreen
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# ─── START RECORDING ───────────────────────
Write-Host "`n🎥 Starting Steps Recorder..." -ForegroundColor Cyan
Start-Process psr.exe -ArgumentList "/start /output `"$OutputPath`""
Start-Sleep -Seconds 3

# ─── LAUNCH DEMO ───────────────────────────
Write-Host "🚀 Launching demo in new window..." -ForegroundColor Cyan
Start-Process powershell.exe -ArgumentList "-NoExit -ExecutionPolicy Bypass -Command `"& '$DemoScript'`""

# ─── RECORDING STATUS ──────────────────────
Clear-Host
Write-Host @"

╔═══════════════════════════════════════════════╗
║   🔴 RECORDING ACTIVE — DO NOT CLOSE          ║
╚═══════════════════════════════════════════════╝

The demo is running in a SEPARATE PowerShell window.

What's happening:
  1. Enter your OpenRouter API key when prompted
  2. The demo loads 35 PM skills into a test profile
  3. Tests OpenRouter connection
  4. Runs 3 PM tasks in real-time:
     • Opportunity-Solution Tree
     • PRD Writer  
     • Competitive Analysis
  5. Shows a summary at the end

When the demo finishes in the other window:
  - Come back to THIS window
  - Press any key to STOP recording

"@ -ForegroundColor Green

Write-Host "⏹  Press any key to STOP recording (after demo finishes)..." -ForegroundColor White -BackgroundColor DarkRed
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# ─── STOP RECORDING ────────────────────────
Write-Host "`n⏹  Stopping Steps Recorder..." -ForegroundColor Cyan
Start-Process psr.exe -ArgumentList "/stop" -NoNewWindow -Wait
Start-Sleep -Seconds 2

# ─── DONE ──────────────────────────────────
Clear-Host
Write-Host @"

╔═══════════════════════════════════════════════╗
║   ✅ RECORDING COMPLETE                       ║
╚═══════════════════════════════════════════════╝

Recording saved to:
  $OutputPath

Open the ZIP file — it contains step-by-step screenshots
of every action during the demo.

To view:
  1. Double-click the ZIP on your Desktop
  2. Double-click the .MHT file inside
  3. Scroll through the captured steps

ALTERNATIVE — Xbox Game Bar (video recording):
  1. Press Win + I → Gaming → Game Bar → turn ON
  2. Run: .\Launch-Demo.bat
  3. Press Win+Alt+R to record

"@ -ForegroundColor Green
pause
