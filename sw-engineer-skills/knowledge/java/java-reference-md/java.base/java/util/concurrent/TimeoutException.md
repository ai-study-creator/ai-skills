Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class TimeoutException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

java.util.concurrent.TimeoutException

All Implemented Interfaces:
:   `Serializable`

---

public class TimeoutException
extends [Exception](../../lang/Exception.md "class in java.lang")

Exception thrown when a blocking operation times out. Blocking
operations for which a timeout is specified need a means to
indicate that the timeout has occurred. For many such operations it
is possible to return a value that indicates timeout; when that is
not possible or desirable then `TimeoutException` should be
declared and thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.TimeoutException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TimeoutException()`

  Constructs a `TimeoutException` with no specified detail
  message.

  `TimeoutException(String message)`

  Constructs a `TimeoutException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TimeoutException

    public TimeoutException()

    Constructs a `TimeoutException` with no specified detail
    message.
  + ### TimeoutException

    public TimeoutException([String](../../lang/String.md "class in java.lang") message)

    Constructs a `TimeoutException` with the specified detail
    message.

    Parameters:
    :   `message` - the detail message