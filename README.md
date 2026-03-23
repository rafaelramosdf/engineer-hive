# Engineer Hive 🐝

**Framework de Engenharia AI-Native** — Um time completo de engenharia de software impulsionado por agentes AI especializados.

O Engineer Hive é um framework plugável que transforma seu editor de código em um ambiente de desenvolvimento AI-first. Escreva especificações e deixe os agentes especializados cuidarem da implementação, seguindo os padrões e convenções do seu projeto.

## Início Rápido

### Instalação em um projeto existente

```bash
# Clone o framework (ou use como template)
npx degit rafaelramosdf/engineer-hive/.github .github
npx degit rafaelramosdf/engineer-hive/specs specs
npx degit rafaelramosdf/engineer-hive/docs docs

# Ou use o script de instalação
curl -fsSL https://raw.githubusercontent.com/rafaelramosdf/engineer-hive/main/scripts/install.sh | bash
```

### Inicializar para seu projeto

Abra o chat AI do seu editor e execute:
```
@hive-initializer Setup Engineer Hive for this project
```

Ou use o atalho de prompt: `/init-project`

## Como Funciona

```
📝 Escreva uma Spec  →  🤖 Agente Implementa  →  📄 Docs Atualizados  →  ✅ Commit
```

1. **Você escreve uma especificação** em `specs/` (feature, task, bugfix ou hotfix)
2. **O agente certo é selecionado** via o roteador bootstrap
3. **O agente implementa** seguindo os padrões do seu projeto
4. **A documentação é revisada** e atualizada automaticamente
5. **Você revisa e faz o commit** das mudanças

## Agentes

| Agente | Função | Invocar |
|--------|--------|---------|
| **Hive Initializer** | Setup e configuração do framework | `@hive-initializer` |
| **Doc Manager** | Guardião da documentação | `@doc-manager` |
| **Product Manager** | Features, specs, visão de produto | `@product-manager` |
| **Architect** | Decisões de arquitetura, padrões de design | `@architect` |
| **Design UX/UI** | Design system, padrões visuais | `@design-ux-ui` |
| **Engineer Backend** | Servidor, APIs, banco de dados | `@engineer-backend` |
| **Engineer Frontend** | UI, componentes, client-side | `@engineer-frontend` |
| **Bug Analyst** | Investigação de bugs, diagnóstico | `@bug-analyst` |

## Prompts Rápidos

| Prompt | Descrição |
|--------|-----------|
| `/new-feature` | Criar uma especificação de feature |
| `/new-task` | Criar uma especificação de task técnica |
| `/bugfix` | Investigar e criar spec de bugfix |
| `/hotfix` | Criar spec de correção urgente de produção |
| `/implement-spec` | Implementar a partir de uma spec existente |
| `/init-project` | Inicializar ou reconfigurar o framework |

## Estrutura do Projeto

```
.github/
├── copilot-instructions.md     # Instruções globais & roteamento de agentes
├── agents/                     # 8 agentes AI especializados
│   ├── hive-initializer        # Setup do framework
│   ├── doc-manager             # Documentação
│   ├── product-manager         # Produto & specs
│   ├── architect               # Arquitetura
│   ├── design-ux-ui            # Design system
│   ├── engineer-backend        # Desenvolvimento backend
│   ├── engineer-frontend       # Desenvolvimento frontend
│   └── bug-analyst             # Diagnóstico de bugs
├── instructions/               # Diretrizes de código (automáticas + stack-específicas)
│   └── language.instructions.md # Configuração de idioma padrão (pt-br)
├── prompts/                    # Templates de fluxo de trabalho reutilizáveis
├── skills/                     # Fluxos complexos com referências
│   ├── hive-initializer/       # Procedimentos de setup
│   └── architecture/           # Base de conhecimento de arquitetura
└── hooks/                      # Automação do ciclo de vida
specs/                          # Especificações (sua entrada)
├── templates/                  # Templates de spec
├── features/                   # Specs de feature
├── tasks/                      # Specs de task
├── bugfixes/                   # Specs de bugfix
└── hotfixes/                   # Specs de hotfix
docs/                           # Documentação legível por humanos
├── architecture/               # Docs de arquitetura & ADRs
├── api/                        # Documentação de API
├── guides/                     # Guias de desenvolvedor
├── design-system/              # Docs do design system
└── changelog/                  # Notas de release
```

## Compatibilidade com Editores

| Editor | Nível de Suporte | Notas |
|--------|-----------------|-------|
| **VS Code + GitHub Copilot** | Total | Suporte nativo para todos os primitivos |
| **Cursor** | Alto | Suporta agentes, instruções, prompts |
| **Windsurf** | Médio | Suporta instruções e prompts |
| **Claude Code** | Médio | Pode usar as convenções do `.github/` |
| **Outros** | Básico | Instruções são legíveis por qualquer assistente AI |

## Decisões Chave de Design

- **Agnóstico de stack** — Funciona com qualquer linguagem, framework ou arquitetura
- **Orientado a specs** — Specs são a única fonte de verdade para todo trabalho
- **Agentes modulares** — Cada agente é independente e focado em seu domínio
- **Contexto progressivo** — Skills carregam referências sob demanda para otimizar janelas de contexto
- **Cross-editor** — Construído sobre convenções do `.github/` reconhecidas pelos principais editores
- **Idioma configurável** — Padrão pt-br, reconfigurável via `@hive-initializer`

## FAQ

### Os agentes podem ser selecionados automaticamente pelo meu prompt?

A tabela de roteamento bootstrap em `copilot-instructions.md` orienta o agente padrão a recomendar o especialista apropriado baseado nas palavras-chave do seu prompt. No VS Code, você também pode selecionar agentes manualmente pelo seletor de agentes (`@nome-do-agente`).

### Os agentes podem executar de forma proativa em segundo plano?

Atualmente, as integrações de editor AI são principalmente orientadas por prompt. No entanto, o framework suporta **hooks** (`.github/hooks/`) para automação baseada em eventos — como disparar verificações de documentação após salvar arquivos. À medida que as capacidades dos editores evoluem, o framework foi projetado para suportar fluxos de trabalho mais autônomos.

### Como adicionar um novo agente?

Crie um novo arquivo `.agent.md` em `.github/agents/` e adicione sua entrada de roteamento em `copilot-instructions.md`. Veja os agentes existentes como templates.

### Como mudar o idioma padrão do projeto?

Solicite ao `@hive-initializer`: *"Quero usar [idioma] como idioma padrão do projeto"*. O hive-initializer atualizará `.github/instructions/language.instructions.md` e todos os agentes passarão a usar o novo idioma.

## Licença

MIT

---

💻 Desenvolvido por [rafaelramosdf](https://github.com/rafaelramosdf)
