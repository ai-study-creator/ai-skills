Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class CancellationException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.util.concurrent.CancellationException

All Implemented Interfaces:
:   `Serializable`

---

public class CancellationException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Exception indicating that the result of a value-producing task,
such as a [`FutureTask`](FutureTask.md "class in java.util.concurrent"), cannot be retrieved because the task
was cancelled.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.CancellationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CancellationException()`

  Constructs a `CancellationException` with no detail message.

  `CancellationException(String message)`

  Constructs a `CancellationException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CancellationException

    public CancellationException()

    Constructs a `CancellationException` with no detail message.
  + ### CancellationException

    public CancellationException([String](../../lang/String.md "class in java.lang") message)

    Constructs a `CancellationException` with the specified detail
    message.

    Parameters:
    :   `message` - the detail message