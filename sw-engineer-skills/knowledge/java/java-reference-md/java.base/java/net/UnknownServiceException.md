Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class UnknownServiceException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

java.net.UnknownServiceException

All Implemented Interfaces:
:   `Serializable`

---

public class UnknownServiceException
extends [IOException](../io/IOException.md "class in java.io")

Thrown to indicate that an unknown service exception has
occurred. Either the MIME type returned by a URL connection does
not make sense, or the application is attempting to write to a
read-only URL connection.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.UnknownServiceException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnknownServiceException()`

  Constructs a new `UnknownServiceException` with no
  detail message.

  `UnknownServiceException(String msg)`

  Constructs a new `UnknownServiceException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownServiceException

    public UnknownServiceException()

    Constructs a new `UnknownServiceException` with no
    detail message.
  + ### UnknownServiceException

    public UnknownServiceException([String](../lang/String.md "class in java.lang") msg)

    Constructs a new `UnknownServiceException` with the
    specified detail message.

    Parameters:
    :   `msg` - the detail message.