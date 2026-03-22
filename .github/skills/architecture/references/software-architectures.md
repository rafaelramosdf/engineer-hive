# Software Architecture Patterns

## Application Architectures

### Monolith
- **Best for**: Small teams, early-stage products, simple domains
- **Structure**: Single deployable unit with all functionality
- **Pros**: Simple deployment, easy debugging, shared code
- **Cons**: Scaling limitations, deployment coupling, growing complexity
- **Evolve to**: Modular Monolith → Microservices (if needed)

### Modular Monolith
- **Best for**: Medium teams, growing products, clear domain boundaries
- **Structure**: Single deployment with well-defined module boundaries
- **Pros**: Monolith simplicity + module isolation, easier future extraction
- **Cons**: Requires discipline to maintain boundaries
- **Key rule**: Modules communicate through defined interfaces, not shared database tables

### Microservices
- **Best for**: Large teams, mature products, independent scaling needs
- **Structure**: Independent services with own data stores, communicating via APIs/events
- **Pros**: Independent deployment, team autonomy, targeted scaling
- **Cons**: Distributed system complexity, data consistency challenges, operational overhead
- **Prerequisites**: Strong DevOps, monitoring, and team maturity

### Serverless
- **Best for**: Event-driven workloads, variable traffic, rapid prototyping
- **Structure**: Functions as deployment units, managed infrastructure
- **Pros**: No server management, pay-per-use, auto-scaling
- **Cons**: Cold starts, vendor lock-in, debugging complexity

## Layered Architectures

### Clean Architecture (Hexagonal/Onion)
- **Core principle**: Dependencies point inward — business logic has no external dependencies
- **Layers**: Entities → Use Cases → Interface Adapters → Frameworks/Drivers
- **Key benefit**: Business logic is testable without infrastructure

### Vertical Slice
- **Core principle**: Organize by feature, not by layer
- **Structure**: Each feature contains its own handler, model, validation, persistence
- **Key benefit**: Changes are localized to a single slice

## Data Patterns

### CQRS (Command Query Responsibility Segregation)
- **When**: Read and write models differ significantly
- **Structure**: Separate command (write) and query (read) models
- **Complexity**: Medium-high — use only when justified

### Event Sourcing
- **When**: Full audit trail needed, or complex domain state transitions
- **Structure**: Store events, not current state; rebuild state from event history
- **Complexity**: High — use only for domains that truly benefit

### Domain-Driven Design (DDD)
- **When**: Complex business domains with rich behavior
- **Concepts**: Bounded Contexts, Aggregates, Entities, Value Objects, Domain Events
- **Key benefit**: Code structure mirrors business domain

## API Architecture

### REST
- **Best for**: CRUD-heavy, public APIs, broad client support
- **Principles**: Resources, HTTP methods, status codes, HATEOAS

### GraphQL
- **Best for**: Complex data requirements, multiple frontend consumers
- **Principles**: Schema-first, single endpoint, client-driven queries

### gRPC
- **Best for**: Service-to-service communication, high performance
- **Principles**: Protocol Buffers, bidirectional streaming, code generation

### tRPC
- **Best for**: TypeScript full-stack, end-to-end type safety
- **Principles**: Shared types between client and server, no code generation
