Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class EllipticCurve

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.EllipticCurve

---

public class EllipticCurve
extends [Object](../../lang/Object.md "class in java.lang")

This immutable class holds the necessary values needed to represent
an elliptic curve.

Since:
:   1.5

See Also:
:   * [`ECField`](ECField.md "interface in java.security.spec")
    * [`ECFieldFp`](ECFieldFp.md "class in java.security.spec")
    * [`ECFieldF2m`](ECFieldF2m.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EllipticCurve(ECField field,
  BigInteger a,
  BigInteger b)`

  Creates an elliptic curve with the specified elliptic field
  `field` and the coefficients `a` and
  `b`.

  `EllipticCurve(ECField field,
  BigInteger a,
  BigInteger b,
  byte[] seed)`

  Creates an elliptic curve with the specified elliptic field
  `field`, the coefficients `a` and
  `b`, and the `seed` used for curve generation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this elliptic curve for equality with the
  specified object.

  `BigInteger`

  `getA()`

  Returns the first coefficient `a` of the
  elliptic curve.

  `BigInteger`

  `getB()`

  Returns the second coefficient `b` of the
  elliptic curve.

  `ECField`

  `getField()`

  Returns the finite field `field` that this
  elliptic curve is over.

  `byte[]`

  `getSeed()`

  Returns the seeding bytes `seed` used
  during curve generation.

  `int`

  `hashCode()`

  Returns a hash code value for this elliptic curve.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EllipticCurve

    public EllipticCurve([ECField](ECField.md "interface in java.security.spec") field,
    [BigInteger](../../math/BigInteger.md "class in java.math") a,
    [BigInteger](../../math/BigInteger.md "class in java.math") b)

    Creates an elliptic curve with the specified elliptic field
    `field` and the coefficients `a` and
    `b`.

    Parameters:
    :   `field` - the finite field that this elliptic curve is over.
    :   `a` - the first coefficient of this elliptic curve.
    :   `b` - the second coefficient of this elliptic curve.

    Throws:
    :   `NullPointerException` - if `field`,
        `a`, or `b` is null.
    :   `IllegalArgumentException` - if `a`
        or `b` is not null and not in `field`.
  + ### EllipticCurve

    public EllipticCurve([ECField](ECField.md "interface in java.security.spec") field,
    [BigInteger](../../math/BigInteger.md "class in java.math") a,
    [BigInteger](../../math/BigInteger.md "class in java.math") b,
    byte[] seed)

    Creates an elliptic curve with the specified elliptic field
    `field`, the coefficients `a` and
    `b`, and the `seed` used for curve generation.

    Parameters:
    :   `field` - the finite field that this elliptic curve is over.
    :   `a` - the first coefficient of this elliptic curve.
    :   `b` - the second coefficient of this elliptic curve.
    :   `seed` - the bytes used during curve generation for later
        validation. Contents of this array are copied to protect against
        subsequent modification.

    Throws:
    :   `NullPointerException` - if `field`,
        `a`, or `b` is null.
    :   `IllegalArgumentException` - if `a`
        or `b` is not null and not in `field`.
* ## Method Details

  + ### getField

    public [ECField](ECField.md "interface in java.security.spec") getField()

    Returns the finite field `field` that this
    elliptic curve is over.

    Returns:
    :   the field `field` that this curve
        is over.
  + ### getA

    public [BigInteger](../../math/BigInteger.md "class in java.math") getA()

    Returns the first coefficient `a` of the
    elliptic curve.

    Returns:
    :   the first coefficient `a`.
  + ### getB

    public [BigInteger](../../math/BigInteger.md "class in java.math") getB()

    Returns the second coefficient `b` of the
    elliptic curve.

    Returns:
    :   the second coefficient `b`.
  + ### getSeed

    public byte[] getSeed()

    Returns the seeding bytes `seed` used
    during curve generation. May be null if not specified.

    Returns:
    :   the seeding bytes `seed`. A new
        array is returned each time this method is called.
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") obj)

    Compares this elliptic curve for equality with the
    specified object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared.

    Returns:
    :   true if `obj` is an instance of
        EllipticCurve and the field, A, and B match, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this elliptic curve.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value computed from the hash codes of the field, A,
        and B, as follows:

        ```
             (field.hashCode() << 6) + (a.hashCode() << 4) + (b.hashCode() << 2)
        ```

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))