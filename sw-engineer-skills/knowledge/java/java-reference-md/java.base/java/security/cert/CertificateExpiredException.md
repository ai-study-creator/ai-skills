Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertificateExpiredException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

[java.security.cert.CertificateException](CertificateException.md "class in java.security.cert")

java.security.cert.CertificateExpiredException

All Implemented Interfaces:
:   `Serializable`

---

public class CertificateExpiredException
extends [CertificateException](CertificateException.md "class in java.security.cert")

Certificate Expired Exception. This is thrown whenever the current
`Date` or the specified `Date` is after the
`notAfter` date/time specified in the validity period
of the certificate.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertificateExpiredException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateExpiredException()`

  Constructs a CertificateExpiredException with no detail message.

  `CertificateExpiredException(String message)`

  Constructs a CertificateExpiredException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateExpiredException

    public CertificateExpiredException()

    Constructs a CertificateExpiredException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### CertificateExpiredException

    public CertificateExpiredException([String](../../lang/String.md "class in java.lang") message)

    Constructs a CertificateExpiredException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `message` - the detail message.