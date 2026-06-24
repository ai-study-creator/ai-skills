Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class RC2ParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.RC2ParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class RC2ParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the parameters used with the
[*RC2*](http://www.ietf.org/rfc/rfc2268.txt)
algorithm.

The parameters consist of an effective key size and optionally
an 8-byte initialization vector (IV) (only in feedback mode).

This class can be used to initialize a `Cipher` object that
implements the *RC2* algorithm.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RC2ParameterSpec(int effectiveKeyBits)`

  Constructs a parameter set for RC2 from the given effective key size
  (in bits).

  `RC2ParameterSpec(int effectiveKeyBits,
  byte[] iv)`

  Constructs a parameter set for RC2 from the given effective key size
  (in bits) and an 8-byte IV.

  `RC2ParameterSpec(int effectiveKeyBits,
  byte[] iv,
  int offset)`

  Constructs a parameter set for RC2 from the given effective key size
  (in bits) and IV.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Tests for equality between the specified object and this
  object.

  `int`

  `getEffectiveKeyBits()`

  Returns the effective key size in bits.

  `byte[]`

  `getIV()`

  Returns the IV or null if this parameter set does not contain an IV.

  `int`

  `hashCode()`

  Calculates a hash code value for the object.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RC2ParameterSpec

    public RC2ParameterSpec(int effectiveKeyBits)

    Constructs a parameter set for RC2 from the given effective key size
    (in bits).

    Parameters:
    :   `effectiveKeyBits` - the effective key size in bits.
  + ### RC2ParameterSpec

    public RC2ParameterSpec(int effectiveKeyBits,
    byte[] iv)

    Constructs a parameter set for RC2 from the given effective key size
    (in bits) and an 8-byte IV.

    The bytes that constitute the IV are those between
    `iv[0]` and `iv[7]` inclusive.

    Parameters:
    :   `effectiveKeyBits` - the effective key size in bits.
    :   `iv` - the buffer with the 8-byte IV. The first 8 bytes of
        the buffer are copied to protect against subsequent modification.

    Throws:
    :   `IllegalArgumentException` - if `iv` is null.
  + ### RC2ParameterSpec

    public RC2ParameterSpec(int effectiveKeyBits,
    byte[] iv,
    int offset)

    Constructs a parameter set for RC2 from the given effective key size
    (in bits) and IV.

    The IV is taken from `iv`, starting at
    `offset` inclusive.
    The bytes that constitute the IV are those between
    `iv[offset]` and `iv[offset+7]` inclusive.

    Parameters:
    :   `effectiveKeyBits` - the effective key size in bits.
    :   `iv` - the buffer with the IV. The first 8 bytes
        of the buffer beginning at `offset` inclusive
        are copied to protect against subsequent modification.
    :   `offset` - the offset in `iv` where the 8-byte IV
        starts.

    Throws:
    :   `IllegalArgumentException` - if `iv` is null.
* ## Method Details

  + ### getEffectiveKeyBits

    public int getEffectiveKeyBits()

    Returns the effective key size in bits.

    Returns:
    :   the effective key size in bits.
  + ### getIV

    public byte[] getIV()

    Returns the IV or null if this parameter set does not contain an IV.

    Returns:
    :   the IV or null if this parameter set does not contain an IV.
        Returns a new array each time this method is called.
  + ### equals

    public boolean equals([Object](../../../java/lang/Object.md "class in java.lang") obj)

    Tests for equality between the specified object and this
    object. Two RC2ParameterSpec objects are considered equal if their
    effective key sizes and IVs are equal.
    (Two IV references are considered equal if both are `null`.)

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to test for equality with this object.

    Returns:
    :   true if the objects are considered equal, false if
        `obj` is null or otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Calculates a hash code value for the object.
    Objects that are equal will also have the same hashcode.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java/lang/System.md#identityHashCode(java.lang.Object))