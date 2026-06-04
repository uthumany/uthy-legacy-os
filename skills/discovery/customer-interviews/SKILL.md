---
name: customer-interviews
description: Plan and conduct customer discovery interviews. Use when exploring a problem space, validating assumptions, or talking to users for the first time.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: discovery
    tags: [user-research, interviews, discovery, customer-development]
    related_skills: [user-research, validation-interview, opportunity-solution-tree]
---

# Customer Discovery Interviews

## Overview

Customer discovery interviews are the bedrock of evidence-based product management. This skill turns casual user conversations into structured discovery — helping you uncover real problems, avoid solution bias, and build products people actually need. Rooted in *The Mom Test* by Rob Fitzpatrick and *Continuous Discovery Habits* by Teresa Torres.

## When to Use

- You're entering a new problem space with unvalidated assumptions
- You need to understand *why* users behave a certain way
- You want to test an opportunity before exploring solutions
- You're preparing for a product discovery sprint
- Don't use for: usability testing (use validation-interview instead), market research surveys (too structured), or customer satisfaction calls

## Instructions

### Phase 1: Plan the Interviews

1. **Define your learning goals** — What 3-5 things do you want to learn? Frame as open-ended questions about past behavior, not future intent.
2. **Write the interview guide** — Start with broad context, narrow to specifics. Never ask "Would you use X?" — ask "Tell me about the last time you dealt with Y."
3. **Recruit participants** — Aim for 5-8 per segment. Use customer discovery criteria: they should have the problem, not necessarily use your product.
4. **Avoid bias** — Do not mention your solution idea. Do not pitch. Do not lead.

### Phase 2: Conduct the Interview

1. **Build rapport** — Thank them, explain the goal is to learn, not sell. Ask permission to record.
2. **Ask about specific moments** — "Walk me through the last time you..." beats "How often do you..."
3. **Listen for emotion** — Strong frustration, workarounds, and surprising effort signal real problems.
4. **Use the Mom Test principles**:
   - Talk about *their* life, not your idea
   - Ask about specifics from the past, not hypotheticals about the future
   - Listen for commitments (time, introductions, money) — compliments are cheap
5. **Dig deeper** — When they mention something interesting: "Tell me more about that." "Why did you do it that way?" "What happened next?"

### Phase 3: Synthesize

1. **Debrief immediately** — Within 30 minutes of each interview, capture top 3 takeaways
2. **Create an affinity map** — Group observations by theme, problem, behavior
3. **Update your opportunity map** — Which opportunities grew stronger? Which got disproven?
4. **Identify patterns** — 3+ interviews with the same signal = real finding

## Templates

### Interview Guide Template
```
## Opening (2 min)
- Thanks for your time
- Goal: learn about [topic], not pitch anything
- OK to record?

## Context (5 min)
- Tell me about your role/team
- What does a typical [relevant activity] look like for you?

## Problem Exploration (20 min)
- Walk me through the last time you [relevant scenario]
- What was frustrating about that?
- What did you try? What happened?
- What would ideal look like?
- How are you handling this today?

## Closing (3 min)
- Anything else I should know?
- Would you be open to a follow-up?
- Can you introduce me to others like you?
```

## Sample Output

After 6 customer interviews for a project management tool, a synthesis might reveal:
- **Strong signal**: Teams spend 4+ hours/week in status meetings trying to figure out what's actually done
- **Workaround**: People use physical sticky notes + Slack DMs as a "real" tracker
- **Emotion**: Frustration around "fake updates" — people say green when they're really yellow
- **Opportunity**: A lightweight async status mechanism that doesn't require another meeting

## Common Pitfalls

1. **Pitching, not listening** — If you've said more than 20% of the words, you're pitching
2. **Confirmation bias** — Leading questions ("You'd find that useful, right?") produce garbage data
3. **Too few interviews** — Patterns don't emerge until 5-8 per segment. One interview is an anecdote
4. **Recording without asking** — Always ask permission. Some participants clam up
5. **Skipping synthesis** — Raw transcripts rot. Debrief immediately or lose the insight

## Verification Checklist

- [ ] Interview guide avoids leading questions and solution pitches
- [ ] Recruited 5-8 participants matching the target segment
- [ ] Each interview produced specific past-behavior stories
- [ ] Synthesis identified 3-5 opportunity areas (not feature requests)
- [ ] Assumptions updated based on what was learned
