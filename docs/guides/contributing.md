# Guia de Contribuição

## Fluxo de Trabalho

Este projeto utiliza o framework **Engineer Hive** para desenvolvimento AI-first. Todo trabalho segue o fluxo orientado a specs:

1. **Escreva uma spec** — Use os templates em `specs/templates/`
2. **Invoque um agente** — Use o agente apropriado para sua tarefa
3. **Implemente** — O agente segue a spec e os padrões do projeto
4. **Documente** — `@doc-manager` atualiza a documentação
5. **Commit** — Siga as convenções de conventional commits

## Escrevendo Especificações

Consulte `specs/README.md` para instruções detalhadas sobre como escrever specs.

### Prompts Rápidos

| Ação | Prompt |
|------|--------|
| Nova feature | `/new-feature` |
| Task técnica | `/new-task` |
| Correção de bug | `/bugfix` |
| Correção crítica | `/hotfix` |
| Implementar spec | `/implement-spec` |

## Padrões de Código

- Siga os padrões de código definidos em `.github/instructions/coding-standards.instructions.md`
- Siga as regras específicas do stack do projeto em `.github/instructions/stack*.instructions.md`

## Convenções Git

- **Nomenclatura de branch**: `feature/`, `fix/`, `chore/`, `hotfix/`
- **Formato de commit**: Conventional Commits — `tipo(escopo): descrição`
- **Tipos**: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

## Obtendo Ajuda

- **Dúvidas sobre o framework**: Use `@hive-initializer`
- **Dúvidas de arquitetura**: Use `@architect`
- **Dúvidas de produto**: Use `@product-manager`
