Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface ScheduledFuture<V>

Type Parameters:
:   `V` - The result type returned by this Future

All Superinterfaces:
:   `Comparable<Delayed>`, `Delayed`, `Future<V>`

All Known Subinterfaces:
:   `RunnableScheduledFuture<V>`

---

public interface ScheduledFuture<V>
extends [Delayed](Delayed.md "interface in java.util.concurrent"), [Future](Future.md "interface in java.util.concurrent")<V>

A delayed result-bearing action that can be cancelled.
Usually a scheduled future is the result of scheduling
a task with a [`ScheduledExecutorService`](ScheduledExecutorService.md "interface in java.util.concurrent").

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.concurrent.[Future](Future.md "interface in java.util.concurrent")

  `Future.State`
* ## Method Summary

  ### Methods inherited from interface java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")

  `compareTo`

  ### Methods inherited from interface java.util.concurrent.[Delayed](Delayed.md "interface in java.util.concurrent")

  `getDelay`

  ### Methods inherited from interface java.util.concurrent.[Future](Future.md "interface in java.util.concurrent")

  `cancel, exceptionNow, get, get, isCancelled, isDone, resultNow, state`