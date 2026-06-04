---
name: north-star-metrics
description: Define and align around North Star metrics. Use when choosing or refining the primary metric that drives product decisions.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: measuring
    tags: [north-star, metrics, strategy, alignment, growth]
    related_skills: [metrics-framework, dashboard-design, experiment-analysis]
---

# North Star Metrics

## Overview

A North Star metric is the single metric that best captures the value your product delivers to users. It aligns the entire organization around a shared goal, prevents sub-optimization, and guides prioritization. This skill helps you define, validate, and operationalize a North Star metric.

## When to Use

- Defining the primary success metric for your product
- Aligning the team around a shared goal
- Replacing conflicting or confusing metrics
- You've outgrown vanity metrics and need a real North Star
- Don't use for: short-term campaign measurement, evaluating a single feature, a product with multiple distinct use cases (use a metric tree instead)

## Instructions

### 1. Understand What Makes a Good North Star

A North Star metric should be:
- **Customer value-focused**: Measures value delivered, not value captured
- **Leading indicator**: Predicts long-term business success
- **Actionable**: Teams can directly influence it
- **Understandable**: Anyone in the company can explain it
- **Resistant to gaming**: Hard to improve without delivering real value

### 2. Identify Candidates

Brainstorm 3-5 candidates. Common types:
- **Engagement**: Daily Active Users, Weekly Active Teams, Messages Sent
- **Outcome**: Time-to-Value, Tasks Completed, Content Created
- **Retention**: Day 7 Retention, Active User Rate
- **Revenue**: Average Revenue Per User (only if tightly linked to value)

For each candidate, ask:
- If this metric goes up, does it mean users are getting more value?
- If this metric goes up, will the business succeed?
- Can every team influence this, even indirectly?

### 3. Evaluate Against Counter-Metrics

For every North Star candidate, define:
- **What could go up while the North Star goes up, but is actually bad?**
- Example: Messages Sent goes up, but message quality goes down and spam increases
- These are your counter-metrics — you MUST track them alongside the North Star

### 4. Test with Real Data

Before committing:
- Pull 6 months of historical data for candidates
- Check correlation with business outcomes (revenue, retention, LTV)
- Test sensitivity: Does the metric move when you ship something good?
- Check volatility: Is it too noisy to be useful for weekly decisions?

### 5. Operationalize

Once chosen:
1. **Communicate**: Why this metric? Why now? What are the counter-metrics?
2. **Dashboard**: Put it on every team dashboard
3. **Goals**: Set quarterly targets with stretch goals
4. **Review**: Weekly check-in on North Star + counter-metrics
5. **Evolve**: As the product matures, the North Star may change

## Sample Output

**Product**: Team collaboration tool
**North Star**: Weekly Active Teams (teams that update project status at least once/week)

**Why**: Captures the core value (teams staying aligned) better than DAU (individual usage) or messages sent (inflatable)
**Counter-metric**: Team member burnout (measured by after-hours updates)
**Target**: Increase from 10K to 15K weekly active teams by Q4
**Dashboard**: North Star shown prominently, segmented by team size and plan type

## Common Pitfalls

1. **Vanity North Star** — DAU for a product where daily use isn't the goal (e.g., tax software)
2. **Revenue as North Star** — Revenue measures value captured, not value delivered. Good for business, bad for product direction
3. **No counter-metrics** — Every North Star metric can be gamed. Counter-metrics protect against this
4. **Too many North Stars** — If you have 5 "North Star" metrics, you have none
5. **Never changing** — Your product evolves. Your North Star should evolve too. Revisit annually
