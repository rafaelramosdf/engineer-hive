---
name: hive-initializer
description: "Setup e configuração do framework Engineer Hive para qualquer projeto de software. Use quando inicializar um novo projeto, integrar um projeto existente, reconfigurar o stack ou o idioma, ou executar health checks do framework."
---

# Skill: Hive Initializer

## Quando Usar

- Configurando o Engineer Hive pela primeira vez em um projeto
- Integrando um projeto existente ao framework
- Reconfigurando o stack, arquitetura ou **idioma padrão** do projeto
- Executando um health check do framework
- Solucionando problemas de configuração do framework

## Procedimento

### Setup de Novo Projeto

1. Entrevistar o engenheiro usando o [checklist de setup](./references/setup-checklist.md)
2. Gerar arquivos de instrução específicos do stack
3. Configurar o idioma padrão em `.github/instructions/language.instructions.md`
4. Configurar referências dos agentes para corresponder ao stack do projeto
5. Inicializar os diretórios `specs/` e `docs/`
6. Executar o health check da [visão geral do framework](./references/framework-overview.md)

### Integração de Projeto Existente

1. Escanear por indicadores de stack (arquivos de pacote, arquivos de config, etc.)
2. Detectar padrões de arquitetura a partir da estrutura do código
3. Extrair convenções de código do código existente
4. Gerar arquivos de instrução baseados nos achados
5. Verificar integridade da estrutura do framework

### Reconfigurar Idioma do Projeto

1. Confirmar o idioma desejado com o usuário
2. Atualizar `.github/instructions/language.instructions.md` com o novo idioma padrão
3. Confirmar a mudança para o usuário

### Health Check

Verificar se todos os componentes existem e estão corretamente configurados:
- `.github/copilot-instructions.md` — Bootstrap routing
- `.github/agents/` — Todos os 8 agentes especialistas
- `.github/instructions/` — Diretrizes de stack, código e idioma
- `.github/instructions/language.instructions.md` — Configuração de idioma
- `.github/prompts/` — Templates de fluxo de trabalho
- `.github/skills/` — Assets de fluxos complexos
- `specs/` — Diretórios e templates de spec
- `docs/` — Documentação do projeto

## Referências

- [Visão Geral do Framework](./references/framework-overview.md)
- [Checklist de Setup](./references/setup-checklist.md)
