# Specifications

This directory contains all specifications for the project. Specs are the primary input for AI agents in the Engineer Hive framework.

## Structure

```
specs/
├── templates/      # Specification templates
├── features/       # Feature specifications
├── tasks/          # Technical task specifications
├── bugfixes/       # Bug investigation and fix specs
└── hotfixes/       # Critical production fix specs
```

## How to Use

1. Choose the appropriate template from `templates/`
2. Copy it to the correct subdirectory
3. Fill in all required sections
4. Name the file: `{YYYY-MM-DD}-{short-slug}.md`
5. Invoke the appropriate agent to implement

## Quick Start

| I want to... | Template | Directory | Agent |
|--------------|----------|-----------|-------|
| Add new functionality | `feature.md` | `specs/features/` | `@product-manager` → `@engineer-*` |
| Improve/refactor code | `task.md` | `specs/tasks/` | `@product-manager` → `@engineer-*` |
| Fix a bug | `bugfix.md` | `specs/bugfixes/` | `@bug-analyst` → `@engineer-*` |
| Fix critical production issue | `hotfix.md` | `specs/hotfixes/` | `@bug-analyst` → `@engineer-*` |

## Spec Lifecycle

1. **Draft** → Initial writing
2. **Ready** → All sections complete
3. **In Progress** → Being implemented
4. **Done** → Acceptance criteria met
5. **Archived** → Move to `specs/archive/`

## Tips

- Use the `/new-feature`, `/new-task`, `/bugfix`, or `/hotfix` prompts to generate specs interactively
- Always include acceptance criteria — they define "done"
- Reference existing code files when relevant
- Be specific: avoid ambiguous requirements
