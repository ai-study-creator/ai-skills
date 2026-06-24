Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Enum Class CryptoPrimitive

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[CryptoPrimitive](CryptoPrimitive.md "enum class in java.security")>

java.security.CryptoPrimitive

All Implemented Interfaces:
:   `Serializable`, `Comparable<CryptoPrimitive>`, `Constable`

---

public enum CryptoPrimitive
extends [Enum](../lang/Enum.md "class in java.lang")<[CryptoPrimitive](CryptoPrimitive.md "enum class in java.security")>

An enumeration of cryptographic primitives.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `BLOCK_CIPHER`

  Symmetric primitive: block cipher

  `KEY_AGREEMENT`

  Asymmetric primitive: key agreement and key distribution

  `KEY_ENCAPSULATION`

  Asymmetric primitive: key encapsulation mechanism

  `KEY_WRAP`

  Symmetric primitive: key wrap

  `MAC`

  Symmetric primitive: message authentication code

  `MESSAGE_DIGEST`

  Hash function

  `PUBLIC_KEY_ENCRYPTION`

  Asymmetric primitive: public key encryption

  `SECURE_RANDOM`

  Cryptographic random number generator

  `SIGNATURE`

  Asymmetric primitive: signature scheme

  `STREAM_CIPHER`

  Symmetric primitive: stream cipher
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static CryptoPrimitive`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static CryptoPrimitive[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### MESSAGE\_DIGEST

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") MESSAGE\_DIGEST

    Hash function
  + ### SECURE\_RANDOM

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") SECURE\_RANDOM

    Cryptographic random number generator
  + ### BLOCK\_CIPHER

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") BLOCK\_CIPHER

    Symmetric primitive: block cipher
  + ### STREAM\_CIPHER

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") STREAM\_CIPHER

    Symmetric primitive: stream cipher
  + ### MAC

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") MAC

    Symmetric primitive: message authentication code
  + ### KEY\_WRAP

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") KEY\_WRAP

    Symmetric primitive: key wrap
  + ### PUBLIC\_KEY\_ENCRYPTION

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") PUBLIC\_KEY\_ENCRYPTION

    Asymmetric primitive: public key encryption
  + ### SIGNATURE

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") SIGNATURE

    Asymmetric primitive: signature scheme
  + ### KEY\_ENCAPSULATION

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") KEY\_ENCAPSULATION

    Asymmetric primitive: key encapsulation mechanism
  + ### KEY\_AGREEMENT

    public static final [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") KEY\_AGREEMENT

    Asymmetric primitive: key agreement and key distribution
* ## Method Details

  + ### values

    public static [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [CryptoPrimitive](CryptoPrimitive.md "enum class in java.security") valueOf([String](../lang/String.md "class in java.lang") name)

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