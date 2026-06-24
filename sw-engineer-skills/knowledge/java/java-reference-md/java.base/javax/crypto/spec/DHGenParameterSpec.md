Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class DHGenParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.DHGenParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class DHGenParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the set of parameters used for generating
Diffie-Hellman (system) parameters for use in Diffie-Hellman key
agreement. This is typically done by a central
authority.

The central authority, after computing the parameters, must send this
information to the parties looking to agree on a secret key.

Since:
:   1.4

See Also:
:   * [`DHParameterSpec`](DHParameterSpec.md "class in javax.crypto.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DHGenParameterSpec(int primeSize,
  int exponentSize)`

  Constructs a parameter set for the generation of Diffie-Hellman
  (system) parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getExponentSize()`

  Returns the size in bits of the random exponent (private value).

  `int`

  `getPrimeSize()`

  Returns the size in bits of the prime modulus.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DHGenParameterSpec

    public DHGenParameterSpec(int primeSize,
    int exponentSize)

    Constructs a parameter set for the generation of Diffie-Hellman
    (system) parameters. The constructed parameter set can be used to
    initialize an
    [`AlgorithmParameterGenerator`](../../../java/security/AlgorithmParameterGenerator.md "class in java.security")
    object for the generation of Diffie-Hellman parameters.

    Parameters:
    :   `primeSize` - the size (in bits) of the prime modulus.
    :   `exponentSize` - the size (in bits) of the random exponent.
* ## Method Details

  + ### getPrimeSize

    public int getPrimeSize()

    Returns the size in bits of the prime modulus.

    Returns:
    :   the size in bits of the prime modulus
  + ### getExponentSize

    public int getExponentSize()

    Returns the size in bits of the random exponent (private value).

    Returns:
    :   the size in bits of the random exponent (private value)