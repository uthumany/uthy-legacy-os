---
name: release-notes
description: Write release notes for different audiences. Use when shipping a release and need to communicate changes to end users, enterprise customers, or internal teams.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: shipping
    tags: [release-notes, communication, changelog, shipping]
    related_skills: [launch-plan, stakeholder-communication, go-to-market]
---

# Release Notes

## Overview

Release notes are your product's public diary. Well-written notes inform users, build trust, and highlight the value of what you shipped. This skill covers writing for different audiences: end users, enterprise buyers, and internal teams.

## When to Use

- You're shipping a new version of your product
- You want to communicate changes to users
- You need enterprise-grade release notes for compliance
- Don't use for: internal build descriptions (use commit messages), marketing announcements (use blog posts)

## Instructions

### 1. Segment Your Audience

**End Users** (in-app or email):
- Focus on what's NEW and what's BETTER
- Use benefit-oriented language ("Now you can...")
- Screenshots and GIFs > text
- Friendly, conversational tone

**Enterprise / Admin** (admin dashboard):
- Include all changes (even minor ones)
- Add upgrade, migration, or configuration notes
- Document API changes, deprecations
- Professional, informative tone

**Internal / Engineering** (Slack, mailing list):
- Include technical details, gotchas
- Migration instructions, config changes
- Known issues and workarounds
- Honest, direct tone

### 2. Structure Each Entry

```
## [Version Number] - [Date]

### 🚀 New Features
- [Headline what's new] — [1-2 sentences on value]

### 🔧 Improvements
- [What changed and why it's better]

### 🐛 Bug Fixes
- [Problem] — [Fix] — [Effect]

### ⚠️ Known Issues
- [Issue] — [Workaround]

### 📦 Technical Notes (enterprise only)
- [Upgrade notes, config changes, API changes]
```

### 3. Writing Guidelines

- **Start with the most important change** — Users scan, they don't read
- **Use active voice** — "You can now..." not "An option to... has been added"
- **Specify who benefits** — "Team admins can now..." not "Improved admin panel"
- **Link to docs** — For complicated features, link to full documentation
- **Acknowledge contributions** — Thank beta testers, early adopters, or contributors

## Sample Output

```
## v2.4.0 - June 4, 2026

### 🚀 New Features
- **Async team updates** — Share status updates without scheduling a meeting. Team members can post text, links, and screenshots that compile into a daily digest.
- **AI status summaries** — One-click summary of the week's updates (Enterprise feature)

### 🔧 Improvements
- **Faster search** — Results now load 3x faster with indexed search
- **Simplified onboarding** — New users can invite their team in 2 clicks instead of 5

### 🐛 Bug Fixes
- Fixed: Calendar sync showing incorrect timezone on Safari
- Fixed: Notification preferences not saving for team members with dots in email

### ⚠️ Known Issues
- Team dashboard may appear empty for accounts with 50+ projects. Refresh to reload.
```
