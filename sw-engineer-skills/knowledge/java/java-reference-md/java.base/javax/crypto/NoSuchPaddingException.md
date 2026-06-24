Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class NoSuchPaddingException

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

javax.crypto.NoSuchPaddingException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchPaddingException
extends [GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

This exception is thrown when a particular padding mechanism is
requested but is not available in the environment.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.crypto.NoSuchPaddingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchPaddingException()`

  Constructs a `NoSuchPaddingException` with no detail
  message.

  `NoSuchPaddingException(String msg)`

  Constructs a `NoSuchPaddingException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchPaddingException

    public NoSuchPaddingException()

    Constructs a `NoSuchPaddingException` with no detail
    message. A detail message is a `String` that describes this
    particular exception.
  + ### NoSuchPaddingException

    public NoSuchPaddingException([String](../../java/lang/String.md "class in java.lang") msg)

    Constructs a `NoSuchPaddingException` with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message.