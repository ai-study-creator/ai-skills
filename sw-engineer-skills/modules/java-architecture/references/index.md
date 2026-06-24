# Java Architect Index

Use this pack when designing or debugging Spring Boot architecture, especially around web, persistence, security, testing, and production readiness.

## Topic map
- `architecture-principles.md` - layering and boundary decisions
- `spring-boot-architecture.md` - how a Boot service should be shaped
- `webflux.md` - reactive stack usage and boundaries
- `jpa-and-data-access.md` - transactions, fetch shape, query tuning
- `security.md` - authentication and authorization boundaries
- `testing.md` - slice tests, integration tests, and coverage strategy
- `configuration.md` - config binding, profiles, and externalization
- `production-readiness.md` - health, metrics, logs, tracing, shutdown

## Reading order
1. Start with `architecture-principles.md`.
2. Read `spring-boot-architecture.md` for service shape and package boundaries.
3. Read the web, data, and security files for the specific subsystem being changed.
4. Read `testing.md` and `production-readiness.md` before closing a change.

## Practical stance
- Keep business rules in the service layer.
- Keep transport, persistence, and security boundaries explicit.
- Make runtime behavior understandable from code and config.
