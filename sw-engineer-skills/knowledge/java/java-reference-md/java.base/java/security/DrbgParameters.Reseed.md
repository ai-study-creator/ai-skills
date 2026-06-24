Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class DrbgParameters.Reseed

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.DrbgParameters.Reseed

All Implemented Interfaces:
:   `SecureRandomParameters`

Enclosing class:
:   `DrbgParameters`

---

public static final class DrbgParameters.Reseed
extends [Object](../lang/Object.md "class in java.lang")
implements [SecureRandomParameters](SecureRandomParameters.md "interface in java.security")

DRBG parameters for reseed. It is used in
[`SecureRandom.reseed(SecureRandomParameters)`](SecureRandom.md#reseed(java.security.SecureRandomParameters)).

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

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getPredictionResistance

    public boolean getPredictionResistance()

    Returns whether prediction resistance is requested.

    Returns:
    :   whether prediction resistance is requested
  + ### getAdditionalInput

    public byte[] getAdditionalInput()

    Returns the requested additional input.

    Returns:
    :   the requested additional input, or `null` if
        not requested. A new byte array is returned each time this method
        is called.