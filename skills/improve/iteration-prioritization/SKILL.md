---
name: iteration-prioritization
description: Prioritize post-launch improvements. Use when deciding what to work on next after shipping a feature or product.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: improve
    tags: [iteration, prioritization, backlog, post-launch, improvement]
    related_skills: [feedback-analysis, churn-analysis, adoption-funnel]
---

# Iteration Prioritization

## Overview

After launch, the question shifts from "should we build this?" to "what should we improve first?" This skill helps you balance user feedback, business goals, and technical debt when prioritizing post-launch iterations.

## When to Use

- A feature has shipped and you have initial data
- You're planning the next iteration cycle
- You have a backlog of improvements from user feedback
- You need to decide between new features and polish
- Don't use for: pre-launch prioritization (use hypothesis-prioritization), strategic planning (use quarterly-planning workflow)

## Instructions

### 1. Gather Input Signals

Before prioritizing, collect:
- **Usage data**: What are people using? What are they ignoring?
- **Feedback**: What are users asking for? What's confusing them?
- **Support tickets**: What issues are generating the most volume?
- **Metrics**: Did your success metrics improve? Which ones missed?
- **Technical debt**: What's slowing the team down?

### 2. Categorize Work Types

Not all work is the same. Balance across:
- **Value additions**: New capabilities based on user needs
- **Quality improvements**: Performance, reliability, polish
- **Debt reduction**: Clean up, refactor, improve developer experience
- **Metrics-driven**: Improvements to move specific metrics

### 3. Apply a Balanced Framework

**Effort/Impact with a twist** — for each candidate, score:

| Category | Weight | Questions |
|----------|--------|-----------|
| User impact | High | How many users benefit? How much? |
| Business impact | Medium | Does this drive retention, conversion, or revenue? |
| Metric alignment | High | Does this move our North Star or key metrics? |
| Strategic fit | Medium | Does this align with product strategy? |
| Urgency | Low | Is this a blocker or degradation? |
| Effort | - | How many days/weeks? |

### 4. Create the Iteration Backlog

Organize into:
- **Now** (this sprint): Quick wins, critical fixes, highest impact
- **Next** (next sprint): Solid improvements, lower urgency
- **Later** (backlog): Worth doing, lower priority
- **Never**: Explicit kill decisions (document why)

### 5. Reserve Capacity

Protect some sprint capacity for:
- **Unplanned work**: Critical bugs, urgent user needs (20% buffer)
- **Tech debt**: Keep the product healthy (15-20%)
- **Experiments**: Small bets that could pay off (10-15%)

## Sample Output

**Post-launch iteration priorities for Team Dashboard**:

| Iteration | What | Why | Effort |
|-----------|------|-----|--------|
| **Now** | Sort projects by last activity | #1 user request (12 tickets) | 2 days |
| **Now** | Fix safari rendering bug | P1 bug affecting 15% of users | 1 day |
| **Next** | Add project search | #2 user request, enables power users | 3 days |
| **Next** | Performance: reduce load time | P95 currently 3s, target <1s | 5 days |
| **Later** | Dark mode | 5 requests, nice to have | 3 days |
| **Never** | Calendar view | Low demand, high effort. Documented as "won't build" | - |
