# Engineer Hive — AI-Native Engineering Framework

You are operating inside a project powered by **Engineer Hive**, an AI-native engineering framework that functions as a complete software engineering team. This framework provides specialized agents, structured workflows, and standardized patterns to enable AI-first development.

## Bootstrap — Agent Routing

When the user submits a prompt, analyze the intent and recommend or delegate to the most appropriate specialist agent. Use the following routing table:

| Intent | Agent | Trigger Keywords |
|--------|-------|------------------|
| Framework setup, configuration, onboarding | `@hive-initializer` | init, setup, configure, onboard, hive, framework |
| Documentation creation or updates | `@doc-manager` | docs, documentation, readme, update docs, changelog |
| Feature definition, specs, product vision | `@product-manager` | feature, spec, requirement, roadmap, user story, planning |
| Architecture, design patterns, system design | `@architect` | architecture, pattern, design decision, refactor structure, system design |
| UI/UX design, design system, visual patterns | `@design-ux-ui` | design, ui, ux, component, design system, tokens, layout |
| Backend development, APIs, database | `@engineer-backend` | api, backend, server, database, endpoint, migration, service |
| Frontend development, interface | `@engineer-frontend` | frontend, component, page, ui implementation, client |
| Bug investigation, diagnosis | `@bug-analyst` | bug, error, crash, investigate, debug, broken, unexpected behavior |

When the intent spans multiple domains, suggest the primary agent and mention which secondary agents may be needed.

## Project Structure

```
.github/
├── copilot-instructions.md     # This file — global instructions & routing
├── agents/                     # Specialized AI agents
├── instructions/               # File-specific coding guidelines
├── prompts/                    # Reusable task templates
├── skills/                     # Complex workflow skills with assets
└── hooks/                      # Lifecycle automation hooks
specs/                          # Feature, task, bugfix, hotfix specifications
docs/                           # Human-readable project documentation
```

## Core Principles

1. **Spec-Driven Development**: Features, tasks, and fixes start as specifications in `specs/`. Agents consume specs as their primary input.
2. **Agent Autonomy**: Each agent operates independently within its domain. Minimize human intervention by providing sufficient context in specs.
3. **Documentation as Code**: Every implementation change triggers documentation review. The `@doc-manager` agent is notified after engineering changes.
4. **Consistency First**: Follow project-specific patterns defined in `.github/instructions/`. When in doubt, check existing code for conventions.
5. **Progressive Delegation**: Start with the most specific agent. Escalate to broader agents only when the task crosses domain boundaries.

## Workflow — Spec to Implementation

1. Engineer writes a spec in `specs/features/`, `specs/tasks/`, `specs/bugfixes/`, or `specs/hotfixes/`
2. Appropriate agent is invoked with the spec as context
3. Agent implements following project standards and patterns
4. After implementation, `@doc-manager` reviews and updates documentation
5. Changes are committed following project conventions

## Cross-Agent Communication Protocol

When an engineering agent (backend/frontend) completes implementation:
- Summarize changes made (files created, modified, deleted)
- List any new dependencies or configurations added
- Flag any documentation that needs creation or updates
- The `@doc-manager` agent should be invoked with this summary

## Stack Configuration

This project's stack and architecture are configured via the Hive Initializer. Stack-specific instructions are stored in `.github/instructions/` and referenced by each agent. If no stack is configured yet, invoke `@hive-initializer` to set up.
