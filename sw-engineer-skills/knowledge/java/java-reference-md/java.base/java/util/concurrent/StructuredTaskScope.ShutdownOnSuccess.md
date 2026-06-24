Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class StructuredTaskScope.ShutdownOnSuccess<T>

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.concurrent.StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)<T>

java.util.concurrent.StructuredTaskScope.ShutdownOnSuccess<T>

Type Parameters:
:   `T` - the result type

All Implemented Interfaces:
:   `AutoCloseable`

Enclosing class:
:   `StructuredTaskScopePREVIEW<T>`

---

public static final class StructuredTaskScope.ShutdownOnSuccess<T>
extends [StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)<T>

`ShutdownOnSuccess` is a preview API of the Java platform.

Programs can only use `ShutdownOnSuccess` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A `StructuredTaskScope` that captures the result of the first subtask to
complete [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State). Once captured, it
[shuts down](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) the task scope to interrupt unfinished threads
and wakeup the task scope owner. The policy implemented by this class is intended
for cases where the result of any subtask will do ("invoke any") and where the
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

  `ShutdownOnSuccess()`

  Constructs a new unnamed `ShutdownOnSuccess` that creates virtual threads.

  `ShutdownOnSuccess(String name,
  ThreadFactory factory)`

  Constructs a new `ShutdownOnSuccess` with the given name and thread factory.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `handleComplete(StructuredTaskScope.SubtaskPREVIEW<? extends T> subtask)`

  Invoked by a subtask when it completes successfully or fails in this task scope.

  `StructuredTaskScope.ShutdownOnSuccessPREVIEW<T>`

  `join()`

  Wait for a subtask started in this task scope to complete [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) or all subtasks to complete.

  `StructuredTaskScope.ShutdownOnSuccessPREVIEW<T>`

  `joinUntil(Instant deadline)`

  Wait for a subtask started in this task scope to complete [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) or all subtasks to complete, up to the
  given deadline.

  `T`

  `result()`

  Returns the result of the first subtask that completed [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  `<X extends Throwable>  
  T`

  `result(Function<Throwable,? extends X> esf)`

  Returns the result of the first subtask that completed [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State), otherwise throws an exception produced
  by the given exception supplying function.

  ### Methods inherited from class java.util.concurrent.[StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)

  `close, ensureOwnerAndJoined, fork, isShutdown, shutdown, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ShutdownOnSuccess

    public ShutdownOnSuccess([String](../../lang/String.md "class in java.lang") name,
    [ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") factory)

    Constructs a new `ShutdownOnSuccess` with the given name and thread factory.
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
  + ### ShutdownOnSuccess

    public ShutdownOnSuccess()

    Constructs a new unnamed `ShutdownOnSuccess` that creates virtual threads.
* ## Method Details

  + ### handleComplete

    protected void handleComplete([StructuredTaskScope.Subtask](StructuredTaskScope.Subtask.md "interface in java.util.concurrent")[PREVIEW](StructuredTaskScope.Subtask.md#preview-java.util.concurrent.StructuredTaskScope.Subtask)<? extends [T](StructuredTaskScope.ShutdownOnSuccess.md "type parameter in StructuredTaskScope.ShutdownOnSuccess")> subtask)

    Description copied from class: `StructuredTaskScope`

    Invoked by a subtask when it completes successfully or fails in this task scope.
    This method is not invoked if a subtask completes after the task scope is
    [shut down](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope).

    Overrides:
    :   `handleComplete` in class `StructuredTaskScopePREVIEW<T>`

    Parameters:
    :   `subtask` - the subtask
  + ### join

    public [StructuredTaskScope.ShutdownOnSuccess](StructuredTaskScope.ShutdownOnSuccess.md "class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnSuccess)<[T](StructuredTaskScope.ShutdownOnSuccess.md "type parameter in StructuredTaskScope.ShutdownOnSuccess")> join()
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Wait for a subtask started in this task scope to complete [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) or all subtasks to complete.

    This method waits for all subtasks by waiting for all threads [started](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) in this task scope to finish execution. It stops waiting
    when all threads finish, a subtask completes successfully, or the current
    thread is [interrupted](../../lang/Thread.md#interrupt()). It also stops waiting
    if the [`shutdown`](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) method is invoked directly to shut down
    this task scope.

    This method may only be invoked by the task scope owner.

    Overrides:
    :   `join` in class `StructuredTaskScopePREVIEW<T>`

    Returns:
    :   this task scope

    Throws:
    :   `IllegalStateException` - if this task scope is closed
    :   `WrongThreadException` - if the current thread is not the task scope owner
    :   `InterruptedException` - if interrupted while waiting
  + ### joinUntil

    public [StructuredTaskScope.ShutdownOnSuccess](StructuredTaskScope.ShutdownOnSuccess.md "class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnSuccess)<[T](StructuredTaskScope.ShutdownOnSuccess.md "type parameter in StructuredTaskScope.ShutdownOnSuccess")> joinUntil([Instant](../../time/Instant.md "class in java.time") deadline)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang"),
    [TimeoutException](TimeoutException.md "class in java.util.concurrent")

    Wait for a subtask started in this task scope to complete [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) or all subtasks to complete, up to the
    given deadline.

    This method waits for all subtasks by waiting for all threads [started](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) in this task scope to finish execution. It stops waiting
    when all threads finish, a subtask completes successfully, the deadline is
    reached, or the current thread is [interrupted](../../lang/Thread.md#interrupt()).
    It also stops waiting if the [`shutdown`](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) method is invoked
    directly to shut down this task scope.

    This method may only be invoked by the task scope owner.

    Overrides:
    :   `joinUntil` in class `StructuredTaskScopePREVIEW<T>`

    Parameters:
    :   `deadline` - the deadline

    Returns:
    :   this task scope

    Throws:
    :   `IllegalStateException` - if this task scope is closed
    :   `WrongThreadException` - if the current thread is not the task scope owner
    :   `InterruptedException` - if interrupted while waiting
    :   `TimeoutException` - if the deadline is reached while waiting
  + ### result

    public [T](StructuredTaskScope.ShutdownOnSuccess.md "type parameter in StructuredTaskScope.ShutdownOnSuccess") result()
    throws [ExecutionException](ExecutionException.md "class in java.util.concurrent")

    Returns the result of the first subtask that completed [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

    When no subtask completed successfully, but a subtask [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) then `ExecutionException` is thrown with
    the subtask's exception as the [cause](../../lang/Throwable.md#getCause()).

    Returns:
    :   the result of the first subtask that completed [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)

    Throws:
    :   `ExecutionException` - if no subtasks completed successfully but at least
        one subtask failed
    :   `IllegalStateException` - if no subtasks completed or the task scope owner
        did not join after forking
    :   `WrongThreadException` - if the current thread is not the task scope owner
  + ### result

    public <X extends [Throwable](../../lang/Throwable.md "class in java.lang")> [T](StructuredTaskScope.ShutdownOnSuccess.md "type parameter in StructuredTaskScope.ShutdownOnSuccess") result([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends X> esf)
    throws X

    Returns the result of the first subtask that completed [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State), otherwise throws an exception produced
    by the given exception supplying function.

    When no subtask completed successfully, but a subtask [failed](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State), then the exception supplying function is invoked
    with subtask's exception.

    Type Parameters:
    :   `X` - type of the exception to be thrown

    Parameters:
    :   `esf` - the exception supplying function

    Returns:
    :   the result of the first subtask that completed with a result

    Throws:
    :   `X` - if no subtasks completed successfully but at least one subtask failed
    :   `IllegalStateException` - if no subtasks completed or the task scope owner
        did not join after forking
    :   `WrongThreadException` - if the current thread is not the task scope owner