# Performance and Idioms

## Idiomatic but efficient
- Prefer `val` and immutable state.
- Use standard library features when they keep intent clear.
- Avoid over-chaining in hot paths.

## Performance tips
- Watch allocation in lambdas and collection transformations.
- Prefer concrete collection operations when they are cheaper and still readable.
- Measure coroutine and dispatcher overhead in hot code.

## Style
- Keep extension functions focused and local.
- Prefer explicit names over clever DSL tricks in backend code.
