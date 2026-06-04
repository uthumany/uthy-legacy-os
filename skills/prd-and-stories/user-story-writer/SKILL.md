---
name: user-story-writer
description: Write user stories with INVEST criteria and acceptance criteria. Use when breaking down features into developer-ready units of work.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: prd-and-stories
    tags: [user-stories, agile, acceptance-criteria, backlog, INVEST]
    related_skills: [acceptance-criteria, epic-breakdown, prd-writer]
---

# User Story Writer

## Overview

User stories are the atomic unit of product work. A well-written story describes what a user needs, why they need it, and how we'll know it works — small enough to ship in a sprint, clear enough that no one needs to ask "what did they mean?" This skill follows Mike Cohn's format with INVEST criteria.

## When to Use

- Breaking features into sprint-sized pieces of work
- Handing requirements off to engineering and QA
- Building and maintaining a product backlog
- Writing stories for a specific epic or initiative
- Don't use for: technical infrastructure work (use tasks, not stories), bug fixes (write a bug report with reproduction steps), or system designs

## Instructions

### 1. Follow the User Story Format

```
**As a** [type of user],
**I want** [goal or action],
**So that** [reason or benefit].
```

- **Who**: A specific user role (not "user")
- **What**: An action or goal, not a UI detail
- **Why**: The benefit — this is the most important part

Examples:
- ❌ "As a user, I want a button to export to CSV" (focuses on UI)
- ✅ "As a marketing manager, I want to download campaign reports so I can share them with my team."

### 2. Apply INVEST Criteria

- **Independent**: Can it be shipped alone?
- **Negotiable**: Is there room for discussion on implementation?
- **Valuable**: Does it deliver value to the user?
- **Estimable**: Can the team estimate effort?
- **Small**: Can it be completed in a sprint?
- **Testable**: Can QA verify it's done?

If a story fails any INVEST check, split or rewrite it.

### 3. Add Acceptance Criteria

Write 3-7 criteria using Given/When/Then format (see acceptance-criteria skill).

### 4. Add Context

For each story, include:
- **Design link**: Figma or mockup reference
- **Technical notes**: Architecture decisions, API contracts
- **Dependencies**: Other stories or tasks that must come first
- **Definition of Done**: Team-specific completion checklist

### 5. Size and Prioritize

- Estimate effort using your team's method (t-shirt sizes, points, hours)
- Prioritize within the epic using RICE or value-effort
- Order by dependency and value

## Sample Output

**Story**:
"As a team lead, I want to see a dashboard of all active project statuses so I can identify blockers without interrupting my team."

**Acceptance Criteria**:
- Given I am a team lead with 3+ active projects, when I open the dashboard, then I see a card for each project with progress indicator
- Given a project has a blocking issue, when the blocker is tagged, then the project card shows a red warning indicator
- Given I click a project card, when the page loads, then I see the project's detailed status page

**INVEST check**: ✅ Independent (can ship without other stories)
✅ Negotiable (implementation not prescribed)
✅ Valuable (solves a real pain)
✅ Estimable (team can estimate)
✅ Small (1-2 days)
✅ Testable (clear criteria)

## Common Pitfalls

1. **UI-first writing** — "As a user, I click the button" misses the why. Focus on the goal
2. **Zombie stories** — Stories in the backlog that no one remembers why they exist. Kill them
3. **Giant stories** — If a story takes more than 3 days, split it (see epic-breakdown)
4. **No acceptance criteria** — Without criteria, "done" is a negotiation, not a decision
5. **Forgetting non-happy paths** — Error states and edge cases are part of the story

## Verification Checklist

- [ ] Format: "As a [user], I want [goal] so that [benefit]"
- [ ] Passes all 6 INVEST criteria
- [ ] 3-7 acceptance criteria in Given/When/Then format
- [ ] Edge cases documented (error states, permission denied, empty data)
- [ ] Design and technical references linked
