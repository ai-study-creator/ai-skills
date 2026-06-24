Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class ECPoint

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.ECPoint

---

public class ECPoint
extends [Object](../../lang/Object.md "class in java.lang")

This immutable class represents a point on an elliptic curve (EC)
in affine coordinates. Other coordinate systems can
extend this class to represent this point in other
coordinates.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ECPoint`

  `POINT_INFINITY`

  This defines the point at infinity.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ECPoint(BigInteger x,
  BigInteger y)`

  Creates an ECPoint from the specified affine x-coordinate
  `x` and affine y-coordinate `y`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this elliptic curve point for equality with
  the specified object.

  `BigInteger`

  `getAffineX()`

  Returns the affine x-coordinate `x`.

  `BigInteger`

  `getAffineY()`

  Returns the affine y-coordinate `y`.

  `int`

  `hashCode()`

  Returns a hash code value for this elliptic curve point.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### POINT\_INFINITY

    public static final [ECPoint](ECPoint.md "class in java.security.spec") POINT\_INFINITY

    This defines the point at infinity.
* ## Constructor Details

  + ### ECPoint

    public ECPoint([BigInteger](../../math/BigInteger.md "class in java.math") x,
    [BigInteger](../../math/BigInteger.md "class in java.math") y)

    Creates an ECPoint from the specified affine x-coordinate
    `x` and affine y-coordinate `y`.

    Parameters:
    :   `x` - the affine x-coordinate.
    :   `y` - the affine y-coordinate.

    Throws:
    :   `NullPointerException` - if `x` or
        `y` is null.
* ## Method Details

  + ### getAffineX

    public [BigInteger](../../math/BigInteger.md "class in java.math") getAffineX()

    Returns the affine x-coordinate `x`.
    Note: POINT\_INFINITY has a null affine x-coordinate.

    Returns:
    :   the affine x-coordinate.
  + ### getAffineY

    public [BigInteger](../../math/BigInteger.md "class in java.math") getAffineY()

    Returns the affine y-coordinate `y`.
    Note: POINT\_INFINITY has a null affine y-coordinate.

    Returns:
    :   the affine y-coordinate.
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") obj)

    Compares this elliptic curve point for equality with
    the specified object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared.

    Returns:
    :   true if `obj` is an instance of
        ECPoint and the affine coordinates match, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this elliptic curve point.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))