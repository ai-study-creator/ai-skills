Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class CompletionException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

java.util.concurrent.CompletionException

All Implemented Interfaces:
:   `Serializable`

---

public class CompletionException
extends [RuntimeException](../../lang/RuntimeException.md "class in java.lang")

Exception thrown when an error or other exception is encountered
in the course of completing a result or task.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.CompletionException)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CompletionException()`

  Constructs a `CompletionException` with no detail message.

  `protected`

  `CompletionException(String message)`

  Constructs a `CompletionException` with the specified detail
  message.

  `CompletionException(String message,
  Throwable cause)`

  Constructs a `CompletionException` with the specified detail
  message and cause.

  `CompletionException(Throwable cause)`

  Constructs a `CompletionException` with the specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CompletionException

    protected CompletionException()

    Constructs a `CompletionException` with no detail message.
    The cause is not initialized, and may subsequently be
    initialized by a call to [`initCause`](../../lang/Throwable.md#initCause(java.lang.Throwable)).
  + ### CompletionException

    protected CompletionException([String](../../lang/String.md "class in java.lang") message)

    Constructs a `CompletionException` with the specified detail
    message. The cause is not initialized, and may subsequently be
    initialized by a call to [`initCause`](../../lang/Throwable.md#initCause(java.lang.Throwable)).

    Parameters:
    :   `message` - the detail message
  + ### CompletionException

    public CompletionException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs a `CompletionException` with the specified detail
    message and cause.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method)
  + ### CompletionException

    public CompletionException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Constructs a `CompletionException` with the specified cause.
    The detail message is set to `(cause == null ? null :
    cause.toString())` (which typically contains the class and
    detail message of `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method)