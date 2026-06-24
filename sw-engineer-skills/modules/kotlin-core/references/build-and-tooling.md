# Build and Tooling

## Gradle and Maven
- Keep build configuration minimal and explicit.
- Prefer the Kotlin DSL when the build is Kotlin-heavy.
- Understand plugin and compiler option boundaries.

## Compiler and caches
- Use incremental compilation, build cache, and configuration cache when the project supports them.
- Keep compiler flags readable and centralized.
- Watch the Kotlin daemon and task configuration when builds become slow.

## Compiler plugins
- Treat kapt, Lombok, no-arg, and other plugins as part of the code contract.
- Keep generated code visible to the team.

## Migration and compatibility
- Read migration notes before bumping language or plugin versions.
- Expect deprecation removals to affect build scripts and source code.
