#!/bin/bash
# Uthy Legacy OS — One-line Installer
# Installs all 35 PM skills + 4 workflows for Claude Code, Cursor, Codex CLI, Gemini CLI, and more.
#
# Usage:
#   bash install.sh                    # auto-detect & install
#   bash install.sh --target claude    # specific agent
#   bash install.sh --help             # show help
#
# Also available:
#   PowerShell: .\install.ps1          # Windows
#   npm:        npx uthy-legacy-os     # any OS with Node
#   pnpm:       pnpm dlx uthy-legacy-os
#   bun:        bunx uthy-legacy-os

set -e

BOLD='\033[1m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

show_help() {
  echo ""
  echo "Usage: bash install.sh [options]"
  echo ""
  echo "Options:"
  echo "  --target <agent>   Install for a specific agent"
  echo "  --list             List detected agents"
  echo "  --help             Show this help"
  echo ""
  echo "Agents: claude, cursor, codex, gemini, windsurf, copilot, roo"
  echo ""
  echo "Alternative install methods:"
  echo "  PowerShell: .\install.ps1"
  echo "  npm:        npx uthy-legacy-os"
  echo "  pnpm:       pnpm dlx uthy-legacy-os"
  echo "  bun:        bunx uthy-legacy-os"
  echo ""
  exit 0
}

# Parse args
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  show_help
fi

SPECIFIC_TARGET=""
if [[ "$1" == "--target" && -n "$2" ]]; then
  SPECIFIC_TARGET="$2"
fi

echo ""
echo "╔═══════════════════════════════════════════════╗"
echo "║       UTHY LEGACY OS — PM Skills Install      ║"
echo "║    35 skills · 4 workflows · 1 command        ║"
echo "╚═══════════════════════════════════════════════╝"
echo ""

# Detect which package managers are available
PKG_MANAGERS=()
command -v npm &>/dev/null && PKG_MANAGERS+=("npm")
command -v pnpm &>/dev/null && PKG_MANAGERS+=("pnpm")
command -v bun &>/dev/null && PKG_MANAGERS+=("bun")

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$SCRIPT_DIR/skills"
WF_DIR="$SCRIPT_DIR/workflows"

install_skills() {
  local target_dir="$1"
  local label="$2"
  
  mkdir -p "$target_dir"
  
  local count=0
  for skill_path in "$SKILLS_DIR"/*/*/; do
    [ -d "$skill_path" ] || continue
    local skill_name="$(basename "$skill_path")"
    if [ -f "$skill_path/SKILL.md" ]; then
      ln -sf "$skill_path/SKILL.md" "$target_dir/${skill_name}.md" 2>/dev/null && count=$((count + 1))
    fi
  done
  
  for wf_path in "$WF_DIR"/*/; do
    [ -d "$wf_path" ] || continue
    local wf_name="$(basename "$wf_path")"
    if [ -f "$wf_path/SKILL.md" ]; then
      ln -sf "$wf_path/SKILL.md" "$target_dir/${wf_name}.md" 2>/dev/null
    fi
  done
  
  echo -e "  ${GREEN}✓${NC} $count skills → $label"
}

# Agent detection
declare -A AGENT_DIRS
AGENT_DIRS["Claude Code"]="$HOME/.claude/skills"
AGENT_DIRS["Cursor"]="$HOME/.cursor/skills"
AGENT_DIRS["Codex CLI"]="$HOME/.codex/skills"
AGENT_DIRS["Gemini CLI"]="$HOME/.gemini/skills"
AGENT_DIRS["Windsurf"]="$HOME/.windsurf/skills"
AGENT_DIRS["Copilot"]="$(pwd)/.github/skills"

detected=()
for agent in "${!AGENT_DIRS[@]}"; do
  local_dir="$(dirname "${AGENT_DIRS[$agent]}")"
  if [ -d "$local_dir" ]; then
    detected+=("$agent")
  fi
done

# Also check for Hermes Agent
command -v hermes &>/dev/null && detected+=("Hermes Agent")

# Announce package managers
if [ ${#PKG_MANAGERS[@]} -gt 0 ]; then
  echo -e "${CYAN}Detected package managers: ${PKG_MANAGERS[*]}${NC}"
fi

if [ ${#detected[@]} -eq 0 ]; then
  echo -e "${YELLOW}No supported agent detected. Installing globally for manual symlink...${NC}"
  detected+=("Manual")
fi

echo -e "${CYAN}Detected agents: ${detected[*]}${NC}"
echo ""

echo -e "${BOLD}Installing skills...${NC}"

# Handle specific target
if [ -n "$SPECIFIC_TARGET" ]; then
  case "$SPECIFIC_TARGET" in
    claude) install_skills "$HOME/.claude/skills" "Claude Code (~/.claude/skills/)" ;;
    cursor) install_skills "$HOME/.cursor/skills" "Cursor (~/.cursor/skills/)" ;;
    codex)  install_skills "$HOME/.codex/skills"  "Codex CLI (~/.codex/skills/)" ;;
    gemini) install_skills "$HOME/.gemini/skills" "Gemini CLI (~/.gemini/skills/)" ;;
    windsurf) install_skills "$HOME/.windsurf/skills" "Windsurf (~/.windsurf/skills/)" ;;
    copilot) install_skills "$(pwd)/.github/skills" "Copilot (.github/skills/)" ;;
    roo)    install_skills "$HOME/.roomodes/skills" "Roo Code (~/.roomodes/skills/)" ;;
    manual) install_skills "$HOME/.uthy-skills" "Manual (~/.uthy-skills/)" ;;
    *)
      echo -e "${YELLOW}Unknown agent: $SPECIFIC_TARGET${NC}"
      echo "Available: claude, cursor, codex, gemini, windsurf, copilot, roo, manual"
      exit 1
      ;;
  esac
else
  for agent in "${detected[@]}"; do
    case "$agent" in
      "Claude Code") install_skills "$HOME/.claude/skills" "Claude Code (~/.claude/skills/)" ;;
      "Cursor")      install_skills "$HOME/.cursor/skills" "Cursor (~/.cursor/skills/)" ;;
      "Codex CLI")   install_skills "$HOME/.codex/skills"  "Codex CLI (~/.codex/skills/)" ;;
      "Gemini CLI")  install_skills "$HOME/.gemini/skills" "Gemini CLI (~/.gemini/skills/)" ;;
      "Windsurf")    install_skills "$HOME/.windsurf/skills" "Windsurf (~/.windsurf/skills/)" ;;
      "Copilot")     install_skills "$(pwd)/.github/skills" "Copilot (.github/skills/)" ;;
      "Hermes Agent")
        echo -e "  ${YELLOW}→${NC} Hermes Agent: run 'hermes curator install url <path>' for full support"
        echo -e "    Or: hermes curator install dir $SCRIPT_DIR/skills"
        ;;
      "Manual")      install_skills "$HOME/.uthy-skills" "Manual (~/.uthy-skills/)"
        echo -e "  ${YELLOW}Tip:${NC} Symlink ~/.uthy-skills/ into your agent's skill directory"
        ;;
    esac
  done
fi

echo ""
echo -e "${BOLD}${GREEN}✓ Installation complete!${NC}"
echo ""
echo -e "You can now ask your agent:"
echo -e "  • \"Write a PRD for this feature\""
echo -e "  • \"Help me plan customer discovery interviews\""
echo -e "  • \"Run a competitive analysis on [company]\""
echo -e "  • \"Let's do a weekly product health review\""
echo ""
echo -e "${CYAN}Templates available at:${NC} $SCRIPT_DIR/templates/"
echo -e "${CYAN}Sample outputs at:${NC} $SCRIPT_DIR/samples/"
echo ""
echo -e "Also installable via:"
if command -v npm &>/dev/null; then
  echo -e "  ${CYAN}npm:${NC}  npx uthy-legacy-os"
fi
if command -v pnpm &>/dev/null; then
  echo -e "  ${CYAN}pnpm:${NC} pnpm dlx uthy-legacy-os"
fi
if command -v bun &>/dev/null; then
  echo -e "  ${CYAN}bun:${NC}  bunx uthy-legacy-os"
fi
if command -v pwsh &>/dev/null || [ -n "$PSModulePath" ]; then
  echo -e "  ${CYAN}Powershell:${NC} .\\install.ps1"
fi
echo ""
echo -e "${BOLD}Happy shipping! 🚀${NC}"
