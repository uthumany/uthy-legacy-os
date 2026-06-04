---
name: metrics-framework
description: AARRR, HEART, and custom metric trees. Use when defining how to measure product success or building a measurement system.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: measuring
    tags: [metrics, analytics, aarrr, heart, north-star, measurement]
    related_skills: [north-star-metrics, dashboard-design, experiment-analysis]
---

# Metrics Framework

## Overview

A metrics framework connects what you build to what matters. Without one, teams optimize for whatever number is loudest. This skill covers AARRR (Pirate Metrics), HEART (Google), and custom metric trees — choose the right framework and build a measurement system that drives decisions.

## When to Use

- Defining success for a new product or feature
- Building or redesigning your analytics system
- Aligning the team around a shared measurement model
- Moving from vanity metrics to actionable metrics
- Don't use for: one-time analysis (use experiment-analysis skill), daily monitoring (use dashboard-design)

## Instructions

### 1. Choose a Framework

**AARRR (Pirate Metrics)** — best for growth-stage products:
- **Acquisition**: How do users find you? (traffic sources, signups)
- **Activation**: Do users have a great first experience? (aha moment, time-to-value)
- **Retention**: Do users come back? (D1/D7/D30 retention, churn)
- **Revenue**: Do users pay? (MRR, ARPU, conversion rate)
- **Referral**: Do users tell others? (viral coefficient, NPS)

**HEART (Google)** — best for UX and engagement-focused products:
- **Happiness**: User satisfaction (NPS, CSAT, satisfaction surveys)
- **Engagement**: Frequency and depth of use (sessions, actions per session)
- **Adoption**: New users of a feature (onboarding completion, feature activation)
- **Retention**: Returning users (cohort retention, churn rate)
- **Task Success**: Can users accomplish goals? (success rate, time-on-task, errors)

**Custom Metric Tree** — best for complex or unique products:
- Start with a North Star metric
- Break down into 3-5 supporting drivers
- Each driver has leading and lagging indicators
- Each indicator has a target and owner

### 2. Define Metrics Hierarchy

**North Star**: One metric that captures the core value your product delivers.
**Input metrics**: Actions users take that drive the North Star (controllable).
**Output metrics**: Results of those actions (lagging).
**Counter-metrics**: What should NOT degrade while you optimize.

### 3. Document Each Metric

For each metric, document:
- **Definition**: Exactly how it's calculated
- **Target**: What good looks like
- **Baseline**: Current value
- **Frequency**: How often it's reviewed
- **Owner**: Who's responsible
- **Source**: Where the data comes from

### 4. Create Metric Health Checks

- 🟢 Metric on track, no action needed
- 🟡 Metric off track, mitigation plan exists
- 🔴 Metric off track, needs attention

## Sample Output

**Metric Tree for a Task Management Tool**:

North Star: Weekly Active Teams (teams that update their project status at least once/week)

| Driver | Metric | Current | Target | Health |
|--------|--------|---------|--------|--------|
| Activation | Team setup completion rate | 45% | 70% | 🟡 |
| Engagement | Updates per team/week | 3.2 | 5.0 | 🟢 |
| Retention | Team W+4 retention | 60% | 75% | 🔴 |
| Revenue | Conversion to paid | 8% | 12% | 🟡 |
| Referral | Invites sent per active team | 1.5 | 3.0 | 🟢 |
