---
description: "Use when writing or reviewing code in any language. Covers general coding standards, naming conventions, and best practices applicable across the project."
applyTo: "**"
---

# Padrões de Código

## Idioma

Comentários de código, mensagens de erro, variáveis e documentação devem seguir o idioma padrão do projeto definido em `.github/instructions/language.instructions.md` (padrão: **pt-br**). Termos técnicos como nomes de padrões de design, APIs e tecnologias permanecem em inglês.

## Princípios Gerais

- Escrever código limpo, legível e autodocumentado
- Seguir o Princípio da Responsabilidade Única (Single Responsibility Principle)
- Preferir composição à herança
- Manter funções pequenas e focadas (máx. ~30 linhas)
- Usar nomes significativos e descritivos para variáveis, funções e classes
- Evitar números mágicos — usar constantes nomeadas
- Tratar erros explicitamente — nunca engolir exceções silenciosamente

## Convenções de Nomenclatura

- **Arquivos**: Usar a convenção estabelecida pelo stack do projeto (kebab-case, camelCase, PascalCase, etc.)
- **Funções/Métodos**: Usar verbos que descrevem o que fazem (`getUserById`, `calculateTotal`)
- **Variáveis**: Usar substantivos que descrevem o que contêm (`userList`, `totalAmount`)
- **Booleanos**: Usar prefixos `is`, `has`, `should` (`isActive`, `hasPermission`)
- **Constantes**: Usar UPPER_SNAKE_CASE para constantes verdadeiras

## Organização do Código

- Agrupar funcionalidades relacionadas
- Separar concerns (acesso a dados, lógica de negócio, apresentação)
- Manter imports organizados e ordenados
- Remover código, imports e dependências não utilizados

## Comentários

- Escrever código que se explica — minimizar comentários
- Usar comentários para o "por quê", não o "o quê"
- Documentar APIs públicas e algoritmos complexos
- Manter comentários atualizados com as mudanças no código

## Testes

- Escrever testes para toda nova funcionalidade
- Seguir o padrão Arrange-Act-Assert (AAA)
- Usar nomes descritivos para testes que expliquem o cenário
- Testar casos de borda e cenários de erro
- Manter independência entre testes — sem estado compartilhado entre testes

## Segurança

- Validar todos os inputs externos
- Usar queries parametrizadas para operações de banco de dados
- Nunca logar dados sensíveis (senhas, tokens, PII)
- Seguir o princípio do menor privilégio
- Manter dependências atualizadas

## Git Commits

- Escrever mensagens de commit claras e descritivas
- Usar o formato de conventional commits: `type(scope): description`
- Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`
- Manter commits atômicos — uma mudança lógica por commit
