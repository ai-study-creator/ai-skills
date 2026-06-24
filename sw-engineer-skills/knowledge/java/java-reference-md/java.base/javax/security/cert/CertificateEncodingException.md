Module [java.base](../../../module-summary.md)

Package [javax.security.cert](package-summary.md)

# Class CertificateEncodingException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

[javax.security.cert.CertificateException](CertificateException.md "class in javax.security.cert")

javax.security.cert.CertificateEncodingException

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
public class CertificateEncodingException
extends [CertificateException](CertificateException.md "class in javax.security.cert")

Deprecated, for removal: This API element is subject to removal in a future version.

Use the classes in `java.security.cert` instead.

Certificate Encoding Exception. This is thrown whenever an error
occurs whilst attempting to encode a certificate.

*Note: The classes in the package `javax.security.cert`
exist for compatibility with earlier versions of the
Java Secure Sockets Extension (JSSE). New applications should instead
use the standard Java SE certificate classes located in
`java.security.cert`.*

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.cert.CertificateEncodingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateEncodingException()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a CertificateEncodingException with no detail message.

  `CertificateEncodingException(String message)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a CertificateEncodingException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateEncodingException

    public CertificateEncodingException()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a CertificateEncodingException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### CertificateEncodingException

    public CertificateEncodingException([String](../../../java/lang/String.md "class in java.lang") message)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a CertificateEncodingException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `message` - the detail message.