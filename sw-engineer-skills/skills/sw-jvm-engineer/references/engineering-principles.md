# Engineering Principles

## Reading policy
- Prefer the smallest topic file that answers the task.
- If a topic file is not enough, read the next more specific file instead of the whole pack.
- Use source docs as the final authority when a detail matters and the reference pack is still abstract.

## Default stance
- Make the smallest change that solves the task.
- Prefer readable code over clever code.
- Follow the repository's existing patterns unless they are clearly wrong.
- Preserve user work and unrelated changes.

## Performance
- Treat blocking IO, allocation rate, startup time, memory use, and connection pool sizing as first-class concerns.
- Measure before optimizing.
- Prefer stable, low-cardinality observability signals.

## Correctness
- Make failure modes explicit.
- Validate inputs at boundaries.
- Keep transactions, thread boundaries, and async boundaries obvious.
- Avoid hidden global state.

## Testing
- Add tests that prove the behavior, not just the implementation.
- Prefer focused unit tests for logic and integration tests for wiring.
- If a change touches runtime behavior, verify the observable output or contract.

## Security
- Do not log secrets or personal data.
- Keep authentication and authorization decisions explicit.
- Default to safe configuration values.

## Review standard
- Explain tradeoffs when they matter.
- Call out assumptions that are not backed by evidence.
- Prefer code that will still be understandable after a future refactor.
