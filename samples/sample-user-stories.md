# Sample User Stories: Team Dashboard Initiative

## Epic: Team Dashboard

### Story 1: View Team Status
**As a** team lead,
**I want** to see all my team's current work at a glance,
**So that** I know what's happening without interrupting everyone.

**Acceptance Criteria**:
- Given I have 3+ active projects, when I open the dashboard, then I see a card per project with: name, status indicator (🟢🟡🔴), last update time
- Given a project has no updates in 48h, when I view the dashboard, then the card shows a "⚠️ Stale" badge
- Given I click a project card, when the page loads, then I see that project's detailed status page

**INVEST Check**: ✅ Independent — ✅ Negotiable — ✅ Valuable — ✅ Estimable (2d) — ✅ Small — ✅ Testable

---

### Story 2: Post Team Update
**As a** team member,
**I want** to quickly post what I'm working on,
**So that** my team knows my status without asking.

**Acceptance Criteria**:
- Given I am logged in, when I click "Post Update", then I see a modal with text area and "What's the status?" prompt
- Given I select a status (On Track / Needs Help / Blocked), when I post, then the project card updates immediately
- Given I add optional details, when I submit, then my update appears in the timeline feed
- Given I try to post without selecting a status, when I click submit, then I see "Please select a status"

---

### Story 3: AI Weekly Summary
**As a** team lead,
**I want** a weekly AI-generated summary of team progress,
**So that** I can quickly catch up on what happened without reading every update.

**Acceptance Criteria**:
- Given it's end of week, when the summary is generated, then I receive a "Weekly Team Progress" notification
- Given the team had updates this week, when I open the summary, then I see items grouped by: Shipped, In Progress, Blocked
- Given the team is behind schedule, when the summary is generated, then it highlights risks and blockers
- Given I want more detail, when I click "View Full Timeline", then I see all individual updates

---

### Story 4: Dashboard Customization
**As a** team lead,
**I want** to choose which projects appear on my dashboard,
**So that** I only see relevant information.

**Acceptance Criteria**:
- Given I am on the dashboard, when I click "Customize View", then I can select/deselect projects
- Given I customize my view, when I return to the dashboard, then my preferences persist
- Given I have saved customizations, when I click "Reset to Default", then all projects appear again
