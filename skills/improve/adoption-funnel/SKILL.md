---
name: adoption-funnel
description: Analyze and improve feature adoption. Use when a feature isn't getting the usage you expected and you need to understand why.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: improve
    tags: [adoption, funnel, activation, feature-usage, analytics]
    related_skills: [churn-analysis, metrics-framework, experiment-design]
---

# Adoption Funnel

## Overview

You shipped it, but nobody's using it. Feature adoption analysis helps you understand why — is it discoverability, comprehension, motivation, or the wrong feature? This skill covers funnel analysis, activation metrics, and adoption improvement tactics.

## When to Use

- A shipped feature has < expected usage
- You need to understand where users drop off in the adoption journey
- Designing activation flows for new features
- You want to improve feature engagement systematically
- Don't use for: core product adoption (broader analysis needed), one-day-old features (too early to measure)

## Instructions

### 1. Define the Adoption Funnel

Map the user's journey from awareness to ongoing use:
1. **Awareness**: User knows the feature exists
2. **Discovery**: User finds the feature
3. **Understanding**: User knows what it does and why to use it
4. **First use**: User tries the feature for the first time
5. **Value realization**: User gets value from the feature
6. **Continued use**: User comes back and uses it again

### 2. Measure Each Stage

For each stage, instrument and measure:
- **Awareness**: % of users who saw the announcement/in-app notification
- **Discovery**: % who navigated to the feature's location
- **Understanding**: % who clicked/opened the feature
- **First use**: % who completed the primary action
- **Value realization**: % who reached a success milestone
- **Continued use**: % who used it again within 7 days

### 3. Identify the Drop-off

Where do most users disappear?
- 🔴 Awareness → Discovery: Visibility problem (need better placement/announcement)
- 🔴 Discovery → Understanding: Comprehension problem (need better labeling/onboarding)
- 🔴 Understanding → First use: Motivation problem (need better value prop or lower friction)
- 🔴 First use → Value realization: UX problem (feature is hard to use)
- 🔴 Value → Continued use: Retention problem (feature doesn't deliver ongoing value)

### 4. Design Improvements

Based on the drop-off:
- **Visibility**: In-app announcement, badge/tooltip, email campaign
- **Comprehension**: Better copy, short video, tooltip on first hover
- **Motivation**: Value prop showcase, "users who do X get Y% better results"
- **UX**: Reduce steps, add defaults, improve feedback
- **Retention**: Email reminders, progress tracking, social proof

### 5. Measure Impact

- A/B test the improvement against current state
- Track: Did the drop-off improve? By how much?
- Watch for trade-offs: Did improving one feature hurt another?

## Sample Output

**Feature**: Weekly Email Digest
**Target adoption**: 30% of active users enable it
**Current**: 8%

**Funnel**:
| Stage | % of users | Drop-off |
|-------|-----------|----------|
| Awareness (saw announcement) | 65% | - |
| Discovery (found setting) | 35% | 🔴 -46% |
| Understanding (understood it) | 30% | - |
| First use (enabled) | 8% | 🔴 -73% |
| Value (opened first digest) | 6% | - |

**Diagnosis**: Users know about it but don't enable it. Motivation problem.

**Fix**: Change from opt-in to opt-out with smart defaults. Show a preview of what the digest would look like for their team. Target: increase enablement from 8% to 25%.


## Verification Checklist

- [ ] Funnel stages defined (awareness → discovery → understanding → first use → value → continued)
- [ ] Each stage instrumented with a measurable metric
- [ ] Primary drop-off stage identified
- [ ] Root cause hypothesis for the drop-off
- [ ] Improvement designed and targeted at the specific drop-off stage
- [ ] Success criteria defined before running the fix
- [ ] Counter-metrics identified (what shouldn't break while improving adoption)


1. **Measuring too early** — Feature adoption takes time. Measure at 30 days post-launch, not 3 days
2. **Assuming everyone should use it** — Not every feature is for every user. That's OK
3. **Ignoring the "don't need it" segment** — Some users genuinely don't need the feature. Segment them out
4. **Vanity metrics** — "Page views" of a feature != "using" the feature. Measure meaningful actions
5. **One-size-fits-all funnel** — Different user segments may adopt differently. Analyze by segment
