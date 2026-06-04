---
name: proto-persona
description: Create hypothesis-driven personas before full research. Use when starting a new product area, aligning on target users, or prioritizing features without existing persona research.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: problem-definition
    tags: [proto-persona, persona, hypothesis, alignment, user-segment]
    related_skills: [user-research, problem-statement, customer-interviews]
---

# Proto-Persona

## Overview

Proto-personas are lightweight, hypothesis-driven user profiles built from what you already know — before investing in formal research. They align the team around who you're building for, surface assumptions, and create a shared target to validate (or disprove) through real research.

## When to Use

- Starting a new product or feature with limited user research
- Aligning a cross-functional team on target users
- Identifying assumptions to validate in upcoming research
- Quick stakeholder alignment without a full research project
- Don't use for: already-well-understood user segments, regulatory/compliance contexts requiring validated research

## Instructions

### 1. Identify Segments

Brainstorm 2-4 distinct user types for your product area. Ask:
- Who uses this product or could use it?
- What different jobs are they trying to accomplish?
- What makes them behave differently?

Each segment should have distinct goals, behaviors, or contexts.

### 2. Build the Proto-Persona Canvas

For each segment, fill out:

```
## [Name/Archetype]

**Tagline**: One-liner capturing their relationship to your product

**Demographics** (hypothesized):
- Role, experience level, company size, industry

**Goals & Motivations**:
- What are they trying to achieve?
- What success looks like to them

**Pain Points**:
- What frustrates them about current solutions?
- What workarounds do they use?

**Behaviors**:
- How do they currently solve the problem?
- What tools do they use?
- What triggers their behavior?

**Needs from your product**:
- What would make their life better?

**Assumptions** (critical!):
- List 3-5 things you're assuming about this persona
- Mark which are most uncertain
```

### 3. Map Assumptions

For each persona, write down:
- **Confident assumptions** — things you're fairly sure about (backed by some evidence)
- **Uncertain assumptions** — things you're guessing (need validation)
- Rate each assumption: 🟢 confident / 🟡 some doubt / 🔴 pure guess

### 4. Create a Validation Plan

For the 🔴 and 🟡 assumptions:
- What's the cheapest way to test this?
- How will you know you're wrong?
- Prioritize: test assumptions that (a) are most uncertain AND (b) would change your strategy most

## Sample Output

**Segment: Solo Founder / Indie Hacker**

| Field | Hypothesis |
|-------|-----------|
| Tagline | "I need to ship fast and keep customers happy" |
| Demographics | 1-5 people, bootstrapped, tech-savvy |
| Goals | Launch MVP, get first 100 customers |
| Pain | Too many tools, no time for process |
| Behaviors | Lives in Notion and Slack. Avoids "enterprise" tools |
| Need | One place for customer conversations |
| Assumptions | 🔴 Has budget for paid tools. 🟡 Prefers simple over powerful |

## Common Pitfalls

1. **Imagining, not inferring** — Proto-personas should be based on *some* signal (support tickets, early adopter conversations), not pure fiction
2. **Too many personas** — 2-4 is the sweet spot. More than 6 and you haven't segmented, you've listed
3. **Beautiful but useless** — A pretty persona poster that no one references is worse than no persona. Make it actionable
4. **Forgetting it's a hypothesis** — The goal is to prove it WRONG. If you treat it as truth, you'll blind yourself
5. **Static artifact** — Update personas as you learn. A persona from 6 months ago is probably outdated

## Verification Checklist

- [ ] 2-4 distinct segments identified
- [ ] Each persona has goals, pain points, behaviors, and needs
- [ ] Assumptions explicitly documented and confidence-rated
- [ ] Validation plan created for uncertain assumptions
- [ ] Personas shared with the team for feedback
