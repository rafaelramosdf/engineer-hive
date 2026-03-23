# Especificações

Este diretório contém todas as especificações do projeto. Specs são a entrada principal dos agentes AI no framework Engineer Hive.

## Estrutura

```
specs/
├── templates/      # Templates de especificação
├── features/       # Especificações de features
├── tasks/          # Especificações de tasks técnicas
├── bugfixes/       # Specs de investigação e correção de bugs
└── hotfixes/       # Specs de correções críticas de produção
```

## Como Usar

1. Escolha o template adequado em `templates/`
2. Copie para o subdiretório correto
3. Preencha todas as seções obrigatórias
4. Nomeie o arquivo: `{YYYY-MM-DD}-{short-slug}.md`
5. Invoque o agente apropriado para implementar

## Início Rápido

| Eu quero... | Template | Diretório | Agente |
|-------------|----------|-----------|--------|
| Adicionar nova funcionalidade | `feature.md` | `specs/features/` | `@product-manager` → `@engineer-*` |
| Melhorar/refatorar código | `task.md` | `specs/tasks/` | `@product-manager` → `@engineer-*` |
| Corrigir um bug | `bugfix.md` | `specs/bugfixes/` | `@bug-analyst` → `@engineer-*` |
| Corrigir problema crítico de produção | `hotfix.md` | `specs/hotfixes/` | `@bug-analyst` → `@engineer-*` |

## Ciclo de Vida da Spec

1. **Rascunho (Draft)** → Escrita inicial
2. **Pronto (Ready)** → Todas as seções completas
3. **Em Progresso (In Progress)** → Sendo implementado
4. **Concluído (Done)** → Critérios de aceitação atendidos
5. **Arquivado (Archived)** → Mover para `specs/archive/`

## Dicas

- Use os prompts `/new-feature`, `/new-task`, `/bugfix` ou `/hotfix` para gerar specs de forma interativa
- Sempre inclua critérios de aceitação — eles definem o "concluído"
- Referencie arquivos de código existentes quando relevante
- Seja específico: evite requisitos ambíguos
