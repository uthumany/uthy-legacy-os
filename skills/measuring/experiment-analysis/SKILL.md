---
name: experiment-analysis
description: Analyze experiment data and draw conclusions. Use when an A/B test or product experiment has concluded and you need to interpret the results.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: measuring
    tags: [experiment, analysis, a-b-test, statistics, decision-making]
    related_skills: [experiment-design, ab-test-reader, metrics-framework]
---

# Experiment Analysis

## Overview

Running the experiment is only half the work — analyzing the results correctly is where the value lives. This skill helps you interpret experiment data, avoid common statistical pitfalls, and make confident go/kill decisions.

## When to Use

- An A/B test or experiment has concluded
- You need to decide whether to ship, iterate, or kill
- You want to understand not just the outcome but WHY it happened
- Don't use for: pre-experiment planning (use experiment-design skill), exploratory data analysis (different approach)

## Instructions

### 1. Check Experiment Validity

Before analyzing results, verify:
- **Sample size**: Did you reach the required sample size?
- **Duration**: Did the experiment run long enough? (minimum 1 full business cycle, usually 1-2 weeks)
- **Novelty effect**: Did the effect change over time? (compare first few days vs. last few days)
- **Sample ratio mismatch**: Are the control/treatment group sizes as expected?
- **Data quality**: Any tracking issues, bugs, or outliers?

### 2. Read the Primary Metric

- **Statistical significance**: p-value < 0.05 (or your pre-defined threshold)
- **Effect size**: How big is the impact? (absolute and relative)
- **Confidence interval**: What's the range of plausible effects?
- **Practical significance**: Even if statistically significant, is this effect worth building?

### 3. Analyze Guardrail Metrics

What metrics should NOT have degraded?
- Check ALL guardrail metrics for statistically significant negative changes
- A negative guardrail doesn't automatically kill the experiment, but it requires discussion
- Trade-off decision: Is the primary lift worth the guardrail degradation?

### 4. Segment Analysis

- Break down results by key segments (new vs. existing users, platform, plan type)
- A negative overall result might hide a strong positive in a specific segment
- Be cautious of over-segmenting (too many slices = false positives)

### 5. Qualitative Signals

- What did user feedback say during the experiment?
- Any support tickets related to the change?
- Any unexpected user behavior observed?

### 6. Make the Decision

| Signal | Decision |
|--------|----------|
| ✅ Significant positive, no guardrail damage | Ship it |
| ✅ Significant positive, minor guardrail impact | Ship with monitoring |
| 🔄 Inconclusive (not significant) | Need more data or iterate |
| ❌ Significant negative | Kill or iterate |
| ❌ No effect, large sample | Don't ship |

## Sample Output

**Experiment**: New onboarding flow vs. current flow
**Primary metric**: 7-day activation rate
**Result**: +12% activation (p=0.003, CI: 5%-19%)
**Guardrails**: Support tickets +3% (not significant, p=0.21)
**Segments**: Stronger effect on new users (+18%) than existing feature explorers (+4%)
**Decision**: ✅ SHIP. Roll out to 100% of new users. Monitor support volume for 2 weeks.
