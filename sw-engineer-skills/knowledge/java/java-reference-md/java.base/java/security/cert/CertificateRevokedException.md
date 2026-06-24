Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertificateRevokedException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

[java.security.cert.CertificateException](CertificateException.md "class in java.security.cert")

java.security.cert.CertificateRevokedException

All Implemented Interfaces:
:   `Serializable`

---

public class CertificateRevokedException
extends [CertificateException](CertificateException.md "class in java.security.cert")

An exception that indicates an X.509 certificate is revoked. A
`CertificateRevokedException` contains additional information
about the revoked certificate, such as the date on which the
certificate was revoked and the reason it was revoked.

Since:
:   1.7

See Also:
:   * [`CertPathValidatorException`](CertPathValidatorException.md "class in java.security.cert")
    * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertificateRevokedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateRevokedException(Date revocationDate,
  CRLReason reason,
  X500Principal authority,
  Map<String,Extension> extensions)`

  Constructs a `CertificateRevokedException` with
  the specified revocation date, reason code, authority name, and map
  of extensions.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `X500Principal`

  `getAuthorityName()`

  Returns the name of the authority that signed the certificate's
  revocation status information.

  `Map<String,Extension>`

  `getExtensions()`

  Returns a map of X.509 extensions containing additional information
  about the revoked certificate, such as the Invalidity Date
  Extension.

  `Date`

  `getInvalidityDate()`

  Returns the invalidity date, as specified in the Invalidity Date
  extension of this `CertificateRevokedException`.

  `String`

  `getMessage()`

  Returns the detail message string of this throwable.

  `Date`

  `getRevocationDate()`

  Returns the date on which the certificate was revoked.

  `CRLReason`

  `getRevocationReason()`

  Returns the reason the certificate was revoked.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertificateRevokedException

    public CertificateRevokedException([Date](../../util/Date.md "class in java.util") revocationDate,
    [CRLReason](CRLReason.md "enum class in java.security.cert") reason,
    [X500Principal](../../../javax/security/auth/x500/X500Principal.md "class in javax.security.auth.x500") authority,
    [Map](../../util/Map.md "interface in java.util")<[String](../../lang/String.md "class in java.lang"),[Extension](Extension.md "interface in java.security.cert")> extensions)

    Constructs a `CertificateRevokedException` with
    the specified revocation date, reason code, authority name, and map
    of extensions.

    Parameters:
    :   `revocationDate` - the date on which the certificate was revoked. The
        date is copied to protect against subsequent modification.
    :   `reason` - the revocation reason
    :   `authority` - the `X500Principal` that represents the name
        of the authority that signed the certificate's revocation status
        information
    :   `extensions` - a map of X.509 Extensions. Each key is an OID String
        that maps to the corresponding Extension. The map is copied to
        prevent subsequent modification.

    Throws:
    :   `NullPointerException` - if `revocationDate`,
        `reason`, `authority`, or
        `extensions` is `null`
    :   `ClassCastException` - if `extensions` contains an incorrectly
        typed key or value
* ## Method Details

  + ### getRevocationDate

    public [Date](../../util/Date.md "class in java.util") getRevocationDate()

    Returns the date on which the certificate was revoked. A new copy is
    returned each time the method is invoked to protect against subsequent
    modification.

    Returns:
    :   the revocation date
  + ### getRevocationReason

    public [CRLReason](CRLReason.md "enum class in java.security.cert") getRevocationReason()

    Returns the reason the certificate was revoked.

    Returns:
    :   the revocation reason
  + ### getAuthorityName

    public [X500Principal](../../../javax/security/auth/x500/X500Principal.md "class in javax.security.auth.x500") getAuthorityName()

    Returns the name of the authority that signed the certificate's
    revocation status information.

    Returns:
    :   the `X500Principal` that represents the name of the
        authority that signed the certificate's revocation status information
  + ### getInvalidityDate

    public [Date](../../util/Date.md "class in java.util") getInvalidityDate()

    Returns the invalidity date, as specified in the Invalidity Date
    extension of this `CertificateRevokedException`. The
    invalidity date is the date on which it is known or suspected that the
    private key was compromised or that the certificate otherwise became
    invalid. This implementation calls `getExtensions()` and
    checks the returned map for an entry for the Invalidity Date extension
    OID ("2.5.29.24"). If found, it returns the invalidity date in the
    extension; otherwise null. A new Date object is returned each time the
    method is invoked to protect against subsequent modification.

    Returns:
    :   the invalidity date, or `null` if not specified
  + ### getExtensions

    public [Map](../../util/Map.md "interface in java.util")<[String](../../lang/String.md "class in java.lang"),[Extension](Extension.md "interface in java.security.cert")> getExtensions()

    Returns a map of X.509 extensions containing additional information
    about the revoked certificate, such as the Invalidity Date
    Extension. Each key is an OID String that maps to the corresponding
    Extension.

    Returns:
    :   an unmodifiable map of X.509 extensions, or an empty map
        if there are no extensions
  + ### getMessage

    public [String](../../lang/String.md "class in java.lang") getMessage()

    Description copied from class: `Throwable`

    Returns the detail message string of this throwable.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).