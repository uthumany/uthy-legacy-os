---
name: feature-ship-cycle
description: End-to-end feature delivery from PRD to launch measurement. Use when taking a validated concept through specification, development, launch, and post-launch evaluation.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: shipping
    type: workflow
    tags: [shipping, delivery, launch, prd, go-to-market]
    related_skills: [prd-writer, user-story-writer, epic-breakdown, launch-plan, release-notes, go-to-market, rollout-strategy, metrics-framework, experiment-analysis]
    sub_skills: [prd-writer, user-story-writer, epic-breakdown, acceptance-criteria, launch-plan, release-notes, go-to-market, rollout-strategy, stakeholder-communication, metrics-framework, experiment-analysis]
---

# Feature Ship Cycle (2-4 Weeks)

## Overview

The feature ship cycle takes a validated concept from specification through development, launch, and post-launch evaluation. Use this when you've completed discovery and are ready to commit to building.

## Instructions

This workflow runs across 2-4 weeks. Each phase must be completed before moving to the next. Handoff criteria at each gate prevent rework.



### Phase 1: Spec (Week 1)

1. **Write the PRD** — Load prd-writer skill. Include: problem statement, scope, requirements, success metrics, launch criteria
2. **Break down stories** — Load epic-breakdown skill. Split the feature into sprint-sized stories
3. **Write acceptance criteria** — Load acceptance-criteria skill. Given/When/Then for each story
4. **Update technical spec** — Work with engineering on API contracts, data models, and architecture
5. **Design review** — Hand off to design with clear scope

**Output**: PRD, user stories, acceptance criteria, design brief

### Phase 2: Build (Week 2-3)

1. **Support engineering** — Clarify requirements, answer questions, make scope decisions
2. **Review progress** — Check demos, review designs, provide feedback
3. **Manage scope** — If something is taking too long, negotiate scope reduction (not deadline extension)
4. **Update stakeholders** — Weekly status updates using RAG framework

**Output**: Working feature in staging

### Phase 3: Launch (Week 3-4)

1. **QA sign-off** — All P0/P1 bugs fixed, acceptance criteria met
2. **Write release notes** — Load release-notes skill. Write for end users and enterprise
3. **Prepare launch materials** — Load go-to-market skill. Landing page, email, in-app messaging
4. **Plan rollout** — Load rollout-strategy skill. Phased rollout with rollback criteria
5. **Go/no-go meeting** — Review launch criteria, make the call

**Output**: Feature shipped, announcements live

### Phase 4: Measure (Week 4+)

1. **Monitor metrics** — Load metrics-framework skill. Track primary and counter-metrics
2. **Analyze results** — Load experiment-analysis skill. Did we hit our targets?
3. **Gather feedback** — Support tickets, user interviews, NPS
4. **Plan iteration** — What to improve next? Load iteration-prioritization skill

**Output**: Results report, iteration backlog

## Handoff Criteria

Pass between phases when:
- [ ] PRD reviewed and signed off by engineering and design
- [ ] Stories ready for sprint (INVEST criteria met)
- [ ] Feature deployed and verified on staging
- [ ] Launch criteria met (performance, QA, legal)
- [ ] First metrics review completed
