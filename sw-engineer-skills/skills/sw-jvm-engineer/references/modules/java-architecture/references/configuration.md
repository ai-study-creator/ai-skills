# Configuration

## Externalize everything that changes by environment
- URLs
- credentials
- feature toggles
- timeouts
- resource sizing

## Prefer
- `@ConfigurationProperties`
- validation on bound config
- profile-specific overrides when needed
- explicit defaults with clear precedence
