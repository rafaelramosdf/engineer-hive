# Design Patterns Reference

## Creational Patterns

### Factory Method
- **When**: Object creation logic should be centralized or varied by context
- **Structure**: Creator defines interface; concrete creators implement specific creation
- **Example**: Different payment processors created by a factory based on payment type

### Builder
- **When**: Complex object construction with many optional parameters
- **Structure**: Step-by-step construction with a director orchestrating the process
- **Example**: Building query objects, configuration objects, or complex DTOs

### Singleton
- **When**: Exactly one instance needed globally (use sparingly)
- **Structure**: Private constructor, static instance method
- **Caution**: Often an anti-pattern — prefer dependency injection

## Structural Patterns

### Adapter
- **When**: Integrate incompatible interfaces (e.g., third-party libraries)
- **Structure**: Wrapper that translates one interface to another

### Facade
- **When**: Simplify a complex subsystem with a unified interface
- **Structure**: Single entry point that delegates to internal components

### Decorator
- **When**: Add behavior to objects dynamically without modifying their class
- **Structure**: Wrapper that extends functionality while maintaining the interface

### Repository
- **When**: Abstract data access behind a collection-like interface
- **Structure**: Interface defining data operations; implementation handles persistence

## Behavioral Patterns

### Strategy
- **When**: Multiple algorithms/approaches that should be interchangeable
- **Structure**: Interface for the strategy; concrete implementations; context selects strategy

### Observer/Event
- **When**: Objects need to react to state changes without tight coupling
- **Structure**: Publisher emits events; subscribers react independently

### Command
- **When**: Encapsulate operations as objects (undo, queue, log)
- **Structure**: Command interface with execute/undo; invoker triggers commands

### Middleware/Pipeline
- **When**: Process requests through a chain of handlers
- **Structure**: Each handler processes and passes to the next; order matters

## Modern Patterns

### Dependency Injection
- **When**: Always — it's a fundamental principle for testable, decoupled code
- **Structure**: Dependencies provided externally (constructor, method, or container)

### Module Pattern
- **When**: Encapsulate related functionality with clear public API
- **Structure**: Private internals, exported public interface

### Result/Either
- **When**: Operations that can fail — avoid throwing exceptions for expected failures
- **Structure**: Return type wrapping success value or error with type safety
