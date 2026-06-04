# ╔══════════════════════════════════════╗
# ║       UTHY LEGACY OS  —  Docs        ║
# ║  Product Management Skills for AI    ║
# ╚══════════════════════════════════════╝

> **30 battle-tested PM skills + 4 guided workflows** for AI coding agents.
>
> Discover. Define. Explore. Spec. Ship. Measure. Improve.

---

## What is Uthy Legacy OS?

Uthy Legacy OS is an **open‑source library of Product Management skills** that turns any AI coding agent into a capable PM partner. Each skill is a portable `SKILL.md` file — an open standard supported by Claude Code, Cursor, Codex CLI, Gemini CLI, Copilot, Windsurf, and 20+ other agent tools.

**Install once. Use everywhere. Never start from scratch.**

## The PM Lifecycle

```
🔍 Discovery → 🎯 Problem Definition → 💡 Solution Exploration 
→ 📝 PRDs & Stories → 🚀 Shipping → 📊 Measuring → ♻️ Improve
```

Each phase has **5 battle-tested skills** covering frameworks, templates, and step‑by‑step guidance.

## Quick Start

```bash
git clone https://github.com/uthumany/uthy-legacy-os.git
cd uthy-legacy-os
bash install.sh
```

Or install per‑agent — see [Getting Started](/getting-started) for details.

## Why Agent Skills?

Agent skills teach AI assistants **how** to do something, not just **what** to do. Unlike a static prompt or a PDF, a skill:

- **Teaches frameworks** — Step‑by‑step guidance with real methods (JTBD, RICE, AARRR, OST, etc.)
- **Includes templates** — Ready‑to‑fill documents the agent can generate
- **Shows what good looks like** — Sample outputs set the quality bar
- **Warns about pitfalls** — Agents learn what NOT to do

## Skill Catalog

| Phase | Skills |
|-------|--------|
| 🔍 Discovery | customer-interviews, competitive-analysis, market-sizing, user-research, opportunity-solution-tree |
| 🎯 Problem Definition | problem-statement, jobs-to-be-done, proto-persona, problem-framing, elevator-pitch |
| 💡 Solution Exploration | solution-brainstorming, hypothesis-prioritization, experiment-design, prototype-planning, validation-interview |
| 📝 PRDs & Stories | prd-writer, user-story-writer, acceptance-criteria, epic-breakdown, technical-spec-bridge |
| 🚀 Shipping | launch-plan, release-notes, go-to-market, rollout-strategy, stakeholder-communication |
| 📊 Measuring | metrics-framework, experiment-analysis, dashboard-design, ab-test-reader, north-star-metrics |
| ♻️ Improve | retrospective, feedback-analysis, iteration-prioritization, churn-analysis, adoption-funnel |

[Full catalog →](/skill-catalog)

## Guided Workflows

Beyond individual skills, 4 cross‑phase workflows orchestrate multiple skills:

| Workflow | Duration | What It Does |
|----------|----------|-------------|
| [**Product Discovery Sprint**](/workflows/product-discovery-sprint) | 1-2 weeks | End‑to‑end discovery: frame → research → synthesize → ideate → decide |
| [**Feature Ship Cycle**](/workflows/feature-ship-cycle) | 2-4 weeks | Spec → build → launch → measure |
| [**Quarterly Planning**](/workflows/quarterly-planning) | 1 week | Review → objective → opportunity → plan → communicate |
| [**Product Health Review**](/workflows/product-health-review) | Weekly | Metrics → feedback → support → projects → decide |

## Templates

6 reusable document templates at `templates/`:

- PRD Template
- User Story Template
- Experiment Card Template
- Launch Checklist Template
- Retrospective Template
- Opportunity Canvas Template

## Tool Integrations

Uthy Legacy OS works with any agent that supports the `SKILL.md` standard:

- **Claude Code** — ~/.claude/skills/
- **Cursor** — ~/.cursor/skills/ or .cursor/skills/
- **Codex CLI** — ~/.codex/skills/
- **Gemini CLI** — ~/.gemini/skills/
- **Copilot** — .github/skills/
- **Hermes Agent** — `hermes curator install`
- **Windsurf** — .windsurf/skills/
- **Roo Code** — .roomodes/skills/

[Installation guides →](/getting-started)

## Project Structure

```
uthy-legacy-os/
├── README.md                  # Main intro
├── AGENTS.md                  # AI contributor instructions
├── LICENSE                    # MIT
├── CONTRIBUTING.md            # How to add a skill
├── install.sh                 # One‑line installer
├── package.json               # npm metadata
├── skills/                    # 30 skills in 7 phases
├── workflows/                 # 4 multi‑step workflows
├── templates/                 # 6 reusable templates
├── samples/                   # 5 realistic sample outputs
├── docs/                      # Documentation (you are here)
├── scripts/                   # Validation tooling
└── .github/workflows/         # CI/CD
```

## Contributing

Want to add a skill, fix a bug, or improve docs? See [CONTRIBUTING.md](https://github.com/uthumany/uthy-legacy-os/blob/main/CONTRIBUTING.md) on GitHub.

---

Built by **Uthuman & Co** — AI agents that help you think better about what to build.
[github.com/uthumany/uthy-legacy-os](https://github.com/uthumany/uthy-legacy-os)
