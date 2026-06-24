# Cross-Cutting Concerns

## Common plugins and concerns
- CORS
- compression
- caching headers
- forwarded headers
- method override
- rate limiting
- default headers
- partial content
- HTTPS redirect

## Rules
- Apply cross-cutting concerns consistently at the application boundary.
- Keep the policy visible in code or config.
- Avoid layering too many plugins when one explicit policy is enough.
