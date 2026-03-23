# Referência de System Design

## Padrões de Escalabilidade

### Escalonamento Horizontal
- Adicionar mais instâncias atrás de um load balancer
- Requer design de aplicação stateless ou estado externalizado

### Escalonamento Vertical
- Aumentar recursos de instâncias existentes
- Mais simples, mas tem limites físicos

### Caching
- **Client-side**: Cache do browser, service workers
- **CDN**: Assets estáticos, edge caching
- **Aplicação**: In-memory (Redis, Memcached), query cache
- **Banco de dados**: Query plan cache, materialized views
- **Invalidação de cache**: TTL, event-driven, write-through, write-behind

### Escalonamento de Banco de Dados
- **Read replicas**: Escalonar cargas de trabalho com alta leitura
- **Sharding**: Distribuir dados entre múltiplos bancos
- **Connection pooling**: Gerenciar conexões de banco eficientemente

## Padrões de Resiliência

### Circuit Breaker
- Prevenir falhas em cascata detectando e parando chamadas que falham
- Estados: Fechado → Aberto → Meio-Aberto

### Retry com Backoff
- Backoff exponencial com jitter para falhas transitórias
- Definir número máximo de tentativas para prevenir loops infinitos

### Bulkhead
- Isolar recursos para que uma falha não afete o sistema inteiro
- Separar thread pools, connection pools ou serviços

### Timeout
- Sempre definir timeouts para chamadas externas
- Definir orçamentos de timeout para cadeias de requisição

## Padrões de Mensageria

### Message Queue
- Desacoplar produtores e consumidores
- Habilitar processamento assíncrono e nivelamento de carga
- Ferramentas: RabbitMQ, SQS, Azure Service Bus

### Event Bus / Event Streaming
- Transmitir eventos para múltiplos consumidores
- Habilitar arquiteturas event-driven
- Ferramentas: Kafka, EventBridge, Pulsar

### Padrão Saga
- Gerenciar transações distribuídas entre serviços
- Choreography (event-driven) ou Orchestration (coordenador central)

## Padrões de Segurança

### Autenticação
- **JWT**: Tokens stateless para autenticação de API
- **OAuth 2.0**: Autorização delegada para acesso de terceiros
- **Session-based**: Sessões server-side para aplicações web tradicionais

### Autorização
- **RBAC**: Role-Based Access Control (Controle de Acesso Baseado em Papéis)
- **ABAC**: Attribute-Based Access Control (Controle de Acesso Baseado em Atributos)
- **Policy-based**: Engine de políticas centralizado (OPA, Casbin)

### Segurança de API
- Rate limiting e throttling
- Validação e sanitização de input
- Configuração de CORS
- Gerenciamento de API keys
- Assinatura de requisições

## Observabilidade

### Os Três Pilares
1. **Logs**: Logs estruturados com correlation IDs
2. **Métricas**: Taxa de requisições, taxa de erros, latência (método RED)
3. **Traces**: Rastreamento distribuído entre fronteiras de serviço

### Health Checks
- Liveness: O serviço está rodando?
- Readiness: O serviço pode lidar com requisições?
- Startup: O serviço terminou de inicializar?
