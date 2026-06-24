# Structured Concurrency

## What it means
- Child coroutines belong to a parent scope.
- Cancellation propagates downward.
- A parent does not complete until its children complete.

## Why it matters
- It makes cancellation predictable.
- It keeps concurrent work tied to a lifecycle.
- It prevents orphan coroutines from escaping the control flow.

## Global scope
- Use global scope only for truly application-wide work.
- Prefer a structured scope when the work belongs to a request, job, or UI lifecycle.
- If you use global scope, assume you now own the lifecycle manually.

## Cancellation model
- Cancel the parent job to cancel children.
- Make cancellation a first-class design concern.
- Do not swallow cancellation exceptions.

## Example shape
- A parent scope launches child jobs, awaits them, and then aggregates results.
- A cancel action should cancel the parent, not each child individually.
