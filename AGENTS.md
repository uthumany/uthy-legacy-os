# AGENTS.md — Uthy Legacy OS

## Repo Overview
Open-source library of 30 product management skills + 4 guided workflows for AI coding agents (Claude Code, Cursor, Codex, Gemini CLI, Copilot, etc.). Each skill is a SKILL.md file with YAML frontmatter.

## Project Structure
- `skills/<phase>/<skill-name>/SKILL.md` — individual skills
- `workflows/<name>/SKILL.md` — multi-skill orchestration workflows
- `templates/` — reusable document templates
- `samples/` — realistic sample outputs
- `docs/` — documentation site (GitHub Pages)
- `scripts/` — validation and release tooling

## Conventions
- Every skill must have `name`, `description`, `version`, `author` in YAML frontmatter
- `name` must match parent folder name
- `description` max 1024 chars
- Skills must include: Overview, When to Use, Instructions, Pitfalls
- Templates must have clear `{{placeholder}}` markers
- All .md files use UTF-8, LF line endings

## Validation
Run before committing: `python scripts/validate-skills.py`

## PR Guidelines
- One skill per PR unless they're related
- Include validation output in PR description
- Reference the skill phase in PR title: `[discovery] Add customer-interviews skill`
- Update skill-catalog.md if adding a new skill
