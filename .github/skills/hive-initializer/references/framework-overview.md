# Engineer Hive — Visão Geral do Framework

## O que é o Engineer Hive?

O Engineer Hive é um framework de engenharia AI-native que funciona como um time completo de engenharia de software. Ele fornece agentes AI especializados, fluxos de trabalho estruturados e padrões padronizados para habilitar o desenvolvimento AI-first.

## Arquitetura

```
.github/
├── copilot-instructions.md     # Instruções globais & roteamento de agentes (bootstrap)
├── agents/                     # Definições de agentes AI especializados
│   ├── hive-initializer        # Setup & configuração do framework
│   ├── doc-manager             # Gerenciamento de documentação
│   ├── product-manager         # Ownership do produto & specs
│   ├── architect               # Decisões de arquitetura
│   ├── design-ux-ui            # Design system UX/UI
│   ├── engineer-backend        # Engenharia backend
│   ├── engineer-frontend       # Engenharia frontend
│   └── bug-analyst             # Investigação de bugs
├── instructions/               # Diretrizes de código por arquivo
│   ├── coding-standards        # Regras universais de código
│   ├── spec-writing            # Padrões de especificação
│   ├── documentation-standards # Regras de escrita de docs
│   ├── language                # Configuração de idioma padrão
│   └── stack.*                 # Regras específicas do stack (geradas)
├── prompts/                    # Templates de fluxo de trabalho reutilizáveis
│   ├── new-feature             # Criar specs de feature
│   ├── new-task                # Criar specs de task
│   ├── bugfix                  # Investigar e criar specs de bugs
│   ├── hotfix                  # Correções críticas de produção
│   ├── init-project            # Inicializar o framework
│   └── implement-spec          # Implementar a partir de spec
├── skills/                     # Skills de fluxos complexos
│   ├── hive-initializer/       # Procedimentos de setup & referências
│   └── architecture/           # Base de conhecimento de arquitetura
└── hooks/                      # Automação do ciclo de vida
specs/                          # Especificações (features, tasks, bugfixes, hotfixes)
docs/                           # Documentação legível por humanos
```

## Roteamento de Agentes

O mecanismo de bootstrap em `copilot-instructions.md` analisa a intenção do usuário e encaminha ao agente especialista apropriado. Isso habilita o desenvolvimento AI-first onde engenheiros escrevem specs e agentes executam.

## Fluxo de Trabalho

```
Engenheiro escreve spec → Agente implementa → Doc-manager atualiza docs → Commit
```

1. **Spec** — Engenheiro ou product-manager escreve uma especificação
2. **Roteamento** — Bootstrap identifica o(s) agente(s) correto(s)
3. **Execução** — Agente implementa seguindo os padrões do projeto
4. **Documentar** — Doc-manager revisa e atualiza a documentação
5. **Commit** — Mudanças seguem as convenções de git do projeto

## Compatibilidade Cross-Editor

O framework usa `.github/` como diretório principal, que é reconhecido por:
- **VS Code / GitHub Copilot**: Suporte nativo completo para todos os primitivos
- **Cursor**: Suporta instruções e agentes do `.github/`
- **Claude Code**: Pode usar `.github/` junto com `.claude/`
- **Outros editores**: A maioria dos editores modernos com AI respeitam as convenções do `.github/`

Para editores que usam caminhos diferentes, o framework pode ser estendido:
- `.cursorrules` — Regras específicas do Cursor (linkar para `.github/copilot-instructions.md`)
- `.claude/` — Configurações específicas do Claude Code
- `.agents/` — Diretório genérico de agentes (alternativa ao `.github/agents/`)

## Decisões Chave de Design

1. **Única fonte de verdade**: `.github/copilot-instructions.md` é o ponto de entrada
2. **Orientado a specs**: Todo trabalho começa como uma especificação
3. **Autonomia dos agentes**: Cada agente tem contexto completo para seu domínio
4. **Carregamento progressivo**: Skills usam arquivos de referência para gerenciar o contexto eficientemente
5. **Agnosto de stack**: Regras específicas do projeto são geradas, não hardcodadas
6. **Idioma configurável**: Idioma padrão definido em `language.instructions.md`, reconfigurável via `@hive-initializer`
