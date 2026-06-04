---
name: rollout-strategy
description: Phased rollout plans with rollback. Use when deploying a change that has risk and needs controlled exposure before full release.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: shipping
    tags: [rollout, feature-flags, canary, progressive-delivery, risk]
    related_skills: [launch-plan, experiment-design, metrics-framework]
---

# Rollout Strategy

## Overview

Rollout strategy is about managing risk during deployment. Instead of flipping a switch for everyone, you gradually increase exposure, monitoring for problems at each step, with a clear rollback plan if things go wrong. This skill covers feature flags, canary releases, and progressive delivery.

## When to Use

- Shipping a feature with significant user impact
- Making infrastructure or architectural changes
- Introducing breaking API changes
- Releasing to users who depend on reliability
- Don't use for: trivial UI changes, content updates, or features behind an opt-in beta already

## Instructions

### 1. Define the Rollout Phases

**Phase 0: Internal** — Dogfood with your own team
- Goals: Catch obvious bugs, test basic functionality
- Duration: 1-3 days
- Success criteria: No P0 bugs, team can use the feature

**Phase 1: Alpha** — 5-10% of users, internal only
- Goals: Validate performance, catch edge cases
- Duration: 3-7 days
- Success criteria: Error rate < 0.1%, latency within SLA

**Phase 2: Beta** — 25-50% of users
- Goals: Broader validation, gather feedback
- Duration: 5-14 days
- Success criteria: Error rate stable, support volume normal, feedback positive

**Phase 3: GA** — 100% of users
- Goals: Complete availability
- Success criteria: All metrics stable, launch criteria met

### 2. Choose the Mechanism

- **Feature flags**: Code-deployed but flag-off. Toggle based on user ID, account ID, or region
- **Canary release**: New version serves a subset of traffic. Gradually increase
- **Shadow mode**: New system runs in parallel, results compared but not served to users
- **Blue/green**: Two identical environments. Switch traffic when ready

### 3. Define Monitoring Gates

At each phase, monitor:
- **Error rate**: Spikes above baseline?
- **Latency**: P95 within SLA?
- **User impact**: Crash rate, support tickets?
- **Business metrics**: Revenue, engagement, retention changes?
- **Hard rollback trigger**: "If [metric] exceeds [threshold] for [duration], auto-rollback"

### 4. Document the Rollback Plan

```
## Rollback Plan

### Condition for rollback:
- P95 latency exceeds 2s for 5+ minutes
- Error rate > 1% for 5+ minutes
- Support ticket volume triples baseline
- Revenue drop > 5%

### Rollback procedure:
1. Disable feature flag [flag-name]
2. Verify: traffic returns to previous version
3. Notify: #oncall channel
4. Document: Root cause in incident doc

### Post-rollback:
- Fix the issue
- Re-test on staging
- Re-start rollout from Phase 1
```
