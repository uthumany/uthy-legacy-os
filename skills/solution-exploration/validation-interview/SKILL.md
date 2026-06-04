---
name: validation-interview
description: Test prototypes and concepts with customer interviews. Use when you have a solution concept or prototype and need to validate assumptions before building.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: solution-exploration
    tags: [validation, interview, prototype-testing, concept-testing, usability]
    related_skills: [customer-interviews, prototype-planning, experiment-design]
---

# Validation Interview

## Overview

Validation interviews are not the same as discovery interviews. In discovery, you explore the problem. In validation, you present a proposed solution and gauge whether it works. This skill covers concept testing, prototype testing, and usability interview techniques.

## When to Use

- You have a prototype or concept to test with real users
- You need to validate assumptions before committing to build
- You want to catch usability issues before shipping
- You're practicing continuous discovery — testing solutions as you design them
- Don't use for: early-stage discovery (use customer-interviews skill), quantitative validation (use A/B tests), or sales demos (different goal)

## Instructions

### 1. Prepare the Interview

**Define the goal**: What specific assumptions are you testing?

**Choose the method**:
- **Concept test**: Show a description or mockup. Test desirability and comprehension.
- **Prototype test**: Let them use an interactive prototype. Test usability and flow.
- **Wizard of Oz**: Pretend the product works. Test the core value hypothesis.

**Write the script**:
- Opening: "I'm going to show you something we're thinking about building. I want your honest reaction — negative feedback is more valuable than positive."
- For each concept: "Here's the idea. What do you think this does?"
- For prototypes: "I'd like you to try completing [task]. Please think aloud as you go."
- Closing: "If this existed today, would you use it? Why or why not?"

### 2. Conduct the Interview

**Do**:
- Let users explore freely before explaining
- Ask "What would you expect to happen next?"
- Pay attention to body language and hesitation
- Encourage criticism: "What's wrong with this?"

**Don't**:
- Lead the user through the interface
- Explain what they missed (until after testing)
- Get defensive about your design
- Ask "Do you like it?" (production bias)
- Over-explain the concept (if it needs explanation, that's a finding)

### 3. Watch for Warning Signs

- **Polite praise**: "That's cool!" → probe for specifics
- **Feature requests**: Building features doesn't validate the core problem
- **Confusion**: If they don't understand what it does, that's a signal
- **Solution indifference**: "I could see this being useful" = not a strong signal

### 4. Synthesize Results

For each validation interview:
1. **Comprehension check**: Did they understand the concept without explanation?
2. **Desirability check**: Would they use it? What would it replace?
3. **Usability check**: Could they complete tasks independently?
4. **Caveats**: What conditions would make them NOT use it?

### 5. Make a Decision

Patterns across 5+ interviews:
- ✅ 4/5 understood + expressed desire → proceed
- 🔄 Mixed signals → iterate prototype and re-test
- ❌ 3/5 confused or indifferent → reconsider the solution
- ❌ 5/5 didn't understand → start over with clearer framing

## Sample Output

6 concept tests for a "team updates" feature:
- ✅ Comprehension: 5/6 understood the concept without explanation
- ✅ Desirability: 4/6 said they'd use it "today"
- ⚠️ Usability: 3/6 tried to find it in settings, not the project view
- 🔄 Action: Iterate placement before usability testing. Re-test with 3 more users.

## Common Pitfalls

1. **Confirmation seeking** — If you're looking for people to validate your idea, you'll hear what you want
2. **Leading the witness** — "Don't you think this would save time?" = useless answer
3. **Ignoring the non-verbal** — Facial expressions, pauses, and sighs tell you more than words
4. **One interview, one decision** — A single validation interview is an anecdote. 5+ is a pattern
5. **Falling in love** — If you can't imagine the answer being "kill it," don't interview. You're not ready to hear the truth

## Verification Checklist

- [ ] Interview goal tied to specific assumptions
- [ ] Script avoids leading questions and solution pitching
- [ ] Participants represent the target segment
- [ ] 5+ interviews completed per concept
- [ ] Results synthesized into go/iterate/kill recommendation
- [ ] Findings shared with the team before building
