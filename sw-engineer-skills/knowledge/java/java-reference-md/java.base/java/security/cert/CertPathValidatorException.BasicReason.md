Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Enum Class CertPathValidatorException.BasicReason

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert")>

java.security.cert.CertPathValidatorException.BasicReason

All Implemented Interfaces:
:   `Serializable`, `Comparable<CertPathValidatorException.BasicReason>`, `Constable`, `CertPathValidatorException.Reason`

Enclosing class:
:   `CertPathValidatorException`

---

public static enum CertPathValidatorException.BasicReason
extends [Enum](../../lang/Enum.md "class in java.lang")<[CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert")>
implements [CertPathValidatorException.Reason](CertPathValidatorException.Reason.md "interface in java.security.cert")

The BasicReason enumerates the potential reasons that a certification
path of any type may be invalid.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ALGORITHM_CONSTRAINED`

  The public key or the signature algorithm has been constrained.

  `EXPIRED`

  The certificate is expired.

  `INVALID_SIGNATURE`

  The signature is invalid.

  `NOT_YET_VALID`

  The certificate is not yet valid.

  `REVOKED`

  The certificate is revoked.

  `UNDETERMINED_REVOCATION_STATUS`

  The revocation status of the certificate could not be determined.

  `UNSPECIFIED`

  Unspecified reason.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static CertPathValidatorException.BasicReason`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static CertPathValidatorException.BasicReason[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### UNSPECIFIED

    public static final [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") UNSPECIFIED

    Unspecified reason.
  + ### EXPIRED

    public static final [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") EXPIRED

    The certificate is expired.
  + ### NOT\_YET\_VALID

    public static final [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") NOT\_YET\_VALID

    The certificate is not yet valid.
  + ### REVOKED

    public static final [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") REVOKED

    The certificate is revoked.
  + ### UNDETERMINED\_REVOCATION\_STATUS

    public static final [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") UNDETERMINED\_REVOCATION\_STATUS

    The revocation status of the certificate could not be determined.
  + ### INVALID\_SIGNATURE

    public static final [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") INVALID\_SIGNATURE

    The signature is invalid.
  + ### ALGORITHM\_CONSTRAINED

    public static final [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") ALGORITHM\_CONSTRAINED

    The public key or the signature algorithm has been constrained.
* ## Method Details

  + ### values

    public static [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert") valueOf([String](../../lang/String.md "class in java.lang") name)

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