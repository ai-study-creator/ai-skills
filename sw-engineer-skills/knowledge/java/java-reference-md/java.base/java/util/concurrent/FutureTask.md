Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class FutureTask<V>

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.FutureTask<V>

Type Parameters:
:   `V` - The result type returned by this FutureTask's `get` methods

All Implemented Interfaces:
:   `Runnable`, `Future<V>`, `RunnableFuture<V>`

---

public class FutureTask<V>
extends [Object](../../lang/Object.md "class in java.lang")
implements [RunnableFuture](RunnableFuture.md "interface in java.util.concurrent")<V>

A cancellable asynchronous computation. This class provides a base
implementation of [`Future`](Future.md "interface in java.util.concurrent"), with methods to start and cancel
a computation, query to see if the computation is complete, and
retrieve the result of the computation. The result can only be
retrieved when the computation has completed; the `get`
methods will block if the computation has not yet completed. Once
the computation has completed, the computation cannot be restarted
or cancelled (unless the computation is invoked using
[`runAndReset()`](#runAndReset())).

A `FutureTask` can be used to wrap a [`Callable`](Callable.md "interface in java.util.concurrent") or
[`Runnable`](../../lang/Runnable.md "interface in java.lang") object. Because `FutureTask` implements
`Runnable`, a `FutureTask` can be submitted to an
[`Executor`](Executor.md "interface in java.util.concurrent") for execution.

In addition to serving as a standalone class, this class provides
`protected` functionality that may be useful when creating
customized task classes.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.concurrent.[Future](Future.md "interface in java.util.concurrent")

  `Future.State`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FutureTask(Runnable runnable,
  V result)`

  Creates a `FutureTask` that will, upon running, execute the
  given `Runnable`, and arrange that `get` will return the
  given result on successful completion.

  `FutureTask(Callable<V> callable)`

  Creates a `FutureTask` that will, upon running, execute the
  given `Callable`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `cancel(boolean mayInterruptIfRunning)`

  Attempts to cancel execution of this task.

  `protected void`

  `done()`

  Protected method invoked when this task transitions to state
  `isDone` (whether normally or via cancellation).

  `Throwable`

  `exceptionNow()`

  Returns the exception thrown by the task, without waiting.

  `V`

  `get()`

  Waits if necessary for the computation to complete, and then
  retrieves its result.

  `V`

  `get(long timeout,
  TimeUnit unit)`

  Waits if necessary for at most the given time for the computation
  to complete, and then retrieves its result, if available.

  `boolean`

  `isCancelled()`

  Returns `true` if this task was cancelled before it completed
  normally.

  `boolean`

  `isDone()`

  Returns `true` if this task completed.

  `V`

  `resultNow()`

  Returns the computed result, without waiting.

  `void`

  `run()`

  Sets this Future to the result of its computation
  unless it has been cancelled.

  `protected boolean`

  `runAndReset()`

  Executes the computation without setting its result, and then
  resets this future to initial state, failing to do so if the
  computation encounters an exception or is cancelled.

  `protected void`

  `set(V v)`

  Sets the result of this future to the given value unless
  this future has already been set or has been cancelled.

  `protected void`

  `setException(Throwable t)`

  Causes this future to report an [`ExecutionException`](ExecutionException.md "class in java.util.concurrent")
  with the given throwable as its cause, unless this future has
  already been set or has been cancelled.

  `Future.State`

  `state()`

  Returns the computation state.

  `String`

  `toString()`

  Returns a string representation of this FutureTask.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FutureTask

    public FutureTask([Callable](Callable.md "interface in java.util.concurrent")<[V](FutureTask.md "type parameter in FutureTask")> callable)

    Creates a `FutureTask` that will, upon running, execute the
    given `Callable`.

    Parameters:
    :   `callable` - the callable task

    Throws:
    :   `NullPointerException` - if the callable is null
  + ### FutureTask

    public FutureTask([Runnable](../../lang/Runnable.md "interface in java.lang") runnable,
    [V](FutureTask.md "type parameter in FutureTask") result)

    Creates a `FutureTask` that will, upon running, execute the
    given `Runnable`, and arrange that `get` will return the
    given result on successful completion.

    Parameters:
    :   `runnable` - the runnable task
    :   `result` - the result to return on successful completion. If
        you don't need a particular result, consider using
        constructions of the form:
        `Future<?> f = new FutureTask<Void>(runnable, null)`

    Throws:
    :   `NullPointerException` - if the runnable is null
* ## Method Details

  + ### isCancelled

    public boolean isCancelled()

    Description copied from interface: `Future`

    Returns `true` if this task was cancelled before it completed
    normally.

    Specified by:
    :   `isCancelled` in interface `Future<V>`

    Returns:
    :   `true` if this task was cancelled before it completed
  + ### isDone

    public boolean isDone()

    Description copied from interface: `Future`

    Returns `true` if this task completed.
    Completion may be due to normal termination, an exception, or
    cancellation -- in all of these cases, this method will return
    `true`.

    Specified by:
    :   `isDone` in interface `Future<V>`

    Returns:
    :   `true` if this task completed
  + ### cancel

    public boolean cancel(boolean mayInterruptIfRunning)

    Description copied from interface: `Future`

    Attempts to cancel execution of this task. This method has no
    effect if the task is already completed or cancelled, or could
    not be cancelled for some other reason. Otherwise, if this
    task has not started when `cancel` is called, this task
    should never run. If the task has already started, then the
    `mayInterruptIfRunning` parameter determines whether the
    thread executing this task (when known by the implementation)
    is interrupted in an attempt to stop the task.

    The return value from this method does not necessarily
    indicate whether the task is now cancelled; use [`Future.isCancelled()`](Future.md#isCancelled()).

    Specified by:
    :   `cancel` in interface `Future<V>`

    Parameters:
    :   `mayInterruptIfRunning` - `true` if the thread
        executing this task should be interrupted (if the thread is
        known to the implementation); otherwise, in-progress tasks are
        allowed to complete

    Returns:
    :   `false` if the task could not be cancelled,
        typically because it has already completed; `true`
        otherwise. If two or more threads cause a task to be cancelled,
        then at least one of them returns `true`. Implementations
        may provide stronger guarantees.
  + ### get

    public [V](FutureTask.md "type parameter in FutureTask") get()
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang"),
    [ExecutionException](ExecutionException.md "class in java.util.concurrent")

    Description copied from interface: `Future`

    Waits if necessary for the computation to complete, and then
    retrieves its result.

    Specified by:
    :   `get` in interface `Future<V>`

    Returns:
    :   the computed result

    Throws:
    :   `CancellationException` - if the computation was cancelled
    :   `InterruptedException` - if the current thread was interrupted
        while waiting
    :   `ExecutionException` - if the computation threw an
        exception
  + ### get

    public [V](FutureTask.md "type parameter in FutureTask") get(long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang"),
    [ExecutionException](ExecutionException.md "class in java.util.concurrent"),
    [TimeoutException](TimeoutException.md "class in java.util.concurrent")

    Description copied from interface: `Future`

    Waits if necessary for at most the given time for the computation
    to complete, and then retrieves its result, if available.

    Specified by:
    :   `get` in interface `Future<V>`

    Parameters:
    :   `timeout` - the maximum time to wait
    :   `unit` - the time unit of the timeout argument

    Returns:
    :   the computed result

    Throws:
    :   `CancellationException` - if the computation was cancelled
    :   `InterruptedException` - if the current thread was interrupted
        while waiting
    :   `ExecutionException` - if the computation threw an
        exception
    :   `TimeoutException` - if the wait timed out
  + ### resultNow

    public [V](FutureTask.md "type parameter in FutureTask") resultNow()

    Description copied from interface: `Future`

    Returns the computed result, without waiting.

    This method is for cases where the caller knows that the task has
    already completed successfully, for example when filtering a stream
    of Future objects for the successful tasks and using a mapping
    operation to obtain a stream of results.

    Copy![Copy snippet](../../../../copy.svg)

    ```
        results = futures.stream()
                   .filter(f -> f.state() == Future.State.SUCCESS)
                   .map(Future::resultNow)
                   .toList();
    ```

    Specified by:
    :   `resultNow` in interface `Future<V>`

    Returns:
    :   the computed result
  + ### exceptionNow

    public [Throwable](../../lang/Throwable.md "class in java.lang") exceptionNow()

    Description copied from interface: `Future`

    Returns the exception thrown by the task, without waiting.

    This method is for cases where the caller knows that the task
    has already completed with an exception.

    Specified by:
    :   `exceptionNow` in interface `Future<V>`

    Returns:
    :   the exception thrown by the task
  + ### state

    public [Future.State](Future.State.md "enum class in java.util.concurrent") state()

    Description copied from interface: `Future`

    Returns the computation state.

    Specified by:
    :   `state` in interface `Future<V>`

    Returns:
    :   the computation state
  + ### done

    protected void done()

    Protected method invoked when this task transitions to state
    `isDone` (whether normally or via cancellation). The
    default implementation does nothing. Subclasses may override
    this method to invoke completion callbacks or perform
    bookkeeping. Note that you can query status inside the
    implementation of this method to determine whether this task
    has been cancelled.
  + ### set

    protected void set([V](FutureTask.md "type parameter in FutureTask") v)

    Sets the result of this future to the given value unless
    this future has already been set or has been cancelled.

    This method is invoked internally by the [`run()`](#run()) method
    upon successful completion of the computation.

    Parameters:
    :   `v` - the value
  + ### setException

    protected void setException([Throwable](../../lang/Throwable.md "class in java.lang") t)

    Causes this future to report an [`ExecutionException`](ExecutionException.md "class in java.util.concurrent")
    with the given throwable as its cause, unless this future has
    already been set or has been cancelled.

    This method is invoked internally by the [`run()`](#run()) method
    upon failure of the computation.

    Parameters:
    :   `t` - the cause of failure
  + ### run

    public void run()

    Description copied from interface: `RunnableFuture`

    Sets this Future to the result of its computation
    unless it has been cancelled.

    Specified by:
    :   `run` in interface `Runnable`

    Specified by:
    :   `run` in interface `RunnableFuture<V>`
  + ### runAndReset

    protected boolean runAndReset()

    Executes the computation without setting its result, and then
    resets this future to initial state, failing to do so if the
    computation encounters an exception or is cancelled. This is
    designed for use with tasks that intrinsically execute more
    than once.

    Returns:
    :   `true` if successfully run and reset
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string representation of this FutureTask.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this FutureTask