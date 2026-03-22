# Setup Checklist

## Information to Gather

Use this checklist when setting up Engineer Hive for a project.

### Core Stack

- [ ] **Primary language(s)**: e.g., TypeScript, Python, Go, Java, C#, Rust
- [ ] **Runtime/Platform**: e.g., Node.js, .NET, JVM, Browser
- [ ] **Package manager**: e.g., npm, pnpm, yarn, pip, cargo, maven

### Backend (if applicable)

- [ ] **Framework**: e.g., Express, NestJS, FastAPI, Django, Spring Boot, ASP.NET
- [ ] **Database**: e.g., PostgreSQL, MySQL, MongoDB, SQLite, Redis
- [ ] **ORM/Query Builder**: e.g., Prisma, TypeORM, SQLAlchemy, Entity Framework
- [ ] **Authentication**: e.g., JWT, OAuth2, Session-based, Auth0, Clerk
- [ ] **API style**: e.g., REST, GraphQL, gRPC, tRPC

### Frontend (if applicable)

- [ ] **Framework**: e.g., React, Next.js, Vue, Nuxt, Angular, Svelte, Astro
- [ ] **Styling**: e.g., Tailwind CSS, CSS Modules, Styled Components, Sass
- [ ] **State management**: e.g., Redux, Zustand, Pinia, Signals
- [ ] **Component library**: e.g., Shadcn/ui, Material UI, Radix, Headless UI

### Architecture

- [ ] **Pattern**: e.g., Monolith, Microservices, Modular Monolith, Serverless
- [ ] **Project structure**: e.g., Feature-based, Layer-based, Domain-driven
- [ ] **Monorepo**: e.g., Turborepo, Nx, pnpm workspaces, or single repo

### Quality & DevOps

- [ ] **Testing framework**: e.g., Jest, Vitest, Pytest, xUnit, Go test
- [ ] **E2E testing**: e.g., Playwright, Cypress, Selenium
- [ ] **Linter**: e.g., ESLint, Ruff, golangci-lint, Roslyn analyzers
- [ ] **Formatter**: e.g., Prettier, Black, gofmt, dotnet format
- [ ] **CI/CD**: e.g., GitHub Actions, GitLab CI, Jenkins, Azure DevOps
- [ ] **Deployment**: e.g., Vercel, AWS, Azure, GCP, Docker, Kubernetes

### Conventions

- [ ] **Git workflow**: e.g., Trunk-based, GitFlow, GitHub Flow
- [ ] **Branch naming**: e.g., `feature/`, `fix/`, `chore/`
- [ ] **Commit format**: e.g., Conventional Commits, custom format
- [ ] **PR process**: e.g., Required reviews, CI checks, auto-merge

## Generated Files

After gathering information, create these files:

| File | Content |
|------|---------|
| `.github/instructions/stack.instructions.md` | Stack-specific coding rules and patterns |
| `.github/instructions/stack-backend.instructions.md` | Backend-specific conventions (if applicable) |
| `.github/instructions/stack-frontend.instructions.md` | Frontend-specific conventions (if applicable) |
| `.github/instructions/testing.instructions.md` | Testing patterns and conventions |
| `.github/instructions/git-workflow.instructions.md` | Git and CI/CD conventions |

## Validation

After setup, verify:
1. All instruction files reference the correct stack
2. Agent files can access relevant instructions
3. Spec templates are ready for use
4. Documentation structure reflects the project
5. Run a test prompt with each agent to verify routing
