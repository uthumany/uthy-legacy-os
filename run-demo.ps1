<#
╔══════════════════════════════════════════════════════════╗
║   UTHY LEGACY OS — LIVE DEMO WITH OPENROUTER           ║
║                                                         ║
║   Run this in a NEW terminal window, then press         ║
║   Win+Alt+R (Xbox Game Bar) to start recording.         ║
║   Press Win+Alt+R again to stop when the demo ends.     ║
╚══════════════════════════════════════════════════════════╝

.PARAMETER ApiKey
    Your OpenRouter API key (optional — script will prompt if not provided)
.EXAMPLE
    .\run-demo.ps1
    .\run-demo.ps1 -ApiKey "sk-or-..."
#>

param(
    [string]$ApiKey = ""
)

# ─── CONFIG ───────────────────────────────────────────────
$DemoDir = "$env:USERPROFILE\.uthy-demo"
$SkillsDir = "$DemoDir\skills"
$RepoDir = "$env:USERPROFILE\.uthy-legacy-os"

# ─── BANNER ───────────────────────────────────────────────
Clear-Host
$Banner = @"

╔══════════════════════════════════════════════════════════╗
║                                                          ║
║     ██╗   ██╗████████╗██╗  ██╗██╗   ██╗                ║
║     ██║   ██║╚══██╔══╝██║  ██║╚██╗ ██╔╝                ║
║     ██║   ██║   ██║   ███████║ ╚████╔╝                 ║
║     ██║   ██║   ██║   ██╔══██║  ╚██╔╝                  ║
║     ╚██████╔╝   ██║   ██║  ██║   ██║                   ║
║      ╚═════╝    ╚═╝   ╚═╝  ╚═╝   ╚═╝                   ║
║                                                          ║
║     Product Management Skills for AI Agents              ║
║     35 skills · 4 workflows · OpenRouter-powered demo    ║
║                                                          ║
╚══════════════════════════════════════════════════════════╝

"@
Write-Host $Banner -ForegroundColor Cyan
Write-Host "  Press Win+Alt+R NOW to start recording!" -ForegroundColor Yellow -BackgroundColor DarkRed
Write-Host "  (then press any key to begin the demo)`n" -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# ─── STEP 1: GET API KEY ──────────────────────────────────
if (-not $ApiKey) {
    Write-Host "`n🔑 Enter your OpenRouter API key:" -ForegroundColor Cyan
    $ApiKey = Read-Host -AsSecureString
    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($ApiKey)
    $ApiKey = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
}

Write-Host "`n✓ API key configured" -ForegroundColor Green
Start-Sleep -Milliseconds 500

# ─── STEP 2: SETUP ────────────────────────────────────────
Write-Host "`n" -NoNewline
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray
Write-Host "  STEP 1: Installing Uthy Legacy OS Skills" -ForegroundColor White -BackgroundColor DarkBlue
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray

# Clean and recreate
if (Test-Path $DemoDir) { Remove-Item -Recurse -Force $DemoDir }
New-Item -ItemType Directory -Path $SkillsDir -Force | Out-Null

# Check if repo exists, if not clone it
if (-not (Test-Path $RepoDir)) {
    Write-Host "  Cloning repository..." -ForegroundColor Gray
    git clone --depth 1 https://github.com/uthumany/uthy-legacy-os.git $RepoDir 2>&1 | Out-Null
}

$skillCount = 0
if (Test-Path "$RepoDir\skills") {
    Get-ChildItem "$RepoDir\skills" -Directory | ForEach-Object {
        $phase = $_.Name
        Get-ChildItem "$RepoDir\skills\$phase" -Directory | ForEach-Object {
            $skillName = $_.Name
            $src = "$RepoDir\skills\$phase\$skillName\SKILL.md"
            if (Test-Path $src) {
                Copy-Item $src "$SkillsDir\$skillName.md" -Force
                $global:skillCount++
            }
        }
    }

    # Workflows
    if (Test-Path "$RepoDir\workflows") {
        Get-ChildItem "$RepoDir\workflows" -Directory | ForEach-Object {
            $src = "$RepoDir\workflows\$($_.Name)\SKILL.md"
            if (Test-Path $src) {
                Copy-Item $src "$SkillsDir\workflow-$($_.Name).md" -Force
                $global:skillCount++
            }
        }
    }
}

Write-Host "  ✓ $skillCount skills installed to $SkillsDir" -ForegroundColor Green
Start-Sleep -Milliseconds 800

# ─── STEP 3: TEST OPENROUTER ──────────────────────────────
Write-Host "`n" -NoNewline
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray
Write-Host "  STEP 2: Testing OpenRouter Connection" -ForegroundColor White -BackgroundColor DarkBlue
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray

$headers = @{
    "Authorization" = "Bearer $ApiKey"
    "Content-Type" = "application/json"
    "HTTP-Referer" = "https://uthumany.github.io/uthy-legacy-os/"
    "X-Title" = "Uthy Legacy OS Demo"
}

try {
    $modelResp = Invoke-RestMethod -Uri "https://openrouter.ai/api/v1/models" -Headers @{"Authorization"="Bearer $ApiKey"} -TimeoutSec 10
    $modelCount = $modelResp.data.Count
    Write-Host "  ✓ OpenRouter reachable — $modelCount models available" -ForegroundColor Green
} catch {
    Write-Host "  ⚠ Could not reach OpenRouter. Check your API key." -ForegroundColor Red
    Write-Host "  Error: $_" -ForegroundColor Red
    pause
    exit 1
}

# ─── HELPER FUNCTION ──────────────────────────────────────
function Invoke-Prompt {
    param([string]$SystemPrompt, [string]$UserPrompt, [string]$Label, [string]$SkillPath)
    
    Write-Host "`n  Loading skill: $((Get-Item $SkillPath).Name)" -ForegroundColor Gray
    $skillContent = Get-Content $SkillPath -Raw
    
    $body = @{
        model = "anthropic/claude-sonnet-4.6"
        messages = @(
            @{ role = "system"; content = "$SystemPrompt`n`n--- SKILL CONTENT ---`n$skillContent" }
            @{ role = "user"; content = $UserPrompt }
        )
        max_tokens = 1500
    } | ConvertTo-Json -Depth 4
    
    Write-Host "  Calling OpenRouter (claude-sonnet-4.6)..." -ForegroundColor Gray
    
    $start = Get-Date
    $response = Invoke-RestMethod -Uri "https://openrouter.ai/api/v1/chat/completions" `
        -Method Post -Headers $headers -Body $body -TimeoutSec 120
    $elapsed = [math]::Round(((Get-Date) - $start).TotalSeconds, 1)
    
    $content = $response.choices[0].message.content
    $tokens = $response.usage.total_tokens
    
    Write-Host "  ⏱ $elapsed`s |  tokens: $tokens" -ForegroundColor Green
    
    # Print result with nice formatting
    Write-Host "`n  ┌─── RESULT ──────────────────────┐" -ForegroundColor Cyan
    $content.Split("`n") | ForEach-Object { 
        if ($_.Trim() -ne "") {
            Write-Host "  | $_" -ForegroundColor White
        }
    }
    Write-Host "  └────────────────────────────────┘" -ForegroundColor Cyan
    
    return @{ Content = $content; Tokens = $tokens; Time = $elapsed }
}

# ─── DEMO 1: OPPORTUNITY-SOLUTION TREE ────────────────────
Write-Host "`n" -NoNewline
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray
Write-Host "  DEMO 1: Opportunity-Solution Tree" -ForegroundColor Cyan -BackgroundColor DarkBlue
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray

$result1 = Invoke-Prompt `
    -SystemPrompt "You are a senior product manager. Follow the skill instructions step by step." `
    -UserPrompt @"
I'm a PM for a team collaboration tool. Our desired outcome is: 
"Increase weekly active team usage from 30% to 55% within 90 days."

Build an opportunity-solution tree. List 3-4 opportunities and for each suggest 2-3 solutions with the riskiest assumption.
"@ `
    -SkillPath "$SkillsDir\opportunity-solution-tree.md"

# ─── DEMO 2: PRD WRITER ───────────────────────────────────
Write-Host "`n" -NoNewline
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray
Write-Host "  DEMO 2: PRD Writer" -ForegroundColor Cyan -BackgroundColor DarkBlue
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray

$result2 = Invoke-Prompt `
    -SystemPrompt "You are a senior product manager. Write a structured PRD following the skill format exactly." `
    -UserPrompt @"
Write a PRD for an "AI-powered weekly project digest" feature. The feature would automatically summarize team activity and email team leads.

Include: problem statement, scope, requirements, success metrics, launch criteria.
"@ `
    -SkillPath "$SkillsDir\prd-writer.md"

# ─── DEMO 3: COMPETITIVE ANALYSIS ─────────────────────────
Write-Host "`n" -NoNewline
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray
Write-Host "  DEMO 3: Competitive Analysis" -ForegroundColor Cyan -BackgroundColor DarkBlue
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray

$result3 = Invoke-Prompt `
    -SystemPrompt "You are a senior product manager. Perform a detailed competitive analysis following the skill's framework." `
    -UserPrompt @"
Perform a competitive analysis for a new "async team updates" feature replacing daily standups.

Analyze: Range, StatusHero, Jira, Slack. Include competitor profiles, positioning map, and strategic recommendations.
"@ `
    -SkillPath "$SkillsDir\competitive-analysis.md"

# ─── SUMMARY ──────────────────────────────────────────────
Write-Host "`n" -NoNewline
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray
Write-Host "  DEMO COMPLETE — SUMMARY" -ForegroundColor Green -BackgroundColor DarkGreen
Write-Host "═══════════════════════════════════════════════" -ForegroundColor DarkGray

$totalTokens = $result1.Tokens + $result2.Tokens + $result3.Tokens
$totalTime = $result1.Time + $result2.Time + $result3.Time
$estCost = [math]::Round($totalTokens * 0.000003, 4)

Write-Host @"

  ┌─────────────────────────────────────────────┐
  │  ✅ 3/3 API calls successful                 │
  │  📊 $totalTokens tokens consumed                    │
  │  ⏱️  ${totalTime}s total time                        │
  │  💵 ~`$$estCost total cost                           │
  │                                             │
  │  Skills demonstrated:                       │
  │    • opportunity-solution-tree              │
  │    • prd-writer                             │
  │    • competitive-analysis                   │
  │                                             │
  │  32 more skills available — install with:   │
  │  npx uthy-legacy-os                         │
  └─────────────────────────────────────────────┘
"@ -ForegroundColor Green

Write-Host "`n  📁 Skills installed at: $SkillsDir" -ForegroundColor Gray
Write-Host "  📖 Docs: https://uthumany.github.io/uthy-legacy-os/" -ForegroundColor Gray

Write-Host "`n" -NoNewline
Write-Host "  ⏹  Press Win+Alt+R to STOP recording now!" -ForegroundColor Yellow -BackgroundColor DarkRed
Write-Host "`n  Press any key to exit..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
