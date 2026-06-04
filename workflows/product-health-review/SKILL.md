---
name: product-health-review
description: Weekly product health check across metrics, user feedback, support trends, and active projects. Use weekly to keep a pulse on product performance.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: measuring
    type: workflow
    tags: [health, review, weekly, metrics, monitoring]
    related_skills: [metrics-framework, dashboard-design, feedback-analysis, stakeholder-communication]
    sub_skills: [metrics-framework, dashboard-design, feedback-analysis, stakeholder-communication, churn-analysis, adoption-funnel]
---

# Product Health Review (Weekly, 30 min)

## Overview

A weekly product health review keeps you from being surprised by trends that develop over weeks. In 30 minutes, you check metrics, user feedback, support trends, and active projects — then decide what needs attention.

## When to Use

- Weekly as a regular product health check
- When you need a quick pulse on product performance
- Before stakeholder status meetings or exec reviews
- After shipping a major feature (increase frequency)
- Don't use for: deep-dive analysis (use individual measuring skills), daily standups (different format)

## Instructions

This is a 30-minute weekly ritual. Do it at the same time each week. The format is consistent so the team builds a shared understanding of product health over time. Run each step sequentially. If a step reveals a critical issue, escalate immediately rather than waiting for the end.



### Step 1: Metrics Check (5 min)

Load the metrics-framework skill. Check:
- **North Star metric**: Trending up, down, or flat this week?
- **Key input metrics**: What's driving the North Star change?
- **Counter-metrics**: Any unexpected degradation?
- **Red flags**: Any metric in 🔴 territory?

**Look for**: Week-over-week changes, not day-to-day noise. A 5% drop for 3 consecutive weeks = trend.

### Step 2: User Feedback Scan (5 min)

Load the feedback-analysis skill. Scan:
- **Support ticket volume**: Up or down? Any new themes?
- **App store reviews**: Recent ratings, common complaints
- **In-app feedback**: NPS changes, survey responses
- **Social mentions**: Are people talking about us? What are they saying?

**Look for**: New patterns that emerged this week. "3 users mentioned X" = worth noting.

### Step 3: Support Trends (5 min)

- **Ticket volume vs. baseline**: Normal? Spike?
- **Top categories**: What are most tickets about this week?
- **Escalations**: Any critical issues?
- **Response time**: Within SLA?

**Look for**: Correlation with recent releases or changes.

### Step 4: Active Project Status (10 min)

For each active project:
- **Summary**: What happened this week?
- **Status**: 🟢 on track / 🟡 at risk / 🔴 blocked
- **Next milestone**: What's due next week?
- **Need from you**: Decisions, input, or escalation?

### Step 5: Decide & Document (5 min)

1. **What's the one thing to watch this week?**
2. **Any decisions that need to be made?**
3. **Document in the team's health dashboard** (load dashboard-design skill)

## Output Template

```
## Product Health — [Date]

### North Star: [Metric] — [🟢🟡🔴] — [Trend ↑↓]

### Key Metrics
- [Metric 1]: [value] — [status] — [trend]
- [Metric 2]: [value] — [status] — [trend]
- [Counter-metric]: [value] — [status] — [trend]

### Feedback Highlights
- 🟢 Positive: [praise theme]
- 🟡 Concerning: [issue theme]
- 🔴 Critical: [escalation needed?]

### Project Statuses
- [Project A]: 🟢 — On track for [date]
- [Project B]: 🟡 — Risk: [description]. Mitigation: [plan]
- [Project C]: 🔴 — Blocked by [issue]. Need: [help]

### Action Items
- [ ] Decision needed: [topic] by [date]
- [ ] Investigate: [metric trend or feedback theme]
