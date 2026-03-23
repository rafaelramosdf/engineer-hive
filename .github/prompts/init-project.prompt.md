---
description: "Inicializar ou reconfigurar o framework Engineer Hive para um projeto"
agent: "hive-initializer"
argument-hint: "Novo projeto ou projeto existente a configurar"
---

Execute o Hive Initializer para configurar ou reconfigurar o framework Engineer Hive.

Para um **novo projeto**: Entreviste o engenheiro sobre o stack, arquitetura e convenções do projeto, incluindo o **idioma preferido** (padrão: pt-br), e em seguida configure todos os componentes do framework de acordo.

Para um **projeto existente**: Analise a base de código atual para detectar stack, padrões e convenções, e configure o framework para correspondêr.

Para **reconfigurar o idioma**: Se o usuário solicitar mudança de idioma, atualize `.github/instructions/language.instructions.md` com o novo idioma padrão.

Após o setup:
1. Gere arquivos de instruções específicos do stack em `.github/instructions/`
2. Verifique se todos os componentes do framework estão no lugar
3. Execute um health check na estrutura do framework
4. Fornecer um resumo e próximos passos
