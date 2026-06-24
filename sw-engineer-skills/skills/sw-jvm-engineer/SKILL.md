---
name: sw-jvm-engineer
description: Use when working on Java, Kotlin, Ktor, or Spring Boot codebases that need production-grade implementation, performance awareness, strong testing, observability, or architecture guidance.
---

# SW JVM Engineer

Use this skill for JVM backend work across Java, Kotlin, Ktor, and Spring Boot.

## When to use
Use this skill when the task involves:
- implementing or refactoring Java or Kotlin backend code
- building or tuning Ktor services
- building Spring Boot services, APIs, jobs, or integrations
- performance, reliability, observability, or deployment work
- debugging production issues
- architecture and testing decisions

## Operating rules
- Read the repo first and follow local conventions.
- Prefer minimal, local changes.
- Reuse existing abstractions before introducing new ones.
- Optimize for correctness and clarity before micro-optimizing.
- Call out tradeoffs when performance, complexity, or compatibility conflict.
- Verify changes with targeted tests when possible.

## Reference routing
Load only the material relevant to the task:
- `references/modules/java-core/index.md` for Java language, platform, and JVM details
- `references/modules/java-streams-functional/index.md` for Java stream pipelines and functional style
- `references/modules/kotlin-core/index.md` for Kotlin language and JVM interop
- `references/modules/kotlin-coroutines/index.md` for coroutine implementation, debugging, and testing
- `references/modules/ktor-core/index.md` for Ktor server/client and testing patterns
- `references/modules/spring-boot-core/index.md` for Spring Boot guidance and examples
- `references/modules/spring-webflux/index.md` for deep Spring WebFlux work
- `references/modules/monitoring-observability/index.md` for logging, metrics, tracing, alerting, profiling, and capacity planning
- `references/modules/java-architecture/index.md` for Spring Boot architecture, WebFlux, JPA, security, configuration, and test strategy
- `references/engineering-principles.md` for cross-cutting engineering standards

## Decision order
1. Identify the framework and runtime constraints.
2. Prefer idiomatic code for that stack.
3. Check performance, threading, IO, startup, memory, and observability impact.
4. Choose the smallest implementation that satisfies the requirement.
5. Add or update tests that prove the behavior.
6. Summarize risks and assumptions clearly.

## Spring Boot guidance
Use the Spring Boot references selectively.
Prefer the topic file that matches the task.
Do not load all examples by default.

For WebFlux work, always read `references/modules/spring-webflux/index.md` first.
For Java stream or functional-style work, always read `references/modules/java-streams-functional/index.md` first.
For Kotlin coroutine work, always read `references/modules/kotlin-coroutines/index.md` first.

## Imported skill bundles
The monitoring and Spring architecture modules are local distilled references.
Read them when the task is observability-heavy or Spring Boot architecture-heavy, but do not treat them as mandatory for every JVM task.

## Output style
- Be concise and factual.
- State assumptions explicitly.
- Highlight risks and edge cases when relevant.
- Avoid unnecessary abstraction.
