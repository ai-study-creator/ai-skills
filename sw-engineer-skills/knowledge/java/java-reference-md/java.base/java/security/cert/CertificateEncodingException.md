Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertificateEncodingException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

[java.security.cert.CertificateException](CertificateException.md "class in java.security.cert")

java.security.cert.CertificateEncodingException

All Implemented Interfaces:
:   `Serializable`

---

public class CertificateEncodingException
extends [CertificateException](CertificateException.md "class in java.security.cert")

Certificate Encoding Exception. This is thrown whenever an error
occurs while attempting to encode a certificate.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertificateEncodingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateEncodingException()`

  Constructs a CertificateEncodingException with no detail message.

  `CertificateEncodingException(String message)`

  Constructs a CertificateEncodingException with the specified detail
  message.

  `CertificateEncodingException(String message,
  Throwable cause)`

  Creates a `CertificateEncodingException` with the specified
  detail message and cause.

  `CertificateEncodingException(Throwable cause)`

  Creates a `CertificateEncodingException`
  with the specified cause and a detail message of
  `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateEncodingException

    public CertificateEncodingException()

    Constructs a CertificateEncodingException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### CertificateEncodingException

    public CertificateEncodingException([String](../../lang/String.md "class in java.lang") message)

    Constructs a CertificateEncodingException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `message` - the detail message.
  + ### CertificateEncodingException

    public CertificateEncodingException([String](../../lang/String.md "class in java.lang") message,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertificateEncodingException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### CertificateEncodingException

    public CertificateEncodingException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertificateEncodingException`
    with the specified cause and a detail message of
    `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5