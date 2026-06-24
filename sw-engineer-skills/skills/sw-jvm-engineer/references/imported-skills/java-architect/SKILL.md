---
name: java-architect
description: Use when designing or debugging Spring Boot Java services, especially architecture, WebFlux, JPA, security, configuration, testing, or production readiness.
---

# Java Architect

Use this bundle for Spring Boot architecture and implementation decisions.

## Core workflow
1. Inspect the application structure, dependencies, and runtime model.
2. Decide whether the task belongs in web, service, data, config, or security layers.
3. Keep the domain model and transport model separate when the boundary matters.
4. Verify data access, security, and integration behavior with tests.
5. Check production readiness before closing the task.

## Reference map
- `references/index.md`
- `references/architecture-principles.md`
- `references/spring-boot-architecture.md`
- `references/webflux.md`
- `references/jpa-and-data-access.md`
- `references/security.md`
- `references/testing.md`
- `references/configuration.md`
- `references/production-readiness.md`

## Working rules
- Use Spring Boot conventions unless there is a clear reason not to.
- Keep controllers thin and services focused.
- Avoid hidden blocking behavior in reactive code.
- Tune JPA for the actual query path, not the entity model alone.
- Treat externalized configuration as part of the architecture.
