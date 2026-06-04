---
name: stakeholder-communication
description: Status updates, exec briefs, and dashboards for stakeholders. Use when reporting progress, managing expectations, or communicating risks to leadership.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: shipping
    tags: [communication, stakeholders, status-updates, exec-briefs, RAG]
    related_skills: [launch-plan, release-notes, metrics-framework]
---

# Stakeholder Communication

## Overview

Great product work + poor communication = perceived failure. This skill helps you communicate with stakeholders — executives, cross-functional teams, and customers — in ways that build trust, manage expectations, and keep everyone aligned.

## When to Use

- Providing regular status updates on an initiative
- Communicating a delay, blocker, or risk
- Presenting results to leadership
- Onboarding a new stakeholder to your project
- Don't use for: day-to-day team standups (different audience, different format), marketing communications

## Instructions

### 1. Know Your Audience

| Stakeholder | What They Care About | Format |
|-------------|---------------------|--------|
| Executives | Impact, risks, decisions needed | 2-3 sentence summary + RAG status |
| Cross-functional teams | Dependencies, timelines, action items | Bullet list with owners |
| Customers | What's changing, when, why | Release notes, blog posts |
| Your team | Progress, blockers, decisions | Standup, Slack update |

### 2. Use the RAG Status Framework

- **🟢 Green**: On track. No blockers. Expected to ship on time.
- **🟡 Yellow**: At risk. Blocker identified, plan to resolve exists, timeline may slip.
- **🔴 Red**: Off track. Needs escalation. Timeline WILL slip without intervention.

### 3. Write the Status Update

**Executive summary** (3 sentences max):
1. What happened since last update
2. Current status (RAG + why)
3. What you need from them

**Details** (if needed):
- Progress against goals (metrics if available)
- Key decisions made
- Risks and mitigations
- Upcoming milestones

### 4. Communicate Bad News

When things go wrong:
1. **Be early** — Bad news doesn't get better with age
2. **State the problem clearly** — What happened, what's the impact
3. **Bring a plan** — What we're doing about it, what we need
4. **Timeline** — When will we know more / when will it be fixed
5. **Own it** — Blame doesn't help. Solutions do.

**Template for bad news**:
> "We're going to miss the [date] launch for [feature]. Here's why: [reason]. Impact: [cost/scope]. Our plan: [mitigation]. We need from you: [decision/help]. Revised ETA: [new date]."

## Sample Output

**Weekly exec update**:
> 🟢 **Team Dashboard** is on track for Oct 15 launch.
> - ✅ Beta launched to 50 internal users. Feedback positive.
> - ✅ Performance meets targets (P95 < 500ms).
> - ⚠️ Legal review of data handling still pending — no blocker yet, but flagging.
> - Next milestone: External beta Oct 1.
> - **Need from you**: Legal review by Sep 25.

## Common Pitfalls

1. **Too much detail** — Execs want the top 3 things, not the full sprint backlog
2. **No ask** — Every status update should end with "What I need from you" or "Everything's fine"
3. **Hiding bad news** — If you're green but hiding a blocker, you're actually red
4. **Inconsistent updates** — Weekly updates on a regular schedule build trust. Surprise updates destroy it
5. **No context** — "Feature is 70% done" means nothing without "we're 70% done against a plan to ship in 2 weeks"

## Verification Checklist

- [ ] Audience identified and format chosen
- [ ] RAG status included
- [ ] Key metrics or progress indicators shared
- [ ] Risks and mitigations documented
- [ ] Ask/action items for stakeholders clear
