Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class ECParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.ECParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class ECParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

This immutable class specifies the set of domain parameters
used with elliptic curve cryptography (ECC).

Since:
:   1.5

See Also:
:   * [`AlgorithmParameterSpec`](AlgorithmParameterSpec.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ECParameterSpec(EllipticCurve curve,
  ECPoint g,
  BigInteger n,
  int h)`

  Creates elliptic curve domain parameters based on the
  specified values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getCofactor()`

  Returns the cofactor.

  `EllipticCurve`

  `getCurve()`

  Returns the elliptic curve that this parameter defines.

  `ECPoint`

  `getGenerator()`

  Returns the generator which is also known as the base point.

  `BigInteger`

  `getOrder()`

  Returns the order of the generator.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ECParameterSpec

    public ECParameterSpec([EllipticCurve](EllipticCurve.md "class in java.security.spec") curve,
    [ECPoint](ECPoint.md "class in java.security.spec") g,
    [BigInteger](../../math/BigInteger.md "class in java.math") n,
    int h)

    Creates elliptic curve domain parameters based on the
    specified values.

    Parameters:
    :   `curve` - the elliptic curve which this parameter
        defines.
    :   `g` - the generator which is also known as the base point.
    :   `n` - the order of the generator `g`.
    :   `h` - the cofactor.

    Throws:
    :   `NullPointerException` - if `curve`,
        `g`, or `n` is null.
    :   `IllegalArgumentException` - if `n`
        or `h` is not positive.
* ## Method Details

  + ### getCurve

    public [EllipticCurve](EllipticCurve.md "class in java.security.spec") getCurve()

    Returns the elliptic curve that this parameter defines.

    Returns:
    :   the elliptic curve that this parameter defines.
  + ### getGenerator

    public [ECPoint](ECPoint.md "class in java.security.spec") getGenerator()

    Returns the generator which is also known as the base point.

    Returns:
    :   the generator which is also known as the base point.
  + ### getOrder

    public [BigInteger](../../math/BigInteger.md "class in java.math") getOrder()

    Returns the order of the generator.

    Returns:
    :   the order of the generator.
  + ### getCofactor

    public int getCofactor()

    Returns the cofactor.

    Returns:
    :   the cofactor.