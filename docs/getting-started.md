# Getting Started with Uthy Legacy OS

Install skills with the tool that fits your workflow. All four installers do the same thing — copy or symlink skills into your AI agent's skill directory.

---

## 🟢 npm Install

If you have Node.js installed, this is the fastest way:

```bash
# Run once — no install needed
npx uthy-legacy-os

# Or install globally
npm install -g uthy-legacy-os
uthy-legacy-os
```

The CLI auto-detects Claude Code, Cursor, Codex CLI, Gemini CLI, and other agents. Or specify a target:

```bash
npx uthy-legacy-os --target claude
npx uthy-legacy-os --target cursor
npx uthy-legacy-os --target codex
npx uthy-legacy-os --target gemini
```

Flags:
- `--target <agent>` — install for a specific agent
- `--list` — just show detected agents
- `--help` — full usage

---

## 🔵 pnpm Install

```bash
pnpm dlx uthy-legacy-os
```

Supports all the same flags:

```bash
pnpm dlx uthy-legacy-os --target cursor
```

---

## 🟣 bun Install

```bash
bunx uthy-legacy-os
```

bun is notably fast for one-shot `bunx` invocations.

```bash
bunx uthy-legacy-os --target gemini
```

---

## 🟡 PowerShell (Windows native)

For Windows users who prefer native PowerShell over Git Bash:

```powershell
# From the repo directory
.\install.ps1

# Install for a specific agent
.\install.ps1 -Target claude
.\install.ps1 -Target cursor
.\install.ps1 -Target codex
.\install.ps1 -Target gemini
```

Parameters:
- `-Target <agent>` — install for one agent: claude, cursor, codex, gemini, windsurf, copilot, or all (default)
- `-Verbose` — detailed output

The PowerShell installer **copies** files (not symlinks) because Windows handles symlinks differently depending on the version and permissions. Skills are installed as standalone copies that agents can read directly.

---

## 🔴 Bash (Linux / macOS / Git Bash on Windows)

```bash
git clone https://github.com/uthumany/uthy-legacy-os.git ~/.uthy-legacy-os
cd ~/.uthy-legacy-os && bash install.sh
```

Or from a downloaded copy:

```bash
cd ~/uthy-legacy-os && bash install.sh
```

Target a specific agent:

```bash
bash install.sh --target cursor
```

Flags:
- `--target <agent>` — install for a specific agent (claude, cursor, codex, gemini, windsurf, copilot, roo, manual)
- `--list` — show detected agents
- `--help` — full usage

---

## Per-Agent Setup (Manual)

If you prefer manual control, symlink or copy what you need.

### Claude Code

Claude Code discovers skills from `~/.claude/skills/` and `.claude/skills/`.

```bash
# Global (all projects)
mkdir -p ~/.claude/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.claude/skills/

# Per-project
mkdir -p .claude/skills
ln -s ~/.uthy-legacy-os/skills/discovery/customer-interviews .claude/skills/
```

**Usage**: Type "I need to write a PRD" or "Help me plan customer interviews" and Claude Code auto-activates the matching skill. Or type `/` to browse available skills.

---

### Cursor

Cursor discovers skills from `~/.cursor/skills/` (global) or `.cursor/skills/` (project-level).

```bash
# Global
mkdir -p ~/.cursor/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.cursor/skills/

# Per-project
mkdir -p .cursor/skills
ln -s ~/.uthy-legacy-os/skills/discovery .cursor/skills/
```

**Usage**: Skills are automatically discovered by Cursor Agent. Type a request like "Create user stories for this feature" and the matching skill loads. You can also manually invoke via `/` in agent chat.

---

### Codex CLI (OpenAI)

Codex reads skills from `~/.codex/skills/`.

```bash
mkdir -p ~/.codex/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.codex/skills/
```

**Usage**: Start Codex CLI and ask for PM tasks. Codex auto-discovers skills and activates them on demand. Skills layer with your `AGENTS.md` instructions.

---

### Gemini CLI (Google)

```bash
mkdir -p ~/.gemini/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.gemini/skills/
```

**Usage**: Ask Gemini CLI "Run a competitive analysis" or "Write an experiment plan" and the matching skill loads.

---

### GitHub Copilot

```bash
mkdir -p .github/skills
ln -s ~/.uthy-legacy-os/skills/*/* .github/skills/
```

---

### Hermes Agent

```bash
hermes curator install url https://github.com/uthumany/uthy-legacy-os

# Or install from local directory
hermes curator install dir ./skills
```

---

### Windsurf

```bash
mkdir -p ~/.windsurf/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.windsurf/skills/
```

---

### Roo Code

```bash
mkdir -p ~/.roomodes/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.roomodes/skills/
```

---

## Using the Workflows

Workflows are multi-skill orchestration plans installed alongside skills. After installation, ask your agent:

- **"Run a product discovery sprint"** — Launches the 5-day discovery workflow
- **"Help me plan our quarterly product review"** — Launches the quarterly planning workflow
- **"Let's do a weekly product health check"** — Launches the health review workflow
- **"I need to ship this feature"** — Launches the feature ship cycle workflow

Each workflow orchestrates multiple skills in sequence with handoff criteria between phases.

---

## Verifying Installation

```bash
# Check files exist
ls ~/.claude/skills/   # or ~/.cursor/skills/, ~/.codex/skills/, etc.

# Or ask your agent
# > "What product management skills do you have available?"
```

You should see skill files for all phases: customer-interviews, competitive-analysis, problem-statement, prd-writer, launch-plan, metrics-framework, retrospective, etc. (35 skills + 4 workflows total).
