Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class DecapsulateException

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

javax.crypto.DecapsulateException

All Implemented Interfaces:
:   `Serializable`

---

public class DecapsulateException
extends [GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

An exception that is thrown by the
[`KEM.Decapsulator.decapsulate(byte[])`](KEM.Decapsulator.md#decapsulate(byte%5B%5D)) method to denote an
error during decapsulation.

Since:
:   21

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.crypto.DecapsulateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DecapsulateException(String message)`

  Creates a `DecapsulateException` with the specified
  detail message.

  `DecapsulateException(String message,
  Throwable cause)`

  Creates a `DecapsulateException` with the specified
  detail message and cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DecapsulateException

    public DecapsulateException([String](../../java/lang/String.md "class in java.lang") message)

    Creates a `DecapsulateException` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../java/lang/Throwable.md#getMessage()) method).
  + ### DecapsulateException

    public DecapsulateException([String](../../java/lang/String.md "class in java.lang") message,
    [Throwable](../../java/lang/Throwable.md "class in java.lang") cause)

    Creates a `DecapsulateException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../java/lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../java/lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)