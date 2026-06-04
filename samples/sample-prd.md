# Sample PRD: Async Team Updates

**Status**: Final
**Owner**: Sarah Chen, PM
**Date**: June 4, 2026

---

## Problem Statement

Engineering teams at mid-market companies spend 4+ hours per week in status meetings trying to understand what's actually done. Our customer interviews (n=8) revealed that 7/8 managers use spreadsheets or Slack DMs as their "real" tracker, despite having project management tools. One engineering director said: "I sit through 5 standups a week and still don't know if we're on track."

**Evidence**:
- 8 customer interviews (see research repo)
- 23 support tickets about "status reporting is too hard"
- Analytics: 70% of daily active users check project boards for status (but only 30% update them)

## Strategic Context

- **OKR**: Q3 OKR 2.3: "Reduce meeting overhead by 25% for paid teams"
- **Strategy**: Differentiation play — no competitor does async updates well
- **Target users**: Engineering teams with 5-20 members, using Slack + GitHub

## Scope

### In Scope
- Async text/video updates posted to a team timeline
- Daily/weekly digest email
- AI-generated summary of recent updates
- Commenting on updates

### Out of Scope
- Mobile app (next quarter)
- SSO/SAML integration (separate initiative)
- Custom update templates (backlog item)

## Requirements

### Update Posting
Users can post a status update with text, optional screenshot, and optional link.

**Acceptance Criteria**:
- Given I am a team member, when I click "Post Update", then I see a composer with text field + attach buttons
- Given I post an update, when it's submitted, then it appears on my team's timeline
- Given I post an update, when I include @mentions, then those users get notified
- Given I try to post with no content, when I click submit, then I see "Add some content to your update"

**Edge Cases**:
- Network failure: draft saved locally, retry option shown
- Very long posts (>5000 chars): character counter shown, soft limit

### Daily Digest
Each team receives a daily email summarizing all updates from the previous day.

**Acceptance Criteria**:
- Given a team has updates from the previous day, when the digest is generated, then all team members receive an email summary
- Given a team has NO updates from the previous day, when the digest time passes, then no email is sent
- Given a team has 5+ updates, when the digest is generated, then AI generates a 2-3 sentence summary as the email header

### AI Summary
An AI-generated weekly summary of the team's progress.

**Acceptance Criteria**:
- Given it's Sunday, when the weekly summary is generated, then team leads receive "Weekly Progress: [Team Name]"
- Given updates exist from the past 7 days, when AI summarizes, then it categorizes by: Shipped, In Progress, Blocked
- Given users have used the feature for 2+ weeks, when they open the summary, then they see a "this is 15% faster than last week" trend

## Success Metrics

| Metric | Baseline | Target | Time to Evaluate |
|--------|---------|--------|------------------|
| Status meeting hours/week | 4h avg | < 2h | 60 days post-launch |
| WAU engaging with updates | N/A | 40% of team members | 30 days |
| Digest open rate | N/A | 35%+ | 14 days |
| Support tickets (pre-launch weekly avg) | 12 | < 15 | 30 days |

## Launch Criteria
- [x] P0/P1 bugs: 0
- [x] P95 latency: < 500ms
- [ ] Load test: 1000 concurrent users
- [ ] Docs published
- [ ] Support trained

## Risks
- **AI summary quality**: If AI generates poor summaries, users lose trust. Mitigation: Show "AI-generated" label, allow thumbs up/down, fallback to simple list format
- **Email fatigue**: Users may ignore digests. Mitigation: Smart frequency (daily only if activity, email controls in settings)
- **Adoption**: Teams already in meetings may not change behavior. Mitigation: "Try it for one week" campaign, reduce standup cadence suggestion
