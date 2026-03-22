# Hotfix: {Title}

> **Status**: URGENT
> **Date**: {YYYY-MM-DD}
> **Reported by**: {source}
> **Severity**: Critical
> **Assigned to**: {`@engineer-backend` | `@engineer-frontend`}

## Critical Issue

{Brief, clear description of the production issue}

## Impact

- **Users affected**: {scope}
- **Revenue impact**: {if applicable}
- **Data risk**: {any data corruption or loss}
- **Time critical**: {SLA or deadline}

## Symptoms

{What is happening in production? Include error messages, metrics, alerts.}

## Reproduction

1. {Fastest way to reproduce}
2. **Expected**: {correct behavior}
3. **Actual**: {broken behavior}

## Root Cause

{Quick root cause analysis — focus on the most likely cause}

## Proposed Fix

{Minimal, safe fix to resolve the issue. Prefer the smallest change that fixes the problem.}

### Files to Modify

| File | Change |
|------|--------|
| `{path}` | {minimal change description} |

## Rollback Plan

{How to roll back if the fix causes additional issues}

1. {Rollback step 1}
2. {Rollback step 2}

## Verification

- [ ] {How to verify the fix resolves the issue in production}
- [ ] {Monitoring check to confirm stability}

## Follow-up

{Any non-urgent follow-up work needed after the hotfix is deployed. Create a separate task spec for these.}
