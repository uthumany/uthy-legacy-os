# ╔══════════════════════════════════════╗
# ║       UTHY LEGACY OS — v1.0.0        ║
# ║  Product Management Skills for AI     ║
# ╚══════════════════════════════════════╝

> **30 battle-tested PM skills + 4 guided workflows** for Claude Code, Cursor, Codex, Gemini CLI, Copilot, and any AI agent that speaks SKILL.md.
>
> *"Skills provide expertise; workflows provide momentum."*

---

## What is Uthy Legacy OS?

A portable, open‑source library of product management skills that turns any AI coding agent into a capable PM partner. Each skill is a `SKILL.md` file — a standard format supported by Claude Code, Cursor, Codex CLI, Gemini CLI, Copilot, Windsurf, and 20+ other agents.

**Install once. Use everywhere. Never start from scratch again.**

### What's Inside

| Phase | Skills | Covers |
|-------|--------|--------|
| 🔍 Discovery | 5 skills | Customer interviews, competitive analysis, market sizing, user research, opportunity trees |
| 🎯 Problem Definition | 5 skills | Problem statements, JTBD, personas, framing, elevator pitches |
| 💡 Solution Exploration | 5 skills | Brainstorming, hypothesis prioritization, experiment design, prototyping, validation |
| 📝 PRDs & Stories | 5 skills | PRD writer, user stories, acceptance criteria, epic breakdown, spec bridges |
| 🚀 Shipping | 5 skills | Launch plans, release notes, GTM, rollout strategy, stakeholder comms |
| 📊 Measuring | 5 skills | Metrics frameworks, experiment analysis, dashboards, A/B tests, north stars |
| ♻️ Improve | 5 skills | Retros, feedback analysis, iteration prioritization, churn, adoption funnels |
| 🔄 Workflows | 4 workflows | Discovery sprint, ship cycle, quarterly planning, health review |

---

## Quick Install

Choose your weapon — all four installers do the same thing.

### 🟢 npm (Node.js)
```bash
npx uthy-legacy-os
# or install globally once:
npm install -g uthy-legacy-os && uthy-legacy-os
```

### 🔵 pnpm
```bash
pnpm dlx uthy-legacy-os
```

### 🟣 bun
```bash
bunx uthy-legacy-os
```

### 🟡 PowerShell (Windows native)
```powershell
.\install.ps1
```

### 🔴 Bash (Linux / macOS / Git Bash)
```bash
git clone https://github.com/uthumany/uthy-legacy-os.git ~/.uthy-legacy-os
cd ~/.uthy-legacy-os && bash install.sh
```

### Per‑Agent Manual Install

If you prefer to symlink manually:

**Claude Code**
```bash
mkdir -p ~/.claude/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.claude/skills/
```

**Cursor**
```bash
mkdir -p ~/.cursor/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.cursor/skills/
```

**Codex CLI**
```bash
mkdir -p ~/.codex/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.codex/skills/
```

**Hermes Agent**
```bash
hermes curator install url https://github.com/uthumany/uthy-legacy-os
```

**Gemini CLI**
```bash
mkdir -p ~/.gemini/skills
ln -s ~/.uthy-legacy-os/skills/*/* ~/.gemini/skills/
```

---

## How It Works

Each skill is a folder containing:
```
skill-name/
├── SKILL.md              # Instructions + YAML frontmatter (the core)
├── references/           # Deep-dive docs, frameworks, checklists
├── templates/            # Reusable templates the agent can fill in
└── samples/              # Realistic outputs that show "what good looks like"
```

When you ask your agent to "write a PRD" or "plan a discovery sprint", the agent's skill system automatically finds the matching skill and loads it. The skill teaches the agent:

- **What to do** — step‑by‑step guidance
- **How to do it** — frameworks, templates, pro tips
- **What good looks like** — sample outputs and quality standards
- **What to avoid** — pitfalls and anti‑patterns

---

## Skill Catalog (30 Skills)

| Skill | Phase | What It Does |
|-------|-------|-------------|
| `customer-interviews` | Discovery | Plan and conduct customer discovery interviews |
| `competitive-analysis` | Discovery | Deep‑dive competitive positioning analysis |
| `market-sizing` | Discovery | TAM/SAM/SOM with top‑down and bottom‑up |
| `user-research` | Discovery | Synthesis of qualitative and quantitative research |
| `opportunity-solution-tree` | Discovery | Map opportunities to potential solutions (Teresa Torres) |
| `problem-statement` | Problem | Frame the customer problem with evidence |
| `jobs-to-be-done` | Problem | Understand customer goals (JTBD framework) |
| `proto-persona` | Problem | Hypothesis‑driven personas before research |
| `problem-framing` | Problem | Reframe problems to unlock better solutions |
| `elevator-pitch` | Problem | One‑sentence value propositions (Geoffrey Moore) |
| `solution-brainstorming` | Solutions | Structured ideation with constraints |
| `hypothesis-prioritization` | Solutions | RICE, ICE, and value‑effort quadrants |
| `experiment-design` | Solutions | Design lightweight experiments (PoL method) |
| `prototype-planning` | Solutions | Plan what to prototype and at what fidelity |
| `validation-interview` | Solutions | Test prototypes with customer interviews |
| `prd-writer` | PRD & Stories | Write comprehensive PRDs from research |
| `user-story-writer` | PRD & Stories | Stories with acceptance criteria (Gherkin) |
| `acceptance-criteria` | PRD & Stories | Write clear, testable criteria (Given/When/Then) |
| `epic-breakdown` | PRD & Stories | Split epics into deliverable stories |
| `technical-spec-bridge` | PRD & Stories | Translate PRDs for engineering audiences |
| `launch-plan` | Shipping | End‑to‑end launch checklists and timing |
| `release-notes` | Shipping | Write release notes for different audiences |
| `go-to-market` | Shipping | GTM strategy for new features/products |
| `rollout-strategy` | Shipping | Phased rollout plans with rollback |
| `stakeholder-communication` | Shipping | Status updates, exec briefs, and dashboards |
| `metrics-framework` | Measuring | AARRR, HEART, and custom metric trees |
| `experiment-analysis` | Measuring | Analyze experiment data and draw conclusions |
| `dashboard-design` | Measuring | Design metric dashboards that drive action |
| `ab-test-reader` | Measuring | Interpret A/B test results with confidence |
| `north-star-metrics` | Measuring | Define and align around north star metrics |
| `retrospective` | Improve | Structured retros (Start/Stop/Continue, 4Ls) |
| `feedback-analysis` | Improve | Synthesize user feedback into insights |
| `iteration-prioritization` | Improve | Prioritise post‑launch improvements |
| `churn-analysis` | Improve | Diagnose churn and identify retention levers |
| `adoption-funnel` | Improve | Analyze and improve feature adoption |

---

## Guided Workflows

Beyond individual skills, Uthy Legacy OS includes **4 cross‑phase workflows** that orchestrate multiple skills together:

| Workflow | Duration | Skills Used |
|----------|----------|-------------|
| `product-discovery-sprint` | 1–2 weeks | 8 skills across discovery → problem → solutions |
| `feature-ship-cycle` | 2–4 weeks | 10 skills from PRD → shipping → measuring |
| `quarterly-planning` | 1 week | 6 skills for strategic planning |
| `product-health-review` | Weekly | 4 skills for ongoing health monitoring |

Each workflow is a `SKILL.md` that acts as a sub‑agent orchestrator, calling other skills in sequence with handoff criteria.

---

## Project Structure

```
uthy-legacy-os/
├── README.md               # You are here
├── AGENTS.md               # Instructions for AI contributors
├── LICENSE                  # MIT
├── CONTRIBUTING.md          # How to add a skill
├── install.sh               # Bash installer (Linux/macOS/Git Bash)
├── install.ps1               # PowerShell installer (Windows native)
├── bin/cli.js                # CLI entry point (npm/pnpm/bun)
├── package.json              # npm package metadata
├── skills/                  # 30 skills in 6 phases + 4 workflows
├── templates/               # Reusable document templates
├── samples/                 # Realistic sample outputs
├── docs/                    # Documentation site (GitHub Pages)
├── scripts/                 # Validation and release tooling
└── .github/workflows/       # CI/CD
```

---

## Development & Contribution

We welcome contributions! See `CONTRIBUTING.md` for:

- Skill authoring guide
- Quality standards
- Validation checks
- PR workflow

Before submitting, run the validator:
```bash
python scripts/validate-skills.py
```

---

## License

MIT — free to use, fork, and share. Attribution appreciated but not required.

---

## About

Built by **Uthuman & Co** for product managers who believe AI shouldn't just write code — it should help you think better about what to build.

[github.com/uthumany/uthy-legacy-os](https://github.com/uthumany/uthy-legacy-os)
