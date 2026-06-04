---
name: experiment-design
description: Design lightweight experiments to validate assumptions. Use when you have a hypothesis to test but don't yet have enough evidence to commit to building.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: solution-exploration
    tags: [experiment, validation, hypothesis, lean, proof-of-learning]
    related_skills: [hypothesis-prioritization, validation-interview, experiment-analysis]
---

# Experiment Design

## Overview

Experiments are the currency of product discovery. A well-designed experiment tells you whether an assumption is valid — fast and cheap — before you invest in building. This skill teaches the PoL (Proof of Learning) method and experiment design patterns.

## When to Use

- You have a hypothesis that needs testing before committing to build
- You want to de-risk a solution before engineering investment
- Stakeholders are debating assumptions — design an experiment to settle it
- You need evidence for a PRD or business case
- Don't use for: well-proven problems (build it), regulatory requirements, or when time-to-market is the only priority

## Instructions

### 1. Define the Hypothesis

Use the format: **We believe [solution] will [outcome]. We'll know we're right when [evidence/signal].**

Example: "We believe adding a progress bar to the setup wizard will increase completion rate from 30% to 50%. We'll know we're right when we see >45% completion rate over a 2-week A/B test."

Break it down:
- **Assumption**: What are we betting on?
- **Risk level**: How confident are we? (🔴 low / 🟡 medium / 🟢 high)
- **Evidence threshold**: What specific number or signal proves us right?

### 2. Choose the Cheapest Valid Experiment

From cheapest to most expensive:
1. **Customer conversation** — "Would you use this?" (cheap but unreliable)
2. **Concept test** — Show a mockup, ask about behavior change
3. **Landing page test** — Build a landing page, measure signups
4. **Fake door test** — A button that leads to "coming soon" — measure clicks
5. **Concierge test** — Manually deliver the service
6. **Wizard of Oz** — Pretend the product works, manually operate behind the scenes
7. **Prototype test** — Clickable prototype with usability tasks
8. **A/B test** — Real code, real users, real metrics (most expensive)

Pick the cheapest one that gives you a valid signal for your hypothesis.

### 3. Design the Experiment Card

```
---
**Hypothesis**: We believe [solution] will [outcome]
**Experiment**: Describe what you'll do
**Success criteria**: What specific signal proves the hypothesis?
**Duration**: How long will you run the experiment?
**Cost**: Time, money, people needed
**Risks**: What could invalidate the results?
**Decision**: If success → build. If failure → pivot or kill.
---
```

### 4. Define Success Criteria

Make it specific:
- ❌ "Users like it" → too vague
- ✅ "35% of visitors click the CTA and 10% complete signup"
- Define both **primary metric** (the main signal) and **guardrail metrics** (what must not break)

### 5. Run the Experiment

- Document everything before you start
- Minimize confounding variables (run one experiment at a time)
- Capture qualitative signals too (why did they click/not click?)
- Decide in advance: how will you interpret the results?

### 6. Make a Decision

Pre-commit to your decision criteria:
- **If clear signal**: Ship it (or kill it)
- **If ambiguous**: Run a follow-up experiment
- **If data is noisy**: What would you need to learn next?

## Sample Output

**Hypothesis**: We believe adding weekly email digests will increase 30-day retention from 25% to 40%.

**Experiment**: Fake door test — add a "Weekly Digest" toggle in settings. Measure opt-in rate.

**Success criteria**: >20% of existing users enable the feature within 2 weeks.

**Result**: 34% opt-in rate within 10 days. Hypothesis validated → proceed to build a prototype.

## Common Pitfalls

1. **Testing the wrong thing** — Testing desirability when you should test feasibility
2. **Moving goalposts** — Changing success criteria after seeing results
3. **Over-engineering the experiment** — A fake door test takes 2 hours. Don't turn it into a 2-week project
4. **Confirmation bias** — If you want the answer to be "yes," you'll find reasons it's "yes"
5. **No decision criteria** — If you don't know what you'll do with the result, you're not ready to run the experiment

## Verification Checklist

- [ ] Hypothesis written in "We believe [X] will [Y]. We'll know when [Z]."
- [ ] Cheapest valid experiment type selected
- [ ] Success criteria are specific and measurable
- [ ] Guardrail metrics defined (what must NOT break)
- [ ] Decision criteria pre-committed
- [ ] Experiment will yield a clear go/kill/pivot signal
