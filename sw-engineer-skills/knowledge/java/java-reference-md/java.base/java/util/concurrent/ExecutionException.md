Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ExecutionException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

java.util.concurrent.ExecutionException

All Implemented Interfaces:
:   `Serializable`

---

public class ExecutionException
extends [Exception](../../lang/Exception.md "class in java.lang")

Exception thrown when attempting to retrieve the result of a task
that aborted by throwing an exception. This exception can be
inspected using the [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method.

Since:
:   1.5

See Also:
:   * [`Future`](Future.md "interface in java.util.concurrent")
    * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.ExecutionException)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ExecutionException()`

  Constructs an `ExecutionException` with no detail message.

  `protected`

  `ExecutionException(String message)`

  Constructs an `ExecutionException` with the specified detail
  message.

  `ExecutionException(String message,
  Throwable cause)`

  Constructs an `ExecutionException` with the specified detail
  message and cause.

  `ExecutionException(Throwable cause)`

  Constructs an `ExecutionException` with the specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ExecutionException

    protected ExecutionException()

    Constructs an `ExecutionException` with no detail message.
    The cause is not initialized, and may subsequently be
    initialized by a call to [`initCause`](../../lang/Throwable.md#initCause(java.lang.Throwable)).
  + ### ExecutionException

    protected ExecutionException([String](../../lang/String.md "class in java.lang") message)

    Constructs an `ExecutionException` with the specified detail
    message. The cause is not initialized, and may subsequently be
    initialized by a call to [`initCause`](../../lang/Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message
  + ### ExecutionException

    public ExecutionException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs an `ExecutionException` with the specified detail
    message and cause.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method)
  + ### ExecutionException

    public ExecutionException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs an `ExecutionException` with the specified cause.
    The detail message is set to `(cause == null ? null :
    cause.toString())` (which typically contains the class and
    detail message of `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method)