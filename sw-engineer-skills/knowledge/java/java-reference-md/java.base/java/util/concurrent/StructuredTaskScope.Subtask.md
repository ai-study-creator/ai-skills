Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface StructuredTaskScope.Subtask<T>

Type Parameters:
:   `T` - the result type

All Superinterfaces:
:   `Supplier<T>`

Enclosing class:
:   `StructuredTaskScopePREVIEW<T>`

---

public static sealed interface StructuredTaskScope.Subtask<T>
extends [Supplier](../function/Supplier.md "interface in java.util.function")<T>

`Subtask` is a preview API of the Java platform.

Programs can only use `Subtask` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

Represents a subtask forked with [`StructuredTaskScope.fork(Callable)`](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope).

Since:
:   21

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static enum`

  `StructuredTaskScope.Subtask.StatePREVIEW`

  Preview.

  Represents the state of a subtask.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `exception()`

  Returns the exception thrown by the subtask.

  `T`

  `get()`

  Returns the result of the subtask.

  `StructuredTaskScope.Subtask.StatePREVIEW`

  `state()`

  Returns the state of the subtask.

  `Callable<? extends T>`

  `task()`

  Returns the value returning task provided to the `fork` method.

* ## Method Details

  + ### task

    [Callable](Callable.md "interface in java.util.concurrent")<? extends [T](StructuredTaskScope.Subtask.md "type parameter in StructuredTaskScope.Subtask")> task()

    Returns the value returning task provided to the `fork` method.

    Returns:
    :   the value returning task provided to the `fork` method
  + ### state

    [StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) state()

    Returns the state of the subtask.

    Returns:
    :   the state of the subtask
  + ### get

    [T](StructuredTaskScope.Subtask.md "type parameter in StructuredTaskScope.Subtask") get()

    Returns the result of the subtask.

    To ensure correct usage, if the scope owner [forks](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    a subtask, then it must join (with [`join`](StructuredTaskScope.md#join())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) or [`joinUntil`](StructuredTaskScope.md#joinUntil(java.time.Instant))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)) before it can obtain the result of the subtask.

    Specified by:
    :   `get` in interface `Supplier<T>`

    Returns:
    :   the possibly-null result

    Throws:
    :   `IllegalStateException` - if the subtask has not completed, did not complete
        successfully, or the current thread is the task scope owner and did not join
        after forking

    See Also:
    :   - [`StructuredTaskScope.Subtask.State.SUCCESS`](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)
  + ### exception

    [Throwable](../../lang/Throwable.md "class in java.lang") exception()

    Returns the exception thrown by the subtask.

    To ensure correct usage, if the scope owner [forks](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    a subtask, then it must join (with [`join`](StructuredTaskScope.md#join())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) or [`joinUntil`](StructuredTaskScope.md#joinUntil(java.time.Instant))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)) before it can obtain the exception thrown by the subtask.

    Returns:
    :   the exception thrown by the subtask

    Throws:
    :   `IllegalStateException` - if the subtask has not completed, completed with
        a result, or the current thread is the task scope owner and did not join after
        forking

    See Also:
    :   - [`StructuredTaskScope.Subtask.State.FAILED`](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)