---
name: product-discovery-sprint
description: End-to-end product discovery sprint over 1-2 weeks. Use when entering a new problem space, preparing for a major initiative, or before committing to a solution.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: discovery
    type: workflow
    tags: [discovery, sprint, research, validation, workshop]
    related_skills: [customer-interviews, opportunity-solution-tree, problem-statement, solution-brainstorming, experiment-design]
    sub_skills: [customer-interviews, user-research, opportunity-solution-tree, problem-statement, problem-framing, solution-brainstorming, hypothesis-prioritization, experiment-design]
---

# Product Discovery Sprint (1-2 Weeks)

## Overview

A discovery sprint is a structured, time-boxed exploration of a problem space. Unlike a design sprint (which focuses on prototyping and testing a solution), this discovery sprint focuses on understanding the problem and identifying the best opportunity to pursue.

Use this workflow when you're entering a new area and need to go from "we don't know much" to "we have a validated problem and a prioritized set of solutions to explore."

## When to Use

- You're entering a new problem space and need structured exploration
- Before committing to a build cycle, you want to validate the problem first
- You have an outcome in mind but don't know what opportunities to pursue
- Stakeholders disagree on what the "real problem" is
- Don't use for: already-validated problems (just build it), compliance requirements, bug fixing



- **Duration**: 5-10 days (can be compressed to 3-5 days)
- **Team**: PM (leads), Designer (participates), Researcher (optional), 1-2 Engineers (partial participation)
- **Output**: Opportunity-solution map, validated problem statement, prioritized experiment ideas

## Instructions

Follow the steps below in order. Each phase has specific outputs that serve as handoff criteria to the next phase. Do not skip phases — discovery quality depends on the full cycle.



### Day 1: Frame & Plan

**Goal**: Align on what we're exploring and how.

1. **Define the scope** — What outcome are we trying to achieve? What decisions will this sprint inform?
2. **Surface assumptions** — What do we currently believe? Rate confidence (🔴🟡🟢)
3. **Plan research** — Who will we talk to? What will we ask? (Load skill: customer-interviews)
4. **Review existing data** — Analytics, support tickets, previous research — what do we already know?

**Output**: Research plan with 5-8 interview targets, interview guide, assumption map

### Day 2-3: Research & Discover

**Goal**: Talk to real users and gather evidence.

1. **Conduct 5-8 customer interviews** — Use the customer-interviews skill. Focus on past behavior, not future intent
2. **Capture findings** — After each interview: top 3 takeaways, surprising insight, quote
3. **Update assumptions** — Which assumptions were validated? Invalidated? New questions raised?

**Output**: Interview notes, raw findings

### Day 4: Synthesize

**Goal**: Turn interview data into actionable understanding.

1. **Affinity mapping** — Cluster observations into themes
2. **Build opportunity map** — Use the opportunity-solution-tree skill
3. **Write problem statement** — Use the problem-statement skill
4. **Identify key opportunities** — 3-5 opportunities with strongest evidence

**Output**: Opportunity map, problem statement, key opportunities ranked by evidence

### Day 5: Ideate & Prioritize

**Goal**: Generate solution ideas for the top opportunities.

1. **Brainstorm solutions per opportunity** — Use solution-brainstorming skill. 3-5 solutions per opportunity
2. **Surface assumptions** — For each solution, what needs to be true for it to work?
3. **Prioritize** — Which solutions are most promising? Which assumptions are riskiest? (Use hypothesis-prioritization)
4. **Design experiments** — For the top 2-3 solutions, design the cheapest valid experiment (Use experiment-design skill)

**Output**: Prioritized solution list with experiment designs

### Day 5 (PM): Debrief & Decide

**Goal**: Present findings and decide next steps.

1. **Present the opportunity map** — What did we learn? What surprised us?
2. **Recommend next steps** — Which opportunity to pursue? Which solution to test first?
3. **Get stakeholder alignment** — Do they agree with the problem frame? The opportunity ranking?
4. **Plan next sprint** — Discovery sprint → Solution exploration → Build cycle

**Output**: Decision on which opportunity/solution to pursue next

## Common Pitfalls

1. **Skipping user interviews** — Without real customer conversations, you're guessing. Talk to 5-8 people minimum
2. **Solutioning too early** — The sprint is for understanding the problem, not designing the solution
3. **Too many stakeholders** — Keep the core team small (3-5 people). Expand only for key decisions
4. **Analysis paralysis** — A discovery sprint produces a direction, not a guarantee. It's OK to be uncertain
5. **Not involving engineers** — Engineering input on feasibility and effort prevents wasted design work

## Verification Checklist

- [ ] 5-8 customer interviews completed
- [ ] Affinity mapping done with themes identified
- [ ] Opportunity map created (3-5 opportunities)
- [ ] Problem statement written with evidence
- [ ] Top 2-3 solutions identified with assumptions
- [ ] Experiments designed for risikiest assumptions
- [ ] Stakeholders aligned on next steps


Pass to next phase when:
- [ ] Problem statement validated with customer evidence
- [ ] Opportunity map created with 3-5 opportunities
- [ ] Top opportunity identified with confidence rating
- [ ] Stakeholders aligned on problem frame
- [ ] Next steps planned (experiment, prototype, or skip to build)
