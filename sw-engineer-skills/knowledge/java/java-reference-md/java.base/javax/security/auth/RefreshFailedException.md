Module [java.base](../../../module-summary.md)

Package [javax.security.auth](package-summary.md)

# Class RefreshFailedException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

javax.security.auth.RefreshFailedException

All Implemented Interfaces:
:   `Serializable`

---

public class RefreshFailedException
extends [Exception](../../../java/lang/Exception.md "class in java.lang")

Signals that a `refresh` operation failed.

This exception is thrown by credentials implementing
the `Refreshable` interface when the `refresh`
method fails.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.auth.RefreshFailedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RefreshFailedException()`

  Constructs a RefreshFailedException with no detail message.

  `RefreshFailedException(String msg)`

  Constructs a RefreshFailedException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RefreshFailedException

    public RefreshFailedException()

    Constructs a RefreshFailedException with no detail message. A detail
    message is a String that describes this particular exception.
  + ### RefreshFailedException

    public RefreshFailedException([String](../../../java/lang/String.md "class in java.lang") msg)

    Constructs a RefreshFailedException with the specified detail
    message. A detail message is a String that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.