---
name: user-research
description: Synthesis of qualitative and quantitative user research. Use when planning a research study, synthesizing findings, or building a research repository.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: discovery
    tags: [user-research, research-plan, synthesis, qualitative, quantitative]
    related_skills: [customer-interviews, feedback-analysis, proto-persona]
---

# User Research

## Overview

User research bridges the gap between what we *think* users need and what they *actually* need. This skill covers the full research lifecycle — from planning and conducting studies to synthesizing findings and making them actionable. Works for both qualitative (interviews, diary studies, field visits) and quantitative (surveys, analytics, logs) approaches.

## When to Use

- Starting a new initiative and need to understand user needs
- Making a product decision where the cost of being wrong is high
- Building a research repository for your team
- Validating or invalidating assumptions about user behavior
- Don't use for: trivial UI decisions (A/B test or gut check is faster), already-well-understood problems

## Instructions

### Phase 1: Plan the Research

1. **Define the research question** — What decision will this research inform? Frame as: "We need to decide X. What do we need to learn to make that decision confidently?"
2. **Choose the method**:
   - **Generative** (uncover unknown needs): interviews, diary studies, field observation
   - **Evaluative** (test a concept): usability tests, concept tests, A/B tests
   - **Descriptive** (measure behavior): surveys, analytics, log analysis
3. **Recruit participants** — Define screener criteria. Aim for 5-8 per segment for qualitative, 200+ for surveys

### Phase 2: Conduct the Research

For qualitative:
1. Follow the customer-interviews skill for unstructured interviews
2. For usability tests: give tasks, don't guide. Measure success rate, time-on-task, and satisfaction
3. Take detailed notes. Record (with permission). Use a second observer if possible

For quantitative:
1. Design surveys to avoid bias (no leading questions, balanced scales, randomize order)
2. Use analytics to measure actual behavior, not self-reported behavior
3. Triangulate: survey findings should be validated against behavioral data

### Phase 3: Synthesize Findings

1. **Affinity mapping** — Group observations by theme on a virtual or physical wall
2. **Thematic analysis** — Identify 5-7 core themes. Each theme should have 3+ supporting data points
3. **Create research artifacts**:
   - Insight statements: "We learned X, which means Y, so we should do Z"
   - Journey maps showing pain points
   - Opportunity areas ranked by evidence strength
4. **Rate confidence** — How many sources support each finding? High (5+ sources), Medium (3-4), Low (1-2)

### Phase 4: Make it Actionable

1. **Write recommendations** — Connect each finding to a specific action or decision
2. **Present findings** — Use the "Headline, Evidence, Implication, Action" format
3. **Store in research repo** — Tag by topic, segment, and date. Make it searchable
4. **Track impact** — Did the recommendation lead to a decision? Measure research ROI

## Sample Output

A research synthesis for a fintech budgeting feature might look like:

**Theme**: Users overestimate their self-control
- Evidence: 6/8 participants said they "budget fine" but analytics showed 80% overshoot by 20%+
- Implication: Willpower-based budgeting fails. Users need hard constraints, not tracking
- Recommendation: Add spending limits (not just tracking). Auto-pause when limit is hit
- Confidence: High (8 interviews + 3 months analytics)

## Common Pitfalls

1. **Research without a decision** — If your research doesn't inform a decision, don't do it
2. **Cherry-picking** — Only reporting findings that support your hypothesis
3. **Over-generalizing** — 5 interviews don't speak for all users. Segment your findings
4. **Analysis paralysis** — More research isn't always better. Find the 80% answer and act
5. **Not sharing findings** — Research that lives in a doc no one reads never provides value

## Verification Checklist

- [ ] Research question tied to a specific decision
- [ ] Method chosen matches the question type (generative/evaluative/descriptive)
- [ ] At least 5 participants per segment for qualitative
- [ ] Affinity mapping completed with 5+ themes
- [ ] Each finding rated for confidence level
- [ ] Recommendations given for each key finding
- [ ] Findings stored in a searchable format
