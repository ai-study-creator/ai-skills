# Spring Boot Architecture

## Typical shape
- `controller` or `adapter` layer for transport
- `service` layer for business rules
- `repository` or client layer for persistence and external calls
- config classes for wiring and behavior

## Boot concerns
- Keep the application class minimal.
- Externalize environment-dependent values.
- Use Actuator for production signals.
- Make startup failure modes explicit.
