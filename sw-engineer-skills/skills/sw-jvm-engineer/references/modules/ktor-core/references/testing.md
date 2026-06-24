# Testing

## Server tests
- Verify routing, status codes, headers, validation, and body shape.
- Cover error handling and status pages.
- Keep test application setup minimal but realistic.

## Client tests
- Verify serialization, auth, retries, timeouts, and redirects.
- Test plugin behavior at the client boundary.

## Practical stance
- Prefer tests that exercise the actual Ktor pipeline over tests that only inspect helper functions.
