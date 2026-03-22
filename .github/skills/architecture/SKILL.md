---
name: architecture
description: "Architecture knowledge base with design patterns, system designs, and architectural patterns. Use when making architecture decisions, evaluating design approaches, or reviewing system structure."
---

# Architecture Skill

## When to Use

- Making architecture decisions for new features or systems
- Evaluating trade-offs between architectural approaches
- Reviewing existing architecture for improvements
- Documenting architecture decisions (ADRs)
- Choosing design patterns for implementation

## Knowledge Base

This skill provides reference documentation for common architectural patterns and design decisions.

### References

- [Design Patterns](./references/design-patterns.md) — GoF and modern patterns
- [Software Architectures](./references/software-architectures.md) — Application architecture patterns
- [System Design](./references/system-design.md) — Distributed system patterns
- [ADR Template](./references/adr-template.md) — Architecture Decision Record format

## Procedure

### Making an Architecture Decision

1. **Understand the requirement** — What problem are we solving?
2. **Review current architecture** — Check `docs/architecture/` for existing decisions
3. **Evaluate options** — Consult relevant reference docs for patterns
4. **Assess trade-offs** — Consider complexity, scalability, maintainability, team expertise
5. **Document the decision** — Create an ADR using the [template](./references/adr-template.md)
6. **Update instructions** — If new patterns are introduced, update `.github/instructions/`

### Architecture Review

1. **Analyze the codebase** — Identify current patterns and structure
2. **Check for anti-patterns** — Look for violations of chosen architecture
3. **Propose improvements** — Prioritize by impact and effort
4. **Write recommendations** — Structured report with specific action items
