╔══════════════════════════════════════════════════════════╗
║                                                          ║
║     UTHY LEGACY OS — COMMANDS REFERENCE                  ║
║                                                          ║
║     How to install, open, and use the tool               ║
║                                                          ║
╚══════════════════════════════════════════════════════════╝

════════════════════════════════════════════════════════════
  1. INSTALL
════════════════════════════════════════════════════════════

  # Auto-detect your AI agent and install all 35 skills
  npx uthy-legacy-os

  # Or with other package managers
  pnpm dlx uthy-legacy-os
  bunx uthy-legacy-os

  # Or from the cloned repo
  bash install.sh

  # Or on Windows
  .\install.ps1


════════════════════════════════════════════════════════════
  2. VERIFY INSTALLATION
════════════════════════════════════════════════════════════

  # Check which skills were installed
  ls ~/.claude/skills/          # Claude Code
  ls ~/.cursor/skills/          # Cursor
  ls ~/.codex/skills/           # Codex CLI
  ls ~/.gemini/skills/          # Gemini CLI

  # Count installed skills (should show 35)
  ls ~/.claude/skills/*.md | wc -l

  # Read a skill to verify content
  head -20 ~/.claude/skills/prd-writer.md


════════════════════════════════════════════════════════════
  3. USE THE SKILLS WITH YOUR AI AGENT
════════════════════════════════════════════════════════════

  The skills are NOT a standalone app. After installation,
  they're loaded automatically by your AI agent when you
  ask PM-related questions. Just type:

  ┌─────────────────────────────────────────────────────┐
  │  🔍 DISCOVERY                                       │
  │                                                     │
  │  "Help me plan customer discovery interviews"       │
  │  "Run a competitive analysis on [company]"          │
  │  "Size the market for [product]"                    │
  │  "Walk me through an opportunity-solution tree"     │
  │  "I need to synthesize user research"               │
  ├─────────────────────────────────────────────────────┤
  │  🎯 PROBLEM DEFINITION                              │
  │                                                     │
  │  "Write a problem statement for [feature]"          │
  │  "Help me understand user jobs-to-be-done"          │
  │  "Create a proto-persona for [segment]"             │
  │  "Help me reframe this problem"                     │
  │  "Write an elevator pitch for [product]"            │
  ├─────────────────────────────────────────────────────┤
  │  💡 SOLUTION EXPLORATION                            │
  │                                                     │
  │  "Help me brainstorm solutions for [problem]"       │
  │  "Prioritize these features using RICE"             │
  │  "Design an experiment to test [hypothesis]"        │
  │  "What fidelity prototype should I build?"          │
  │  "Help me validate this concept with users"         │
  ├─────────────────────────────────────────────────────┤
  │  📝 PRDs & STORIES                                  │
  │                                                     │
  │  "Write a PRD for [feature]"                        │
  │  "Write user stories for [epic]"                    │
  │  "Write acceptance criteria for [story]"            │
  │  "Break this epic into stories"                     │
  │  "Translate this PRD for engineering"               │
  ├─────────────────────────────────────────────────────┤
  │  🚀 SHIPPING                                        │
  │                                                     │
  │  "Create a launch plan for [release]"               │
  │  "Write release notes for vX.Y"                     │
  │  "Build a go-to-market strategy"                    │
  │  "Plan a phased rollout"                            │
  │  "Draft a stakeholder update"                       │
  ├─────────────────────────────────────────────────────┤
  │  📊 MEASURING                                       │
  │                                                     │
  │  "Define metrics for [product] using AARRR"         │
  │  "Analyze this experiment results"                  │
  │  "Design a dashboard for [purpose]"                 │
  │  "What does this A/B test result mean?"             │
  │  "Define a north star metric for [product]"         │
  ├─────────────────────────────────────────────────────┤
  │  ♻️ IMPROVE                                         │
  │                                                     │
  │  "Facilitate a retrospective"                       │
  │  "Analyze user feedback for patterns"               │
  │  "Prioritize post-launch iterations"                │
  │  "Diagnose churn in [product]"                      │
  │  "Analyze the adoption funnel for [feature]"        │
  └─────────────────────────────────────────────────────┘


════════════════════════════════════════════════════════════
  4. RUN THE GUIDED WORKFLOWS
════════════════════════════════════════════════════════════

  Workflows orchestrate multiple skills across a full process.
  Ask your agent:

  "Run a product discovery sprint"
    → 1-2 week process: frame → research → synthesize → ideate → decide

  "Help me ship this feature"
    → 2-4 week process: spec → build → launch → measure

  "Let's do quarterly planning"
    → 1 week process: review → objectives → opportunities → plan → commit

  "Weekly product health review"
    → 30 min process: metrics → feedback → support → projects → decide


════════════════════════════════════════════════════════════
  5. RUN THE DEMO (test with OpenRouter)
════════════════════════════════════════════════════════════

  # Run the demo in the current terminal
  .\run-demo.ps1

  # Run the demo with recording (Steps Recorder)
  .\Record-Demo.ps1

  # Launch demo in a new window (no recording)
  .\Launch-Demo.bat

  # Launch demo + auto-record
  .\Launch-Demo-Recorded.bat


════════════════════════════════════════════════════════════
  6. VALIDATE & RELEASE
════════════════════════════════════════════════════════════

  # Validate all skill files (after editing)
  python scripts/validate-skills.py

  # Check release readiness
  python scripts/check-release.py

  # Publish to npm (after version bump)
  npm publish --access public


════════════════════════════════════════════════════════════
  7. QUICK REFERENCE — ALL CLI OPTIONS
════════════════════════════════════════════════════════════

  npx uthy-legacy-os                     # Install (auto-detect agent)
  npx uthy-legacy-os --help              # Show help
  npx uthy-legacy-os --list              # List detected agents
  npx uthy-legacy-os --target claude     # Install for specific agent
  npx uthy-legacy-os --target cursor
  npx uthy-legacy-os --target codex
  npx uthy-legacy-os --target gemini

  bash install.sh                        # Bash installer
  bash install.sh --target cursor        # Install for specific agent
  bash install.sh --help                 # Show help

  .\install.ps1                          # PowerShell installer
  .\install.ps1 -Target claude           # Install for specific agent

  pnpm dlx uthy-legacy-os                # pnpm install
  bunx uthy-legacy-os                    # bun install


════════════════════════════════════════════════════════════
  8. OPEN THE DOCS & DEMO REPLAY
════════════════════════════════════════════════════════════

  # Open the HTML terminal replay (works offline)
  start demo-recording.html

  # Or open in browser
  # Docs site: https://uthumany.github.io/uthy-legacy-os/
  # GitHub:    https://github.com/uthumany/uthy-legacy-os
  # npm:       https://www.npmjs.com/package/uthy-legacy-os
