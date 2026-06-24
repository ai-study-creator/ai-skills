Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface RunnableScheduledFuture<V>

Type Parameters:
:   `V` - The result type returned by this Future's `get` method

All Superinterfaces:
:   `Comparable<Delayed>`, `Delayed`, `Future<V>`, `Runnable`, `RunnableFuture<V>`, `ScheduledFuture<V>`

---

public interface RunnableScheduledFuture<V>
extends [RunnableFuture](RunnableFuture.md "interface in java.util.concurrent")<V>, [ScheduledFuture](ScheduledFuture.md "interface in java.util.concurrent")<V>

A [`ScheduledFuture`](ScheduledFuture.md "interface in java.util.concurrent") that is [`Runnable`](../../lang/Runnable.md "interface in java.lang"). Successful
execution of the `run` method causes completion of the
`Future` and allows access to its results.

Since:
:   1.6

See Also:
:   * [`FutureTask`](FutureTask.md "class in java.util.concurrent")
    * [`Executor`](Executor.md "interface in java.util.concurrent")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.concurrent.[Future](Future.md "interface in java.util.concurrent")

  `Future.State`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isPeriodic()`

  Returns `true` if this task is periodic.

  ### Methods inherited from interface java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")

  `compareTo`

  ### Methods inherited from interface java.util.concurrent.[Delayed](Delayed.md "interface in java.util.concurrent")

  `getDelay`

  ### Methods inherited from interface java.util.concurrent.[Future](Future.md "interface in java.util.concurrent")

  `cancel, exceptionNow, get, get, isCancelled, isDone, resultNow, state`

  ### Methods inherited from interface java.util.concurrent.[RunnableFuture](RunnableFuture.md "interface in java.util.concurrent")

  `run`

* ## Method Details

  + ### isPeriodic

    boolean isPeriodic()

    Returns `true` if this task is periodic. A periodic task may
    re-run according to some schedule. A non-periodic task can be
    run only once.

    Returns:
    :   `true` if this task is periodic