---
description: "Criar uma especificação de hotfix para problemas críticos de produção que exigem atenção imediata"
agent: "bug-analyst"
argument-hint: "Descreva o problema crítico de produção"
---

Crie uma especificação de hotfix urgente usando o template em [hotfix template](../../../specs/templates/hotfix.md).

Este prompt é para **problemas críticos de produção** que precisam de resolução imediata.

Siga estes passos:
1. Entenda o problema crítico a partir do input do usuário
2. Realize uma análise rápida de causa raiz focada na causa mais provável
3. Proponha a correção mínima e segura para resolver o problema
4. Escreva uma spec de hotfix concisa com plano de rollback claro
5. Salve em `specs/hotfixes/` usando a convenção de nome `{YYYY-MM-DD}-{short-slug}.md`
6. Atribua ao agente de engenharia apropriado com prioridade URGENTE
