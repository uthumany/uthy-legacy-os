---
name: launch-plan
description: End-to-end launch checklists and timing. Use when preparing to ship a feature or product to ensure all cross-functional work is coordinated.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: shipping
    tags: [launch, shipping, go-live, checklist, rollout]
    related_skills: [go-to-market, rollout-strategy, stakeholder-communication]
---

# Launch Plan

## Overview

A launch plan coordinates every function involved in shipping — engineering, design, marketing, support, sales, legal — into a single timeline with clear owners and checkpoints. This skill guides you from pre-launch preparation through post-launch monitoring.

## When to Use

- You're shipping a major feature or new product
- Multiple teams need to coordinate their launch activities
- You want to avoid last-minute scrambling on launch day
- Don't use for: simple bug fixes or minor improvements (use a ticket checklist instead)

## Instructions

### 1. Define Launch Tier

Not every feature needs a full launch. Classify:
- **Tier 1 (Major)**: New product, major feature, public beta. Full marketing campaign
- **Tier 2 (Standard)**: Significant feature update. Blog post, in-app announcement
- **Tier 3 (Minor)**: Small improvement. Release notes mention only
- **Tier 4 (Maintenance)**: Bug fix, performance, tech debt. No announcement

### 2. Pre-Launch Phase (T-4 weeks to T-1 week)

For each area:
- **Engineering**: Code complete, code review, QA testing, bug fixing
- **Design**: Final visual QA, edge case screens
- **Docs**: Help articles, release notes, API docs
- **Marketing**: Landing page, blog post, social media, email
- **Support**: FAQ, training docs, agent scripts
- **Sales**: Pitch deck, pricing updates, enablement materials
- **Legal**: Terms of service, privacy policy, compliance review

### 3. Launch Prep Phase (T-1 week to D-Day)

- **QA sign-off**: All P0 and P1 bugs fixed
- **Staging verification**: End-to-end test passes on staging
- **Performance check**: Load testing, response time targets met
- **Rollback plan**: Tested and documented
- **Go/no-go meeting**: Final decision to launch
- **Communication ready**: All announcements prepared and scheduled

### 4. Launch Day

- **Monitor**: Dashboards for errors, latency, usage, and support tickets
- **Communicate**: Release notes published, in-app banner live, announcements sent
- **Support**: Support team briefed and ready for increased volume
- **Rollback criteria defined**: "If error rate > 1% for 5 minutes, roll back"

### 5. Post-Launch (T+1 day to T+30 days)

- **Bug triage**: Fix post-launch issues
- **Metrics review**: Did we hit success metrics? (see experiment-analysis)
- **Retrospective**: What went well? What would we change?
- **Next iteration**: Prioritize improvements based on launch data

## Launch Checklist Template

```
## Pre-Launch (T-4w)
- [ ] Code complete
- [ ] QA test plan written
- [ ] Marketing materials drafted
- [ ] Support trained
- [ ] Legal approval obtained

## Launch Prep (T-1w)
- [ ] All P0/P1 bugs fixed
- [ ] Staging verified
- [ ] Performance validated
- [ ] Rollback plan tested
- [ ] Go/no-go decision made

## Launch Day
- [ ] Monitors active
- [ ] Rollback criteria set
- [ ] Support briefed
- [ ] Announcements live

## Post-Launch (T+1d to T+30d)
- [ ] Bug triage complete
- [ ] Metrics first review
- [ ] Retro held
- [ ] Next iteration planned
```
