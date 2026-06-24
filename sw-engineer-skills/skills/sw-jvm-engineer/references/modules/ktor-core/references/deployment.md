# Deployment

## Deployment modes
- embedded server
- servlet container
- WAR packaging
- cloud/container deployment
- native image where appropriate
- fat JAR / executable distribution
- Docker and build-plugin based packaging

## Rules
- Choose the engine and runtime mode deliberately.
- Make host, port, SSL, and shutdown behavior explicit.
- Treat Docker, cloud platforms, and buildpack workflows as first-class deployment shapes.
- Keep packaging and runtime contract aligned.

## Source coverage
- Engine configuration, run modes, packaging, WAR, native, and container-oriented deployment basics

## See also
- `cloud-deployment.md`
