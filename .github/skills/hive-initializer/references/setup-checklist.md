# Checklist de Setup

## Informações para Coletar

Use este checklist ao configurar o Engineer Hive para um projeto.

### Configuração Básica

- [ ] **Idioma padrão do projeto**: ex.: Português Brasileiro (pt-br), English (en), Español (es)
- [ ] **Linguagem(ns) principal(is)**: ex.: TypeScript, Python, Go, Java, C#, Rust
- [ ] **Runtime/Plataforma**: ex.: Node.js, .NET, JVM, Browser
- [ ] **Gerenciador de pacotes**: ex.: npm, pnpm, yarn, pip, cargo, maven

### Backend (se aplicável)

- [ ] **Framework**: ex.: Express, NestJS, FastAPI, Django, Spring Boot, ASP.NET
- [ ] **Banco de dados**: ex.: PostgreSQL, MySQL, MongoDB, SQLite, Redis
- [ ] **ORM/Query Builder**: ex.: Prisma, TypeORM, SQLAlchemy, Entity Framework
- [ ] **Autenticação**: ex.: JWT, OAuth2, Session-based, Auth0, Clerk
- [ ] **Estilo de API**: ex.: REST, GraphQL, gRPC, tRPC

### Frontend (se aplicável)

- [ ] **Framework**: ex.: React, Next.js, Vue, Nuxt, Angular, Svelte, Astro
- [ ] **Estilização**: ex.: Tailwind CSS, CSS Modules, Styled Components, Sass
- [ ] **Gerenciamento de estado**: ex.: Redux, Zustand, Pinia, Signals
- [ ] **Biblioteca de componentes**: ex.: Shadcn/ui, Material UI, Radix, Headless UI

### Arquitetura

- [ ] **Padrão**: ex.: Monolith, Microservices, Modular Monolith, Serverless
- [ ] **Estrutura do projeto**: ex.: Feature-based, Layer-based, Domain-driven
- [ ] **Monorepo**: ex.: Turborepo, Nx, pnpm workspaces, ou repositório único

### Qualidade & DevOps

- [ ] **Framework de testes**: ex.: Jest, Vitest, Pytest, xUnit, Go test
- [ ] **Testes E2E**: ex.: Playwright, Cypress, Selenium
- [ ] **Linter**: ex.: ESLint, Ruff, golangci-lint, Roslyn analyzers
- [ ] **Formatter**: ex.: Prettier, Black, gofmt, dotnet format
- [ ] **CI/CD**: ex.: GitHub Actions, GitLab CI, Jenkins, Azure DevOps
- [ ] **Deployment**: ex.: Vercel, AWS, Azure, GCP, Docker, Kubernetes

### Convenções

- [ ] **Fluxo Git**: ex.: Trunk-based, GitFlow, GitHub Flow
- [ ] **Nomenclatura de branch**: ex.: `feature/`, `fix/`, `chore/`
- [ ] **Formato de commit**: ex.: Conventional Commits, formato customizado
- [ ] **Processo de PR**: ex.: Revisões obrigatórias, verificações de CI, auto-merge

## Arquivos Gerados

Após coletar as informações, criar estes arquivos:

| Arquivo | Conteúdo |
|---------|----------|
| `.github/instructions/language.instructions.md` | Configuração de idioma padrão do projeto |
| `.github/instructions/stack.instructions.md` | Regras e padrões de código específicos do stack |
| `.github/instructions/stack-backend.instructions.md` | Convenções específicas do backend (se aplicável) |
| `.github/instructions/stack-frontend.instructions.md` | Convenções específicas do frontend (se aplicável) |
| `.github/instructions/testing.instructions.md` | Padrões e convenções de testes |
| `.github/instructions/git-workflow.instructions.md` | Convenções de Git e CI/CD |

## Validação

Após o setup, verificar:
1. Todos os arquivos de instrução referenciam o stack correto
2. Os arquivos de agente conseguem acessar as instruções relevantes
3. Os templates de spec estão prontos para uso
4. A estrutura de documentação reflete o projeto
5. O arquivo `language.instructions.md` está configurado corretamente
6. Executar um prompt de teste com cada agente para verificar o roteamento
