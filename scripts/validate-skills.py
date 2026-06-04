#!/usr/bin/env python3
"""
Uthy Legacy OS — Skill Validator
Validates all SKILL.md files for frontmatter consistency, structure, and quality.
No external dependencies required.

Run: python scripts/validate-skills.py
"""

import os
import re
import sys
import pathlib

REPO_ROOT = pathlib.Path(__file__).resolve().parent.parent
SKILLS_DIR = REPO_ROOT / "skills"
WORKFLOWS_DIR = REPO_ROOT / "workflows"

REQUIRED_FRONTMATTER = ["name", "description"]
RECOMMENDED_FRONTMATTER = ["version", "author", "license"]
REQUIRED_SECTIONS = ["## Overview", "## When to Use"]
RECOMMENDED_SECTIONS = ["## Instructions", "## Common Pitfalls", "## Verification Checklist"]

MAX_DESCRIPTION_LENGTH = 1024
MAX_FILE_LENGTH_CHARS = 100000
NAME_PATTERN = re.compile(r'^[a-z0-9][a-z0-9-]*[a-z0-9]$')
NAME_MAX_LENGTH = 64


class ValidationResult:
    def __init__(self):
        self.errors = []
        self.warnings = []
        self.checked = 0
        self.passed = 0

    def error(self, path, msg):
        self.errors.append(f"  \u274c {path}: {msg}")

    def warn(self, path, msg):
        self.warnings.append(f"  \u26a0\ufe0f  {path}: {msg}")

    def ok(self, path):
        self.passed += 1

    @property
    def failed(self):
        return len(self.errors)

    def report(self):
        print(f"\n{'='*60}")
        print(f"Validation Summary")
        print(f"{'='*60}")
        print(f"  Checked: {self.checked}")
        print(f"  Passed:  {self.passed}")
        print(f"  Errors:  {self.failed}")
        print(f"  Warnings: {len(self.warnings)}")
        if self.errors:
            print(f"\n{'─'*60}")
            print("Errors:")
            for e in self.errors:
                print(e)
        if self.warnings:
            print(f"\n{'─'*60}")
            print("Warnings:")
            for w in self.warnings:
                print(w)
        print(f"{'='*60}\n")
        return self.failed == 0


def parse_frontmatter(content):
    """Parse YAML-like frontmatter without requiring pyyaml."""
    if not content.startswith("---"):
        return None, "File must start with '---'"
    
    parts = content.split("---", 2)
    if len(parts) < 3:
        return None, "Cannot parse frontmatter (needs opening and closing '---')"
    
    frontmatter_str = parts[1]
    body = parts[2].strip()
    
    # Basic YAML-like parsing for simple key-value pairs
    result = {}
    current_key = None
    current_list = None
    
    for line in frontmatter_str.strip().split("\n"):
        line = line.strip()
        if not line:
            continue
        
        # List item (indented)
        if line.startswith("- ") and current_key:
            if current_list is None:
                current_list = []
            value = line[2:].strip()
            # Remove quotes
            if (value.startswith('"') and value.endswith('"')) or \
               (value.startswith("'") and value.endswith("'")):
                value = value[1:-1]
            current_list.append(value)
            result[current_key] = current_list
            continue
        
        current_list = None
        
        # Key: value pair
        if ":" in line:
            key, _, value = line.partition(":")
            key = key.strip()
            value = value.strip()
            
            # Check for multiline indicator
            if value == "|" or value == ">":
                current_key = key
                continue
            
            # Remove quotes
            if (value.startswith('"') and value.endswith('"')) or \
               (value.startswith("'") and value.endswith("'")):
                value = value[1:-1]
            
            # Parse complex values (metadata, tags, etc.)
            if value == "{" and current_key:
                # Start of inline mapping — skip for now
                pass
            
            # Handle inline lists
            if value.startswith("[") and value.endswith("]"):
                items = [v.strip().strip('"').strip("'") for v in value[1:-1].split(",")]
                result[key] = items
            else:
                result[key] = value
                current_key = key
        
        # Continuation of multiline value
        elif current_key and current_key not in result:
            result[current_key] = line.rstrip(",")
    
    return result, body


def find_skill_files(directory):
    """Find all SKILL.md files recursively."""
    files = []
    for root, dirs, filenames in os.walk(directory):
        if "SKILL.md" in filenames:
            path = pathlib.Path(root) / "SKILL.md"
            rel = path.relative_to(REPO_ROOT)
            files.append((path, rel))
    return sorted(files)


def validate_file(path, rel, result):
    """Validate a single SKILL.md file."""
    result.checked += 1
    content = path.read_text(encoding="utf-8")
    folder_name = path.parent.name

    # Check file size
    if len(content) > MAX_FILE_LENGTH_CHARS:
        result.error(rel, f"File too large ({len(content)} chars, max {MAX_FILE_LENGTH_CHARS})")
        return

    # Parse frontmatter
    frontmatter, body_or_error = parse_frontmatter(content)
    if frontmatter is None:
        result.error(rel, body_or_error)
        return
    
    if isinstance(body_or_error, str):
        body = body_or_error
    else:
        result.error(rel, "Unexpected body format")
        return

    # Check required fields
    for field in REQUIRED_FRONTMATTER:
        if field not in frontmatter:
            result.error(rel, f"Missing required frontmatter field: '{field}'")
            return

    # Check name
    name = str(frontmatter.get("name", ""))
    if not NAME_PATTERN.match(name):
        result.warn(rel, f"Name '{name}' may have invalid format (lowercase, hyphens only)")
    if len(name) > NAME_MAX_LENGTH:
        result.error(rel, f"Name too long ({len(name)} chars, max {NAME_MAX_LENGTH})")
        return
    if name != folder_name:
        result.warn(rel, f"Name '{name}' doesn't match folder name '{folder_name}'")

    # Check description
    desc = str(frontmatter.get("description", ""))
    if len(desc) > MAX_DESCRIPTION_LENGTH:
        result.error(rel, f"Description too long ({len(desc)} chars, max {MAX_DESCRIPTION_LENGTH})")
        return
    if len(desc) < 20:
        result.warn(rel, "Description is very short (< 20 chars)")

    # Check recommended frontmatter
    for field in RECOMMENDED_FRONTMATTER:
        if field not in frontmatter:
            result.warn(rel, f"Missing recommended frontmatter field: '{field}'")

    # Check body
    if not body:
        result.error(rel, "Empty body after frontmatter")
        return

    # Check required sections
    for section in REQUIRED_SECTIONS:
        if section not in content:
            result.warn(rel, f"Missing recommended section: {section}")

    # Check recommended sections
    missing_rec = []
    for section in RECOMMENDED_SECTIONS:
        if section not in content:
            missing_rec.append(section)
    if missing_rec:
        result.warn(rel, f"Missing recommended sections: {', '.join(missing_rec)}")

    # Check for template placeholders
    if "templates" in str(rel):
        if "{{" not in content:
            result.warn(rel, "Template file with no placeholders ({{...}})")

    result.ok(rel)


def main():
    print("\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550")
    print("\u2551    Uthy Legacy OS \u2014 Skill Validator v1.0")
    print("\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550")

    result = ValidationResult()
    all_files = find_skill_files(SKILLS_DIR) + find_skill_files(WORKFLOWS_DIR)

    print(f"\nFound {len(all_files)} skill files to validate.\n")

    for path, rel in all_files:
        validate_file(path, rel, result)

    success = result.report()
    sys.exit(0 if success else 1)


if __name__ == "__main__":
    main()
