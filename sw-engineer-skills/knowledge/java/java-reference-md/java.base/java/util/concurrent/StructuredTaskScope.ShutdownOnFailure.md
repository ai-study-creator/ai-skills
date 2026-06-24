Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class StructuredTaskScope.ShutdownOnFailure

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.concurrent.StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)<[Object](../../lang/Object.md "class in java.lang")>

java.util.concurrent.StructuredTaskScope.ShutdownOnFailure

All Implemented Interfaces:
:   `AutoCloseable`

Enclosing class:
:   `StructuredTaskScopePREVIEW<T>`

---

public static final class StructuredTaskScope.ShutdownOnFailure
extends [StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)<[Object](../../lang/Object.md "class in java.lang")>

`ShutdownOnFailure` is a preview API of the Java platform.

Programs can only use `ShutdownOnFailure` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A `StructuredTaskScope` that captures the exception of the first subtask to
[fail](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State). Once captured, it [shuts down](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) the task scope to interrupt unfinished threads and wakeup the task
scope owner. The policy implemented by this class is intended for cases where the
results for all subtasks are required ("invoke all"); if any subtask fails then the
results of other unfinished subtasks are no longer needed.

Unless otherwise specified, passing a `null` argument to a method
in this class will cause a [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   21

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.util.concurrent.[StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)

  `StructuredTaskScope.ShutdownOnFailurePREVIEW, StructuredTaskScope.ShutdownOnSuccessPREVIEW<T>, StructuredTaskScope.SubtaskPREVIEW<T>`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ShutdownOnFailure()`

  Constructs a new unnamed `ShutdownOnFailure` that creates virtual threads.

  `ShutdownOnFailure(String name,
  ThreadFactory factory)`

  Constructs a new `ShutdownOnFailure` with the given name and thread factory.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Optional<Throwable>`

  `exception()`

  Returns the exception of the first subtask that [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  `protected void`

  `handleComplete(StructuredTaskScope.SubtaskPREVIEW<?> subtask)`

  Invoked by a subtask when it completes successfully or fails in this task scope.

  `StructuredTaskScope.ShutdownOnFailurePREVIEW`

  `join()`

  Wait for all subtasks started in this task scope to complete or for a subtask
  to [fail](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  `StructuredTaskScope.ShutdownOnFailurePREVIEW`

  `joinUntil(Instant deadline)`

  Wait for all subtasks started in this task scope to complete or for a subtask
  to [fail](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State), up to the given deadline.

  `void`

  `throwIfFailed()`

  Throws if a subtask [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  `<X extends Throwable>  
  void`

  `throwIfFailed(Function<Throwable,? extends X> esf)`

  Throws the exception produced by the given exception supplying function if a
  subtask [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  ### Methods inherited from class java.util.concurrent.[StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)

  `close, ensureOwnerAndJoined, fork, isShutdown, shutdown, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ShutdownOnFailure

    public ShutdownOnFailure([String](../../lang/String.md "class in java.lang") name,
    [ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") factory)

    Constructs a new `ShutdownOnFailure` with the given name and thread factory.
    The task scope is optionally named for the purposes of monitoring and management.
    The thread factory is used to [`create`](ThreadFactory.md#newThread(java.lang.Runnable))
    threads when subtasks are [forked](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope). The task scope
    is owned by the current thread.

    Construction captures the current thread's [scoped
    value](../../lang/ScopedValue.md "class in java.lang")[PREVIEW](../../lang/ScopedValue.md#preview-java.lang.ScopedValue) bindings for inheritance by threads started in the task scope. The
    [Tree Structure](#TreeStructure) section in the class description
    details how parent-child relations are established implicitly for the purpose
    of inheritance of scoped value bindings.

    Parameters:
    :   `name` - the name of the task scope, can be null
    :   `factory` - the thread factory
  + ### ShutdownOnFailure

    public ShutdownOnFailure()

    Constructs a new unnamed `ShutdownOnFailure` that creates virtual threads.
* ## Method Details

  + ### handleComplete

    protected void handleComplete([StructuredTaskScope.Subtask](StructuredTaskScope.Subtask.md "interface in java.util.concurrent")[PREVIEW](StructuredTaskScope.Subtask.md#preview-java.util.concurrent.StructuredTaskScope.Subtask)<?> subtask)

    Description copied from class: `StructuredTaskScope`

    Invoked by a subtask when it completes successfully or fails in this task scope.
    This method is not invoked if a subtask completes after the task scope is
    [shut down](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope).

    Overrides:
    :   `handleComplete` in class `StructuredTaskScopePREVIEW<Object>`

    Parameters:
    :   `subtask` - the subtask
  + ### join

    public [StructuredTaskScope.ShutdownOnFailure](StructuredTaskScope.ShutdownOnFailure.md "class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnFailure) join()
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Wait for all subtasks started in this task scope to complete or for a subtask
    to [fail](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

    This method waits for all subtasks by waiting for all threads [started](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) in this task scope to finish execution. It stops waiting
    when all threads finish, a subtask fails, or the current thread is [interrupted](../../lang/Thread.md#interrupt()). It also stops waiting if the [`shutdown`](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) method is invoked directly to shut down this task scope.

    This method may only be invoked by the task scope owner.

    Overrides:
    :   `join` in class `StructuredTaskScopePREVIEW<Object>`

    Returns:
    :   this task scope

    Throws:
    :   `IllegalStateException` - if this task scope is closed
    :   `WrongThreadException` - if the current thread is not the task scope owner
    :   `InterruptedException` - if interrupted while waiting
  + ### joinUntil

    public [StructuredTaskScope.ShutdownOnFailure](StructuredTaskScope.ShutdownOnFailure.md "class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnFailure) joinUntil([Instant](../../time/Instant.md "class in java.time") deadline)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang"),
    [TimeoutException](TimeoutException.md "class in java.util.concurrent")

    Wait for all subtasks started in this task scope to complete or for a subtask
    to [fail](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State), up to the given deadline.

    This method waits for all subtasks by waiting for all threads [started](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) in this task scope to finish execution. It stops waiting
    when all threads finish, a subtask fails, the deadline is reached, or the current
    thread is [interrupted](../../lang/Thread.md#interrupt()). It also stops waiting
    if the [`shutdown`](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) method is invoked directly to shut down
    this task scope.

    This method may only be invoked by the task scope owner.

    Overrides:
    :   `joinUntil` in class `StructuredTaskScopePREVIEW<Object>`

    Parameters:
    :   `deadline` - the deadline

    Returns:
    :   this task scope

    Throws:
    :   `IllegalStateException` - if this task scope is closed
    :   `WrongThreadException` - if the current thread is not the task scope owner
    :   `InterruptedException` - if interrupted while waiting
    :   `TimeoutException` - if the deadline is reached while waiting
  + ### exception

    public [Optional](../Optional.md "class in java.util")<[Throwable](../../lang/Throwable.md "class in java.lang")> exception()

    Returns the exception of the first subtask that [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State). If no subtasks failed then an empty `Optional` is returned.

    Returns:
    :   the exception for the first subtask to fail or an empty optional if no
        subtasks failed

    Throws:
    :   `WrongThreadException` - if the current thread is not the task scope owner
    :   `IllegalStateException` - if the task scope owner did not join after forking
  + ### throwIfFailed

    public void throwIfFailed()
    throws [ExecutionException](ExecutionException.md "class in java.util.concurrent")

    Throws if a subtask [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).
    If any subtask failed with an exception then `ExecutionException` is
    thrown with the exception of the first subtask to fail as the [cause](../../lang/Throwable.md#getCause()). This method does nothing if no subtasks failed.

    Throws:
    :   `ExecutionException` - if a subtask failed
    :   `WrongThreadException` - if the current thread is not the task scope owner
    :   `IllegalStateException` - if the task scope owner did not join after forking
  + ### throwIfFailed

    public <X extends [Throwable](../../lang/Throwable.md "class in java.lang")> void throwIfFailed([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends X> esf)
    throws X

    Throws the exception produced by the given exception supplying function if a
    subtask [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State). If any subtask failed with
    an exception then the function is invoked with the exception of the first
    subtask to fail. The exception returned by the function is thrown. This method
    does nothing if no subtasks failed.

    Type Parameters:
    :   `X` - type of the exception to be thrown

    Parameters:
    :   `esf` - the exception supplying function

    Throws:
    :   `X` - produced by the exception supplying function
    :   `WrongThreadException` - if the current thread is not the task scope owner
    :   `IllegalStateException` - if the task scope owner did not join after forking