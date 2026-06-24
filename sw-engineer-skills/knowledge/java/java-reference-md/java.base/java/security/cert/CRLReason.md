Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Enum Class CRLReason

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[CRLReason](CRLReason.md "enum class in java.security.cert")>

java.security.cert.CRLReason

All Implemented Interfaces:
:   `Serializable`, `Comparable<CRLReason>`, `Constable`

---

public enum CRLReason
extends [Enum](../../lang/Enum.md "class in java.lang")<[CRLReason](CRLReason.md "enum class in java.security.cert")>

The CRLReason enumeration specifies the reason that a certificate
is revoked, as defined in [RFC 5280: Internet X.509 Public Key Infrastructure Certificate and CRL
Profile](https://tools.ietf.org/html/rfc5280).

Since:
:   1.7

See Also:
:   * [`X509CRLEntry.getRevocationReason()`](X509CRLEntry.md#getRevocationReason())
    * [`CertificateRevokedException.getRevocationReason()`](CertificateRevokedException.md#getRevocationReason())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `AA_COMPROMISE`

  This reason indicates that it is known or suspected that the
  certificate subject's private key has been compromised.

  `AFFILIATION_CHANGED`

  This reason indicates that the subject's name or other information
  has changed.

  `CA_COMPROMISE`

  This reason indicates that it is known or suspected that the
  certificate subject's private key has been compromised.

  `CERTIFICATE_HOLD`

  This reason indicates that the certificate has been put on hold.

  `CESSATION_OF_OPERATION`

  This reason indicates that the certificate is no longer needed.

  `KEY_COMPROMISE`

  This reason indicates that it is known or suspected that the
  certificate subject's private key has been compromised.

  `PRIVILEGE_WITHDRAWN`

  This reason indicates that the privileges granted to the subject of
  the certificate have been withdrawn.

  `REMOVE_FROM_CRL`

  This reason indicates that the certificate was previously on hold
  and should be removed from the CRL.

  `SUPERSEDED`

  This reason indicates that the certificate has been superseded.

  `UNSPECIFIED`

  This reason indicates that it is unspecified as to why the
  certificate has been revoked.

  `UNUSED`

  Unused reason.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static CRLReason`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static CRLReason[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### UNSPECIFIED

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") UNSPECIFIED

    This reason indicates that it is unspecified as to why the
    certificate has been revoked.
  + ### KEY\_COMPROMISE

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") KEY\_COMPROMISE

    This reason indicates that it is known or suspected that the
    certificate subject's private key has been compromised. It applies
    to end-entity certificates only.
  + ### CA\_COMPROMISE

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") CA\_COMPROMISE

    This reason indicates that it is known or suspected that the
    certificate subject's private key has been compromised. It applies
    to certificate authority (CA) certificates only.
  + ### AFFILIATION\_CHANGED

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") AFFILIATION\_CHANGED

    This reason indicates that the subject's name or other information
    has changed.
  + ### SUPERSEDED

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") SUPERSEDED

    This reason indicates that the certificate has been superseded.
  + ### CESSATION\_OF\_OPERATION

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") CESSATION\_OF\_OPERATION

    This reason indicates that the certificate is no longer needed.
  + ### CERTIFICATE\_HOLD

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") CERTIFICATE\_HOLD

    This reason indicates that the certificate has been put on hold.
  + ### UNUSED

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") UNUSED

    Unused reason.
  + ### REMOVE\_FROM\_CRL

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") REMOVE\_FROM\_CRL

    This reason indicates that the certificate was previously on hold
    and should be removed from the CRL. It is for use with delta CRLs.
  + ### PRIVILEGE\_WITHDRAWN

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") PRIVILEGE\_WITHDRAWN

    This reason indicates that the privileges granted to the subject of
    the certificate have been withdrawn.
  + ### AA\_COMPROMISE

    public static final [CRLReason](CRLReason.md "enum class in java.security.cert") AA\_COMPROMISE

    This reason indicates that it is known or suspected that the
    certificate subject's private key has been compromised. It applies
    to authority attribute (AA) certificates only.
* ## Method Details

  + ### values

    public static [CRLReason](CRLReason.md "enum class in java.security.cert")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [CRLReason](CRLReason.md "enum class in java.security.cert") valueOf([String](../../lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null