# Collections and Streams

## Collections
- Choose the collection for the access pattern, not habit.
- Use `List` for ordered sequences, `Set` for membership, `Map` for keyed lookup.
- Prefer immutable views or defensive copies at boundaries.
- Treat `HashMap`/`HashSet` capacity and load factor as a tuning point only when evidence says it matters.
- Keep iteration order, equality semantics, and mutation behavior explicit.
- Prefer the narrowest mutability that satisfies the use case.

## Iteration
- Use straightforward loops when the logic is branchy or performance-sensitive.
- Use streams when the transformation is linear and the pipeline stays readable.
- Avoid deeply nested stream chains that hide state or allocations.

## Streams
- Streams are best for pipelines that are side-effect light and transformation heavy.
- Avoid side effects inside stream operations unless the effect is clearly local.
- Choose terminal operations intentionally; do not use streams just to look modern.

## Functional interfaces
- Use `Predicate`, `Function`, `Supplier`, and `Consumer` when they make APIs easier to compose.
- Keep lambda capture small in hot paths.

## Common pitfalls
- Unnecessary boxing in numeric code
- Collecting large streams when a simple loop would be cheaper
- Mutating shared state from inside pipeline operations
- Forgetting that a collection is not the same thing as a stream pipeline
- Returning a mutable collection when the caller should not mutate it
