Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Enum Class PKIXReason

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[PKIXReason](PKIXReason.md "enum class in java.security.cert")>

java.security.cert.PKIXReason

All Implemented Interfaces:
:   `Serializable`, `Comparable<PKIXReason>`, `Constable`, `CertPathValidatorException.Reason`

---

public enum PKIXReason
extends [Enum](../../lang/Enum.md "class in java.lang")<[PKIXReason](PKIXReason.md "enum class in java.security.cert")>
implements [CertPathValidatorException.Reason](CertPathValidatorException.Reason.md "interface in java.security.cert")

The `PKIXReason` enumerates the potential PKIX-specific reasons
that an X.509 certification path may be invalid according to the PKIX
(RFC 5280) standard. These reasons are in addition to those of the
`CertPathValidatorException.BasicReason` enumeration.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `INVALID_KEY_USAGE`

  The certificate's key usage is invalid.

  `INVALID_NAME`

  The name constraints have been violated.

  `INVALID_POLICY`

  The policy constraints have been violated.

  `NAME_CHAINING`

  The certificate does not chain correctly.

  `NO_TRUST_ANCHOR`

  No acceptable trust anchor found.

  `NOT_CA_CERT`

  The certificate is not a CA certificate.

  `PATH_TOO_LONG`

  The path length constraint has been violated.

  `UNRECOGNIZED_CRIT_EXT`

  The certificate contains one or more unrecognized critical
  extensions.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static PKIXReason`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static PKIXReason[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NAME\_CHAINING

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") NAME\_CHAINING

    The certificate does not chain correctly.
  + ### INVALID\_KEY\_USAGE

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") INVALID\_KEY\_USAGE

    The certificate's key usage is invalid.
  + ### INVALID\_POLICY

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") INVALID\_POLICY

    The policy constraints have been violated.
  + ### NO\_TRUST\_ANCHOR

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") NO\_TRUST\_ANCHOR

    No acceptable trust anchor found.
  + ### UNRECOGNIZED\_CRIT\_EXT

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") UNRECOGNIZED\_CRIT\_EXT

    The certificate contains one or more unrecognized critical
    extensions.
  + ### NOT\_CA\_CERT

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") NOT\_CA\_CERT

    The certificate is not a CA certificate.
  + ### PATH\_TOO\_LONG

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") PATH\_TOO\_LONG

    The path length constraint has been violated.
  + ### INVALID\_NAME

    public static final [PKIXReason](PKIXReason.md "enum class in java.security.cert") INVALID\_NAME

    The name constraints have been violated.
* ## Method Details

  + ### values

    public static [PKIXReason](PKIXReason.md "enum class in java.security.cert")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [PKIXReason](PKIXReason.md "enum class in java.security.cert") valueOf([String](../../lang/String.md "class in java.lang") name)

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