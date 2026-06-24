# SW Engineer Skills Knowledge Base

This repository stores JVM backend reference material and turns it into reusable Codex
skills. It is intentionally split into raw knowledge, curated modules, and installable
skill folders so new skills can be composed without copying an entire documentation corpus
into every skill.

## Repository Layout

```text
knowledge/   Raw technical references collected from framework or language documentation.
modules/     Curated topic packs distilled from knowledge sources.
recipes/     Skill composition files that list which modules belong in a skill.
skills/      Installable Codex skill folders.
scripts/     Local helpers for building and auditing skills.
```

The current raw knowledge areas are Java, Kotlin, Ktor, and Spring Boot. Maven is currently
only represented by scattered Spring/Kotlin references plus a small curated module, so its
adherence is intentionally lower until a dedicated Maven corpus is added.

## Skill Creation Flow

1. Add or refresh source material in `knowledge/<topic>/`.
2. Create or update one or more `modules/<module-id>/` folders.
3. Record source coverage and intent in each module's `module.yaml`.
4. Create a recipe in `recipes/<skill-id>.yaml`.
5. Build the skill with:

```bash
scripts/build-skill.sh recipes/java-spring-maven.yaml
```

The generated skill appears under `skills/<skill-id>/` and should be self-contained enough
to install independently.

## Adherence Targets

Adherence is the expected relationship between a skill/module and its source knowledge.

- `source-complete`: raw or near-raw source material is included or directly mapped.
- `deep-operational`: enough detail to implement, debug, test, tune, and review production code.
- `practical`: covers common production tasks, APIs, tradeoffs, and failure modes.
- `overview`: routing/index knowledge only.

Current intended targets:

```text
spring-webflux             100% deep-operational
java-streams-functional    100% deep-operational
kotlin-coroutines          100% deep-operational
kotlin-core                 95% practical
ktor-core                   95% practical
java-core                   80% practical
spring-boot-core            80% practical
monitoring-observability    80% practical
java-architecture           80% practical
maven-core                  60% practical until a Maven corpus is added
```

## Example: Java Spring Maven Skill

`recipes/java-spring-maven.yaml` composes a focused Java/Spring skill from:

- `java-core`
- `java-streams-functional`
- `spring-boot-core`
- `spring-webflux`
- `monitoring-observability`
- `java-architecture`
- `maven-core`

This creates a smaller skill than `sw-jvm-engineer`, with stronger emphasis on Java,
Spring Boot, WebFlux, Maven build conventions, testing, and production readiness.

## Skill Folder Rule

Do not add README files inside `skills/*/`. Codex skills should stay lean:

```text
skill-name/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
```

Repository explanation belongs in this root `README.md`.
