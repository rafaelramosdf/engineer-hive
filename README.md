# Engineer Hive 🐝

**AI-Native Engineering Framework** — A complete software engineering team powered by specialized AI agents.

Engineer Hive is a pluggable framework that transforms your code editor into an AI-first development environment. Write specifications, and let specialized agents handle the implementation following your project's standards and patterns.

## Quick Start

### Install in an existing project

```bash
# Clone the framework (or use as template)
npx degit rafaelramosdf/engineer-hive/.github .github
npx degit rafaelramosdf/engineer-hive/specs specs
npx degit rafaelramosdf/engineer-hive/docs docs

# Or use the install script
curl -fsSL https://raw.githubusercontent.com/rafaelramosdf/engineer-hive/main/scripts/install.sh | bash
```

### Initialize for your project

Open your editor's AI chat and run:
```
@hive-initializer Setup Engineer Hive for this project
```

Or use the prompt shortcut: `/init-project`

## How It Works

```
📝 Write a Spec  →  🤖 Agent Implements  →  📄 Docs Updated  →  ✅ Commit
```

1. **You write a specification** in `specs/` (feature, task, bugfix, or hotfix)
2. **The right agent is selected** via the bootstrap router
3. **The agent implements** following your project's standards
4. **Documentation is reviewed** and updated automatically
5. **You review and commit** the changes

## Agents

| Agent | Role | Invoke |
|-------|------|--------|
| **Hive Initializer** | Framework setup and configuration | `@hive-initializer` |
| **Doc Manager** | Documentation guardian | `@doc-manager` |
| **Product Manager** | Features, specs, product vision | `@product-manager` |
| **Architect** | Architecture decisions, design patterns | `@architect` |
| **Design UX/UI** | Design system, visual patterns | `@design-ux-ui` |
| **Engineer Backend** | Server, APIs, database | `@engineer-backend` |
| **Engineer Frontend** | UI, components, client-side | `@engineer-frontend` |
| **Bug Analyst** | Bug investigation, diagnosis | `@bug-analyst` |

## Quick Prompts

| Prompt | Description |
|--------|-------------|
| `/new-feature` | Create a feature specification |
| `/new-task` | Create a technical task specification |
| `/bugfix` | Investigate and spec a bug fix |
| `/hotfix` | Create an urgent production fix spec |
| `/implement-spec` | Implement from an existing spec |
| `/init-project` | Initialize or reconfigure the framework |

## Project Structure

```
.github/
├── copilot-instructions.md     # Global instructions & agent routing
├── agents/                     # 8 specialized AI agents
│   ├── hive-initializer        # Framework setup
│   ├── doc-manager             # Documentation
│   ├── product-manager         # Product & specs
│   ├── architect               # Architecture
│   ├── design-ux-ui            # Design system
│   ├── engineer-backend        # Backend dev
│   ├── engineer-frontend       # Frontend dev
│   └── bug-analyst             # Bug diagnosis
├── instructions/               # Coding guidelines (auto + stack-specific)
├── prompts/                    # Reusable workflow templates
├── skills/                     # Complex workflows with references
│   ├── hive-initializer/       # Setup procedures
│   └── architecture/           # Architecture knowledge base
└── hooks/                      # Lifecycle automation
specs/                          # Specifications (your input)
├── templates/                  # Spec templates
├── features/                   # Feature specs
├── tasks/                      # Task specs
├── bugfixes/                   # Bugfix specs
└── hotfixes/                   # Hotfix specs
docs/                           # Human-readable documentation
├── architecture/               # Architecture docs & ADRs
├── api/                        # API documentation
├── guides/                     # Developer guides
├── design-system/              # Design system docs
└── changelog/                  # Release notes
```

## Editor Compatibility

| Editor | Support Level | Notes |
|--------|--------------|-------|
| **VS Code + GitHub Copilot** | Full | Native support for all primitives |
| **Cursor** | High | Supports agents, instructions, prompts |
| **Windsurf** | Medium | Supports instructions and prompts |
| **Claude Code** | Medium | Can leverage `.github/` conventions |
| **Others** | Basic | Instructions are readable by any AI assistant |

## Key Design Decisions

- **Stack agnostic** — Works with any language, framework, or architecture
- **Spec-driven** — Specs are the single source of truth for all work
- **Modular agents** — Each agent is independent and focused on its domain
- **Progressive context** — Skills load references on-demand to optimize context windows
- **Cross-editor** — Built on `.github/` conventions recognized by major editors

## FAQ

### Can agents be auto-selected from my prompt?

The bootstrap routing table in `copilot-instructions.md` guides the default agent to recommend the appropriate specialist based on your prompt keywords. In VS Code, you can also manually select agents from the agent picker (`@agent-name`).

### Can agents run proactively in the background?

Currently, AI editor integrations are primarily prompt-driven. However, the framework supports **hooks** (`.github/hooks/`) for event-driven automation — such as triggering documentation checks after file saves. As editor capabilities evolve, the framework is designed to support more autonomous workflows.

### How do I add a new agent?

Create a new `.agent.md` file in `.github/agents/` and add its routing entry to `copilot-instructions.md`. See the existing agents as templates.

## License

MIT

---

Built with ❤️ by [rafaelramosdf](https://github.com/rafaelramosdf)
