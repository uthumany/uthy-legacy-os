# Contributing to Uthy Legacy OS

Thanks for wanting to make product management better for everyone. Here's how to contribute a skill, fix a bug, or improve the docs.

## Quick Start

```bash
git clone https://github.com/uthumany/uthy-legacy-os.git
cd uthy-legacy-os
python scripts/validate-skills.py   # check everything is clean
```

## Adding a New Skill

1. **Choose a phase** — discovery, problem-definition, solution-exploration, prd-and-stories, shipping, measuring, or improve
2. **Create the folder** — `skills/<phase>/<your-skill-name>/`
3. **Write SKILL.md** — see format below
4. **Test locally** — `python scripts/validate-skills.py`
5. **Open a PR**

### SKILL.md Format

```markdown
---
name: your-skill-name
description: Short description of what it does and when to use it.
version: 1.0.0
author: Your Name
license: MIT
metadata:
  hermes:
    tags: [pm, discovery, research]
    related_skills: [skill-a, skill-b]
---

# Your Skill Name

## Overview
1–2 paragraphs explaining the skill and why it matters.

## When to Use
- Use this when...
- Good for scenarios like...
- Don't use for...

## Instructions
Clear, numbered steps the agent should follow. Include:
- Frameworks and methods
- Questions to ask the user
- Output format
- Quality standards

## Templates
If applicable, reference templates in the `references/` folder.

## Sample Output
Show what a great result looks like.

## Common Pitfalls
- Mistake 1 and how to avoid it
- Mistake 2 and how to avoid it

## Verification Checklist
- [ ] Did I ask about user goals?
- [ ] Did I validate assumptions?
- [ ] Is the output actionable?
```

### Quality Standards

- **Description** must include trigger phrases so agents auto-activate
- **Instructions** must be numbered steps (agents follow sequences better)
- **Sample output** is strongly recommended
- **Pitfalls** section is required — agents don't know what they don't know

## Fixing a Bug

Found a typo, broken reference, or outdated framework? Open a PR with:

1. What's wrong
2. What the fix is
3. Validation output

## Docs

The docs site lives in `docs/`. It's plain Markdown with a `_config.yml` for GitHub Pages. Improve any page and submit a PR.

## Code of Conduct

Be excellent to each other. This is a skill library for product people — we believe in shipping quality, learning continuously, and lifting others up.
