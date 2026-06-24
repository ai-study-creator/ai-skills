Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface RunnableFuture<V>

Type Parameters:
:   `V` - The result type returned by this Future's `get` method

All Superinterfaces:
:   `Future<V>`, `Runnable`

All Known Subinterfaces:
:   `RunnableScheduledFuture<V>`

All Known Implementing Classes:
:   `FutureTask`, `SwingWorker`

---

public interface RunnableFuture<V>
extends [Runnable](../../lang/Runnable.md "interface in java.lang"), [Future](Future.md "interface in java.util.concurrent")<V>

A [`Future`](Future.md "interface in java.util.concurrent") that is [`Runnable`](../../lang/Runnable.md "interface in java.lang"). Successful execution of
the `run` method causes completion of the `Future`
and allows access to its results.

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

  `void`

  `run()`

  Sets this Future to the result of its computation
  unless it has been cancelled.

  ### Methods inherited from interface java.util.concurrent.[Future](Future.md "interface in java.util.concurrent")

  `cancel, exceptionNow, get, get, isCancelled, isDone, resultNow, state`

* ## Method Details

  + ### run

    void run()

    Sets this Future to the result of its computation
    unless it has been cancelled.

    Specified by:
    :   `run` in interface `Runnable`