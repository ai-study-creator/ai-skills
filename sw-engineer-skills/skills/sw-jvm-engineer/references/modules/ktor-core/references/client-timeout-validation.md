# Client Timeout and Response Validation

## Timeout policy
- Configure request timeout, connect timeout, and socket timeout deliberately.
- Use per-request overrides when one call has different needs from the default client policy.
- Know engine-specific timeout limitations.

## Retry ordering
- Install retry before timeout when retries should apply to timeout failures.
- Make retry conditions specific enough that retries do not hide real failures.
- Adjust retry delay and request mutation explicitly.

## Response validation
- Use `expectSuccess` for default non-2xx failure behavior.
- Use custom response validation when 2xx responses still need body inspection.
- Customize handling of specific non-2xx cases when the client contract demands it.

## Practical rule
- Timeouts and validation are part of the API contract; do not leave them at implicit defaults unless the upstream system is fully under your control.
