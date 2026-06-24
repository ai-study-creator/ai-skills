# Security

## Defaults
- Use stateless auth for APIs unless sessions are required.
- Keep authentication and authorization separate.
- Use method security where the rule belongs at the service boundary.

## Implementation notes
- Prefer a `SecurityFilterChain` bean.
- Make CORS and CSRF decisions explicit.
- Return predictable unauthorized and forbidden responses.
