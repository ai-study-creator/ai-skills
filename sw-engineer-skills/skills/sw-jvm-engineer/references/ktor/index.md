# Ktor Reference Index

Use these files when the task involves Ktor server or client code, routing, plugins, serialization, validation, auth, testing, or deployment.

## Topic map
- `server-architecture.md` - app shape, engines, modules, request lifecycle, deployment modes
- `routing-and-modules.md` - routing structure, resources, composition, path handling
- `plugins-and-lifecycle.md` - plugin ordering, dependency injection, request lifecycle, status pages, call logging
- `serialization-and-validation.md` - request/response bodies, serializers, validation, data conversion
- `requests-responses.md` - request/response APIs, headers, call context, body handling
- `auth-and-sessions.md` - basic/auth/jwt/oauth/session flows
- `cross-cutting.md` - CORS, compression, caching, forwarding, rate limiting, headers
- `client.md` - client creation, request/response handling, auth, serialization, retries, timeout
- `client-plugins.md` - plugin installation, configuration, replacement, custom plugins
- `client-auth.md` - basic, digest, bearer auth, caching, realms, provider selection
- `client-timeout-validation.md` - retry ordering, timeouts, response validation
- `testing.md` - server and client tests, request/response assertions
- `deployment.md` - packaging, engines, servlet containers, native, docker, cloud deployment
- `cloud-deployment.md` - provider-specific cloud deployment guides and port configuration
- `observability.md` - logging, metrics, call IDs, forward headers, tracing patterns
- `websockets-sse.md` - WebSockets and server-sent events
- `static-and-templates.md` - static content and templating engines
- `database-and-di.md` - database integration, DI, lifecycle, modules, resource ownership
- `project-and-migration.md` - project creation, dependency setup, migration, release notes

## Reading order
1. Read `server-architecture.md` for new services.
2. Read `routing-and-modules.md` for endpoint design.
3. Read `plugins-and-lifecycle.md` and `serialization-and-validation.md` for request behavior.
4. Read `requests-responses.md` and `cross-cutting.md` for body, header, and middleware behavior.
5. Read `client.md`, `client-plugins.md`, `client-auth.md`, and `client-timeout-validation.md` for outbound integrations.
6. Read `testing.md`, `deployment.md`, and `cloud-deployment.md` for delivery and production concerns.

## Source coverage
- Server create/configure, routing, requests and responses, request validation
- Plugins, server engines, modules, deployment, packaging
- Client creation, requests, responses, auth, serialization, timeout, retry
- Client plugin lifecycle, auth providers, timeout/validation policy
- WebSockets, SSE, static content, templating, database integration, DI, project setup, migration
