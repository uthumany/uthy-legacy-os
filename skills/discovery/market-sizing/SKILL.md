---
name: market-sizing
description: TAM/SAM/SOM estimation with top-down and bottom-up approaches. Use when sizing a market opportunity, building a business case, or estimating revenue potential.
version: 1.0.0
author: Uthuman & Co
license: MIT
metadata:
  uthy-legacy:
    phase: discovery
    tags: [market-sizing, tam, sam, som, business-case, strategy]
    related_skills: [competitive-analysis, elevator-pitch, go-to-market]
---

# Market Sizing

## Overview

Market sizing answers one question: **how big is this opportunity?** It's a critical input for prioritization, fundraising, and strategic planning. This skill guides you through TAM (Total Addressable Market), SAM (Serviceable Addressable Market), and SOM (Serviceable Obtainable Market) estimation using both top-down (macro data) and bottom-up (unit economics) approaches.

## When to Use

- Evaluating whether to enter a new market
- Building a business case for a new product
- Preparing for investor pitches or board reviews
- Comparing multiple opportunity areas
- Don't use for: feature-level decisions (too noisy), already-proven markets (sizing is implied)

## Instructions

### 1. Define Your Market

**Top-down approach**:
1. Start with a broad market number (industry reports, analyst data)
2. Apply filters to narrow to your addressable segment
3. Adjust for geography, business size, or other constraints

**Bottom-up approach** (preferred for accuracy):
1. Define your target customer unit (user, seat, account, transaction)
2. Estimate number of target customers
3. Multiply by expected price per unit
4. Adjust for adoption rate over time

### 2. Calculate TAM

TAM = total revenue opportunity if you had 100% market share.
- Top-down: Find industry revenue → multiply by your segment's share
- Bottom-up: (Total potential customers × Price per customer/year)
- Be explicit about your assumptions — document each one

### 3. Calculate SAM

SAM = the portion of TAM you can reach with your current or planned offering.
- Apply filters: geography, segment, use case compatibility
- Example: If TAM is $10B but you only serve mid-market US companies, SAM might be $500M

### 4. Calculate SOM

SOM = the portion of SAM you can realistically capture in the near term (3-5 years).
- Based on capacity: sales team size, distribution channels, marketing budget
- Based on competitive position: realistic market share given your differentiation
- SOM is usually 1-10% of SAM for new entrants

### 5. Sensitivity Analysis

Market sizing is guesswork with math. Run scenarios:
- **Conservative**: Lower end of estimates, slower adoption
- **Base case**: Best-guess estimates
- **Optimistic**: Higher adoption, faster growth
- For each scenario, show the key drivers that would make it true

### 6. Document Assumptions

Every estimate relies on assumptions. List them explicitly:
- "We assume 10% of Fortune 500 companies will adopt"
- "Based on Forrester report sizing the market at $X"
- "Assumes $50/user/month pricing with 20% annual discount for enterprise"

## Sample Output

Market sizing for a team documentation tool:
- **TAM**: $12B (global knowledge management spend, per Gartner 2024)
- **SAM**: $1.8B (mid-market tech companies with 50-500 employees)
- **SOM**: $36M (2% of SAM over 3 years, given sales capacity of 12 reps)
- **Bottom-up sanity check**: 20,000 companies × 100 users × $15/user/month × 12 months = $36M/year ✓
- **Key assumption**: 40% gross margins, $15/user/month pricing

## Common Pitfalls

1. **TAM vanity** — A $1B TAM doesn't matter if you can only reach $10M of it
2. **Garbage in, garbage out** — Bad assumptions produce precise-looking wrong answers
3. **Confusing SAM with SOM** — SAM is reachable, SOM is capturable. These are very different
4. **Static sizing** — Markets grow and shrink. Use growth rates, not single-year snapshots
5. **Bottom-up vs. top-down divergence** — If they differ by 10x, your assumptions are wrong

## Verification Checklist

- [ ] TAM documented with source and methodology
- [ ] SAM calculated with explicit reachability filters
- [ ] SOM based on realistic capacity and market share estimates
- [ ] Assumptions listed and challenged (at least 5)
- [ ] Sensitivity analysis run (conservative, base, optimistic)
- [ ] Bottom-up and top-down estimates within 2x of each other
