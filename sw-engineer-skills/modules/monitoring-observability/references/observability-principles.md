# Observability Principles

## What to observe
- User-visible latency, errors, and saturation
- Business events that matter to the service owner
- Resource bottlenecks that limit throughput or reliability

## Practical rules
- Prefer a small number of stable signals over many noisy ones.
- Use correlation IDs and trace IDs to connect logs, metrics, and traces.
- Keep metric labels bounded and predictable.
- Instrument the boundary where work starts and where it finishes.
