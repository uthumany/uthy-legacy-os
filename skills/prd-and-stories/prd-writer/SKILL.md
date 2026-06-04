---
name: prd-writer
description: Write comprehensive Product Requirement Documents from research. Use when you've validated a problem and solution, and need to align engineering, design, and stakeholders on what to build.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: prd-and-stories
    tags: [prd, product-requirements, specification, alignment, documentation]
    related_skills: [problem-statement, user-story-writer, technical-spec-bridge]
---

# PRD Writer

## Overview

A Product Requirements Document (PRD) is the source of truth for what you're building and why. It aligns engineering, design, QA, and stakeholders around a shared understanding. This skill helps you write PRDs that are clear, complete, and actionable — with enough context for good decisions and enough specificity for reliable execution.

## When to Use

- You've validated a problem and solution through discovery
- You need to hand off a feature to engineering and design
- Multiple teams need to coordinate on a shared initiative
- You want to document decisions and context for future reference
- Don't use for: speculative ideas (PRD is for committed work), tiny changes (use a ticket), or trying to think through a problem (use a brief or spec doc first)

## Instructions

### 1. Start with the Why

**Problem Statement**: What problem are we solving? (Reference the problem-statement skill)
**Evidence**: Link to customer interviews, analytics, experiments
**Strategic Context**: How does this align with OKRs or product strategy?

### 2. Define Scope

**In scope**: What's included? Be specific.
**Out of scope**: What's explicitly NOT included? (Prevents scope creep)
**User stories**: Brief list of what users can do after this ships

### 3. Detail the Requirements

For each feature or change:
- **Description**: What it does and why it exists
- **User experience**: How users interact with it
- **Acceptance criteria**: Given/When/Then format (see acceptance-criteria skill)
- **Edge cases**: Empty states, error states, permission states
- **Analytics**: What events to track

### 4. Define Success

**North star**: What outcome does this serve?
**Success metrics**: How will we know it's working? (see metrics-framework)
**Counter-metrics**: What should NOT degrade?
**Launch criteria**: What must be true before we ship?
**Time to evaluation**: When after launch will we measure success?

### 5. Add Logistics

**Dependencies**: What other work or teams does this depend on?
**Timeline**: When does each phase ship?
**Risks**: What could go wrong and what's the mitigation?
**Open questions**: What decisions are still pending?

## PRD Template

```markdown
# PRD: [Feature Name]

## Status: [Draft / Reviewing / Final / Shipped]

## Problem Statement
[Link to problem statement + evidence]

## Strategic Context
- OKR: [link]
- Strategy: [how this fits]
- Target users: [who]

## Scope
**In scope**: [bullet list]
**Out of scope**: [bullet list]

## Requirements

### [Feature 1]
Description: ...
Acceptance criteria:
- Given..., When..., Then...
Edge cases: ...
Analytics: ...

### [Feature 2]
...

## Success Metrics
- Primary: [metric + target]
- Counter-metric: [what not to break]
- Launch criteria: [what must be true to ship]

## Logistics
- Dependencies: [teams, features, timelines]
- Risks: [what could go wrong]
- Timeline: [phases and dates]
- Open questions: [decisions needed]
```

## Sample Output (Excerpt)

**Problem**: Users take 4+ hours/week in status meetings
**Solution**: Async team updates with AI summaries
**Success metric**: Reduce meeting hours by 50% within 30 days of launch
**Launch criteria**: 95% uptime, < 2s response time, all-edge cases handled
**Out of scope**: Mobile app, SSO integration, custom templates

## Common Pitfalls

1. **PRD as a wishlist** — Every feature doesn't belong in every release. Be ruthless
2. **Skipping the "why"** — Without context, engineers will make bad decisions about *how*
3. **Premature detail** — Don't specify implementation details you haven't thought through
4. **No success criteria** — If you don't define "good," you'll never know if you shipped "good"
5. **Living doc that never ships** — PRDs should drive execution, not become archive documents

## Verification Checklist

- [ ] Problem statement included with evidence
- [ ] Requirements have clear acceptance criteria
- [ ] Edge cases documented (empty, error, permission states)
- [ ] Success metrics defined with targets
- [ ] Launch criteria documented
- [ ] Open questions tracked with owners
