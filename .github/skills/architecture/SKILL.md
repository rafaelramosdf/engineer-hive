---
name: architecture
description: "Base de conhecimento de arquitetura com padrões de design, system design e padrões arquiteturais. Use quando tomar decisões de arquitetura, avaliar abordagens de design ou revisar a estrutura do sistema."
---

# Skill: Arquitetura

## Quando Usar

- Tomando decisões de arquitetura para novas features ou sistemas
- Avaliando trade-offs entre abordagens arquiteturais
- Revisando arquitetura existente para melhorias
- Documentando decisões de arquitetura (ADRs)
- Escolhendo padrões de design para implementação

## Base de Conhecimento

Esta skill fornece documentação de referência para padrões arquiteturais comuns e decisões de design.

### Referências

- [Padrões de Design](./references/design-patterns.md) — Padrões GoF e modernos
- [Arquiteturas de Software](./references/software-architectures.md) — Padrões de arquitetura de aplicação
- [System Design](./references/system-design.md) — Padrões de sistemas distribuídos
- [Template ADR](./references/adr-template.md) — Formato de Architecture Decision Record

## Procedimento

### Tomando uma Decisão de Arquitetura

1. **Entender o requisito** — Qual problema estamos resolvendo?
2. **Revisar a arquitetura atual** — Verificar `docs/architecture/` para decisões existentes
3. **Avaliar opções** — Consultar docs de referência relevantes para padrões
4. **Avaliar trade-offs** — Considerar complexidade, escalabilidade, manutenibilidade, expertise do time
5. **Documentar a decisão** — Criar um ADR usando o [template](./references/adr-template.md)
6. **Atualizar instruções** — Se novos padrões forem introduzidos, atualizar `.github/instructions/`

### Revisão de Arquitetura

1. **Analisar a base de código** — Identificar padrões e estrutura atuais
2. **Verificar anti-padrões** — Procurar violações da arquitetura escolhida
3. **Propor melhorias** — Priorizar por impacto e esforço
4. **Escrever recomendações** — Relatório estruturado com itens de ação específicos
