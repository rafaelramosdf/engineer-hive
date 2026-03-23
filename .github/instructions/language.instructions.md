---
description: "Idioma padrão do projeto. Define o idioma que todos os agentes e documentações devem utilizar."
applyTo: "**"
---

# Configuração de Idioma

## Idioma Padrão: Português Brasileiro (pt-br)

Todos os agentes devem utilizar **português brasileiro (pt-br)** como idioma padrão em todas as respostas, documentações geradas, specs, comentários e comunicações, exceto para termos técnicos da engenharia de software que não possuem tradução consolidada em uso no mercado.

## Termos Técnicos — Manter em Inglês

Os seguintes termos técnicos devem ser mantidos em inglês, mesmo em textos pt-br:

- **Tecnologias e protocolos**: API, REST, GraphQL, gRPC, SQL, NoSQL, HTTP, HTTPS, JSON, XML, YAML
- **Ferramentas e plataformas**: Docker, Kubernetes, CI/CD, GitHub, npm, pip, cargo, Maven, Gradle
- **Conceitos de versionamento**: commit, branch, merge, pull request, push, rebase, tag, fork, clone
- **Padrões arquiteturais**: Clean Architecture, CQRS, DDD, Microservices, Serverless, Monolith
- **Padrões de design**: Factory, Builder, Repository, Observer, Strategy, Adapter, Facade, Singleton
- **Termos de desenvolvimento**: backend, frontend, deploy, deployment, refactoring, debugging, endpoint, middleware, payload, token, cache, queue
- **Metodologias e práticas**: Spec, ADR, TDD, BDD, CI, CD, SLA, SLO, WORM, RBAC, ABAC
- **Frameworks e libs** (usar o nome oficial): React, Vue, Angular, Next.js, NestJS, FastAPI, Django, Spring Boot, etc.

## Detecção Automática de Idioma

Os agentes devem detectar o idioma utilizado pelo usuário e adaptar a resposta:

1. **Usuário escreve em pt-br** → Responder em pt-br (padrão)
2. **Usuário escreve em outro idioma** → Responder no idioma do usuário naquela interação, mas gerar documentos e specs no idioma padrão do projeto (pt-br)
3. **Usuário solicita explicitamente outro idioma para o projeto** → Acionar `@hive-initializer` para reconfigurar o idioma padrão

## Reconfiguração de Idioma do Projeto

Para alterar o idioma padrão de **todo o projeto**:

1. Solicite ao `@hive-initializer`: *"Quero usar [idioma] como idioma padrão do projeto"*
2. O `@hive-initializer` atualizará este arquivo com o novo idioma padrão
3. Todos os agentes passarão a utilizar o novo idioma automaticamente

---

> **Configurado por**: `@hive-initializer`  
> **Última atualização**: 2026-03-23
