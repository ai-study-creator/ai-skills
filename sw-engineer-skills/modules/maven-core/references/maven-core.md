# Maven Core Reference

## Review Priorities

- Prefer the Maven Wrapper when a project already uses it.
- Keep parent, dependency management, plugin management, and module declarations explicit.
- Avoid undeclared transitive dependencies in application code.
- Pin plugin versions unless inherited from a trusted parent such as Spring Boot's parent POM.
- Keep build profiles small and environment-specific behavior visible.
- Separate unit tests from integration tests when the project uses both Surefire and Failsafe.
- Keep generated artifacts out of source control unless the project convention requires them.

## Spring Boot Maven Conventions

- Use `spring-boot-starter-parent` when the project accepts Boot's parent POM defaults.
- If the project cannot use the parent, import `spring-boot-dependencies` through dependency
  management and configure plugin versions explicitly.
- Use `spring-boot-maven-plugin` for executable jars, image building, AOT processing, and
  Boot-specific packaging workflows.
- Check resource filtering carefully because Maven placeholders can conflict with Spring
  property placeholders.

## Kotlin With Maven

- Use `kotlin-maven-plugin` when Kotlin sources are built with Maven.
- Keep Java and Kotlin compiler targets aligned.
- Configure compiler plugins such as all-open/no-arg explicitly when frameworks require
  runtime proxies or JPA-style constructors.

## Failure Modes

- Hidden transitive dependency usage breaks during dependency upgrades.
- Plugin behavior changes when plugin versions are inherited implicitly from an unexpected parent.
- Resource filtering corrupts application configuration.
- Mixed Java/Kotlin builds drift in target bytecode level.
- Integration tests run in the wrong lifecycle phase or are skipped in CI.
