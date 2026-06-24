# Channels, Flow, SharedFlow, and StateFlow

## When to use which
- Use `Channel` for point-to-point coroutine communication.
- Use `Flow` for cold asynchronous streams.
- Use `SharedFlow` for broadcasting hot values to multiple collectors.
- Use `StateFlow` for shared state with a current value.

## Channels
- Each element is typically delivered to one receiver.
- They fit producer/consumer pipelines and fan-out coordination.
- Keep channel closing and cancellation behavior explicit.

## Flow
- A flow emits values when collected.
- Treat the flow pipeline as declarative work until collection starts.
- Use flow when data naturally arrives over time and you want cancellation-aware composition.

## Shared mutable state
- Prefer `StateFlow` when multiple coroutines need to observe the latest value.
- Protect mutation with clear ownership.
- Avoid ad hoc shared mutable variables across coroutines.

## Streaming rules
- Keep transformations small and testable.
- Avoid blocking inside streams.
- Watch backpressure-like behavior at producer/consumer boundaries.
