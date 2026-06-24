# Concurrency

## Core principles
- Prefer explicit concurrency boundaries.
- Keep shared mutable state small and carefully protected.
- Do not block event-loop or reactive threads.
- Make cancellation and shutdown behavior obvious.

## Threads and executors
- Use named executors for server work.
- Size pools to the workload and blocking profile.
- Avoid unbounded thread creation.
- Distinguish CPU-bound from blocking IO work.

## Synchronization
- Use the simplest correct primitive.
- Prefer higher-level concurrency utilities over low-level locking when possible.
- Lock only around the critical section.
- Keep lock ordering consistent.

## Futures and async work
- Use `CompletableFuture` for composable async pipelines when the boundaries are clear.
- Propagate failure intentionally.
- Avoid hiding blocking work inside async wrappers.

## Performance concerns
- Watch contention, queue growth, and thread starvation.
- Measure tail latency, not just average throughput.
