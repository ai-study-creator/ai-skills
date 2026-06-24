# Coroutine Best Practices

## API design
- Expose suspending functions where async work is the natural contract.
- Keep coroutine boundaries visible in the API.
- Return structured results instead of leaking coroutine internals.

## Shared state and testing
- Keep side effects at the boundary.
- Prefer deterministic tests using test scopes or controlled dispatchers.
- Make cancellation behavior part of the test plan.

## Performance and reliability
- Avoid unnecessary coroutine creation in tight loops.
- Keep launch graphs small and understandable.
- Prefer structured concurrency to ad hoc job management.

## Common mistakes
- `GlobalScope` where a structured scope is required
- Blocking a dispatcher thread
- Swallowing cancellation
- Using coroutine primitives when a simple synchronous function would be clearer
