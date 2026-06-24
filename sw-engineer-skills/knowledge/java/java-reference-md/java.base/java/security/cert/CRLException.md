Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CRLException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

java.security.cert.CRLException

All Implemented Interfaces:
:   `Serializable`

---

public class CRLException
extends [GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

CRL (Certificate Revocation List) Exception.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.security.cert.CRLException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CRLException()`

  Constructs a CRLException with no detail message.

  `CRLException(String message)`

  Constructs a CRLException with the specified detail
  message.

  `CRLException(String message,
  Throwable cause)`

  Creates a `CRLException` with the specified
  detail message and cause.

  `CRLException(Throwable cause)`

  Creates a `CRLException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CRLException

    public CRLException()

    Constructs a CRLException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### CRLException

    public CRLException([String](../../lang/String.md "class in java.lang") message)

    Constructs a CRLException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `message` - the detail message.
  + ### CRLException

    public CRLException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CRLException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### CRLException

    public CRLException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CRLException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5