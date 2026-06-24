Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class BadPaddingException

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

javax.crypto.BadPaddingException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AEADBadTagException`

---

public class BadPaddingException
extends [GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

This exception is thrown when a particular padding mechanism is
expected for the input data but the data is not padded properly.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.crypto.BadPaddingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BadPaddingException()`

  Constructs a `BadPaddingException` with no detail
  message.

  `BadPaddingException(String msg)`

  Constructs a `BadPaddingException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BadPaddingException

    public BadPaddingException()

    Constructs a `BadPaddingException` with no detail
    message. A detail message is a `String` that describes this
    particular exception.
  + ### BadPaddingException

    public BadPaddingException([String](../../java/lang/String.md "class in java.lang") msg)

    Constructs a `BadPaddingException` with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message.