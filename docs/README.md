# Project Documentation

This directory contains all human-readable project documentation.

## Structure

```
docs/
├── README.md                   # This file — documentation index
├── architecture/               # Architecture documentation
│   ├── overview.md             # System architecture overview
│   └── decisions/              # Architecture Decision Records (ADRs)
├── api/                        # API documentation
├── guides/                     # User and developer guides
│   ├── getting-started.md      # Quick start guide
│   └── contributing.md         # Contribution guidelines
├── design-system/              # Design system documentation
│   ├── tokens/                 # Design tokens (colors, typography, spacing)
│   ├── components/             # Component specifications
│   └── patterns/               # UX patterns
└── changelog/                  # Release notes
```

## For AI Agents

AI agent documentation lives in the framework directory (`.github/`):
- Agent definitions → `.github/agents/`
- Coding guidelines → `.github/instructions/`
- Workflow skills → `.github/skills/`
- Task prompts → `.github/prompts/`

This `docs/` directory is for **human-readable** project documentation.

## Maintained By

The `@doc-manager` agent is responsible for keeping this documentation accurate and up-to-date. After any engineering change, the doc-manager reviews and updates affected docs.
