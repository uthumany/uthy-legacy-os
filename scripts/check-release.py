#!/usr/bin/env python3
"""
Uthy Legacy OS — Release Check
Verifies everything is ready before tagging a release.
Run: python scripts/check-release.py
"""

import os
import sys
import pathlib

REPO_ROOT = pathlib.Path(__file__).resolve().parent.parent

checks = []

def check(description, condition, fix_hint=""):
    if condition:
        print(f"  ✅ {description}")
        return True
    else:
        msg = f"  ❌ {description}"
        if fix_hint:
            msg += f"\n     Fix: {fix_hint}"
        print(msg)
        checks.append(description)
        return False

print("╔══════════════════════════════════════════════╗")
print("║    Uthy Legacy OS — Release Check v1.0       ║")
print("╚══════════════════════════════════════════════╝")
print()

# File checks
print("=== Required Files ===")
check("README.md exists", (REPO_ROOT / "README.md").exists())
check("LICENSE exists", (REPO_ROOT / "LICENSE").exists())
check("AGENTS.md exists", (REPO_ROOT / "AGENTS.md").exists())
check("CHANGELOG.md exists", (REPO_ROOT / "CHANGELOG.md").exists())
check("CONTRIBUTING.md exists", (REPO_ROOT / "CONTRIBUTING.md").exists())
check("install.sh exists", (REPO_ROOT / "install.sh").exists())
check("_config.yml exists", (REPO_ROOT / "_config.yml").exists())
check("package.json exists", (REPO_ROOT / "package.json").exists())

# Skill count
print("\n=== Skill Inventory ===")
skill_files = list((REPO_ROOT / "skills").rglob("SKILL.md"))
check(f"35 skills found (got {len(skill_files)})", len(skill_files) == 35, 
      f"Expected 35, found {len(skill_files)}. Each phase should have 5 skills.")

wf_files = list((REPO_ROOT / "workflows").rglob("SKILL.md"))
check(f"4 workflows found (got {len(wf_files)})", len(wf_files) == 4,
      f"Expected 4, found {len(wf_files)}")

tmpl_files = list((REPO_ROOT / "templates").glob("*.md"))
check(f"6+ templates found (got {len(tmpl_files)})", len(tmpl_files) >= 6)

samp_files = list((REPO_ROOT / "samples").glob("*.md"))
check(f"5+ samples found (got {len(samp_files)})", len(samp_files) >= 5)

doc_files = list((REPO_ROOT / "docs").glob("*.md"))
check(f"5+ docs pages found (got {len(doc_files)})", len(doc_files) >= 5)

# Phase distribution
print("\n=== Phase Distribution ===")
phases = ["discovery", "problem-definition", "solution-exploration", "prd-and-stories", "shipping", "measuring", "improve"]
for phase in phases:
    phase_skills = list((REPO_ROOT / "skills" / phase).rglob("SKILL.md"))
    status = "✅" if len(phase_skills) == 5 else "⚠️"
    print(f"  {status} {phase}: {len(phase_skills)} skills")

# CI checks
print("\n=== CI/CD ===")
check("Validate workflow exists", (REPO_ROOT / ".github/workflows/validate.yml").exists())
check("Release workflow exists", (REPO_ROOT / ".github/workflows/release.yml").exists())

# Version from package.json
print("\n=== Version Check ===")
import json
if (REPO_ROOT / "package.json").exists():
    pkg = json.loads((REPO_ROOT / "package.json").read_text())
    print(f"  Version: {pkg.get('version', 'unknown')}")

print()
if checks:
    print(f"❌ {len(checks)} check(s) failed. Fix before releasing.")
    sys.exit(1)
else:
    print("✅ All checks passed. Ready to release!")
