Module [java.base](../../../module-summary.md)

Package [javax.security.cert](package-summary.md)

# Class CertificateException

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java/lang/Exception.md "class in java.lang")

javax.security.cert.CertificateException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `CertificateEncodingException`, `CertificateExpiredException`, `CertificateNotYetValidException`, `CertificateParsingException`

---

[@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
public class CertificateException
extends [Exception](../../../java/lang/Exception.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

Use the classes in `java.security.cert` instead.

This exception indicates one of a variety of certificate problems.

*Note: The classes in the package `javax.security.cert`
exist for compatibility with earlier versions of the
Java Secure Sockets Extension (JSSE). New applications should instead
use the standard Java SE certificate classes located in
`java.security.cert`.*

Since:
:   1.4

See Also:
:   * [`Certificate`](Certificate.md "class in javax.security.cert")
    * [Serialized Form](../../../../serialized-form.md#javax.security.cert.CertificateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateException()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a certificate exception with no detail message.

  `CertificateException(String msg)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a certificate exception with the given detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateException

    public CertificateException()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a certificate exception with no detail message. A detail
    message is a String that describes this particular exception.
  + ### CertificateException

    public CertificateException([String](../../../java/lang/String.md "class in java.lang") msg)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a certificate exception with the given detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `msg` - the detail message.