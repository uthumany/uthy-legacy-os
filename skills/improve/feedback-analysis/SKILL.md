---
name: feedback-analysis
description: Synthesize user feedback into actionable insights. Use when collecting feedback from multiple channels and need to find patterns and prioritize improvements.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: improve
    tags: [feedback, user-feedback, analysis, prioritization, voice-of-customer]
    related_skills: [user-research, iteration-prioritization, retrospective]
---

# Feedback Analysis

## Overview

User feedback is everywhere — support tickets, app store reviews, NPS surveys, social media, sales calls. Without systematic analysis, it's noise. This skill helps you collect, categorize, and synthesize feedback into patterns you can act on.

## When to Use

- You have a backlog of user feedback to process
- You need to identify the most impactful improvements for next sprint
- You want to close the feedback loop with users
- Building a feedback system from scratch
- Don't use for: one-off feature requests (just prioritize them), bug reports (different triage process)

## Instructions

### 1. Collect Feedback from All Channels

Set up a feedback ingestion process:
- **Support tickets**: Tag by category (bug, feature request, confusion, praise)
- **In-app feedback**: Surveys, NPS, ratings
- **Sales calls**: Capture objections and feature requests
- **Social / reviews**: App store reviews, Twitter, Reddit
- **Customer success**: Churn reasons, onboarding blockers
- **Internal**: Dogfood feedback from your own team

### 2. Categorize Each Piece

Use a consistent tagging system:
- **Type**: Bug, Feature Request, Improvement, Confusion, Praise
- **Severity**: Blocking (can't use product), Major (significant friction), Minor (annoyance), Enhancement
- **Area**: Which feature or workflow does this relate to?
- **User segment**: Which user type reported this?

### 3. Identify Patterns (The Signal)

Look for:
- **Frequency**: Same issue mentioned by 5+ users
- **Emotion**: Strong negative or positive language
- **Workarounds**: Users doing something awkward to compensate
- **Unexpected use cases**: Users finding value you didn't design for
- **Confusion patterns**: Multiple users asking the same question

### 4. Prioritize Improvements

For each pattern, ask:
- **Impact**: How many users are affected? How severely?
- **Frequency**: How often does this come up?
- **Trend**: Is this growing or shrinking?
- **Effort**: How hard would it be to address?

Rank patterns using value-effort or RICE.

### 5. Close the Feedback Loop

- **Acknowledge**: Reply to users who gave feedback (even if you can't build it yet)
- **Communicate**: "You asked, we built" — show users their feedback led to change
- **Measure**: Track whether your fix reduces feedback volume on that topic

## Sample Output

**Feedback analysis for Q2**:
- **🔴 Major pattern**: Onboarding confusion — 23 tickets about "where's my team?" after signup
  - Action: Redesign invite flow (estimated 1 sprint)
  - Impact: 23 users (growing trend)
- **🟡 Minor pattern**: Search speed complaints — 8 tickets
  - Action: Optimize queries (estimated 3 days)
- **🟢 Praise**: New export feature — 12 users said they love it
  - Signal: Invest more in data export capabilities


## Verification Checklist

- [ ] Feedback collected from all relevant channels
- [ ] Each piece categorized by type, severity, and area
- [ ] Patterns identified (frequency, emotion, workarounds)
- [ ] Patterns prioritized by impact and frequency
- [ ] Top 3 improvement actions defined
- [ ] Feedback loop closed with users who contributed
- [ ] Trend tracked over time (is this improving?)


1. **Loudest voice wins** — The user who tweets angrily isn't representative. Weight by frequency, not volume
2. **Feature request trap** — Users suggest solutions. Your job is to find the underlying problem
3. **No feedback loop** — If users never hear back, they stop giving feedback
4. **All feedback treated equally** — A feature request from a $100K customer != same request from a free user
5. **Ignoring praise** — Positive patterns tell you where to double down
