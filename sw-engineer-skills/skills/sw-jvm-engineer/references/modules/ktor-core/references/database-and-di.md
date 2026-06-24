# Database and Dependency Injection

## Database integration
- Keep database setup and connection pooling explicit.
- Use persistence libraries with clear transaction and lifecycle rules.
- Separate repository code from route handlers.

## Dependency injection
- Use DI to wire application services, not to hide architecture.
- Keep component registration and resource lifecycle explicit.
- Understand dependency resolution and test registration.

## Practical rule
- If a database or DI change touches startup, shutdown, or tests, treat it as architecture work.
