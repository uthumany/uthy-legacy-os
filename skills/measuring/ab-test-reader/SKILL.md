---
name: ab-test-reader
description: Interpret A/B test results with confidence. Use when reviewing A/B test results and need to distinguish signal from noise.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: measuring
    tags: [ab-test, statistics, experimentation, significance, decision]
    related_skills: [experiment-design, experiment-analysis, metrics-framework]
---

# A/B Test Reader

## Overview

A/B tests produce numbers — but not every number is meaningful. This skill helps you read A/B test results critically, understand statistical concepts in plain language, and avoid common interpretation mistakes.

## When to Use

- An A/B test has concluded and you need to interpret the results
- You're reviewing a test designed by someone else
- You want to understand why a test result might be misleading
- Don't use for: designing the test (use experiment-design skill), non-experimental data comparisons

## Instructions

### 1. Check the Basics

Before trusting the results, verify:
- **Random assignment**: Was each user truly randomly assigned?
- **Sample size**: Was the sample large enough to detect your expected effect?
- **Duration**: Did it run at least 1-2 weeks (to capture full weekly cycles)?
- **No peeking**: Was the test analyzed only at the END? (peeking inflates false positive rate)
- **No other changes**: Were there no simultaneous changes that could confound results?

### 2. Understand the Numbers

**Statistical significance (p-value)**:
- p < 0.05 = 95% chance the effect is real (5% chance it's random noise)
- Not a measure of effect size — a tiny effect can be significant with a large sample
- Don't compare p-values — a test with p=0.001 is not "more significant" than p=0.04

**Effect size**:
- Absolute lift: Treatment - Control (e.g., 12% - 10% = +2%)
- Relative lift: (Treatment - Control) / Control (e.g., +20% relative)
- Report both — absolute is more honest

**Confidence interval**:
- The range where the true effect likely lives
- CI = [2%, 8%] means the true effect is likely between +2% and +8%
- If CI crosses zero ([-1%, 5%]), the result is NOT significant

### 3. Look for Issues

- **Multiple metrics**: Testing 20 metrics and reporting the one that's significant = p-hacking
- **Post-hoc segmentation**: Slicing the data 50 ways until something is significant
- **Novelty effect**: Early positive effect that fades (common with UI changes)
- **Primacy effect**: Early negative effect that recovers (common with major redesigns)
- **Sample ratio mismatch**: 50/50 split is actually 48/52 — something's wrong

### 4. Make a Decision

| Result | Action |
|--------|--------|
| Significant positive, large effect | Ship |
| Significant positive, small effect | Ship if cost is low, pass if high |
| Not significant, large sample | Don't ship. The effect isn't there |
| Not significant, small sample | Run longer or accept uncertainty |
| Significant negative | Don't ship. Learn and iterate |

## Sample Output

**Test**: Red button vs. blue button CTA
**Result**: Blue +5% click rate (p=0.02, CI: [1%, 9%])
**Issue**: Test ran for only 3 days. Weekend vs. weekday patterns could bias results.
**Recommendation**: Run for 2 full weeks before deciding. Effect is promising but not yet reliable.

## Common Pitfalls

1. **Significance ≠ importance** — A 0.1% lift can be significant with 10M users. Is it worth building?
2. **Stopping early** — Looking at results after 100 users and calling it "significant" = bad science
3. **One metric focus** — The primary metric improved. Did anything else break? Check guardrails
4. **Comparing test results across time** — Test A in January and Test B in June are not comparable
5. **Survivorship bias** — Only analyzing users who stuck around misses why others left
