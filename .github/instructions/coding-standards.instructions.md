---
description: "Use when writing or reviewing code in any language. Covers general coding standards, naming conventions, and best practices applicable across the project."
applyTo: "**"
---

# Coding Standards

## General Principles

- Write clean, readable, self-documenting code
- Follow the Single Responsibility Principle
- Prefer composition over inheritance
- Keep functions small and focused (max ~30 lines)
- Use meaningful, descriptive names for variables, functions, and classes
- Avoid magic numbers — use named constants
- Handle errors explicitly — never swallow exceptions silently

## Naming Conventions

- **Files**: Use the naming convention established by the project's stack (kebab-case, camelCase, PascalCase, etc.)
- **Functions/Methods**: Use verbs that describe what they do (`getUserById`, `calculateTotal`)
- **Variables**: Use nouns that describe what they hold (`userList`, `totalAmount`)
- **Booleans**: Use `is`, `has`, `should` prefixes (`isActive`, `hasPermission`)
- **Constants**: Use UPPER_SNAKE_CASE for true constants

## Code Organization

- Group related functionality together
- Separate concerns (data access, business logic, presentation)
- Keep imports organized and sorted
- Remove unused code, imports, and dependencies

## Comments

- Write code that explains itself — minimize comments
- Use comments for "why", not "what"
- Document public APIs and complex algorithms
- Keep comments up-to-date with code changes

## Testing

- Write tests for all new functionality
- Follow the Arrange-Act-Assert pattern
- Use descriptive test names that explain the scenario
- Test edge cases and error scenarios
- Maintain test independence — no shared state between tests

## Security

- Validate all external inputs
- Use parameterized queries for database operations
- Never log sensitive data (passwords, tokens, PII)
- Follow the principle of least privilege
- Keep dependencies updated

## Git Commits

- Write clear, descriptive commit messages
- Use conventional commits format: `type(scope): description`
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`
- Keep commits atomic — one logical change per commit
