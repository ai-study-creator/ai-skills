Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class DSAParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.DSAParameterSpec

All Implemented Interfaces:
:   `DSAParams`, `AlgorithmParameterSpec`

---

public class DSAParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec"), [DSAParams](../interfaces/DSAParams.md "interface in java.security.interfaces")

This class specifies the set of parameters used with the DSA algorithm.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameterSpec`](AlgorithmParameterSpec.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DSAParameterSpec(BigInteger p,
  BigInteger q,
  BigInteger g)`

  Creates a new DSAParameterSpec with the specified parameter values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getG()`

  Returns the base `g`.

  `BigInteger`

  `getP()`

  Returns the prime `p`.

  `BigInteger`

  `getQ()`

  Returns the sub-prime `q`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DSAParameterSpec

    public DSAParameterSpec([BigInteger](../../math/BigInteger.md "class in java.math") p,
    [BigInteger](../../math/BigInteger.md "class in java.math") q,
    [BigInteger](../../math/BigInteger.md "class in java.math") g)

    Creates a new DSAParameterSpec with the specified parameter values.

    Parameters:
    :   `p` - the prime.
    :   `q` - the sub-prime.
    :   `g` - the base.
* ## Method Details

  + ### getP

    public [BigInteger](../../math/BigInteger.md "class in java.math") getP()

    Returns the prime `p`.

    Specified by:
    :   `getP` in interface `DSAParams`

    Returns:
    :   the prime `p`.
  + ### getQ

    public [BigInteger](../../math/BigInteger.md "class in java.math") getQ()

    Returns the sub-prime `q`.

    Specified by:
    :   `getQ` in interface `DSAParams`

    Returns:
    :   the sub-prime `q`.
  + ### getG

    public [BigInteger](../../math/BigInteger.md "class in java.math") getG()

    Returns the base `g`.

    Specified by:
    :   `getG` in interface `DSAParams`

    Returns:
    :   the base `g`.