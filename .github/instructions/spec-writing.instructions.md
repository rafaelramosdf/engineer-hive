---
description: "Use when writing specifications, features, tasks, bugfixes, or hotfixes. Covers the spec-writing standards and quality criteria for the Engineer Hive workflow."
applyTo: "specs/**"
---

# Spec Writing Standards

## Spec Quality Criteria

Every specification must be **self-contained** — an AI agent should be able to implement it without additional context beyond the spec and the existing codebase.

### Required Sections

1. **Title** — Clear, concise description of what needs to be done
2. **Context** — Why this is needed, business motivation
3. **Requirements** — Detailed list of what must be implemented
4. **Acceptance Criteria** — Testable conditions that define "done"
5. **Scope** — Explicit boundaries of what is and isn't included
6. **Target Agent** — Which agent should execute this spec

### Optional Sections

- **Technical Notes** — Implementation hints or constraints
- **Dependencies** — Other specs or systems this depends on
- **References** — Links to related docs, designs, or discussions
- **Priority** — Urgency level (P0-P3)

## Writing Guidelines

- Be specific — avoid ambiguous language like "should work well" or "handle appropriately"
- Include examples for complex requirements
- Reference existing code files when relevant
- Define error scenarios and edge cases
- Specify any performance or security requirements

## File Naming

Use this convention: `{YYYY-MM-DD}-{short-slug}.md`

Examples:
- `2026-03-22-user-authentication.md`
- `2026-03-22-fix-login-timeout.md`

## Spec Lifecycle

1. **Draft** — Initial writing, may have gaps
2. **Ready** — All sections complete, reviewed by product manager
3. **In Progress** — Assigned to an agent, being implemented
4. **Done** — Implementation complete, acceptance criteria met
5. **Archived** — Moved to `specs/archive/` after completion
