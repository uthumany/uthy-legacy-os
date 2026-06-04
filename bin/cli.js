#!/usr/bin/env node
/**
 * Uthy Legacy OS — CLI Installer
 * Installs PM skills into AI coding agents.
 * 
 * Usage:
 *   npx uthy-legacy-os                  # auto-detect & install
 *   npx uthy-legacy-os --target claude  # specific agent
 *   npx uthy-legacy-os --help           # show help
 * 
 * Works with: npm, pnpm, bun, yarn
 */

const fs = require('fs');
const path = require('path');
const os = require('os');

const PKG_DIR = path.resolve(__dirname, '..');
const SKILLS_DIR = path.join(PKG_DIR, 'skills');
const WORKFLOWS_DIR = path.join(PKG_DIR, 'workflows');

const BANNER = `
╔═══════════════════════════════════════════════╗
║       UTHY LEGACY OS — PM Skills Install      ║
║    35 skills · 4 workflows · 1 command        ║
╚═══════════════════════════════════════════════╝
`;

const AGENTS = {
  'claude-code': { name: 'Claude Code', dir: '.claude/skills' },
  cursor:         { name: 'Cursor', dir: '.cursor/skills' },
  codex:          { name: 'Codex CLI', dir: '.codex/skills' },
  gemini:         { name: 'Gemini CLI', dir: '.gemini/skills' },
  windsurf:       { name: 'Windsurf', dir: '.windsurf/skills' },
  copilot:        { name: 'Copilot', dir: '.github/skills' },
  roo:            { name: 'Roo Code', dir: '.roomodes/skills' },
};

function getHome() {
  return os.homedir();
}

function installSkills(targetDir, label) {
  if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
  }

  let count = 0;

  // Walk skills/phase/skill-name/SKILL.md
  const phaseDirs = fs.readdirSync(SKILLS_DIR, { withFileTypes: true })
    .filter(d => d.isDirectory());

  for (const phase of phaseDirs) {
    const phasePath = path.join(SKILLS_DIR, phase.name);
    const skillDirs = fs.readdirSync(phasePath, { withFileTypes: true })
      .filter(d => d.isDirectory());

    for (const skill of skillDirs) {
      const src = path.join(phasePath, skill.name, 'SKILL.md');
      const dest = path.join(targetDir, `${skill.name}.md`);
      if (fs.existsSync(src)) {
        try {
          // Prefer symlink on Unix, copy on Windows
          if (process.platform === 'win32') {
            fs.copyFileSync(src, dest);
          } else {
            fs.symlinkSync(src, dest);
          }
          count++;
        } catch { /* skip on error */ }
      }
    }
  }

  // Install workflows
  if (fs.existsSync(WORKFLOWS_DIR)) {
    const wfDirs = fs.readdirSync(WORKFLOWS_DIR, { withFileTypes: true })
      .filter(d => d.isDirectory());
    for (const wf of wfDirs) {
      const src = path.join(WORKFLOWS_DIR, wf.name, 'SKILL.md');
      const dest = path.join(targetDir, `${wf.name}.md`);
      if (fs.existsSync(src)) {
        try {
          if (process.platform === 'win32') {
            fs.copyFileSync(src, dest);
          } else {
            fs.symlinkSync(src, dest);
          }
        } catch { /* skip */ }
      }
    }
  }

  console.log(`  \x1b[32m\u2713\x1b[0m ${count} skills \u2192 ${label}`);
  return count;
}

function detectAgents() {
  const home = getHome();
  const detected = [];

  for (const [key, agent] of Object.entries(AGENTS)) {
    const agentDir = path.join(home, path.dirname(agent.dir));
    if (fs.existsSync(agentDir)) {
      detected.push({ key, ...agent });
    }
  }

  return detected;
}

function showHelp() {
  console.log(BANNER);
  console.log('Usage:');
  console.log('  npx uthy-legacy-os                  Auto-detect & install');
  console.log('  npx uthy-legacy-os --target <agent>  Install for specific agent');
  console.log('  npx uthy-legacy-os --list            List detected agents');
  console.log('  npx uthy-legacy-os --help            Show this help');
  console.log('');
  console.log('Agents:');
  for (const [key, agent] of Object.entries(AGENTS)) {
    console.log(`  ${key.padEnd(15)} ${agent.name} (~/${agent.dir})`);
  }
  console.log('');
  process.exit(0);
}

function main() {
  const args = process.argv.slice(2);

  if (args.includes('--help') || args.includes('-h')) {
    showHelp();
    return;
  }

  console.log(BANNER);
  console.log('');

  // --list
  if (args.includes('--list')) {
    const detected = detectAgents();
    if (detected.length === 0) {
      console.log('  No supported agents detected.');
    } else {
      console.log('  Detected agents:');
      for (const agent of detected) {
        const agentDir = path.join(getHome(), agent.dir);
        console.log(`  \x1b[32m\u2713\x1b[0m ${agent.name} \u2192 ${agentDir}`);
      }
    }
    return;
  }

  // --target <agent>
  const targetIdx = args.indexOf('--target');
  const specificTarget = targetIdx !== -1 && targetIdx + 1 < args.length
    ? args[targetIdx + 1] : null;

  const home = getHome();
  const targets = [];

  if (specificTarget) {
    const agent = AGENTS[specificTarget];
    if (!agent) {
      console.error(`  Unknown agent: "${specificTarget}"`);
      console.error(`  Available: ${Object.keys(AGENTS).join(', ')}`);
      process.exit(1);
    }
    const targetDir = path.join(home, agent.dir);
    console.log(`  Installing for: ${agent.name}`);
    targets.push({ dir: targetDir, label: `${agent.name} (~/${agent.dir})` });
  } else {
    // Auto-detect
    const detected = detectAgents();
    if (detected.length === 0) {
      const manualDir = path.join(home, '.uthy-skills');
      console.log('  \x1b[33m\u26a0\ufe0f No agent detected. Installing to ~/.uthy-skills/\x1b[0m');
      targets.push({ dir: manualDir, label: 'Manual (~/.uthy-skills/)' });
    } else {
      console.log(`  Detected agents: ${detected.map(a => a.name).join(', ')}`);
      for (const agent of detected) {
        const targetDir = path.join(home, agent.dir);
        targets.push({ dir: targetDir, label: `${agent.name} (~/${agent.dir})` });
      }
    }
  }

  console.log('');
  console.log('Installing skills...');

  let total = 0;
  for (const t of targets) {
    total += installSkills(t.dir, t.label);
  }

  console.log('');
  console.log(`\x1b[32m\u2713 Installation complete!\x1b[0m`);
  console.log('');
  console.log('You can now ask your agent:');
  console.log('  \u2022 "Write a PRD for this feature"');
  console.log('  \u2022 "Help me plan customer discovery interviews"');
  console.log('  \u2022 "Run a competitive analysis on [company]"');
  console.log('  \u2022 "Let\'s do a weekly product health review"');
  console.log('');
  console.log(`\x1b[36mTemplates:\x1b[0m ${path.join(PKG_DIR, 'templates')}`);
  console.log(`\x1b[36mSamples:\x1b[0m   ${path.join(PKG_DIR, 'samples')}`);
  console.log('');
  console.log('Happy shipping! \u{1f680}');
}

main();
