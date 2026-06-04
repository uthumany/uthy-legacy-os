---
name: hypothesis-prioritization
description: RICE, ICE, and value-effort quadrant prioritization. Use when choosing which solution to build first or which experiment to run next.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: solution-exploration
    tags: [prioritization, rice, ice, value-effort, decision-making]
    related_skills: [solution-brainstorming, experiment-design, experiment-analysis]
---

# Hypothesis Prioritization

## Overview

You can't build everything. Hypothesis prioritization helps you choose which ideas to pursue next using proven scoring frameworks. This skill covers RICE, ICE, Value-vs-Effort quadrants, and assumption-based prioritization — choose the right framework for your context.

## When to Use

- Choosing which solution to build next
- Ranking experiment ideas with limited testing capacity
- Aligning stakeholders on priorities with a transparent framework
- Deciding between competing feature requests
- Don't use for: comparing fundamentally different products (apples to oranges), urgent bug fixes (just fix them), strategic bets (different framework needed)

## Instructions

### 1. Define Your Candidates

List the solutions, features, or experiments to prioritize. Each needs:
- Name and one-line description
- The hypothesis you're testing
- Who it serves

### 2. Choose a Framework

**RICE** (best for product features):
- **Reach**: How many users will this impact in a given time period? (scale 1-10)
- **Impact**: How much impact per user? (scale: 0.25=minimal, 0.5=low, 1=medium, 2=high, 3=massive)
- **Confidence**: How confident are we in our estimates? (scale: 50%=low, 80%=medium, 100%=high)
- **Effort**: How many person-months? (estimate in person-months)
- **Score**: (Reach × Impact × Confidence) / Effort

**ICE** (best for experiments):
- **Impact**: How impactful will this be? (1-10)
- **Confidence**: How confident are we? (1-10)
- **Ease**: How easy is this to test? (1-10)
- **Score**: (Impact + Confidence + Ease) / 3

**Value vs. Effort Quadrant** (best for stakeholder alignment):
- Plot items on a 2x2 matrix: Value (Y) vs. Effort (X)
- **Quick wins** (high value, low effort) → do first
- **Big bets** (high value, high effort) → plan carefully
- **Fill-ins** (low value, low effort) → do when idle
- **Avoid** (low value, high effort) → don't do

### 3. Score Your Items

Be transparent about scoring. Document:
- Who assigned the scores
- What data informed each score
- ✅ means there's supporting evidence
- ⚠️ means it's an estimate (flag low-confidence items)

### 4. Review as a Team

Scores are a starting point, not gospel. Discuss:
- Does the ranking feel right? If not, what are we missing?
- Are there dependencies? (Item B is worthless without Item A)
- Are there strategic considerations the framework doesn't capture?

### 5. Define the Cut Line

Given your capacity, how many items will you work on? Mark the cut line. Items below it go to the backlog, not the trash — revisit next cycle.

## Sample Output

**RICE Score for Feature Ideas**:

| Feature | Reach | Impact | Confidence | Effort (pm) | RICE Score |
|---------|-------|--------|------------|-------------|------------|
| Quick search | 500 users | 2 | 90% | 1 | 900 |
| Email reports | 200 users | 3 | 70% | 2 | 210 |
| API integration | 50 users | 3 | 50% | 4 | 18.75 |
| Mobile app | 300 users | 2 | 80% | 6 | 80 |
| Team dashboard | 400 users | 2.5 | 85% | 2 | 425 |

**Recommendation**: Quick search (900) and Team dashboard (425) — these 2 items deliver highest RICE and fit within next sprint capacity.

## Common Pitfalls

1. **Fake precision** — Scoring to 3 decimal places doesn't make it accurate. Use whole numbers
2. **Framework bias** — RICE favors reach. If impact > reach matters more, adjust the formula
3. **Not capturing dependencies** — Feature A might unlock Features B and C. The framework misses this
4. **Confidence ≠ effort** — A low-confidence high-effort item is riskier than the score suggests
5. **Static ranking** — New information should change your scores. Re-evaluate regularly

## Verification Checklist

- [ ] All candidates listed with a one-line description
- [ ] Framework chosen and appropriate for the context
- [ ] Scores documented with reasoning
- [ ] Low-confidence items flagged (⚠️)
- [ ] Team reviewed the ranking
- [ ] Cut line defined based on capacity
