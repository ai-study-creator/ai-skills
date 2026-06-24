# Authentication and Sessions

## Common choices
- Basic auth for simple internal use
- Bearer/JWT for token-based APIs
- OAuth2 for delegated auth flows
- Sessions when stateful browser interaction is appropriate

## Rules
- Keep authentication and authorization separate.
- Store session and token logic outside route handlers.
- Make cookie, CSRF, and transport security settings explicit.
