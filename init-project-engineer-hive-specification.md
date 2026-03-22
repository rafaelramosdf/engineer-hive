# ENGINEER HIVE - AI-Native Engineering Framework

O "Engineer Hive" deverá ser um framework para desenvolvimento de software AI-native, que conterá uma estrutura de pastas e arquivos organizada, modular e escalável, que configura e gerencia agentes de IA dentro da estrutura de pastas do projeto de software, dentro de editores de código modernos como VS Code, Antigravity, etc. O framework é projetado para ser agnóstico de stack ou editor de código, permitindo que seja facilmente integrado a qualquer projeto de software existente ou novo.

Para construí-lo, quero que você utilize as melhores práticas atuais de configuração de agentes de IA para editores de código, seguindo os padrões de arquivos e pastas de "agents", "skills", "rules", "docs", "rules", "specs", etc. A ideia é buscar nas documentações oficiais mais atuais, e entender a melhor forma de organizar e estruturar um framework de agentes de IA para engenharia de software, e a partir disso criar uma estrutura de pastas e arquivos personalizada, que seja elegante, moderna, profissional e fácil de usar. Antes de começar a criar toda a estrutura, leia todos os pontos deste arquivo, e entenda o conceito central, os agentes especializados necessários, o comportamento esperado, os requisitos não funcionais, e o que deixo em aberto para você. A partir disso, crie a melhor estrutura possível para o framework "Engineer Hive", seguindo as melhores práticas atuais de configuração de agentes de IA para editores de código.

## Conceito Central

O framework deve ser como uma equipe inteira de engenharia de software, e deve funcionar como uma 
"camada de inteligência" plugável em qualquer projeto de software existente ou novo. 
A ideia principal é que um engenheiro consiga trabalhar em modo AI-first, apenas escrevendo 
especificações de features/tasks, bugfixes/hotfixes, e a partir das especificações os agentes 
especializados se encarregam de executar e implementar, sempre seguindo as boas práticas 
e padrões definidos para o projeto, mantendo consistência, eficiência, qualidade, segurança e resiliência, trabalhando como uma equipe de engenharia de software de alta performance, coordenada e eficiente.

## Agentes Especializados

O framework deve conter agentes especializados e independentes, cada um 
com seu próprio contexto, responsabilidades e workflows. Os agentes padrão 
necessários são:

- **Inicializador Hive**: Agente principal do framework "Engineer Hive", deve possuir todo o conhecimento do nosso 
  framework, e será responsável pela configuração inicial do framework para personalizar os agentes para o contexto 
  e stack de um novo projeto de software. Ele será o primeiro agente que deverá ser acionado, e deverá fazer as perguntas 
  necessárias para o engenheiro, para poder saber como configurar os agentes para o contexto do projeto (stack, arquitetura, padrões, etc.). Caso o framework seja iniciado em um projeto já existente, ele deverá fazer a extração dos dados diretamente a partir da análise completa do projeto atual aberto. Será responsável também por tirar dúvidas gerais sobre o framework "Engineer Hive".
- **Gerenciador de Documentação**: Mantém toda a documentação do projeto sempre atualizada e organizada, 
  separando docs para agentes de IA (pasta docs dentro de cada agente específico, ou instruções dos agentes) e docs de produto para humanos, na raiz do projeto. Também deverá criar e manter o README na raiz do repositório do projeto, deverá ser o guardião da documentação do framework e projeto, garantindo que esteja sempre atualizada, clara e acessível para toda a equipe.
- **Product Manager**: Será o dono do produto/projeto, responsável por definir e manter features, refinar e escrever as 
  especificações de features, tasks, bugfixes, hotfixes. Deve ser capaz de analisar o produto atual e propor novas 
  features, identificar melhorias e inovações com visão de negócio.
- **Arquiteto**: Responsável por definir e manter a arquitetura de solução e software, deverá tomar decisóes de revisões 
  estruturais e boas práticas. Deve possuir os conhecimentos gerais de arquiteturas modernas e atuais 
  do mercado de engenharia de software em geral. Terá todas as documentações de cada arquitetura e padrões, como; solutions architectures, design patterns, system designs e software architectures, todas muito bem separadas e organizadas, dentro da sua pasta de "docs". Já na definição de instruções do próprio agente, deverá estar orientado a consultar e seguir somente a documentação específica do padrão e stack do projeto atual.
- **Design UX e UI**: Responsável por padrões visuais, componentes de UI, tokens de design e consistência de UX/UI. Deverá 
  definir e criar todo o design system do projeto, e sempre revisar as implementações do engenheiro front-end, para garantir que todo desenvolvimento de interface do usuário esteja seguindo o padrão do projeto.
- **Engenheiro Back-end**: Especialista em lógica de servidor, APIs, 
  banco de dados e infraestrutura. Terá a função de desenvolver e manter toda a parte de back-end do software/projeto.
- **Engenheiro Front-end**: Especialista em lógica e interface do front-end, deverá sempre seguir as especificações de
  design system UX e UI, e desenvolver e manter o código do front-end.
- **Analista de Bugs**: Investigação e diagnóstico de bugs ou comportamentos inesperados, propondo soluções e correções. 
  Será acionado principalmente para tarefas de bugfixes. Deverá analisar o bug, montar um diagnóstico completo em um formato de prompt markdown e encaminhar para o engenheiro adequado para executar a correção, seja ele o engenheiro back-end ou front-end, dependendo do contexto do bug. Deverá também acompanhar a correção do bug, para garantir que o diagnóstico e solução estejam sendo seguidos corretamente.

## Comportamento Esperado

- Deve existir um mecanismo de bootstrap inteligente capaz de identificar, 
  a partir do prompt do usuário no chat do copiloto, qual agente ou 
  conjunto de agentes deve ser acionado para aquela tarefa
- O framework deve ser agnóstico de ferramenta, funcionando bem tanto no 
  GitHub Copilot (VS Code) quanto em outros copilotos e IDEs modernas
- Cada agente deve operar de forma autônoma, com contexto suficiente para 
  tomar decisões dentro do seu domínio sem precisar de intervenção humana 
  constante
- As especificações de tarefas (features, tasks, bugfixes, hotfixes) devem ser o 
  único input necessário do engenheiro para que o agente execute o trabalho
- Sempre que um agente engenheiro implementar ou alterar algo no projeto, deve acionar o agente de documentaçao passando o 
  resumo das mudanças, para que ele verifique se precisa criar ou atualizar alguma documentação relacionada, garantindo que a documentação do projeto esteja sempre atualizada.

## Dúvidas que tenho e gostaria de entender as possíveis soluções para elas, ou que você tome uma decisão criativa e inteligente para resolver:

- É possível fazer o editor "vs code" por exemplo, selecionar automaticamente o agente no chat do copiloto, a partir do prompt do usuário?
- É possível ter mecanismos de execução em segundo plano, capaz de verificar o código do projeto, e até acionar agentes de forma autônoma, sem a necessidade de um prompt do usuário, por exemplo, para verificar a documentação do projeto e atualizá-la sempre que necessário, ou para analisar o código e propor melhorias ou correções proativamente? Se sim, como podemos organizar para que o ecossistema de agentes trabalhem como uma equipe humana real, proativa e coordenada, dentro do editor de código?

## Requisitos Não Funcionais

- Modular: cada agente deve ser independente e expansível
- Escalável: deve suportar projetos pequenos e grandes com a mesma 
  estrutura, e a estrutura deve ser autosustentável, ou seja, a medida que o projeto cresce, a estrutura deve continuar organizada e fácil de navegar, e o agente "Inicializador Hive" deve ser capaz de ajustar configurações do framework para manter tudo conforme o padrão do framework.
- Instalável: deve ser possível plugar o framework em qualquer projeto 
  existente de forma rápida, idealmente via CLI
- Agnóstico de stack: deve funcionar independente da linguagem ou 
  framework do projeto, sendo a stack configurável pelo agente "Inicializador Hive", a partir de dados do projeto ou dados informados pelo engenheiro
- Agnóstico de copiloto: a estrutura deve ser compatível com os principais 
  agentes e copilotos do mercado

## O que deixo em aberto para você

Com base nesses requisitos e nas melhores práticas atuais de configuração 
de agentes de IA para editores de código, defina e crie:

- A melhor estrutura de pastas e arquivos para esse framework
- Os formatos e padrões de arquivo mais adequados para cada agente 
  (ex: .agent.md, AGENTS.MD, instructions, etc)
- A lógica e formato do bootstrap de seleção de agentes
- O modelo de CLI para instalação e configuração rápida
- Qualquer padrão ou boa prática adicional que julgue relevante para 
  tornar esse framework robusto, moderno e profissional

Seja criativo, siga os padrões oficiais mais recentes e construa algo 
que um engenheiro sênior consideraria elegante e production-ready.
