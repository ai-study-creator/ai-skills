# Dispatchers

## Dispatcher roles
- `Dispatchers.Default` is for CPU-bound work.
- `Dispatchers.IO` is for blocking IO.
- A custom dispatcher is useful when you need named or bounded concurrency.

## Rules
- Do not block the wrong dispatcher.
- Keep dispatcher switches intentional and visible.
- Match dispatcher choice to the work profile.

## Blocking boundaries
- Treat database, file, network, and legacy client calls as blocking unless proven otherwise.
- Keep blocking calls out of reactive or event-loop threads.

## Performance
- Watch context-switch overhead.
- Use bounded pools where contention or saturation matters.
- Model thread usage as part of capacity planning.
