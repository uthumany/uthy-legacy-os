---
name: opportunity-solution-tree
description: Map opportunities to potential solutions using Teresa Torres's framework. Use when exploring problem spaces, deprioritizing solutions, and connecting user needs to product decisions.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: discovery
    tags: [opportunity-solution-tree, teresa-torres, continuous-discovery, opportunity-mapping]
    related_skills: [customer-interviews, problem-statement, experiment-design]
---

# Opportunity-Solution Tree

## Overview

The Opportunity-Solution Tree (OST), popularized by Teresa Torres in *Continuous Discovery Habits*, is a visual framework that maps a desired outcome → opportunities (user needs, pain points, desires) → solutions → assumptions. It prevents the common mistake of jumping straight from a problem to a solution without exploring alternatives.

## When to Use

- Starting a new product initiative with an outcome in mind
- Multiple stakeholders want different solutions — need to align on the *problem* first
- You've done discovery interviews and need to organize findings
- You want to avoid building the first solution that comes to mind
- Don't use for: well-understood execution work, bug fixes, or compliance requirements

## Instructions

### 1. Define the Desired Outcome

Start at the top: **what outcome are we trying to achieve?**
- A measurable business outcome (increase retention, reduce support tickets)
- Not a solution ("build a chatbot") — that goes lower in the tree
- Example: "Reduce time-to-value for new team workspace setup from 2 days to 2 hours"

### 2. Identify Opportunities

Opportunities are **user needs, pain points, and desires** — not solutions.
- Each opportunity answers: "What would help users achieve the desired outcome?"
- Source them from customer interviews, analytics, support tickets, and research
- Write as statements of user need: "I can't find the right template to start with"
- Don't prioritize yet — just list them

### 3. Explore Solutions (for each opportunity)

For each opportunity, brainstorm 3-5 potential solutions:
- **Divergent thinking**: No judgment. Capture all ideas, even crazy ones
- Include obvious solutions *and* creative alternatives
- Solutions are concrete: "Auto-detect workspace type from email domain" not "make setup easier"

### 4. Surface Assumptions

For each solution, identify the assumptions you're making:
- **Desirability**: Will users actually want this?
- **Viability**: Can we build this profitably?
- **Feasibility**: Can we build this technically?
- **Usability**: Will users be able to use it?
- Prioritize which assumptions to test first (riskiest → easiest to test)

### 5. Prioritize Where to Start

Rank opportunities by:
- **Evidence strength** — How confident are you this is a real need?
- **Impact on outcome** — How much does addressing this move the needle?
- **Cost to test** — How cheaply can we validate our assumptions?

## The Tree Structure

```
                         [Desired Outcome]
                              │
        ┌─────────────────────┼─────────────────────┐
   [Opportunity A]     [Opportunity B]     [Opportunity C]
        │                     │
   ┌────┼────┐          ┌────┼────┐
 [S1] [S2] [S3]       [S1] [S2] [S3]
   │     │              │
 [A1]  [A1-A2]        [A1]
```

S = Solution, A = Assumption about that solution

## Sample Output

**Desired Outcome**: Increase weekly active usage from 30% to 60%

**Opportunities** (from customer interviews):
1. Users forget about the product between sessions
2. Initial setup feels like too much work
3. Users don't see value until they've invested significant time
4. Teammates don't adopt it, so the first user gives up

**Solutions for Opportunity 1**:
- S1: Weekly email digest with personalized highlights
- S2: Mobile push notifications for key events
- S3: Slack integration that surfaces relevant content

**Assumptions for S1**:
- A1: Users have email fatigue and will ignore it (DESIRABILITY — RISKY)
- A2: We can generate personalized highlights algorithmically (FEASIBILITY — TESTABLE)
- A3: Users will return to the product from the email (USABILITY)

**Priority**: Test A1 first (riskiest, cheapest to test). Send 100 manual emails and measure open/click rates.

## Common Pitfalls

1. **Solution-first thinking** — Starting a tree from a solution, not an outcome. The tree is upside-down
2. **Too many opportunities** — 10+ opportunities is overwhelming. Focus on 3-5 per outcome
3. **Skipping assumptions** — Jumping from solution to build without surfacing what you're betting on
4. **Tree rot** — Building the tree once and never revisiting. Update as you learn
5. **Analysis paralysis** — A tree should take 1-2 hours to build, not 2 weeks

## Verification Checklist

- [ ] Desired outcome stated as a measurable outcome, not a solution
- [ ] 3-5 opportunities identified, sourced from real research
- [ ] 2-5 solutions per opportunity (divergent thinking applied)
- [ ] Key assumptions surfaced for top-priority solutions
- [ ] Riskiest assumption identified and a test method proposed
