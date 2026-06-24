# Plugins and Lifecycle

## Plugins worth knowing
- Content negotiation / serialization
- Request validation
- Status pages
- Call logging and call IDs
- Authentication
- CORS, compression, caching headers, forwarding headers

## Rules
- Install plugins in a deliberate order.
- Keep plugin behavior close to the boundary it protects.
- Centralize exception handling and response shaping.

## Request lifecycle
- Know where request data is parsed, validated, transformed, and returned.
- Avoid hidden work in handlers when a plugin or service can own it.
