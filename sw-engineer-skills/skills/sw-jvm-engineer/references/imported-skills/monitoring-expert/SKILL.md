---
name: monitoring-expert
description: Use when adding logging, metrics, tracing, alerts, dashboards, profiling, load tests, or capacity planning to JVM services.
---

# Monitoring Expert

Use this bundle when the task is observability-heavy or performance-sensitive.

## Core workflow
1. Identify the critical path, business metrics, and failure modes.
2. Add structured logs, metrics, and traces at the right boundaries.
3. Verify the signals arrive in the backend before designing dashboards or alerts.
4. Build dashboards around RED or USE, depending on the system.
5. Add alerts only for actionable conditions.

## Reference map
- `references/index.md`
- `references/observability-principles.md`
- `references/logging.md`
- `references/metrics.md`
- `references/tracing.md`
- `references/alerting.md`
- `references/dashboards.md`
- `references/load-testing.md`
- `references/profiling-capacity.md`

## Working rules
- Keep labels low-cardinality.
- Carry correlation IDs through the request path.
- Avoid sensitive data in logs.
- Alert on symptoms that need action, not every error.
- Measure before optimizing capacity.
