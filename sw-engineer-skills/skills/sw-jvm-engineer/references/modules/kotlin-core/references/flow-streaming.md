# Flow and Streaming

## When to use Flow
- data arrives over time
- backpressure-aware composition matters
- you need cancellation-friendly async sequences

## Rules
- Keep flow operators readable.
- Avoid blocking in flow pipelines.
- Use `map`, `filter`, `buffer`, `catch`, and `flowOn` intentionally.

## Boundary discipline
- Keep the stream model at the edges when the rest of the code is synchronous.
- Do not force everything into Flow just because it can be done.

## Pitfalls
- Too many operators hiding the business rule
- Unclear dispatcher boundaries
- Mixing blocking work into a reactive pipeline
