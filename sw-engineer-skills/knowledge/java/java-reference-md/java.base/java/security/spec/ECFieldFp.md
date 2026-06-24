Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class ECFieldFp

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.ECFieldFp

All Implemented Interfaces:
:   `ECField`

---

public class ECFieldFp
extends [Object](../../lang/Object.md "class in java.lang")
implements [ECField](ECField.md "interface in java.security.spec")

This immutable class defines an elliptic curve (EC) prime
finite field.

Since:
:   1.5

See Also:
:   * [`ECField`](ECField.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ECFieldFp(BigInteger p)`

  Creates an elliptic curve prime finite field
  with the specified prime `p`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this prime finite field for equality with the
  specified object.

  `int`

  `getFieldSize()`

  Returns the field size in bits which is size of prime p
  for this prime finite field.

  `BigInteger`

  `getP()`

  Returns the prime `p` of this prime finite field.

  `int`

  `hashCode()`

  Returns a hash code value for this prime finite field.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ECFieldFp

    public ECFieldFp([BigInteger](../../math/BigInteger.md "class in java.math") p)

    Creates an elliptic curve prime finite field
    with the specified prime `p`.

    Parameters:
    :   `p` - the prime.

    Throws:
    :   `NullPointerException` - if `p` is null.
    :   `IllegalArgumentException` - if `p`
        is not positive.
* ## Method Details

  + ### getFieldSize

    public int getFieldSize()

    Returns the field size in bits which is size of prime p
    for this prime finite field.

    Specified by:
    :   `getFieldSize` in interface `ECField`

    Returns:
    :   the field size in bits.
  + ### getP

    public [BigInteger](../../math/BigInteger.md "class in java.math") getP()

    Returns the prime `p` of this prime finite field.

    Returns:
    :   the prime.
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") obj)

    Compares this prime finite field for equality with the
    specified object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared.

    Returns:
    :   true if `obj` is an instance
        of ECFieldFp and the prime value match, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this prime finite field.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))