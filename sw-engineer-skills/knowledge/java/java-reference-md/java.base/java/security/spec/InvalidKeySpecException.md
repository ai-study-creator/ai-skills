Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class InvalidKeySpecException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

java.security.spec.InvalidKeySpecException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidKeySpecException
extends [GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

This is the exception for invalid key specifications.

Since:
:   1.2

See Also:
:   * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [Serialized Form](../../../../serialized-form.md#java.security.spec.InvalidKeySpecException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidKeySpecException()`

  Constructs an InvalidKeySpecException with no detail message.

  `InvalidKeySpecException(String msg)`

  Constructs an InvalidKeySpecException with the specified detail
  message.

  `InvalidKeySpecException(String message,
  Throwable cause)`

  Creates an `InvalidKeySpecException` with the specified
  detail message and cause.

  `InvalidKeySpecException(Throwable cause)`

  Creates an `InvalidKeySpecException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidKeySpecException

    public InvalidKeySpecException()

    Constructs an InvalidKeySpecException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### InvalidKeySpecException

    public InvalidKeySpecException([String](../../lang/String.md "class in java.lang") msg)

    Constructs an InvalidKeySpecException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `msg` - the detail message.
  + ### InvalidKeySpecException

    public InvalidKeySpecException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates an `InvalidKeySpecException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### InvalidKeySpecException

    public InvalidKeySpecException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates an `InvalidKeySpecException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5