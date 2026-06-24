# Metrics

## Metric types
- Counter: things that only increase
- Gauge: current state
- Histogram: latency or size distribution

## Naming
- Use names that describe the thing being measured.
- Keep units explicit.
- Keep label sets small and stable.

## Good targets
- request latency
- request rate
- error rate
- queue depth
- thread pool or connection pool saturation
