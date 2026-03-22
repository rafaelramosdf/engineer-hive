# Engineer Hive — Framework Overview

## What is Engineer Hive?

Engineer Hive is an AI-native engineering framework that functions as a complete software engineering team. It provides specialized AI agents, structured workflows, and standardized patterns to enable AI-first development.

## Architecture

```
.github/
├── copilot-instructions.md     # Global instructions & agent routing (bootstrap)
├── agents/                     # Specialized AI agent definitions
│   ├── hive-initializer        # Framework setup & configuration
│   ├── doc-manager             # Documentation management
│   ├── product-manager         # Product ownership & specs
│   ├── architect               # Architecture decisions
│   ├── design-ux-ui            # UX/UI design system
│   ├── engineer-backend        # Backend engineering
│   ├── engineer-frontend       # Frontend engineering
│   └── bug-analyst             # Bug investigation
├── instructions/               # File-specific coding guidelines
│   ├── coding-standards        # Universal coding rules
│   ├── spec-writing            # Specification standards
│   ├── documentation-standards # Doc writing rules
│   └── stack.*                 # Stack-specific rules (generated)
├── prompts/                    # Reusable workflow templates
│   ├── new-feature             # Create feature specs
│   ├── new-task                # Create task specs
│   ├── bugfix                  # Investigate and spec bugs
│   ├── hotfix                  # Critical production fixes
│   ├── init-project            # Initialize framework
│   └── implement-spec          # Implement from spec
├── skills/                     # Complex workflow skills
│   ├── hive-initializer/       # Setup procedures & references
│   └── architecture/           # Architecture knowledge base
└── hooks/                      # Lifecycle automation
specs/                          # Specifications (features, tasks, bugfixes, hotfixes)
docs/                           # Human-readable project documentation
```

## Agent Routing

The bootstrap mechanism in `copilot-instructions.md` analyzes user intent and routes to the appropriate specialist agent. This enables AI-first development where engineers write specs and agents execute.

## Workflow

```
Engineer writes spec → Agent implements → Doc-manager updates docs → Commit
```

1. **Spec** — Engineer or product-manager writes a specification
2. **Route** — Bootstrap identifies the right agent(s)
3. **Execute** — Agent implements following project standards
4. **Document** — Doc-manager reviews and updates documentation
5. **Commit** — Changes follow project git conventions

## Cross-Editor Compatibility

The framework uses `.github/` as the primary directory, which is recognized by:
- **VS Code / GitHub Copilot**: Full native support for all primitives
- **Cursor**: Supports `.github/` instructions and agents
- **Claude Code**: Can use `.github/` alongside `.claude/`
- **Other editors**: Most modern AI-enabled editors respect `.github/` conventions

For editors that use different paths, the framework can be extended:
- `.cursorrules` — Cursor-specific rules (link to `.github/copilot-instructions.md`)
- `.claude/` — Claude Code specific settings
- `.agents/` — Generic agents directory (alternative to `.github/agents/`)

## Key Design Decisions

1. **Single source of truth**: `.github/copilot-instructions.md` is the entry point
2. **Spec-driven**: All work starts as a specification
3. **Agent autonomy**: Each agent has complete context for its domain
4. **Progressive loading**: Skills use reference files to manage context efficiently
5. **Stack agnostic**: Project-specific rules are generated, not hardcoded
