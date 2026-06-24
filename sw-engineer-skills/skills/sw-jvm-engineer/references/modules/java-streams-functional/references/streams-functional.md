# Streams and Functional Style

## What streams are for
- Streams model a pipeline over a source, not a container.
- Use them when the data transformation is linear, side-effect light, and readable as a pipeline.
- Do not use streams just to avoid a loop.

## Pipeline semantics
- Intermediate operations are lazy.
- Terminal operations consume the pipeline.
- Stateful operations such as `sorted` and `distinct` may buffer or inspect more input than stateless ones.
- Short-circuiting operations can stop early.

## Sources and shape
- Streams can come from collections, arrays, generators, IO, and third-party sources.
- Keep source lifetime and pipeline lifetime separate in your mental model.
- A stream is consumable; recreate it if you need to traverse the data again.

## Non-interference and side effects
- Behavioral parameters must not interfere with the source.
- Avoid mutating the stream source while the pipeline is running.
- Prefer pure transformations inside `map`, `filter`, and similar operators.

## Parallelism
- Parallel streams are not a free speedup.
- Use them only when the data set, computation cost, and splitting behavior justify the overhead.
- Remember that stateful operations and side effects can make parallel pipelines slower or incorrect.

## Collectors and reductions
- Prefer the collector or reduction that matches the target shape.
- Keep custom collectors simple and deterministic.
- Use primitive streams when the pipeline is numeric and boxing would matter.

## Functional style
- Use `Predicate`, `Function`, `Supplier`, `Consumer`, and method references where they make the API smaller and clearer.
- Keep lambda capture small.
- Prefer direct method references when they improve clarity.

## Performance rules
- Prefer loops in hot paths when they are simpler or cheaper.
- Watch boxing, allocation, collector churn, and accidental materialization.
- Keep `mapToInt`, `mapToLong`, and `mapToDouble` in mind for numeric work.

## Common mistakes
- Side effects in stream operators
- Reusing a consumed stream
- Assuming parallel streams automatically outperform loops
- Building a pipeline so abstract that no one can see the business rule
