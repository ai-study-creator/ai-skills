# WebSockets and SSE

## WebSockets
- Use WebSockets for bidirectional, long-lived interactive sessions.
- Keep session state explicit.
- Handle serialization, ping/pong, and close behavior deliberately.

## Server-sent events
- Use SSE for one-way streaming updates.
- Keep reconnect behavior and event format explicit.
- Choose SSE when the use case is streaming notifications rather than full duplex messaging.

## Pitfalls
- Using a websocket where a simple HTTP stream would do
- Mixing blocking work into long-lived socket handlers
