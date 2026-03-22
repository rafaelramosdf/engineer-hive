---
name: hive-initializer
description: "Setup and configure the Engineer Hive framework for any software project. Use when initializing a new project, onboarding an existing project, reconfiguring stack settings, or running framework health checks."
---

# Hive Initializer Skill

## When to Use

- Setting up Engineer Hive for the first time in a project
- Onboarding an existing project into the framework
- Reconfiguring the project stack or architecture
- Running a framework health check
- Troubleshooting framework configuration issues

## Procedure

### New Project Setup

1. Interview the engineer using the [setup checklist](./references/setup-checklist.md)
2. Generate stack-specific instruction files
3. Configure agent references to match the project stack
4. Initialize the `specs/` and `docs/` directories
5. Run the health check from [framework overview](./references/framework-overview.md)

### Existing Project Onboarding

1. Scan for stack indicators (package files, config files, etc.)
2. Detect architecture patterns from code structure
3. Extract coding conventions from existing code
4. Generate instruction files based on findings
5. Verify framework structure integrity

### Health Check

Verify all components exist and are properly configured:
- `.github/copilot-instructions.md` — Bootstrap routing
- `.github/agents/` — All 8 specialist agents
- `.github/instructions/` — Stack and coding guidelines
- `.github/prompts/` — Workflow templates
- `.github/skills/` — Complex workflow assets
- `specs/` — Spec directories and templates
- `docs/` — Project documentation

## References

- [Framework Overview](./references/framework-overview.md)
- [Setup Checklist](./references/setup-checklist.md)
