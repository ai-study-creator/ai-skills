# Null Safety

## Goal
- Let the type system carry nullability as far as possible.
- Keep null checks at boundaries.

## Rules
- Prefer `?.`, `?:`, `let`, and `requireNotNull` over `!!`.
- Model optional fields as nullable only when absence is real.
- Use defaults in constructors or factories when the domain allows them.

## Interop
- Treat Java platform types carefully.
- Validate Java-provided data early.

## Pitfalls
- Using nullable types to avoid modeling the domain
- Turning null safety into a chain of unreadable expressions
