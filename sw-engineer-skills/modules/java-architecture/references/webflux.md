# WebFlux

## Use when
- the full path is non-blocking
- reactive composition is a better fit than thread-per-request
- the project already uses Reactor or reactive clients

## Rules
- Do not block on the event loop.
- Keep `Mono` and `Flux` at the edges, not everywhere.
- Handle backpressure-sensitive paths deliberately.
- Use `WebTestClient` for reactive endpoint verification.
