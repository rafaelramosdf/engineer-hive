# Contributing Guide

## Workflow

This project uses the **Engineer Hive** framework for AI-first development. All work follows the spec-driven workflow:

1. **Write a spec** — Use the templates in `specs/templates/`
2. **Invoke an agent** — Use the appropriate agent for your task
3. **Implement** — Agent follows the spec and project standards
4. **Document** — `@doc-manager` updates documentation
5. **Commit** — Follow conventional commits

## Writing Specifications

See `specs/README.md` for detailed instructions on writing specs.

### Quick Prompts

| Action | Prompt |
|--------|--------|
| New feature | `/new-feature` |
| Technical task | `/new-task` |
| Bug fix | `/bugfix` |
| Critical fix | `/hotfix` |
| Implement spec | `/implement-spec` |

## Code Standards

- Follow the coding standards defined in `.github/instructions/coding-standards.instructions.md`
- Follow the project's stack-specific rules in `.github/instructions/stack*.instructions.md`

## Git Conventions

- **Branch naming**: `feature/`, `fix/`, `chore/`, `hotfix/`
- **Commit format**: Conventional Commits — `type(scope): description`
- **Types**: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

## Getting Help

- **Framework questions**: Tag `@hive-initializer`
- **Architecture questions**: Tag `@architect`
- **Product questions**: Tag `@product-manager`
