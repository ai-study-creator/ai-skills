Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class ECFieldF2m

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.ECFieldF2m

All Implemented Interfaces:
:   `ECField`

---

public class ECFieldF2m
extends [Object](../../lang/Object.md "class in java.lang")
implements [ECField](ECField.md "interface in java.security.spec")

This immutable class defines an elliptic curve (EC)
characteristic 2 finite field.

Since:
:   1.5

See Also:
:   * [`ECField`](ECField.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ECFieldF2m(int m)`

  Creates an elliptic curve characteristic 2 finite
  field which has 2^`m` elements with normal basis.

  `ECFieldF2m(int m,
  int[] ks)`

  Creates an elliptic curve characteristic 2 finite
  field which has 2^`m` elements with
  polynomial basis.

  `ECFieldF2m(int m,
  BigInteger rp)`

  Creates an elliptic curve characteristic 2 finite
  field which has 2^`m` elements with
  polynomial basis.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this finite field for equality with the
  specified object.

  `int`

  `getFieldSize()`

  Returns the field size in bits which is `m`
  for this characteristic 2 finite field.

  `int`

  `getM()`

  Returns the value `m` of this characteristic
  2 finite field.

  `int[]`

  `getMidTermsOfReductionPolynomial()`

  Returns an integer array which contains the order of the
  middle term(s) of the reduction polynomial for polynomial
  basis or null for normal basis.

  `BigInteger`

  `getReductionPolynomial()`

  Returns a BigInteger whose i-th bit corresponds to the
  i-th coefficient of the reduction polynomial for polynomial
  basis or null for normal basis.

  `int`

  `hashCode()`

  Returns a hash code value for this characteristic 2
  finite field.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ECFieldF2m

    public ECFieldF2m(int m)

    Creates an elliptic curve characteristic 2 finite
    field which has 2^`m` elements with normal basis.

    Parameters:
    :   `m` - with 2^`m` being the number of elements.

    Throws:
    :   `IllegalArgumentException` - if `m`
        is not positive.
  + ### ECFieldF2m

    public ECFieldF2m(int m,
    [BigInteger](../../math/BigInteger.md "class in java.math") rp)

    Creates an elliptic curve characteristic 2 finite
    field which has 2^`m` elements with
    polynomial basis.
    The reduction polynomial for this field is based
    on `rp` whose i-th bit corresponds to
    the i-th coefficient of the reduction polynomial.

    Note: A valid reduction polynomial is either a
    trinomial (X^`m` + X^`k` + 1
    with `m` > `k` >= 1) or a
    pentanomial (X^`m` + X^`k3`
    + X^`k2` + X^`k1` + 1 with
    `m` > `k3` > `k2`
    > `k1` >= 1).

    Parameters:
    :   `m` - with 2^`m` being the number of elements.
    :   `rp` - the BigInteger whose i-th bit corresponds to
        the i-th coefficient of the reduction polynomial.

    Throws:
    :   `NullPointerException` - if `rp` is null.
    :   `IllegalArgumentException` - if `m`
        is not positive, or `rp` does not represent
        a valid reduction polynomial.
  + ### ECFieldF2m

    public ECFieldF2m(int m,
    int[] ks)

    Creates an elliptic curve characteristic 2 finite
    field which has 2^`m` elements with
    polynomial basis. The reduction polynomial for this
    field is based on `ks` whose content
    contains the order of the middle term(s) of the
    reduction polynomial.
    Note: A valid reduction polynomial is either a
    trinomial (X^`m` + X^`k` + 1
    with `m` > `k` >= 1) or a
    pentanomial (X^`m` + X^`k3`
    + X^`k2` + X^`k1` + 1 with
    `m` > `k3` > `k2`
    > `k1` >= 1), so `ks` should
    have length 1 or 3.

    Parameters:
    :   `m` - with 2^`m` being the number of elements.
    :   `ks` - the order of the middle term(s) of the
        reduction polynomial. Contents of this array are copied
        to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if `ks` is null.
    :   `IllegalArgumentException` - if`m`
        is not positive, or the length of `ks`
        is neither 1 nor 3, or values in `ks`
        are not between `m`-1 and 1 (inclusive)
        and in descending order.
* ## Method Details

  + ### getFieldSize

    public int getFieldSize()

    Returns the field size in bits which is `m`
    for this characteristic 2 finite field.

    Specified by:
    :   `getFieldSize` in interface `ECField`

    Returns:
    :   the field size in bits.
  + ### getM

    public int getM()

    Returns the value `m` of this characteristic
    2 finite field.

    Returns:
    :   `m` with 2^`m` being the
        number of elements.
  + ### getReductionPolynomial

    public [BigInteger](../../math/BigInteger.md "class in java.math") getReductionPolynomial()

    Returns a BigInteger whose i-th bit corresponds to the
    i-th coefficient of the reduction polynomial for polynomial
    basis or null for normal basis.

    Returns:
    :   a BigInteger whose i-th bit corresponds to the
        i-th coefficient of the reduction polynomial for polynomial
        basis or null for normal basis.
  + ### getMidTermsOfReductionPolynomial

    public int[] getMidTermsOfReductionPolynomial()

    Returns an integer array which contains the order of the
    middle term(s) of the reduction polynomial for polynomial
    basis or null for normal basis.

    Returns:
    :   an integer array which contains the order of the
        middle term(s) of the reduction polynomial for polynomial
        basis or null for normal basis. A new array is returned
        each time this method is called.
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") obj)

    Compares this finite field for equality with the
    specified object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared.

    Returns:
    :   true if `obj` is an instance
        of ECFieldF2m and both `m` and the reduction
        polynomial match, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this characteristic 2
    finite field.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))