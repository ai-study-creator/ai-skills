# JVM Performance

## What matters most
- Allocation rate
- garbage collection behavior
- startup time
- working set size
- thread count and contention
- IO and serialization overhead

## Practical approach
- Measure before changing code.
- Focus on the hot path, not the entire application.
- Use profiling data to confirm the bottleneck.
- Prefer predictable data structures and bounded caches.

## Startup and footprint
- Reduce classpath and reflection where you can.
- Keep initialization work out of static paths when possible.
- Move heavyweight setup behind lazy or explicit initialization if that fits the design.

## GC and memory
- Watch object churn in loops and request handling.
- Reduce temporary allocations in serializers, adapters, and log formatting.
- Watch retained references in caches and singleton graphs.

## Hot path rules
- Avoid unnecessary boxing and copying.
- Prefer simple control flow that JIT can optimize well.
- Keep synchronization and virtual dispatch out of tight loops unless necessary.
