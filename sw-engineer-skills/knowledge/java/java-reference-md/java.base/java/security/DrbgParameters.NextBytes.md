Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class DrbgParameters.NextBytes

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.DrbgParameters.NextBytes

All Implemented Interfaces:
:   `SecureRandomParameters`

Enclosing class:
:   `DrbgParameters`

---

public static final class DrbgParameters.NextBytes
extends [Object](../lang/Object.md "class in java.lang")
implements [SecureRandomParameters](SecureRandomParameters.md "interface in java.security")

DRBG parameters for random bits generation. It is used in
[`SecureRandom.nextBytes(byte[], SecureRandomParameters)`](SecureRandom.md#nextBytes(byte%5B%5D,java.security.SecureRandomParameters)).

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getAdditionalInput()`

  Returns the requested additional input.

  `boolean`

  `getPredictionResistance()`

  Returns whether prediction resistance is requested.

  `int`

  `getStrength()`

  Returns the security strength requested in bits.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getStrength

    public int getStrength()

    Returns the security strength requested in bits.

    Returns:
    :   the strength requested, or -1 if the effective strength
        should be used.
  + ### getPredictionResistance

    public boolean getPredictionResistance()

    Returns whether prediction resistance is requested.

    Returns:
    :   whether prediction resistance is requested
  + ### getAdditionalInput

    public byte[] getAdditionalInput()

    Returns the requested additional input.

    Returns:
    :   the requested additional input, `null` if not
        requested. A new byte array is returned each time this method
        is called.