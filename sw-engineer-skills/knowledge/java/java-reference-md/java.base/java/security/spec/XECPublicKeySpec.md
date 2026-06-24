Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class XECPublicKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.XECPublicKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class XECPublicKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

A class representing elliptic curve public keys as defined in RFC 7748,
including the curve and other algorithm parameters. The public key is a
particular point on the curve, which is represented using only its
u-coordinate. A u-coordinate is an element of the field of integers modulo
some value that is determined by the algorithm parameters. This field
element is represented by a BigInteger which may hold any value. That is,
the BigInteger is not restricted to the range of canonical field elements.

Since:
:   11

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XECPublicKeySpec(AlgorithmParameterSpec params,
  BigInteger u)`

  Construct a public key spec using the supplied parameters and
  u coordinate.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getParams()`

  Get the algorithm parameters that define the curve and other settings.

  `BigInteger`

  `getU()`

  Get the u coordinate of the point.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XECPublicKeySpec

    public XECPublicKeySpec([AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") params,
    [BigInteger](../../math/BigInteger.md "class in java.math") u)

    Construct a public key spec using the supplied parameters and
    u coordinate.

    Parameters:
    :   `params` - the algorithm parameters
    :   `u` - the u-coordinate of the point, represented using a BigInteger
        which may hold any value

    Throws:
    :   `NullPointerException` - if `params` or `u`
        is null.
* ## Method Details

  + ### getParams

    public [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") getParams()

    Get the algorithm parameters that define the curve and other settings.

    Returns:
    :   the parameters
  + ### getU

    public [BigInteger](../../math/BigInteger.md "class in java.math") getU()

    Get the u coordinate of the point.

    Returns:
    :   the u-coordinate, represented using a BigInteger which may hold
        any value