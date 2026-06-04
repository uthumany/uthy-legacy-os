<#
.SYNOPSIS
    Uthy Legacy OS — PowerShell Installer
    Installs all 35 PM skills + 4 workflows for AI coding agents on Windows.
.DESCRIPTION
    Detects Claude Code, Cursor, Codex CLI, and Gemini CLI installations
    and symlinks skills into each agent's skill directory.
    Falls back to ~/.uthy-skills/ if no agent is detected.
.EXAMPLE
    .\install.ps1
    .\install.ps1 -Target claude
    .\install.ps1 -Target cursor -Verbose
.PARAMETER Target
    Specific agent to install for: claude, cursor, codex, gemini, all (default)
#>

param(
    [ValidateSet('claude','cursor','codex','gemini','copilot','windsurf','all')]
    [string]$Target = 'all',
    [switch]$Verbose
)

$Host.UI.RawUI.WindowTitle = "Uthy Legacy OS — PM Skills Installer"

$Banner = @"

╔═══════════════════════════════════════════════╗
║       UTHY LEGACY OS — PM Skills Install      ║
║    35 skills · 4 workflows · 1 command        ║
╚═══════════════════════════════════════════════╝
"@

Write-Host $Banner -ForegroundColor Cyan
Write-Host ""

# Self-location
$ScriptRoot = Split-Path -Parent $PSCommandPath
$SkillsRoot = Join-Path $ScriptRoot "skills"
$WorkflowsRoot = Join-Path $ScriptRoot "workflows"

function Install-Skills {
    param(
        [string]$TargetDir,
        [string]$Label
    )

    if (-not (Test-Path $TargetDir)) {
        New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
    }

    $count = 0
    $skillDirs = Get-ChildItem -Path $SkillsRoot -Directory -Recurse -Depth 1 | Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") }
    
    foreach ($skill in $skillDirs) {
        $src = Join-Path $skill.FullName "SKILL.md"
        $dest = Join-Path $TargetDir "$($skill.Name).md"
        # Use New-Item -ItemType SymbolicLink on Windows (requires admin on older Windows, works without on Win10+ in dev mode)
        if ($IsWindows -or $env:OS -match "Windows") {
            # On Windows, copy is more reliable than symlinks for most users
            Copy-Item -Path $src -Destination $dest -Force -ErrorAction SilentlyContinue
        } else {
            New-Item -ItemType SymbolicLink -Path $dest -Target $src -Force -ErrorAction SilentlyContinue
        }
        $count++
    }

    # Also install workflows
    $wfDirs = Get-ChildItem -Path $WorkflowsRoot -Directory | Where-Object { Test-Path (Join-Path $_.FullName "SKILL.md") }
    foreach ($wf in $wfDirs) {
        $src = Join-Path $wf.FullName "SKILL.md"
        $dest = Join-Path $TargetDir "$($wf.Name).md"
        if ($IsWindows -or $env:OS -match "Windows") {
            Copy-Item -Path $src -Destination $dest -Force -ErrorAction SilentlyContinue
        } else {
            New-Item -ItemType SymbolicLink -Path $dest -Target $src -Force -ErrorAction SilentlyContinue
        }
    }

    Write-Host "  ✓ $count skills → $Label" -ForegroundColor Green
}

# Detect home directory
$HomeDir = if ($IsWindows -or $env:OS -match "Windows") { $env:USERPROFILE } else { $HOME }

$agentTargets = @{}

if ($Target -eq "all") {
    # Probe for installed agents
    $agentDirs = @{
        "Claude Code" = Join-Path $HomeDir ".claude\skills"
        "Cursor"      = Join-Path $HomeDir ".cursor\skills"
        "Codex CLI"   = Join-Path $HomeDir ".codex\skills"
        "Gemini CLI"  = Join-Path $HomeDir ".gemini\skills"
        "Windsurf"    = Join-Path $HomeDir ".windsurf\skills"
        "Copilot"     = Join-Path (Get-Location) ".github\skills"
    }

    $detected = @()
    foreach ($agent in $agentDirs.Keys) {
        if (Test-Path (Split-Path $agentDirs[$agent] -Parent)) {
            $detected += $agent
            $agentTargets[$agent] = $agentDirs[$agent]
        }
    }

    if ($detected.Count -eq 0) {
        Write-Host "  ⚠️  No supported agent detected. Installing to ~/.uthy-skills/..." -ForegroundColor Yellow
        $agentTargets["Manual"] = Join-Path $HomeDir ".uthy-skills"
    } else {
        Write-Host "Detected agents: $($detected -join ', ')" -ForegroundColor Cyan
    }
} else {
    $targetMap = @{
        "claude"   = @{ "Name"="Claude Code"; "Path"= Join-Path $HomeDir ".claude\skills" }
        "cursor"   = @{ "Name"="Cursor";      "Path"= Join-Path $HomeDir ".cursor\skills" }
        "codex"    = @{ "Name"="Codex CLI";   "Path"= Join-Path $HomeDir ".codex\skills" }
        "gemini"   = @{ "Name"="Gemini CLI";  "Path"= Join-Path $HomeDir ".gemini\skills" }
        "windsurf" = @{ "Name"="Windsurf";    "Path"= Join-Path $HomeDir ".windsurf\skills" }
        "copilot"  = @{ "Name"="Copilot";     "Path"= Join-Path (Get-Location) ".github\skills" }
    }
    if ($targetMap.ContainsKey($Target)) {
        $agentTargets[$targetMap[$Target]["Name"]] = $targetMap[$Target]["Path"]
    }
}

Write-Host ""
Write-Host "Installing skills..." -ForegroundColor White

foreach ($entry in $agentTargets.GetEnumerator()) {
    Install-Skills -TargetDir $entry.Value -Label "$($entry.Key) ($($entry.Value))"
}

Write-Host ""
Write-Host "✓ Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "You can now ask your agent:" -ForegroundColor White
Write-Host "  • `"Write a PRD for this feature`""
Write-Host "  • `"Help me plan customer discovery interviews`""
Write-Host "  • `"Run a competitive analysis on [company]`""
Write-Host "  • `"Let's do a weekly product health review`""
Write-Host ""

$TemplatesPath = Join-Path $ScriptRoot "templates"
$SamplesPath = Join-Path $ScriptRoot "samples"
Write-Host "Templates available at: $TemplatesPath" -ForegroundColor Cyan
Write-Host "Samples available at: $SamplesPath" -ForegroundColor Cyan
Write-Host ""
Write-Host "Happy shipping! 🚀" -ForegroundColor Green
