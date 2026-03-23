# Template de Architecture Decision Record

Use este template ao documentar decisões de arquitetura. Salve ADRs em `docs/architecture/decisions/`.

## Nomenclatura de Arquivos

`ADR-{número}-{short-slug}.md`

Exemplos:
- `ADR-001-usar-postgresql.md`
- `ADR-002-adotar-clean-architecture.md`
- `ADR-003-implementar-cqrs.md`

## Template

```markdown
# ADR-{número}: {Título}

**Data**: {YYYY-MM-DD}
**Status**: {Proposto | Aceito | Depreciado | Substituído por ADR-XXX}
**Decisores**: {quem tomou a decisão}

## Contexto

{Qual é o problema ou situação que motiva esta decisão? Inclua contexto técnico e de negócio relevante.}

## Decisão

{Qual é a decisão sendo tomada? Seja específico sobre a abordagem escolhida.}

## Justificativa

{Por que essa abordagem foi escolhida? Quais são os fatores-chave que influenciaram a decisão?}

## Consequências

### Positivas
- {Resultado positivo 1}
- {Resultado positivo 2}

### Negativas
- {Trade-off ou desvantagem 1}
- {Trade-off ou desvantagem 2}

### Neutras
- {Consequência neutra que o time deve conhecer}

## Alternativas Consideradas

### {Alternativa 1}
- **Descrição**: {breve descrição}
- **Por que rejeitada**: {motivo}

### {Alternativa 2}
- **Descrição**: {breve descrição}
- **Por que rejeitada**: {motivo}

## Referências

- {Link para documentação relevante, RFC ou discussão}
```
