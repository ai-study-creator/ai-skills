# Requests and Responses

## Requests
- Read request bodies deliberately and only once unless the API supports re-reading.
- Keep query, path, and header access explicit.
- Know the difference between raw bytes, text, and deserialized objects.

## Responses
- Choose the simplest response type that matches the contract.
- Set status codes and headers intentionally.
- Keep response construction close to the route boundary.

## Call context
- Treat the call as the request-scoped context.
- Keep shared state outside the call.
- Use helpers for repeated header or parameter access.
