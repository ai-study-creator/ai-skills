# Java Reference Index

Use these files when the task involves Java language details, the standard library, or JVM-level behavior.

## Topic map
- `language-basics.md` - syntax, types, generics, records, sealed types, exceptions
- `collections-streams.md` - collections, iteration, streams, functional interfaces
- `streams-functional.md` - stream pipelines, collectors, parallelism, non-interference, functional style
- `concurrency.md` - threads, executors, locks, futures, synchronization
- `io-nio-networking.md` - files, streams, NIO, sockets, HTTP client, charset handling
- `time-and-date.md` - `java.time`, parsing, zones, formatting, calendar rules
- `jvm-performance.md` - allocation, GC, startup, memory, profiling, class loading
- `reflection-modules.md` - reflection, annotations, modules, service loading
- `errors-api-design.md` - API boundaries, exceptions, immutability, public contracts

## Practical reading order
1. Read `language-basics.md` for pure Java implementation work.
2. Read `streams-functional.md` for stream pipelines, collectors, and functional-style code.
3. Read `concurrency.md` and `jvm-performance.md` for throughput, latency, or blocking issues.
4. Read `io-nio-networking.md` for external systems, files, sockets, and clients.
5. Read `reflection-modules.md` for framework integration, module paths, or annotation processing.
6. Read `errors-api-design.md` when designing new APIs or refactoring a library boundary.

## What this pack covers from the source corpus
- Core platform modules and packages from `java.base` and related modules
- Date/time, HTTP client, JDBC, logging, management, XML, and XML crypto
- The module system and package-level organization
- Common Java SE behavior that matters to backend work
