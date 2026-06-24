# Reflection and Modules

## Reflection
- Use reflection when framework integration requires it, not as a default.
- Keep reflective access localized.
- Cache lookup results when the work is repeated.

## Annotations
- Use annotations to describe intent, not to hide behavior.
- Keep annotation processing effects visible to the team.

## Modules
- Understand module boundaries when the project uses the module system.
- Export only what is required.
- Prefer clear package structure and service loading when decoupling is needed.

## Service loading
- Use `ServiceLoader` for pluggable implementations that fit the module boundary.
- Keep service contracts minimal.
