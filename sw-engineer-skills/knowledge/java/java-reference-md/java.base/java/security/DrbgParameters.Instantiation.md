Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class DrbgParameters.Instantiation

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.DrbgParameters.Instantiation

All Implemented Interfaces:
:   `SecureRandomParameters`

Enclosing class:
:   `DrbgParameters`

---

public static final class DrbgParameters.Instantiation
extends [Object](../lang/Object.md "class in java.lang")
implements [SecureRandomParameters](SecureRandomParameters.md "interface in java.security")

DRBG parameters for instantiation.

When used in
[`SecureRandom.getInstance(String, SecureRandomParameters)`](SecureRandom.md#getInstance(java.lang.String,java.security.SecureRandomParameters))
or one of the other similar `getInstance` calls that take a
`SecureRandomParameters` parameter, it means the
requested instantiate parameters the newly created `SecureRandom`
object must minimally support. When used as the return value of the
[`SecureRandom.getParameters()`](SecureRandom.md#getParameters()) method, it means the effective
instantiate parameters of the `SecureRandom` object.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `DrbgParameters.Capability`

  `getCapability()`

  Returns the capability.

  `byte[]`

  `getPersonalizationString()`

  Returns the personalization string as a byte array.

  `int`

  `getStrength()`

  Returns the security strength in bits.

  `String`

  `toString()`

  Returns a Human-readable string representation of this
  `Instantiation`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getStrength

    public int getStrength()

    Returns the security strength in bits.

    Returns:
    :   If used in `getInstance`, returns the minimum strength
        requested, or -1 if there is no specific request on the strength.
        If used in `getParameters`, returns the effective strength.
        The effective strength must be greater than or equal to the minimum
        strength requested.
  + ### getCapability

    public [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security") getCapability()

    Returns the capability.

    Returns:
    :   If used in `getInstance`, returns the minimum
        capability requested. If used in `getParameters`, returns
        information on the effective prediction resistance flag and
        whether it supports reseeding.
  + ### getPersonalizationString

    public byte[] getPersonalizationString()

    Returns the personalization string as a byte array.

    Returns:
    :   If used in `getInstance`, returns the requested
        personalization string as a newly allocated array, or `null`
        if no personalization string is requested. The same string should
        be returned in `getParameters` as a new copy, or `null`
        if no personalization string is requested in `getInstance`.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a Human-readable string representation of this
    `Instantiation`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation