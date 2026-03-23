---
description: "Use when creating or updating project documentation, README files, or any markdown documentation. Covers documentation standards and patterns."
applyTo: "docs/**"
---

# Padrões de Documentação

## Idioma

- Escrever em **português brasileiro (pt-br)** por padrão
- Manter termos técnicos de engenharia de software em inglês (API, endpoint, backend, frontend, deploy, etc.)
- Usar voz ativa
- Evitar jarão — explicar termos técnicos na primeira ocorrência quando o público não for técnico
- Manter parágrafos curtos (máx. 3-5 frases)

## Estrutura

- Usar hierarquia clara de títulos (H1 → H2 → H3)
- Começar com um breve resumo do que o documento abrange
- Usar listas com marcadores para itens, listas numeradas para sequências
- Incluir sumário para documentos com mais de 3 seções

## Exemplos de Código

- Incluir exemplos de código executáveis para documentação técnica
- Usar syntax highlighting com identificadores de linguagem
- Manter exemplos mínimos e focados no conceito sendo explicado
- Incluir output esperado onde útil

## Links

- Usar links relativos para documentação interna
- Verificar que todos os links são válidos
- Usar texto descritivo para links (não "clique aqui")

## Manutenção

- Datar todas as decisões de arquitetura e changelogs
- Marcar conteúdo depreciado claramente com callouts `> **Depreciado**:`
- Revisar e atualizar documentação a cada mudança de código relacionada
