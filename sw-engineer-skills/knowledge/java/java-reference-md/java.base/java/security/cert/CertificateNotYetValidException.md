Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertificateNotYetValidException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

[java.security.cert.CertificateException](CertificateException.md "class in java.security.cert")

java.security.cert.CertificateNotYetValidException

All Implemented Interfaces:
:   `Serializable`

---

public class CertificateNotYetValidException
extends [CertificateException](CertificateException.md "class in java.security.cert")

Certificate is not yet valid exception. This is thrown whenever
the current `Date` or the specified `Date`
is before the `notBefore` date/time in the Certificate
validity period.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertificateNotYetValidException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateNotYetValidException()`

  Constructs a CertificateNotYetValidException with no detail message.

  `CertificateNotYetValidException(String message)`

  Constructs a CertificateNotYetValidException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateNotYetValidException

    public CertificateNotYetValidException()

    Constructs a CertificateNotYetValidException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### CertificateNotYetValidException

    public CertificateNotYetValidException([String](../../lang/String.md "class in java.lang") message)

    Constructs a CertificateNotYetValidException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `message` - the detail message.