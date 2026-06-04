---
name: churn-analysis
description: Diagnose churn and identify retention levers. Use when customers are leaving and you need to understand why and how to keep them.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: improve
    tags: [churn, retention, analysis, saas, growth]
    related_skills: [adoption-funnel, metrics-framework, feedback-analysis]
---

# Churn Analysis

## Overview

Churn is the silent killer of product growth. Losing 5% of users per month means losing 46% per year — you'd need 50%+ annual growth just to stay flat. This skill helps you diagnose why users leave, identify leading indicators of churn, and design retention interventions.

## When to Use

- Monthly or quarterly churn is above target
- You need to understand WHY users are leaving
- You're designing retention campaigns or reactivation flows
- Building a churn prediction model
- Don't use for: one-off cancellations (talk to the user directly), products with < 100 active users (too few data points)

## Instructions

### 1. Measure Churn Correctly

**Definition**: Users who stop using your product within a given period.
- **User churn**: % of users who stop using
- **Revenue churn**: % of recurring revenue lost (often different from user churn)
- **Gross churn**: Total lost (include downgrades and cancellations)
- **Net churn**: Lost - expansions (can be negative = negative churn = growth)

Segment churn by:
- **Plan**: Free vs. paid vs. enterprise
- **Cohort**: Users who joined in the same month
- **Behavior**: Heavy vs. light users
- **Source**: How were they acquired?

### 2. Find Leading Indicators

Churn doesn't happen overnight. Look for early warning signs:
- **Engagement drop**: Frequency of use decreases over 2+ weeks
- **Feature decay**: Stop using key features
- **Support contact**: Filing complaints or asking about cancellation
- **Billable action stops**: For revenue-churn, look for stopped billing-related actions
- **Account changes**: Team members leaving, admin changing

### 3. Analyze Churn Reasons

**Quantitative**:
- Cancel survey results (what did they select?)
- Last actions before churn (what did they do last?)
- Usage patterns of churned vs. retained users

**Qualitative**:
- Exit interviews: "What made you decide to leave?"
- Win-back conversations: "What would it take to come back?"
- Lost deal analysis: "Why did you choose competitor X?"

### 4. Identify Retention Levers

For each churn driver, design an intervention:

| Churn Driver | Intervention | Metric to Track |
|-------------|-------------|-----------------|
| Never activated | Improve onboarding, add personal setup | Activation rate |
| Lost interest | Re-engagement emails, new features | Return rate |
| Poor support experience | Reduce response time, add self-serve | CSAT, support volume |
| Competitor switch | Competitive analysis, feature gap fill | Win-back rate |
| Budget cuts | Downgrade path, usage-based pricing | Downgrade rate |

### 5. Build a Retention Dashboard

Monitor weekly:
- Churn rate by segment
- Leading indicators (engagement drop, support tickets)
- Intervention effectiveness (re-engagement campaign conversion)
- Reactivation rate (how many came back?)

## Sample Output

**Churn analysis for Q2** (5,000 users, 8% monthly churn):

**Top churn drivers**:
1. (40%) Never activated — signed up, never invited team. Left in 2 weeks.
2. (25%) Lost interest — used for 1-2 months, then stopped.
3. (15%) Switched to competitor — mentioned better mobile app.
4. (10%) Too expensive — small teams on free plan hit limits.
5. (10%) Other — unknown.

**Key insight**: 40% of churn happens before activation. Invest in onboarding.
**Intervention**: New guided setup flow with team invite on first login.
**Target**: Reduce pre-activation churn from 40% to 20% → overall churn from 8% to 6%.
