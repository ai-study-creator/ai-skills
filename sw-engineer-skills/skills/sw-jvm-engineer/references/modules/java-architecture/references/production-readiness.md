# Production Readiness

## Baseline
- health, readiness, and liveness checks
- metrics and logs with correlation IDs
- tracing where it helps debug latency or distributed failures
- graceful shutdown
- migration strategy for schema changes

## Operational checks
- Are failures visible?
- Are alerts actionable?
- Can the service be configured without a rebuild?
- Can you explain the startup and shutdown path?
