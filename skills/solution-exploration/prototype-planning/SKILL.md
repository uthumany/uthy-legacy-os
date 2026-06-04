---
name: prototype-planning
description: Plan what to prototype and at what fidelity. Use when you want to test a solution idea without building the full product.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: solution-exploration
    tags: [prototype, prototyping, fidelity, validation, wireframe]
    related_skills: [experiment-design, validation-interview, solution-brainstorming]
---

# Prototype Planning

## Overview

A prototype answers a question. The right fidelity depends on what you're testing. This skill helps you choose the right prototype type, create it efficiently, and run tests that produce actionable learning.

## When to Use

- You want to test a solution concept before building
- You need to communicate an idea to engineers or designers
- You want to run usability tests early, before code is written
- You're planning a design sprint
- Don't use for: testing backend feasibility, proving scalability, or final visual design sign-off

## Instructions

### 1. Define What You're Testing

**What question does this prototype answer?**
- "Will users understand this workflow?"
- "Is this feature discoverable?"
- "Does the copy communicate the value proposition?"
- "Will users choose this over the current solution?"

The question determines the fidelity.

### 2. Choose the Right Fidelity

| Fidelity | Best For | Tools | Investment |
|----------|----------|-------|------------|
| **Paper** | Workflow logic, initial concept validation | Pen, paper, sticky notes | 30 min |
| **Wireframe** | Layout, hierarchy, information architecture | Balsamiq, Figma, draw.io | 2-4 hours |
| **Interactive (clickable)** | Usability testing, flow validation | Figma, Framer, Axure | 1-3 days |
| **High-fidelity** | Visual design testing, stakeholder buy-in | Figma, Sketch, Framer | 3-10 days |
| **Live-code (stub)** | Technical feasibility + UX combined | HTML/CSS/JS, no backend | 1-5 days |

**Rule**: Build the simplest prototype that answers your question. If paper works, don't code.

### 3. Plan the Prototype

For each screen or interaction:
- **Purpose**: What does this screen accomplish?
- **Entry**: How does the user get here?
- **Exit**: What's the next step?
- **Edge cases**: What if there's no data? What if the user makes a mistake?

### 4. Create the Prototype

Tips for fast prototyping:
- Use a template or existing components library
- Only build the happy path initially
- Use placeholder data that looks realistic
- Add error states if you're testing usability
- Don't polish — done > perfect

### 5. Plan the Test

For each prototype test:
- **Task**: What will you ask the user to do?
- **Success criteria**: What does success look like?
- **Metrics**: Completion rate, time-on-task, errors
- **Questions**: What will you ask after each task?

## Sample Output

**Question**: Will new users understand how to invite their team?

**Fidelity**: Paper prototype → sketches of 3 screens

**Test plan**:
- Task: "Invite your team to this project"
- Success: User navigates to invite screen within 2 steps
- Watch for: Do they look for "Invite" in settings? Or in the project view?

**Result**: 4/5 users tried to invite from the project homepage, not from settings. Moved invite button to project header.

## Common Pitfalls

1. **Too much fidelity, too early** — A polished visual prototype wastes time if you're testing workflow
2. **Wrong question** — A prototype that tests aesthetics can't answer usability questions
3. **Prototyping the entire product** — Only prototype the areas you have questions about
4. **Defensive prototyping** — Don't fall in love with your prototype. It's a hypothesis, not a decision
5. **No test plan** — Showing a prototype without a plan produces vague feedback ("looks good!")

## Verification Checklist

- [ ] Specific question the prototype will answer
- [ ] Fidelity level matches the question
- [ ] Happy path and key edge cases included
- [ ] Test tasks defined
- [ ] Success criteria established
- [ ] Prototype will be tested with 3-5 users
