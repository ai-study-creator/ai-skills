# Java Language Basics

## Core model
- Java favors nominal types, explicit mutability, and class-based organization.
- Prefer small, named types where data crosses a boundary.
- Keep public APIs narrow and explicit.

## Modern language features
- Use `record` for transparent data carriers with value semantics.
- Use sealed classes or interfaces for closed hierarchies.
- Use switch expressions when they simplify branching.
- Use pattern matching only when it reduces boilerplate without hiding control flow.

## Generics and typing
- Keep generic APIs simple and well bounded.
- Prefer wildcard use only where it matches the ownership model.
- Do not overfit abstraction to one caller.

## Exceptions
- Throw specific exceptions with context.
- Keep checked exceptions at the boundary where they add value.
- Translate low-level failures into domain-meaningful failures when crossing module boundaries.

## Code shape
- Keep methods small enough that the control flow is visible in one screen.
- Prefer clear naming over clever composition.
- Initialize invariants in constructors or factories, not across many setters.
