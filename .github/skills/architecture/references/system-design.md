# System Design Reference

## Scalability Patterns

### Horizontal Scaling
- Add more instances behind a load balancer
- Requires stateless application design or externalized state

### Vertical Scaling
- Increase resources of existing instances
- Simpler but has physical limits

### Caching
- **Client-side**: Browser cache, service workers
- **CDN**: Static assets, edge caching
- **Application**: In-memory (Redis, Memcached), query cache
- **Database**: Query plan cache, materialized views
- **Cache invalidation**: TTL, event-driven, write-through, write-behind

### Database Scaling
- **Read replicas**: Scale read-heavy workloads
- **Sharding**: Distribute data across multiple databases
- **Connection pooling**: Manage database connections efficiently

## Resilience Patterns

### Circuit Breaker
- Prevent cascading failures by detecting and stopping failing calls
- States: Closed → Open → Half-Open

### Retry with Backoff
- Exponential backoff with jitter for transient failures
- Set maximum retry count to prevent infinite loops

### Bulkhead
- Isolate resources so one failure doesn't affect the entire system
- Separate thread pools, connection pools, or services

### Timeout
- Always set timeouts for external calls
- Define timeout budgets for request chains

## Messaging Patterns

### Message Queue
- Decouple producers and consumers
- Enable async processing and load leveling
- Tools: RabbitMQ, SQS, Azure Service Bus

### Event Bus / Event Streaming
- Broadcast events to multiple consumers
- Enable event-driven architectures
- Tools: Kafka, EventBridge, Pulsar

### Saga Pattern
- Manage distributed transactions across services
- Choreography (event-driven) or Orchestration (central coordinator)

## Security Patterns

### Authentication
- **JWT**: Stateless tokens for API authentication
- **OAuth 2.0**: Delegated authorization for third-party access
- **Session-based**: Server-side sessions for traditional web apps

### Authorization
- **RBAC**: Role-Based Access Control
- **ABAC**: Attribute-Based Access Control
- **Policy-based**: Centralized policy engine (OPA, Casbin)

### API Security
- Rate limiting and throttling
- Input validation and sanitization
- CORS configuration
- API key management
- Request signing

## Observability

### Three Pillars
1. **Logs**: Structured logging with correlation IDs
2. **Metrics**: Request rate, error rate, latency (RED method)
3. **Traces**: Distributed tracing across service boundaries

### Health Checks
- Liveness: Is the service running?
- Readiness: Can the service handle requests?
- Startup: Has the service finished initializing?
