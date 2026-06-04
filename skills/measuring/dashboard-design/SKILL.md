---
name: dashboard-design
description: Design metric dashboards that drive action. Use when building or improving a dashboard for your product, team, or stakeholders.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: measuring
    tags: [dashboard, metrics, visualization, data, reporting]
    related_skills: [metrics-framework, north-star-metrics, experiment-analysis]
---

# Dashboard Design

## Overview

A good dashboard answers questions. A great dashboard drives decisions. This skill covers dashboard design principles — choosing the right metrics, visualizing data effectively, and building dashboards that teams actually use.

## When to Use

- Building a new dashboard for your product
- Redesigning a dashboard that nobody looks at
- Creating executive reports or weekly metric reviews
- Onboarding a team to data-driven decision-making
- Don't use for: ad-hoc analysis (use notebooks or query tools), operational monitoring (use alerting tools, not dashboards)

## Instructions

### 1. Define the Audience and Purpose

Every dashboard needs ONE clear purpose:
- **Execution dashboard**: For the team making daily decisions. Real-time or daily.
- **Health dashboard**: For managers tracking trends. Weekly or monthly.
- **Strategic dashboard**: For executives overseeing goals. Monthly or quarterly.

### 2. Choose the Right Metrics

- **Actionable** → If this metric moves, can someone take action?
- **Leading** → Predicts future outcomes (not lagging/too late)
- **Specific** → Clear definition, unambiguous
- **Few** → 5-9 metrics max per dashboard. More = noise

### 3. Design the Hierarchy

```
┌─────────────────────────────────────┐
│  NORTH STAR (top, prominent)        │
│  One number that captures value     │
├────────┬────────┬────────┬─────────┤
│ Input  │ Input  │ Input  │ Input   │
│ Metric │ Metric │ Metric │ Metric  │
│ 1      │ 2      │ 3      │ 4       │
├────────┴────────┴────────┴─────────┤
│  Segments / Breakdowns             │
│  (platform, plan, cohort, etc.)    │
└─────────────────────────────────────┘
```

### 4. Visualization Best Practices

- **Line charts** for trends over time (most common, most useful)
- **Bar charts** for comparisons between groups
- **Single number + sparkline** for the North Star metric
- **Heatmap** for density or cohort analysis
- **Table** for detailed data (use sparingly)
- ❌ Pie charts (hard to compare), gauges (take too much space), 3D charts (distorting)

### 5. Add Context

Every metric needs:
- **Comparison period**: Same period last week, month, year
- **Target**: What are we aiming for?
- **Health indicator**: 🟢🟡🔴
- **Trend arrow**: ↑↓ or flat

### 6. Make it Actionable

- Add annotations for major events (launches, bugs, marketing campaigns)
- Include a "What to watch" section
- Link to deeper analysis for exploration
- Set up alerts for threshold violations

## Sample Output

**Team Dashboard — Weekly Active Users**:

```
┌─────────────────────────────────────────┐
│  North Star: 42,500 Weekly Active Teams │ 🟢 +5% WoW
│  Target: 50,000 by Q3                    │
├───────────────┬──────────────┬──────────┤
│ Metric        │ This Week    │ Change   │
│ New signups   │ 1,200        │ +8% ↑    │
│ Activation%   │ 68%          │ +3% ↑    │
│ W+1 Retention │ 55%          │ -2% ↓ 🟡 │
│ Paid conv.    │ 12%          │ Flat →   │
├───────────────┴──────────────┴──────────┤
│ ⚠️ Watch: W+1 retention slipping.       │
│ New onboarding experiment launching EOW │
└─────────────────────────────────────────┘
```
