# Logging

## Use structured logs
- Log fields, not formatted sentences.
- Include request ID, trace ID, user ID or tenant ID when safe, and the operation name.
- Use levels consistently: debug for diagnosis, info for lifecycle, warn for recoverable issues, error for failures.

## Avoid
- Secrets, tokens, passwords, and personal data
- Large unstructured payloads
- Logging the same event from every layer
