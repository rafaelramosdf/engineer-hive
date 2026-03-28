# Hotfix: {Título}

> **Status**: URGENTE <!-- URGENTE | Em Andamento | Concluído -->
> **Data**: {YYYY-MM-DD}
> **Reportado por**: {fonte}
> **Severidade**: Crítica
> **Atribuído a**: {`@engineer-backend` | `@engineer-frontend`}

## Problema Crítico

{Descrição breve e clara do problema de produção}

## Impacto

- **Usuários afetados**: {escopo}
- **Impacto financeiro**: {se aplicável}
- **Risco de dados**: {qualquer corrupção ou perda de dados}
- **Prazo crítico**: {SLA ou deadline}

## Sintomas

{O que está acontecendo em produção? Inclua mensagens de erro, métricas, alertas.}

## Reprodução

1. {Forma mais rápida de reproduzir}
2. **Esperado**: {comportamento correto}
3. **Atual**: {comportamento com falha}

## Causa Raiz

{Análise rápida de causa raiz — foque na causa mais provável}

## Correção Proposta

{Correção mínima e segura para resolver o problema. Prefira a menor mudança que resolve o problema.}

### Arquivos para Modificar

| Arquivo | Mudança |
|---------|--------|
| `{caminho}` | {descrição da mudança mínima} |

## Plano de Rollback

{Como reverter se a correção causar problemas adicionais}

1. {Passo de rollback 1}
2. {Passo de rollback 2}

## Verificação

- [ ] {Como verificar que a correção resolve o problema em produção}
- [ ] {Verificação de monitoramento para confirmar estabilidade}

## Ações de Acompanhamento

{Trabalho de acompanhamento não urgente necessário após o deploy do hotfix. Crie uma spec de task separada para esses itens.}
