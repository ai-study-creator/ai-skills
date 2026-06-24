# JVM Interoperability

## Java callers
- Use explicit annotations when Java needs them.
- Pay attention to overloads, default parameters, and named arguments from Java.
- Keep generated signatures stable when they are part of a public API.

## Framework work
- Be aware of reflection and proxy-based frameworks.
- Use open classes or interfaces when the framework requires subclassing or proxies.
- Keep Kotlin-specific constructs compatible with the Java library surface.

## Platform types
- Treat platform types as unsafe until validated.
- Normalize inputs at the boundary.
