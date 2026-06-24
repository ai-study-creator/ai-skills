Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class EdECPoint

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.EdECPoint

---

public final class EdECPoint
extends [Object](../../lang/Object.md "class in java.lang")

An elliptic curve point used to specify keys as defined by
[RFC 8032: Edwards-Curve
Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032). These points are distinct from the
points represented by `ECPoint`, and they are intended for use with
algorithms based on RFC 8032 such as the EdDSA `Signature` algorithm.

An EdEC point is specified by its y-coordinate value and a boolean that
indicates whether the x-coordinate is odd. The y-coordinate is an
element of the field of integers modulo some value p that is determined by
the algorithm parameters. This field element is represented by a
`BigInteger`, and implementations that consume objects of this class
may reject integer values which are not in the range [0, p).

Since:
:   15

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EdECPoint(boolean xOdd,
  BigInteger y)`

  Construct an EdECPoint.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getY()`

  Get the y-coordinate of the point.

  `boolean`

  `isXOdd()`

  Get whether the x-coordinate of the point is odd.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EdECPoint

    public EdECPoint(boolean xOdd,
    [BigInteger](../../math/BigInteger.md "class in java.math") y)

    Construct an EdECPoint.

    Parameters:
    :   `xOdd` - whether the x-coordinate is odd.
    :   `y` - the y-coordinate, represented using a `BigInteger`.

    Throws:
    :   `NullPointerException` - if `y` is null.
* ## Method Details

  + ### isXOdd

    public boolean isXOdd()

    Get whether the x-coordinate of the point is odd.

    Returns:
    :   a boolean indicating whether the x-coordinate is odd.
  + ### getY

    public [BigInteger](../../math/BigInteger.md "class in java.math") getY()

    Get the y-coordinate of the point.

    Returns:
    :   the y-coordinate, represented using a `BigInteger`.