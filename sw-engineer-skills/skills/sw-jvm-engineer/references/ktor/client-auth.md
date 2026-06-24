# Client Authentication

## Supported schemes
- Basic
- Digest
- Bearer

## Working rules
- Install `Auth` in the client configuration block.
- Choose the provider based on the server challenge and deployment needs.
- Use realms when multiple protected areas need different credentials.
- Keep credential storage and refresh outside the transport layer.

## Token and credential caching
- Basic and bearer providers cache credentials or tokens by default.
- Clear cached auth state when the user logs out or credentials rotate.
- Disable caching when the latest credentials must always be loaded.

## Practical notes
- If multiple providers are installed, provider selection depends on `WWW-Authenticate`.
- Inspect installed providers when auth state needs to change dynamically.
- Use auth plugins together with response validation and timeout policy, not in isolation.
