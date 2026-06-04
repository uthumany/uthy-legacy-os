---
**Experiment ID**: {{EXP-001}}
**Owner**: {{Name}}
**Status**: {{Planned / Running / Analyzing / Complete}}
---

## Hypothesis

**We believe** that {{building/changing X}} **will result in** {{outcome Y}}.

**We'll know we're right when** {{specific measurable signal}}.

## Experiment Design

**Experiment type**: {{A/B test / Fake door / Concept test / Prototype test / Concierge test}}

**Description**: {{What exactly will you do?}}

**Success criteria**:
- Primary: {{Metric}} — Target: {{Value}}
- Secondary: {{Metric}} — Target: {{Value}}
- Guardrail: {{Counter-metric}} — Must not exceed: {{Threshold}}

## Logistics

**Duration**: {{Days / weeks}}
**Sample size required**: {{N}}
**Audience**: {{% of users / specific segment}}
**Cost**: {{Engineering hours / Design hours / Other}}

## Risks & Confounders

- {{What could invalidate the results?}}
- {{Novelty effect? Primacy effect? Seasonality?}}

## Decision Criteria

- If {{primary metric}} > {{target}} AND guardrails pass → **SHIP**
- If {{primary metric}} between {{lower}} and {{upper}} → **ITERATE** (and learn why)
- If {{primary metric}} < {{lower}} OR guardrail fails → **KILL**

## Results

**Date analyzed**: {{Date}}
**Sample size achieved**: {{N}}
**Primary metric**: {{Result}} — {{Significant? p=}}
**Guardrail metrics**: {{All passed? / Flag issues}}

**Decision**: {{SHIP / ITERATE / KILL / NEED MORE DATA}}

**Key learnings**:
- {{What surprised you?}}
- {{What would you do differently?}}
