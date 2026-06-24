Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertificateParsingException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

[java.security.cert.CertificateException](CertificateException.md "class in java.security.cert")

java.security.cert.CertificateParsingException

All Implemented Interfaces:
:   `Serializable`

---

public class CertificateParsingException
extends [CertificateException](CertificateException.md "class in java.security.cert")

Certificate Parsing Exception. This is thrown whenever an
invalid DER-encoded certificate is parsed or unsupported DER features
are found in the Certificate.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertificateParsingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateParsingException()`

  Constructs a CertificateParsingException with no detail message.

  `CertificateParsingException(String message)`

  Constructs a CertificateParsingException with the specified detail
  message.

  `CertificateParsingException(String message,
  Throwable cause)`

  Creates a `CertificateParsingException` with the specified
  detail message and cause.

  `CertificateParsingException(Throwable cause)`

  Creates a `CertificateParsingException` with the
  specified cause and a detail message of
  `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateParsingException

    public CertificateParsingException()

    Constructs a CertificateParsingException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### CertificateParsingException

    public CertificateParsingException([String](../../lang/String.md "class in java.lang") message)

    Constructs a CertificateParsingException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `message` - the detail message.
  + ### CertificateParsingException

    public CertificateParsingException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertificateParsingException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### CertificateParsingException

    public CertificateParsingException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertificateParsingException` with the
    specified cause and a detail message of
    `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5