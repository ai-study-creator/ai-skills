# Server Architecture

## Core choices
- Decide early whether the app is self-contained or servlet-hosted.
- Use embedded server startup for code-first deployment.
- Use file-based engine configuration when ops needs external control.

## Application shape
- Keep the module function small and feature-oriented.
- Put business logic outside route handlers.
- Keep engine, port, SSL, and deployment settings explicit.

## Lifecycle
- Understand application startup, request handling, and shutdown.
- Make module initialization deterministic.
