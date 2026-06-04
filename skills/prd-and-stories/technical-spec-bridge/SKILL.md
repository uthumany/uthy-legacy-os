---
name: technical-spec-bridge
description: Translate PRDs for engineering audiences. Use when writing technical specifications, defining API contracts, or bridging product requirements to engineering execution.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: prd-and-stories
    tags: [technical-spec, engineering, prd-bridge, api, architecture]
    related_skills: [prd-writer, user-story-writer, acceptance-criteria]
---

# Technical Spec Bridge

## Overview

The gap between "what users need" and "what engineers build" is where miscommunication happens. A technical spec bridge translates product requirements into engineering-ready specifications: API contracts, data models, state machines, error handling, and non-functional requirements. This skill helps PMs work effectively with engineering by providing the right level of technical detail.

## When to Use

- Handing off PRDs to engineering for implementation
- Writing API specifications for new features
- Defining data models and schema changes
- Scoping technical work for estimation
- Don't use for: overriding engineering design decisions (specs are guidance), front-end only changes (design specs may be sufficient)

## Instructions

### 1. Map Product Requirements to Technical Components

For each requirement in the PRD, identify:
- **Data model**: What new entities or fields are needed?
- **API endpoints**: What needs to be created or modified?
- **Business logic**: What rules need to be implemented?
- **UI components**: What new screens or components?
- **Integrations**: What external services need to be connected?

### 2. Define API Contracts

For each API endpoint that needs to change:

```
## [Method] /api/[resource]
- **Purpose**: What this endpoint does
- **Auth**: What authentication is required
- **Request**: 
  - Query params: [name, type, required, description]
  - Body: [field, type, required, description]
- **Response (200)**:
  - [field, type, description]
- **Error responses**:
  - 400: [when it occurs]
  - 401: [when it occurs]
  - 403: [when it occurs]
  - 404: [when it occurs]
  - 500: [when it occurs]
- **Rate limiting**: [limits if applicable]
```

### 3. Document Data Models

Define entities and their relationships:

```
## [Entity Name]
- **id**: UUID, primary key
- **name**: string, required, max 100 chars
- **status**: enum(pending, active, archived), default: pending
- **created_by**: FK → users.id, required
- **Relationships**:
  - belongs_to :team
  - has_many :updates
  - has_many :members through: :team_memberships
```

### 4. Specify State Machines

For entities with multiple states:

```
## Order States
          ┌─────────┐
          │ Pending │
          └────┬────┘
         ┌─────┴──────┐
         ▼            ▼
    ┌────────┐  ┌─────────┐
    │ Active │  │ Canceled│
    └───┬────┘  └─────────┘
        ▼
   ┌─────────┐
   │ Archived│
   └─────────┘

Transitions:
- Pending → Active: payment_confirmed
- Pending → Canceled: user_cancelled
- Active → Archived: after_90_days
- Active → Canceled: admin_cancelled
```

### 5. Define Error States and Edge Cases

For each operation, specify:
- **Success path**: The normal flow
- **Validation errors**: What happens with invalid input
- **Business rule violations**: What happens when rules are broken
- **System errors**: Timeouts, rate limits, service unavailable
- **Race conditions**: What happens with concurrent operations

### 6. Document Non-Functional Requirements

- **Performance**: P95 latency targets, throughput expectations
- **Scalability**: Expected load, growth projections
- **Availability**: Uptime requirements, SLAs
- **Security**: Authentication, authorization, data privacy
- **Compliance**: Regulatory requirements (GDPR, SOC2, etc.)

## Sample Output

**Requirement from PRD**: "Users can post status updates that appear on their team's timeline"

**API Contract**:
```
POST /api/v1/updates
Purpose: Create a new status update
Auth: Bearer token, user must be a team member
Request body:
  team_id: UUID, required
  content: string, required, max 5000 chars
  status: enum(on_track, needs_help, blocked), required
  attachments: array of URLs, optional, max 5

Response (201):
  id: UUID
  content: string
  status: string
  author: { id, name, avatar_url }
  created_at: ISO8601

Error responses:
  400: Invalid content (empty or too long)
  401: Authentication required
  403: User is not a member of this team
  404: Team not found
  422: Validation failed (missing required field)
  429: Rate limit exceeded (10 requests/minute)
```

## Common Pitfalls

1. **Over-specifying implementation** — Tell engineering WHAT needs to happen, not HOW to code it
2. **Ignoring error states** — The happy path is easy. Error handling is 50% of the work
3. **Changing requirements mid-implementation** — Spec changes cost 10x more during implementation
4. **Not involving engineering in the spec** — A spec written in isolation will miss technical constraints
5. **Forgetting edge cases** — "What if there's no data?" is as important as "what if it works?"

## Verification Checklist

- [ ] API contracts defined with request/response shapes and error codes
- [ ] Data models documented with fields, types, and relationships
- [ ] State machines defined for entities with multiple states
- [ ] Error states and edge cases documented
- [ ] Non-functional requirements captured (performance, scalability, security)
- [ ] Engineering reviewed and signed off on the spec
