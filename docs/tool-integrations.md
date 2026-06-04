# Tool Integrations

How Uthy Legacy OS integrates with each major AI coding agent.

---

## SKILL.md Support Matrix

| Agent | Auto-discovers | Sub-directory support | References/scripts | Manual invoke |
|-------|:---:|:---:|:---:|:---:|
| Claude Code | ✅ | ✅ | ✅ | `/name` |
| Cursor | ✅ | ✅ | ✅ | `/name` |
| Codex CLI | ✅ | ✅ | ✅ | `/name` |
| Gemini CLI | ✅ | ✅ | ✅ | `/name` |
| Copilot | ✅ | ✅ | ✅ | `/name` |
| Windsurf | ✅ | ✅ | ✅ | `/name` |
| Hermes Agent | ✅ | ✅ | ✅ | `skill_view()` |
| Roo Code | ✅ | ✅ | ✅ | `/name` |
| OpenClaw | ✅ | ✅ | ✅ | `/name` |

## Install Methods

| Method | Command | Platform |
|--------|---------|----------|
| **npm** | `npx uthy-legacy-os` | Linux, macOS, Windows (requires Node.js) |
| **pnpm** | `pnpm dlx uthy-legacy-os` | Linux, macOS, Windows (requires pnpm) |
| **bun** | `bunx uthy-legacy-os` | Linux, macOS, Windows (requires bun) |
| **PowerShell** | `.\install.ps1` | Windows native |
| **Bash** | `bash install.sh` | Linux, macOS, Git Bash on Windows |

All five installers do the same thing — the one you choose is a matter of what's already on your machine.

## Supported Skill Directories

Agents automatically discover skills from these locations:

| Agent | User-level (global) | Project-level |
|-------|-------------------|---------------|
| Claude Code | `~/.claude/skills/` | `.claude/skills/` |
| Cursor | `~/.cursor/skills/` | `.cursor/skills/` |
| Codex CLI | `~/.codex/skills/` | `.codex/skills/` |
| Gemini CLI | `~/.gemini/skills/` | `.gemini/skills/` |
| Copilot | N/A | `.github/skills/` |
| Windsurf | `~/.windsurf/skills/` | `.windsurf/skills/` |
| Hermes Agent | `profile/skills/` | N/A |
| Roo Code | `~/.roomodes/skills/` | `.roomodes/skills/` |

## Cross-Compatibility Notes

All Uthy Legacy OS skills are written in **vanilla Markdown with standard YAML frontmatter**. They use no tool-specific syntax, hooks, or features. This means they work across ALL agents that support the SKILL.md standard with no modifications.

However, some agents support **extended features** that Uthy skills optionally use:

### Claude Code Extras
- `context: fork` — Run a skill in a sub-agent sandbox (not used by default)
- `allowed-tools` — Restrict which tools the skill can use (not set by default)
- `hooks` — Event-driven triggers (not set by default)

### Cursor Extras
- `paths` — Scope skills to specific file patterns (not set by default)
- `disable-model-invocation` — Manual-only activation (not set by default)

### Hermes Agent Extras
- `sub_skills` — Declare which sub-skills a workflow orchestrates

## Reporting Issues

If a skill doesn't work correctly in your agent, [open an issue](https://github.com/uthumany/uthy-legacy-os/issues) with:
- Agent name and version
- Which skill
- What happened vs. what you expected
