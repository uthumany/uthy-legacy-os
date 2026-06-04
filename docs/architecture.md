# Architecture

## How Uthy Legacy OS Works

Uthy Legacy OS is built on the **SKILL.md open standard** — a portable, agent-agnostic format for packaging domain expertise. Every skill in the library is a `SKILL.md` file that any supporting AI agent can discover, load, and execute.

## The SKILL.md Format

```
skill-name/
├── SKILL.md              # Core instructions + YAML frontmatter
├── references/           # Deep-dive docs, frameworks (optional)
├── templates/            # Fillable document templates (optional)
└── samples/              # Example outputs (optional)
```

### Frontmatter (YAML)

Every `SKILL.md` starts with required metadata:

```yaml
---
name: skill-name           # Must match folder name
description: What and when to use (≤1024 chars)
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: discovery         # Which PM phase
    tags: [tag1, tag2]       # For discovery/search
    related_skills: [skill]  # Cross-reference
---
```

### Body (Markdown)

The body teaches the agent what to do:

| Section | Purpose |
|---------|---------|
| Overview | What the skill does and why it matters |
| When to Use | Trigger phrases for auto-activation + anti-triggers |
| Instructions | Step-by-step numbered guidance (agents follow sequences best) |
| Templates | References to fillable templates in the skill folder |
| Sample Output | Concrete example showing "what good looks like" |
| Common Pitfalls | Mistakes the agent should avoid |
| Verification Checklist | Post-task checklist for quality assurance |

## Three-Tier System

```
┌──────────────────────────────────────────────────┐
│  WORKFLOWS (4)                                    │
│  Cross-phase orchestration                        │
│  "Run a discovery sprint"                         │
│  Calls multiple skills in sequence                │
└──────────────────────────────────────────────────┘
                         ↓ orchestrates
┌──────────────────────────────────────────────────┐
│  SKILLS (30)                                      │
│  Self-contained PM expertise                      │
│  "Write a PRD"                                    │
│  Loads frameworks + templates                     │
└──────────────────────────────────────────────────┘
                         ↓ uses
┌──────────────────────────────────────────────────┐
│  TEMPLATES (6) + SAMPLES (5)                      │
│  Reusable documents + quality benchmarks          │
│  Agent fills templates based on skill guidance    │
└──────────────────────────────────────────────────┘
```

## Agent Discovery Flow

1. **Agent starts** and scans skill directories
2. **Agent reads** frontmatter description field of each skill
3. **User request** triggers semantic matching against descriptions
4. **Agent loads** matching skill's `SKILL.md` content
5. **Agent follows** instructions step-by-step
6. **Agent uses** templates to generate structured output
7. **Agent checks** verification checklist before delivering

## Compatibility

Uthy Legacy OS uses only standard Markdown and YAML frontmatter — no custom protocols, no plugins, no runtime dependencies. It works with any agent that supports SKILL.md discovery.

## Directory Layout

```
uthy-legacy-os/
├── skills/                    # All skills, organized by PM phase
│   ├── discovery/             # Phase folder
│   │   ├── customer-interviews/SKILL.md
│   │   ├── competitive-analysis/SKILL.md
│   │   └── ...                # 5 skills per phase
│   ├── problem-definition/
│   ├── solution-exploration/
│   ├── prd-and-stories/
│   ├── shipping/
│   ├── measuring/
│   └── improve/
├── workflows/                 # Multi-skill orchestration plans
├── templates/                 # Reusable document fill-ins
├── samples/                   # Realistic example outputs
├── scripts/                   # Validation and release tooling
└── docs/                      # Documentation site
```
