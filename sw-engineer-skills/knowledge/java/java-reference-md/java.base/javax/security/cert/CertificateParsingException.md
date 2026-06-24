Module [java.base](../../../module-summary.md)

Package [javax.security.cert](package-summary.md)

# Class CertificateParsingException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

[javax.security.cert.CertificateException](CertificateException.md "class in javax.security.cert")

javax.security.cert.CertificateParsingException

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
public class CertificateParsingException
extends [CertificateException](CertificateException.md "class in javax.security.cert")

Deprecated, for removal: This API element is subject to removal in a future version.

Use the classes in `java.security.cert` instead.

Certificate Parsing Exception. This is thrown whenever
invalid DER encoded certificate is parsed or unsupported DER features
are found in the Certificate.

*Note: The classes in the package `javax.security.cert`
exist for compatibility with earlier versions of the
Java Secure Sockets Extension (JSSE). New applications should instead
use the standard Java SE certificate classes located in
`java.security.cert`.*

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.cert.CertificateParsingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateParsingException()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a CertificateParsingException with no detail message.

  `CertificateParsingException(String message)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a CertificateParsingException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateParsingException

    public CertificateParsingException()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a CertificateParsingException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### CertificateParsingException

    public CertificateParsingException([String](../../../java/lang/String.md "class in java.lang") message)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a CertificateParsingException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `message` - the detail message.