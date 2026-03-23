# Documentação do Projeto

Este diretório contém toda a documentação legível por humanos do projeto.

## Estrutura

```
docs/
├── README.md                   # Este arquivo — índice da documentação
├── architecture/               # Documentação de arquitetura
│   ├── overview.md             # Visão geral da arquitetura do sistema
│   └── decisions/              # Architecture Decision Records (ADRs)
├── api/                        # Documentação de API
├── guides/                     # Guias de usuário e desenvolvedor
│   ├── getting-started.md      # Guia de início rápido
│   └── contributing.md         # Diretrizes de contribuição
├── design-system/              # Documentação do design system
│   ├── tokens/                 # Design tokens (cores, tipografia, espaçamento)
│   ├── components/             # Especificações de componentes
│   └── patterns/               # Padrões de UX
└── changelog/                  # Notas de release
```

## Para Agentes AI

A documentação de agentes AI vive no diretório do framework (`.github/`):
- Definições de agentes → `.github/agents/`
- Diretrizes de código → `.github/instructions/`
- Skills de fluxo → `.github/skills/`
- Prompts de tarefas → `.github/prompts/`

Este diretório `docs/` é para documentação do projeto **legível por humanos**.

## Manutenção

O agente `@doc-manager` é responsável por manter essa documentação precisa e atualizada. Após qualquer mudança de engenharia, o doc-manager revisa e atualiza os docs afetados.
