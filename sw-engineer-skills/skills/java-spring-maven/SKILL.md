---
name: java-spring-maven
description: Use when working on Java and Spring Boot services that use Maven, especially WebFlux APIs, stream or functional style Java, testing, observability, packaging, and production readiness.
---

# Java Spring Maven

Use this skill for production-grade JVM backend engineering in its declared scope.

## Operating Rules

- Read the repository first and follow local conventions.
- Load only the module references relevant to the task.
- Prefer small, testable changes over broad rewrites.
- Check correctness, performance, threading, IO, observability, and compatibility.
- Verify with targeted tests when possible.

## Module Routing

Load these module indexes as needed:

- references/modules/java-core/index.md
- references/modules/java-streams-functional/index.md
- references/modules/spring-boot-core/index.md
- references/modules/spring-webflux/index.md
- references/modules/monitoring-observability/index.md
- references/modules/java-architecture/index.md
- references/modules/maven-core/index.md

## Decision Order

1. Identify the runtime, framework, and build constraints.
2. Load the smallest relevant module index.
3. Load only the topic reference needed for the task.
4. Implement or review using local project conventions.
5. Validate behavior with tests or a concrete check.
6. Summarize assumptions, risks, and verification.
