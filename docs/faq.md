# FAQ

## General

**Q: What is Uthy Legacy OS?**
A: An open-source library of 30 product management skills for AI coding agents. Each skill teaches the agent how to perform a specific PM task — from customer interviews to PRD writing to churn analysis.

**Q: Who is this for?**
A: Product managers, founders, and anyone who works with product decisions and wants AI assistance with structured, framework-backed methodologies.

**Q: Do I need to be technical to use this?**
A: You need to be able to run a terminal command to install the skills, but after that you interact through natural language with your AI agent.

## Installation

**Q: What install methods are available?**
A: Five options — pick whatever you already have on your machine:

| Method | Command | Requires |
|--------|---------|----------|
| **npm** | `npx uthy-legacy-os` | Node.js |
| **pnpm** | `pnpm dlx uthy-legacy-os` | pnpm |
| **bun** | `bunx uthy-legacy-os` | bun |
| **PowerShell** | `.\install.ps1` | Windows |
| **Bash** | `bash install.sh` | Linux, macOS, Git Bash |

All five produce the same result — skills installed into your agent's skill directory.

**Q: Can I install only specific skills?**
A: Yes. Instead of symlinking the entire skills directory, symlink only the skill folders you need:
```bash
ln -s ~/.uthy-legacy-os/skills/discovery/customer-interviews ~/.claude/skills/
```

**Q: Can I use this without git?**
A: Yes. Download the ZIP from GitHub, extract it, and run `bash install.sh` from the extracted folder.

**Q: Do I need an API key?**
A: No. The skills themselves are free and open-source. You only need whatever API key your AI agent requires.

## Skills

**Q: Can I customize a skill?**
A: Absolutely. Skills are Markdown files. Edit them to match your team's processes, add your own templates, or combine frameworks.

**Q: How are skills activated?**
A: Most agents auto-activate skills based on your request. For example, if you say "Help me write a PRD," the agent automatically loads the prd-writer skill. You can also manually invoke skills with `/skill-name` in most agents.

**Q: Will these skills work with my existing agent setup?**
A: If your agent supports the SKILL.md standard (Claude Code, Cursor, Codex CLI, Gemini CLI, Copilot, Windsurf, Roo Code, OpenClaw, Hermes Agent), yes.

**Q: Can I contribute a skill?**
A: Yes! See CONTRIBUTING.md. We welcome new skills, improvements to existing ones, and better sample outputs.

## Workflows

**Q: What's the difference between a skill and a workflow?**
A: A skill is a focused, single-task capability (e.g., "write a problem statement"). A workflow orchestrates multiple skills across an entire process (e.g., "run a 1-week discovery sprint").

**Q: How long does each workflow take?**
A: Discovery sprint: 1-2 weeks. Feature ship cycle: 2-4 weeks. Quarterly planning: 1 week. Health review: 30 minutes weekly.

## Troubleshooting

**Q: My agent doesn't find the skills**
A: Check that skills are in the correct directory for your agent (see getting-started.md). Run `ls ~/.claude/skills/` (or equivalent) to verify files exist. If symlinks are broken, re-run the install script.

**Q: The skill content looks wrong**
A: Run the validator: `python scripts/validate-skills.py`. If it passes, the format is correct — the issue may be with your agent's skill support.

**Q: Can I use these offline?**
A: Yes. All skills are local Markdown files. No internet needed once installed.
