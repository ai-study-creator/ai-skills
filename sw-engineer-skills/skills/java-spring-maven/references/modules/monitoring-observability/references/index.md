# Monitoring Expert Index

Use this pack when you need observability, diagnostics, capacity, or performance guidance.

## Topic map
- `observability-principles.md` - what to measure and why
- `logging.md` - structured logging and correlation
- `metrics.md` - counters, gauges, histograms, naming, cardinality
- `tracing.md` - span design and context propagation
- `alerting.md` - when to page humans and when not to
- `dashboards.md` - how to build useful views
- `load-testing.md` - what load tests should answer
- `profiling-capacity.md` - CPU, memory, GC, contention, and sizing

## Reading order
1. Start with `observability-principles.md`.
2. Read `logging.md`, `metrics.md`, and `tracing.md` for instrumentation work.
3. Read `alerting.md` and `dashboards.md` when designing operations visibility.
4. Read `load-testing.md` and `profiling-capacity.md` for performance and scaling decisions.

## Practical stance
- Favor a small number of stable, low-noise signals.
- Prefer actionable alerts over noisy warnings.
- Measure and verify before changing capacity or performance assumptions.
