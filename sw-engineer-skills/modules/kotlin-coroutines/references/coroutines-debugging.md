# Coroutine Debugging

## What to inspect
- coroutine name
- parent/child relationships
- dispatcher
- running, suspended, created, or cancelled state
- frame and variable capture

## IntelliJ workflow
- Set breakpoints where coroutine work starts and where results are awaited.
- Use the coroutine debugger to see lifecycle and hierarchy.
- Inspect running and suspended coroutines separately from the normal call stack.

## Flow debugging
- Debug a flow by observing the coroutine that collects it.
- Check suspension points and downstream collectors.
- Be aware of optimized-out variables and generated frames.

## Practical rule
- If a coroutine problem is hard to explain from logs alone, check lifecycle and dispatcher state first.
