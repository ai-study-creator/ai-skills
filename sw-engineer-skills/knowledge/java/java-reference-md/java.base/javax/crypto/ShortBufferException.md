Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class ShortBufferException

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

javax.crypto.ShortBufferException

All Implemented Interfaces:
:   `Serializable`

---

public class ShortBufferException
extends [GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

This exception is thrown when an output buffer provided by the user
is too short to hold the operation result.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.crypto.ShortBufferException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ShortBufferException()`

  Constructs a `ShortBufferException` with no detail
  message.

  `ShortBufferException(String msg)`

  Constructs a `ShortBufferException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ShortBufferException

    public ShortBufferException()

    Constructs a `ShortBufferException` with no detail
    message. A detail message is a `String` that describes this
    particular exception.
  + ### ShortBufferException

    public ShortBufferException([String](../../java/lang/String.md "class in java.lang") msg)

    Constructs a `ShortBufferException` with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message.