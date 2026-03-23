# Referência de Padrões de Design

## Padrões Criacionais

### Factory Method
- **Quando usar**: Lógica de criação de objetos deve ser centralizada ou variada por contexto
- **Estrutura**: Criador define interface; criadores concretos implementam a criação específica
- **Exemplo**: Diferentes processadores de pagamento criados por uma factory baseada no tipo de pagamento

### Builder
- **Quando usar**: Construção de objetos complexos com muitos parâmetros opcionais
- **Estrutura**: Construção passo a passo com um director orquestrando o processo
- **Exemplo**: Construir objetos de query, objetos de configuração ou DTOs complexos

### Singleton
- **Quando usar**: Exatamente uma instância necessária globalmente (usar com parcimônia)
- **Estrutura**: Construtor privado, método estático de instância
- **Atenção**: Frequentemente um anti-padrão — prerfira injetão de dependência

## Padrões Estruturais

### Adapter
- **Quando usar**: Integrar interfaces incompatíveis (ex.: bibliotecas de terceiros)
- **Estrutura**: Wrapper que traduz uma interface para outra

### Facade
- **Quando usar**: Simplificar um subsistema complexo com uma interface unificada
- **Estrutura**: Ponto de entrada único que delega para componentes internos

### Decorator
- **Quando usar**: Adicionar comportamento a objetos dinamicamente sem modificar sua classe
- **Estrutura**: Wrapper que estende funcionalidade mantendo a interface

### Repository
- **Quando usar**: Abstrair acesso a dados atrás de uma interface similar a coleção
- **Estrutura**: Interface que define operações de dados; implementação gerencia persistência

## Padrões Comportamentais

### Strategy
- **Quando usar**: Múltiplos algoritmos/abordagens que devem ser intercambiáveis
- **Estrutura**: Interface para a estratégia; implementações concretas; contexto seleciona a estratégia

### Observer/Event
- **Quando usar**: Objetos precisam reagir a mudanças de estado sem acoplamento forte
- **Estrutura**: Publisher emite eventos; subscribers reagem de forma independente

### Command
- **Quando usar**: Encapsular operações como objetos (undo, fila, log)
- **Estrutura**: Interface Command com execute/undo; invoker dispara comandos

### Middleware/Pipeline
- **Quando usar**: Processar requisições através de uma cadeia de handlers
- **Estrutura**: Cada handler processa e passa para o próximo; a ordem importa

## Padrões Modernos

### Injetão de Dependência (Dependency Injection)
- **Quando usar**: Sempre — é um princípio fundamental para código testável e desacoplado
- **Estrutura**: Dependências fornecidas externamente (construtor, método ou container)

### Module Pattern
- **Quando usar**: Encapsular funcionalidade relacionada com API pública clara
- **Estrutura**: Internos privados, interface pública exportada

### Result/Either
- **Quando usar**: Operações que podem falhar — evitar lançar exceções para falhas esperadas
- **Estrutura**: Tipo de retorno encapsulando valor de sucesso ou erro com type safety
