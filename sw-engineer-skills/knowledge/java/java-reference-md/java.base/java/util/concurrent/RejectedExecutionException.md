Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class RejectedExecutionException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

java.util.concurrent.RejectedExecutionException

All Implemented Interfaces:
:   `Serializable`

---

public class RejectedExecutionException
extends [RuntimeException](../../lang/RuntimeException.md "class in java.lang")

Exception thrown by an [`Executor`](Executor.md "interface in java.util.concurrent") when a task cannot be
accepted for execution.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.RejectedExecutionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RejectedExecutionException()`

  Constructs a `RejectedExecutionException` with no detail message.

  `RejectedExecutionException(String message)`

  Constructs a `RejectedExecutionException` with the
  specified detail message.

  `RejectedExecutionException(String message,
  Throwable cause)`

  Constructs a `RejectedExecutionException` with the
  specified detail message and cause.

  `RejectedExecutionException(Throwable cause)`

  Constructs a `RejectedExecutionException` with the
  specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RejectedExecutionException

    public RejectedExecutionException()

    Constructs a `RejectedExecutionException` with no detail message.
    The cause is not initialized, and may subsequently be
    initialized by a call to [`initCause`](../../lang/Throwable.md#initCause(java.lang.Throwable)).
  + ### RejectedExecutionException

    public RejectedExecutionException([String](../../lang/String.md "class in java.lang") message)

    Constructs a `RejectedExecutionException` with the
    specified detail message. The cause is not initialized, and may
    subsequently be initialized by a call to [`initCause`](../../lang/Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message
  + ### RejectedExecutionException

    public RejectedExecutionException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs a `RejectedExecutionException` with the
    specified detail message and cause.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method)
  + ### RejectedExecutionException

    public RejectedExecutionException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs a `RejectedExecutionException` with the
    specified cause. The detail message is set to `(cause ==
    null ? null : cause.toString())` (which typically contains
    the class and detail message of `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method)