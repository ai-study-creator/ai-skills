Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Enum Class PKIXRevocationChecker.Option

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert")>

java.security.cert.PKIXRevocationChecker.Option

All Implemented Interfaces:
:   `Serializable`, `Comparable<PKIXRevocationChecker.Option>`, `Constable`

Enclosing class:
:   `PKIXRevocationChecker`

---

public static enum PKIXRevocationChecker.Option
extends [Enum](../../lang/Enum.md "class in java.lang")<[PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert")>

Various revocation options that can be specified for the revocation
checking mechanism.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NO_FALLBACK`

  Disable the fallback mechanism.

  `ONLY_END_ENTITY`

  Only check the revocation status of end-entity certificates.

  `PREFER_CRLS`

  Prefer CRLs to OSCP.

  `SOFT_FAIL`

  Allow revocation check to succeed if the revocation status cannot be
  determined for one of the following reasons:
  The CRL or OCSP response cannot be obtained because of a
  network error.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static PKIXRevocationChecker.Option`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static PKIXRevocationChecker.Option[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ONLY\_END\_ENTITY

    public static final [PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert") ONLY\_END\_ENTITY

    Only check the revocation status of end-entity certificates.
  + ### PREFER\_CRLS

    public static final [PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert") PREFER\_CRLS

    Prefer CRLs to OSCP. The default behavior is to prefer OCSP. Each
    PKIX implementation should document further details of their
    specific preference rules and fallback policies.
  + ### NO\_FALLBACK

    public static final [PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert") NO\_FALLBACK

    Disable the fallback mechanism.
  + ### SOFT\_FAIL

    public static final [PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert") SOFT\_FAIL

    Allow revocation check to succeed if the revocation status cannot be
    determined for one of the following reasons:
    - The CRL or OCSP response cannot be obtained because of a
      network error.- The OCSP responder returns one of the following errors
        specified in section 2.3 of RFC 2560: internalError or tryLater.  
    Note that these conditions apply to both OCSP and CRLs, and unless
    the `NO_FALLBACK` option is set, the revocation check is
    allowed to succeed only if both mechanisms fail under one of the
    conditions as stated above.
    Exceptions that cause the network errors are ignored but can be
    later retrieved by calling the
    [`getSoftFailExceptions`](PKIXRevocationChecker.md#getSoftFailExceptions()) method.
* ## Method Details

  + ### values

    public static [PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert") valueOf([String](../../lang/String.md "class in java.lang") name)

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