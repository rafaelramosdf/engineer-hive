# Padrões de Arquitetura de Software

## Arquiteturas de Aplicação

### Monolith
- **Melhor para**: Times pequenos, produtos em estágio inicial, domínios simples
- **Estrutura**: Unidade de deployment única com toda a funcionalidade
- **Pros**: Deployment simples, debugging fácil, código compartilhado
- **Cons**: Limitações de escala, acoplamento de deployment, crescimento de complexidade
- **Evoluir para**: Modular Monolith → Microservices (se necessário)

### Modular Monolith
- **Melhor para**: Times médios, produtos em crescimento, limites de domínio claros
- **Estrutura**: Deployment único com limites de módulo bem definidos
- **Pros**: Simplicidade do monolith + isolação de módulos, extração futura mais fácil
- **Cons**: Requer disciplina para manter os limites
- **Regra chave**: Módulos se comunicam através de interfaces definidas, não tabelas de banco compartilhadas

### Microservices
- **Melhor para**: Times grandes, produtos maduros, necessidades de escalonamento independente
- **Estrutura**: Serviços independentes com seus próprios data stores, comunicando via APIs/eventos
- **Pros**: Deployment independente, autonomia do time, escalonamento direcionado
- **Cons**: Complexidade de sistema distribuído, desafios de consistência de dados, overhead operacional
- **Pré-requisitos**: DevOps sólido, monitoramento e maturidade do time

### Serverless
- **Melhor para**: Cargas event-driven, tráfego variável, prototipagem rápida
- **Estrutura**: Funções como unidades de deployment, infraestrutura gerenciada
- **Pros**: Sem gerenciamento de servidor, pagamento por uso, auto-scaling
- **Cons**: Cold starts, vendor lock-in, complexidade de debugging

## Arquiteturas em Camadas

### Clean Architecture (Hexagonal/Onion)
- **Princípio central**: Dependências apontam para dentro — lógica de negócio não tem dependências externas
- **Camadas**: Entidades → Use Cases → Interface Adapters → Frameworks/Drivers
- **Benefício chave**: Lógica de negócio é testável sem infraestrutura

### Vertical Slice
- **Princípio central**: Organizar por feature, não por camada
- **Estrutura**: Cada feature contém seu próprio handler, model, validação, persistência
- **Benefício chave**: Mudanças ficam localizadas em um único slice

## Padrões de Dados

### CQRS (Command Query Responsibility Segregation)
- **Quando usar**: Modelos de leitura e escrita diferem significativamente
- **Estrutura**: Modelos separados de command (escrita) e query (leitura)
- **Complexidade**: Médio-alta — usar somente quando justificado

### Event Sourcing
- **Quando usar**: Trilha de auditoria completa necessária, ou transições de estado de domínio complexas
- **Estrutura**: Armazenar eventos, não estado atual; reconstruir estado a partir do histórico de eventos
- **Complexidade**: Alta — usar somente para domínios que realmente se beneficiam

### Domain-Driven Design (DDD)
- **Quando usar**: Domínios de negócio complexos com comportamento rico
- **Conceitos**: Bounded Contexts, Aggregates, Entities, Value Objects, Domain Events
- **Benefício chave**: Estrutura do código espelha o domínio de negócio

## Arquitetura de API

### REST
- **Melhor para**: APIs CRUD-heavy, APIs públicas, amplo suporte de clientes
- **Princípios**: Recursos, métodos HTTP, status codes, HATEOAS

### GraphQL
- **Melhor para**: Requisitos de dados complexos, múltiplos consumidores frontend
- **Princípios**: Schema-first, endpoint único, queries orientadas pelo cliente

### gRPC
- **Melhor para**: Comunicação serviço-a-serviço, alta performance
- **Princípios**: Protocol Buffers, bidirectional streaming, geração de código

### tRPC
- **Melhor para**: Full-stack TypeScript, type safety end-to-end
- **Princípios**: Tipos compartilhados entre cliente e servidor, sem geração de código
