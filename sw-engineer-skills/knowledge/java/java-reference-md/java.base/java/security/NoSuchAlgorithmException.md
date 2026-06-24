Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class NoSuchAlgorithmException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](GeneralSecurityException.md "class in java.security")

java.security.NoSuchAlgorithmException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchAlgorithmException
extends [GeneralSecurityException](GeneralSecurityException.md "class in java.security")

This exception is thrown when a particular cryptographic algorithm is
requested but is not available in the environment.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.NoSuchAlgorithmException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchAlgorithmException()`

  Constructs a `NoSuchAlgorithmException` with no detail
  message.

  `NoSuchAlgorithmException(String msg)`

  Constructs a `NoSuchAlgorithmException` with the specified
  detail message.

  `NoSuchAlgorithmException(String message,
  Throwable cause)`

  Creates a `NoSuchAlgorithmException` with the specified
  detail message and cause.

  `NoSuchAlgorithmException(Throwable cause)`

  Creates a `NoSuchAlgorithmException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchAlgorithmException

    public NoSuchAlgorithmException()

    Constructs a `NoSuchAlgorithmException` with no detail
    message. A detail message is a `String` that describes this
    particular exception.
  + ### NoSuchAlgorithmException

    public NoSuchAlgorithmException([String](../lang/String.md "class in java.lang") msg)

    Constructs a `NoSuchAlgorithmException` with the specified
    detail message. A detail message is a `String` that describes
    this particular exception, which may, for example, specify which
    algorithm is not available.

    Parameters:
    :   `msg` - the detail message.
  + ### NoSuchAlgorithmException

    public NoSuchAlgorithmException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `NoSuchAlgorithmException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### NoSuchAlgorithmException

    public NoSuchAlgorithmException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `NoSuchAlgorithmException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5