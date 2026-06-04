---
name: epic-breakdown
description: Split large epics into deliverable stories using proven patterns. Use when an epic is too large for a single sprint and needs to be broken into smaller, independent stories.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: prd-and-stories
    tags: [epic-breakdown, story-splitting, agile, backlog, refinement]
    related_skills: [user-story-writer, acceptance-criteria, prd-writer]
---

# Epic Breakdown

## Overview

An epic is a story too large to fit in a sprint. The art of breaking it down is splitting it into stories that are independently valuable, small enough to complete in a sprint, and still solve the original problem. This skill covers Richard Lawrence's 9 patterns for splitting stories, plus techniques for managing epic-level requirements.

## When to Use

- An epic is estimated at 2+ sprints of work
- Stories in the backlog feel too large to estimate
- You need to parallelize work across multiple developers or teams
- Stakeholders want to see incremental value, not wait for one big launch
- Don't use for: already-small stories (1-3 days of work), technical tasks that can't be split, or pure research

## Instructions

### 1. Understand the Epic

Before splitting, understand the epic completely:
- **Goal**: What outcome does this epic serve?
- **Scope**: What's in and out of scope?
- **User workflow**: What's the end-to-end flow?
- **Technical architecture**: What are the natural seams in the system?

### 2. Apply Richard Lawrence's 9 Splitting Patterns

**1. Workflow steps**
Split the epic by the steps in the user workflow. Each step becomes a story.
- Epic: "User can complete purchase" → Stories: Search → Add to cart → Checkout → Payment → Confirmation

**2. Business rule variations**
Split by different rules or configurations.
- Epic: "Support multiple pricing plans" → Stories: Free plan → Pro plan → Enterprise plan

**3. Input data variations**
Split by different types of input.
- Epic: "Import data" → Stories: Import from CSV → Import from JSON → Import from API

**4. Operations (CRUD)**
Split by create, read, update, delete.
- Epic: "Team member management" → Stories: Add member → View members → Edit role → Remove member

**5. Defer non-functional requirements**
Ship the functional behavior first, add performance/scalability later.
- Epic: "Search feature" → Stories: Basic search → Search indexing optimization → Search with faceted filters

**6. Break by platform**
Split by platform if shipping to multiple platforms.
- Epic: "Notifications" → Stories: Web notifications → Email notifications → Mobile push notifications

**7. Break by user role**
Different user types may need different parts of the feature.
- Epic: "Team reporting" → Stories: Member can view own reports → Admin can view team reports → Owner can export reports

**8. Use acceptance criteria as stories**
When a single acceptance criterion is big enough to be its own story, promote it.
- Epic: "Dashboard filters" → Stories: Filter by date range → Filter by status → Filter by assignee → Combined filters

**9. Spike + stories**
If the team doesn't know how to build it, do a research spike first, then split.
- Epic: "AI-powered recommendations" → Stories: Spike: Research algorithm options → Story: Implement v1 recommendations

### 3. Validate Each Story

After splitting, check each story against INVEST:
- **Independent** — Can it be shipped alone?
- **Negotiable** — Is there room for discussion on implementation?
- **Valuable** — Does it deliver value to the user?
- **Estimable** — Can the team estimate effort?
- **Small** — Can it be done in a sprint?
- **Testable** — Can QA verify it's done?

### 4. Order Stories by Dependency and Value

Order stories so that:
- Dependencies are respected (Story B depends on Story A → A comes first)
- Value is delivered incrementally (each story shipped adds something useful)
- Risks are addressed early (technical unknowns addressed first)

## Sample Output

**Epic**: "Build team dashboard with async updates and AI summaries"

**Split**:
1. Story: Team members can post text status updates (core value, smallest slice)
2. Story: Team timeline shows all recent updates (read path for posted data)
3. Story: Daily email digest of updates (off-platform value)
4. Story: AI generates weekly summary (enhancement, after core is stable)
5. Story: Team leads can customize their dashboard view (power user feature)
6. Story: Mobile responsive dashboard (platform break)

## Common Pitfalls

1. **Splitting too small** — Stories under 2 hours of work create overhead. Group micro-stories
2. **Splitting along technical layers** — "Database layer" and "UI layer" aren't independently valuable to users
3. **Losing the epic vision** — Each story makes sense, but together they don't solve the original problem
4. **False dependencies** — Stories that could be parallel but are sequenced out of habit
5. **Forgetting tech debt** — Some stories in the epic should be infrastructure and refactoring

## Verification Checklist

- [ ] Epic fully understood before splitting (goal, scope, workflow)
- [ ] At least 2 splitting patterns applied
- [ ] Each story passes INVEST criteria
- [ ] Stories ordered by dependency and value
- [ ] First story delivers immediate value (smallest valuable slice)
- [ ] Technical spikes identified where needed
