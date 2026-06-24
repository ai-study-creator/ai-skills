# Cloud Deployment

## Packaging options
- fat JAR
- executable JVM distribution
- WAR
- Docker image
- native image

## Common hosting patterns
- Heroku
- Dokku
- Azure App Service
- Google App Engine standard
- AWS Elastic Beanstalk
- Sevalla

## Shared deployment rule
- The runtime must know which port to bind, usually via `PORT` or config file wiring.
- Keep the deployment path aligned with the chosen server startup mode.
- Match the packaging method to the platform's contract.

## Docker and build plugins
- Use the Ktor Gradle plugin when you want automated image or fat-JAR tasks.
- Use multi-stage Docker builds when you need more control.
- Keep the image runtime separate from build-time dependencies.
