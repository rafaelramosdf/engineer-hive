---
description: "Use when writing specifications, features, tasks, bugfixes, or hotfixes. Covers the spec-writing standards and quality criteria for the Engineer Hive workflow."
applyTo: "specs/**"
---

# Padrões de Escrita de Specs

## Idioma das Specs

Escreva specs em **português brasileiro (pt-br)** por padrão, mantendo termos técnicos de engenharia de software em inglês. Siga as regras de idioma em `.github/instructions/language.instructions.md`.

## Critérios de Qualidade

Cada especificação deve ser **autocontida** — um agente AI deve ser capaz de implementá-la sem contexto adicional além da spec e da base de código existente.

### Seções Obrigatórias

1. **Título** — Descrição clara e concisa do que precisa ser feito
2. **Contexto** — Por que isso é necessário, motivação de negócio
3. **Requisitos** — Lista detalhada do que deve ser implementado
4. **Critérios de Aceitação** — Condições testáveis que definem "concluído"
5. **Escopo** — Limites explícitos do que está e não está incluído
6. **Agente-Alvo** — Qual agente deve executar esta spec

### Seções Opcionais

- **Notas Técnicas** — Dicas de implementação ou restrições
- **Dependências** — Outras specs ou sistemas dos quais depende
- **Referências** — Links para docs, designs ou discussões relacionados
- **Prioridade** — Nível de urgência (P0-P3)

## Diretrizes de Escrita

- Seja específico — evite linguagem ambígua como "deve funcionar bem" ou "tratar adequadamente"
- Inclua exemplos para requisitos complexos
- Referencie arquivos de código existentes quando relevante
- Defina cenários de erro e casos de borda
- Especifique quaisquer requisitos de performance ou segurança

## Nomenclatura de Arquivos

Use esta convenção: `{YYYY-MM-DD}-{short-slug}.md`

Exemplos:
- `2026-03-22-autenticacao-usuario.md`
- `2026-03-22-corrigir-timeout-login.md`

## Ciclo de Vida da Spec

1. **Rascunho (Draft)** — Escrita inicial, pode ter lacunas
2. **Pronto (Ready)** — Todas as seções completas, revisado pelo product manager
3. **Em Progresso (In Progress)** — Atribuído a um agente, sendo implementado
4. **Concluído (Done)** — Implementação completa, critérios de aceitação atendidos
5. **Arquivado (Archived)** — Movido para `specs/archive/` após conclusão
