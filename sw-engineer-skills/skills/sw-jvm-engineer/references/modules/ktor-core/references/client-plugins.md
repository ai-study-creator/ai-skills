# Client Plugins

## What plugins do
- Add reusable behavior around requests and responses.
- Keep transport concerns out of call sites.
- Centralize cross-cutting client behavior.

## Built-in plugin areas
- logging
- serialization
- authentication
- timeout
- retry
- response validation
- user agent
- cookies
- proxy
- compression and content encoding

## Working rules
- Install plugins in the client configuration block.
- Use `installOrReplace` when shared configuration may have already installed a plugin.
- Keep plugin configuration explicit and close to the client setup.
- Prefer plugins over per-call boilerplate when the behavior is shared.

## Custom plugins
- Create a custom plugin when the existing ones cannot express the policy cleanly.
- Keep request and response interception focused.
- Avoid turning plugin code into hidden business logic.
