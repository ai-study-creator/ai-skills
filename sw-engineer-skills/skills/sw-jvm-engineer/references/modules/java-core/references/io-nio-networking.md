# IO, NIO, and Networking

## Files and streams
- Use try-with-resources for anything closeable.
- Prefer NIO for scalable file and channel operations.
- Keep charset handling explicit.

## Network work
- Set timeouts deliberately.
- Distinguish connect, read, write, and overall call timeouts.
- Prefer connection reuse when the client is long-lived.

## HTTP client
- Reuse client instances rather than rebuilding per request.
- Make TLS, redirects, compression, and proxies explicit.
- Treat serialization and decoding as part of the contract.

## Sockets and channels
- Understand blocking vs non-blocking mode.
- Use selectors or higher-level clients when concurrency matters.
- Handle partial reads and writes correctly.

## Common pitfalls
- Closing shared clients too early
- Ignoring backpressure or buffer growth
- Assuming filesystem or network latency is stable
