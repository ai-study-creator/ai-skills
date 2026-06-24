# Errors and API Design

## API shape
- Make the happy path easy and the failure path explicit.
- Prefer immutable value objects.
- Keep method names and parameter order stable and unsurprising.

## Error design
- Use domain-specific exceptions when the caller can act on them.
- Include enough context to debug without exposing secrets.
- Translate exceptions at architectural boundaries.

## Boundary rules
- Do not leak infrastructure types into public APIs unless the contract calls for it.
- Validate inputs early.
- Keep nullability, threading, and ownership rules visible in the signature.

## Compatibility
- Avoid changing return types or semantics casually.
- Add new methods or overloads when evolving a stable API.
