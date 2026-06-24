# Coroutine Basics

## Core idea
- A suspend function can pause and resume without blocking a thread.
- Coroutines let you write asynchronous code in a sequential style.
- The coroutine library provides the builders and runtime behavior; `suspend` is the language marker.

## Builders
- Use `launch` for fire-and-forget work.
- Use `async` when you need a result.
- Use `runBlocking` as a bridge for `main()` and tests, not for application logic.
- Use `coroutineScope` when a suspend function needs to launch children while remaining structured.

## Scope and context
- Coroutines only start inside a scope.
- The scope carries the context: dispatcher, job, name, and related elements.
- Children inherit the parent context unless you override part of it deliberately.

## Practical usage
- Keep suspending APIs at boundaries where async work is natural.
- Separate orchestration from pure computation.
- Avoid turning every call site into coroutine plumbing when the work is synchronous.
