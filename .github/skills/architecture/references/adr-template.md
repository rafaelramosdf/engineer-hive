# Architecture Decision Record Template

Use this template when documenting architecture decisions. Save ADRs to `docs/architecture/decisions/`.

## File Naming

`ADR-{number}-{short-slug}.md`

Examples:
- `ADR-001-use-postgresql.md`
- `ADR-002-adopt-clean-architecture.md`
- `ADR-003-implement-cqrs.md`

## Template

```markdown
# ADR-{number}: {Title}

**Date**: {YYYY-MM-DD}
**Status**: {Proposed | Accepted | Deprecated | Superseded by ADR-XXX}
**Deciders**: {who made the decision}

## Context

{What is the issue or situation that motivates this decision? Include relevant technical and business context.}

## Decision

{What is the decision being made? Be specific about the chosen approach.}

## Rationale

{Why was this approach chosen? What are the key factors that influenced the decision?}

## Consequences

### Positive
- {Positive outcome 1}
- {Positive outcome 2}

### Negative
- {Trade-off or downside 1}
- {Trade-off or downside 2}

### Neutral
- {Neutral consequence that the team should be aware of}

## Alternatives Considered

### {Alternative 1}
- **Description**: {brief description}
- **Why rejected**: {reason}

### {Alternative 2}
- **Description**: {brief description}
- **Why rejected**: {reason}

## References

- {Link to relevant documentation, RFC, or discussion}
```
