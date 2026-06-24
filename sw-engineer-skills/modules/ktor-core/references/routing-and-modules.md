# Routing and Modules

## Routing
- Group routes by resource or feature.
- Keep verb handlers small.
- Use nested routing when the path shape matches the domain.
- Keep parameter extraction and validation visible.

## Module structure
- Organize application modules by concern.
- Keep routes, plugins, and services separated.
- Compose modules explicitly so startup behavior is easy to inspect.

## Path design
- Use path parameters for identity.
- Use tailcards and regexes only when they genuinely simplify matching.
- Keep route trees readable for future maintenance.
