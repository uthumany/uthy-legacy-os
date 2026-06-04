# Retrospective: Team Dashboard v1.0 Launch

**Date**: June 4, 2026
**Facilitator**: Sarah Chen
**Participants**: Engineering (4), Design (1), QA (1), PM (1)
**Format**: Start/Stop/Continue

---

## What Happened

We launched Team Dashboard v1.0 on May 15 after a 6-week build. The feature lets teams post async updates and see a dashboard of project health. Launch went smoothly technically, but adoption is lower than expected — 18% activation rate vs. 30% target.

## Gathering

### 👍 Liked / Continue
- **Daily standups** kept everyone aligned during the build
- **Design review process** caught 3 significant UX issues before code
- **Phased rollout** (10% → 25% → 100%) prevented any major incident
- **QA partnership** — QA was embedded in the team, not a separate gate
- **AI summary quality** — Early user feedback is positive (4.2/5 rating)

### 📚 Learned
- **We should have done prototype testing** — We assumed users would find the dashboard intuitive, but many didn't know where to start
- **We over-estimated engineering capacity** — 3 stories had to be descoped (mobile notifications, custom layouts, export)
- **Stakeholder updates need more context** — Our RAG status was accurate but didn't explain WHY something was yellow
- **Email digests should launch alongside the feature** — Users who got the digest in beta were 3x more likely to adopt the feature

### 🚫 Lacked / Stop
- **No post-launch user interviews scheduled** — We're 3 weeks post-launch and just now scheduling them. Should have been booked for week 2
- **Marketing was an afterthought** — In-app announcement went out, but we didn't activate sales or CS to promote it
- **Stopping code review on Fridays** — 2 bugs shipped because Friday reviews were rushed. Stop shipping on Fridays
- **Scope creep on "nice to have" features** — Custom emoji reactions took 3 days and added zero metric value

### 💭 Longed For
- **More mobile testing** — Dashboard looks great on desktop, but mobile users have a poor experience
- **Customer reference calls during discovery** — We talked to users but not enough heavy PM tool users
- **Engineering input on PRD earlier** — Some requirements were more expensive than expected (AI summary caching)

## Action Items

| Action | Owner | Due | Success Criteria |
|--------|-------|-----|-----------------|
| Schedule 5 post-launch user interviews | Sarah | June 11 | 5 interviews completed, insights in research repo |
| Build email digest feature | Dev team | July 1 | Digest sent to all teams with daily updates |
| Create activation flow tutorial | Design | June 18 | Tutorial shown on first dashboard visit |
| Ship on Tuesdays/Thursdays only | Dev lead | Immediate | No Friday deploys going forward |
| Book retro for v2.0 planning | Sarah | June 25 | Retro scheduled, v2.0 timeline drafted |

## Previous Retro Follow-up

- ✅ **Write test cases before coding** — Integrated into sprint planning
- ✅ **Pre-launch load testing** — Completed, found 2 performance issues
- ⏳ **Monthly stakeholder demos** — Not yet. Rescheduled for next week

## Overall Grade: B+

The launch was operationally solid, but we missed adoption targets because we didn't invest enough in the user experience testing and go-to-market. The team has strong engineering execution — we need to bring the same rigor to the adoption side.
