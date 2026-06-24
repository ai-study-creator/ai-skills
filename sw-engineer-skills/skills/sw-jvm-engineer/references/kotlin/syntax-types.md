# Kotlin Syntax and Types

## Core defaults
- Prefer `val`.
- Use data classes for value carriers.
- Use sealed hierarchies for closed domain states.
- Use object declarations for singleton stateless collaborators only when appropriate.

## Type system
- Encode nullability in the type.
- Use explicit return types on public APIs when the contract matters.
- Prefer local inference when the type is obvious from the right-hand side.

## Value modeling
- Data classes are best for simple state.
- Inline/value classes are useful for lightweight domain wrappers.
- Avoid overusing inheritance when composition is enough.

## Control flow
- Use expression style when it stays readable.
- Keep branching simple and local.
- Avoid hiding business rules in clever operators.
