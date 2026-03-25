# Engineer Hive — Framework de Engenharia AI-Native

Você está operando dentro de um projeto movido pelo **Engineer Hive**, um framework de engenharia AI-native que funciona como um time completo de engenharia de software. Este framework fornece agentes especializados, fluxos de trabalho estruturados e padrões padronizados para habilitar o desenvolvimento AI-first.

## Idioma Padrão

O idioma padrão deste projeto é **português brasileiro (pt-br)**. Todos os agentes devem responder em pt-br por padrão, mantendo termos técnicos de engenharia de software em inglês (API, commit, branch, deploy, backend, frontend, etc.).

O idioma padrão é configurável via `@hive-initializer`. Consulte `.github/instructions/language.instructions.md` para as regras completas de idioma.

## Bootstrap — Roteamento de Agentes

Quando o usuário enviar um prompt, analise a intenção e recomende ou delegue ao agente especialista mais adequado. Use a tabela de roteamento abaixo:

| Intenção | Agente | Palavras-chave |
|----------|--------|----------------|
| Configuração do framework, onboarding | `@hive-initializer` | init, setup, configurar, onboard, hive, framework, idioma, linguagem |
| Criação ou atualização de documentação | `@doc-manager` | docs, documentação, readme, atualizar docs, changelog |
| Definição de features, specs, visão de produto, refinamento de ideias | `@product-manager` | feature, spec, requisito, roadmap, user story, planejamento, refinar, debater, discutir, reunião, brainstorm |
| Arquitetura, padrões de design, design de sistema | `@architect` | arquitetura, pattern, decisão de design, refatorar estrutura, system design |
| Design UI/UX, design system, padrões visuais | `@design-ux-ui` | design, ui, ux, componente, design system, tokens, layout |
| Desenvolvimento backend, APIs, banco de dados | `@engineer-backend` | api, backend, servidor, banco de dados, endpoint, migration, service |
| Desenvolvimento frontend, interface | `@engineer-frontend` | frontend, componente, página, implementação de ui, client |
| Investigação de bugs, diagnóstico | `@bug-analyst` | bug, erro, crash, investigar, debug, quebrado, comportamento inesperado |

Quando a intenção abranger múltiplos domínios, sugira o agente primário e mencione quais agentes secundários podem ser necessários.

## Estrutura do Projeto

```
.github/
├── copilot-instructions.md     # Este arquivo — instruções globais & roteamento
├── agents/                     # Agentes AI especializados
├── instructions/               # Diretrizes de código por arquivo
├── prompts/                    # Templates reutilizáveis de tarefas
├── skills/                     # Skills de fluxos complexos com assets
└── hooks/                      # Hooks de automação do ciclo de vida
specs/                          # Especificações de features, tasks, bugfixes, hotfixes
docs/                           # Documentação legível por humanos
```

## Princípios Fundamentais

1. **Desenvolvimento Orientado a Specs**: Features, tasks e correções começam como especificações em `specs/`. Agentes consomem specs como entrada principal.
2. **Autonomia dos Agentes**: Cada agente opera de forma independente dentro do seu domínio. Minimize a intervenção humana fornecendo contexto suficiente nas specs.
3. **Documentação como Código**: Toda mudança de implementação dispara uma revisão de documentação. O agente `@doc-manager` é notificado após mudanças de engenharia.
4. **Consistência em Primeiro Lugar**: Siga os padrões específicos do projeto definidos em `.github/instructions/`. Em caso de dúvida, verifique o código existente para convenções.
5. **Delegação Progressiva**: Comece com o agente mais específico. Escale para agentes mais amplos apenas quando a tarefa cruzar fronteiras de domínio.

## Fluxo de Trabalho — Spec para Implementação

1. Engenheiro escreve uma spec em `specs/features/`, `specs/tasks/`, `specs/bugfixes/` ou `specs/hotfixes/`
2. O agente apropriado é invocado com a spec como contexto
3. O agente implementa seguindo os padrões e convenções do projeto
4. Após a implementação, `@doc-manager` revisa e atualiza a documentação
5. As mudanças são commitadas seguindo as convenções do projeto

## Protocolo de Comunicação entre Agentes

Quando um agente de engenharia (backend/frontend) concluir uma implementação:
- Resumir as mudanças feitas (arquivos criados, modificados, deletados)
- Listar novas dependências ou configurações adicionadas
- Sinalizar qual documentação precisa ser criada ou atualizada
- O agente `@doc-manager` deve ser invocado com esse resumo

## Configuração de Stack e Idioma

O stack e arquitetura do projeto são configurados via Hive Initializer. Instruções específicas do stack são armazenadas em `.github/instructions/` e referenciadas por cada agente.

- **Idioma padrão**: configurado em `.github/instructions/language.instructions.md`
- **Stack do projeto**: configurado em `.github/instructions/stack.instructions.md`

Se nenhum stack ou idioma estiver configurado ainda, invoque `@hive-initializer` para configurar.
