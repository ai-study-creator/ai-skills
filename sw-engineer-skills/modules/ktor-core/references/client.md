# Ktor Client

## Client setup
- Configure the client once and reuse it.
- Pick the engine deliberately.
- Set timeouts, retries, serialization, and auth explicitly.
- Treat client plugins as the primary extension mechanism.
- Keep engine choice aligned with platform and deployment requirements.

## Requests and responses
- Keep request construction readable.
- Handle errors and non-2xx responses explicitly.
- Close resources cleanly.
- Make serialization and status handling part of the API contract.

## Interop
- Be careful when mixing suspending client calls with blocking code.
- Match request/response types to the wire contract.

## See also
- `client-plugins.md`
- `client-auth.md`
- `client-timeout-validation.md`
