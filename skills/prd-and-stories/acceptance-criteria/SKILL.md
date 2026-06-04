---
name: acceptance-criteria
description: Write clear, testable acceptance criteria using Given/When/Then format. Use when defining user stories, testing requirements, or creating a Definition of Done.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: prd-and-stories
    tags: [acceptance-criteria, gherkin, bdd, testing, quality]
    related_skills: [user-story-writer, prd-writer, epic-breakdown]
---

# Acceptance Criteria

## Overview

Acceptance criteria define when a story is "done." They're the shared understanding between product, engineering, and QA of what must be true for the feature to be accepted. Well-written criteria prevent ambiguity and reduce rework. This skill teaches the Given/When/Then format from Behavior-Driven Development (BDD).

## When to Use

- Writing or reviewing user stories
- Defining scope for a sprint or release
- Handing off requirements to QA
- Creating a Definition of Done for your team
- Don't use for: non-functional requirements (performance, security — separate criteria), exploratory work, or creative tasks

## Instructions

### 1. Use Given/When/Then Format

```
Scenario: [Title describing the scenario]
Given [context / preconditions]
When [action / event]
Then [expected outcome]
```

**Given** sets up the context — what state must exist before the action.
**When** describes the trigger — what the user does or what happens.
**Then** describes the expected result — what should be observable.

### 2. Follow Best Practices

- **One scenario per behavior** — Don't test multiple things in one scenario
- **Use concrete examples** — "Given user has 3 active projects" not "Given user has projects"
- **Be deterministic** — Same inputs always produce same results
- **Focus on outcomes, not implementation** — THEN describes what happens, not how
- **Include edge cases** — Empty states, error states, permission boundaries

### 3. Use AND/OR for Combinations

```
Scenario: Admin approves a team member's invitation
  Given the admin is logged in
    And there is a pending invitation for user@example.com
  When the admin clicks "Approve"
  Then the invitation status changes to "Active"
    And the user receives a welcome email
```

### 4. Write Rule-Oriented Criteria

For features with many variations, write rule-oriented criteria:

```
Rule: Team members can see projects based on their role

Scenario: Owner can see all projects
  Given I am the team owner
  When I open the dashboard
  Then I see all projects in the team

Scenario: Member can only see assigned projects
  Given I am a team member
  And I am assigned to projects A and B
  When I open the dashboard
  Then I see projects A and B
    And I do NOT see project C
```

### 5. Cover Edge Cases

For each story, think of:
- **Happy path**: The expected success case
- **Error path**: What happens when something goes wrong
- **Empty state**: What if there's no data?
- **Permission boundary**: What can/can't different user roles do?
- **Boundary conditions**: What happens at limits?

## Sample Output

**Story**: User can filter their task list by status

```
Scenario: Filter by "In Progress"
  Given I have 10 tasks: 4 "To Do", 3 "In Progress", and 3 "Done"
  When I select the "In Progress" filter
  Then I see only the 3 "In Progress" tasks

Scenario: Filter by "Done"
  Given I have 10 tasks: 4 "To Do", 3 "In Progress", and 3 "Done"
  When I select the "Done" filter
  Then I see only the 3 "Done" tasks

Scenario: No tasks match the filter
  Given I have 10 tasks all marked "To Do"
  When I select the "Done" filter
  Then I see "No tasks match this filter"
    And I see a "Clear filter" button

Scenario: Clear filter
  Given I have the "In Progress" filter active
  When I click "Clear filter"
  Then I see all 10 tasks
```

## Common Pitfalls

1. **Too vague** — "User can see their data" doesn't tell QA what to test. Be specific
2. **Testing implementation, not behavior** — "API returns 200" matters less than "User sees their data"
3. **Missing edge cases** — Empty states and error paths are where most bugs live
4. **Criteria that are too long** — If you have 15 criteria for one story, split the story
5. **Not involving QA** — QA knows which edge cases are missing. Review criteria together

## Verification Checklist

- [ ] Happy path covered with Given/When/Then
- [ ] Error path covered (what goes wrong?)
- [ ] Empty state covered
- [ ] Permission boundaries covered
- [ ] Each scenario tests one behavior
- [ ] Concrete examples used (not "some data" but "3 active projects")
- [ ] QA has reviewed the criteria
