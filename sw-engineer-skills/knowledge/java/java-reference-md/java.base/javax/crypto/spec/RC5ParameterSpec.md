Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class RC5ParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.RC5ParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class RC5ParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the parameters used with the
[*RC5*](https://tools.ietf.org/html/rfc2040)
algorithm.

The parameters consist of a version number, a rounds count, a word
size, and optionally an initialization vector (IV) (only in feedback mode).

This class can be used to initialize a `Cipher` object that
implements the *RC5* algorithm as supplied by
[RSA Security LLC](http://www.rsa.com),
or any parties authorized by RSA Security.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RC5ParameterSpec(int version,
  int rounds,
  int wordSize)`

  Constructs a parameter set for RC5 from the given version, number of
  rounds and word size (in bits).

  `RC5ParameterSpec(int version,
  int rounds,
  int wordSize,
  byte[] iv)`

  Constructs a parameter set for RC5 from the given version, number of
  rounds, word size (in bits), and IV.

  `RC5ParameterSpec(int version,
  int rounds,
  int wordSize,
  byte[] iv,
  int offset)`

  Constructs a parameter set for RC5 from the given version, number of
  rounds, word size (in bits), and IV.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Tests for equality between the specified object and this
  object.

  `byte[]`

  `getIV()`

  Returns the IV or null if this parameter set does not contain an IV.

  `int`

  `getRounds()`

  Returns the number of rounds.

  `int`

  `getVersion()`

  Returns the version.

  `int`

  `getWordSize()`

  Returns the word size in bits.

  `int`

  `hashCode()`

  Calculates a hash code value for the object.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RC5ParameterSpec

    public RC5ParameterSpec(int version,
    int rounds,
    int wordSize)

    Constructs a parameter set for RC5 from the given version, number of
    rounds and word size (in bits).

    Parameters:
    :   `version` - the version.
    :   `rounds` - the number of rounds.
    :   `wordSize` - the word size in bits.
  + ### RC5ParameterSpec

    public RC5ParameterSpec(int version,
    int rounds,
    int wordSize,
    byte[] iv)

    Constructs a parameter set for RC5 from the given version, number of
    rounds, word size (in bits), and IV.

    Note that the size of the IV (block size) must be twice the word
    size. The bytes that constitute the IV are those between
    `iv[0]` and `iv[2*(wordSize/8)-1]` inclusive.

    Parameters:
    :   `version` - the version.
    :   `rounds` - the number of rounds.
    :   `wordSize` - the word size in bits.
    :   `iv` - the buffer with the IV. The first `2*(wordSize/8)`
        bytes of the buffer are copied to protect against subsequent
        modification.

    Throws:
    :   `IllegalArgumentException` - if `iv` is
        `null` or `(iv.length < 2 * (wordSize / 8))`
  + ### RC5ParameterSpec

    public RC5ParameterSpec(int version,
    int rounds,
    int wordSize,
    byte[] iv,
    int offset)

    Constructs a parameter set for RC5 from the given version, number of
    rounds, word size (in bits), and IV.

    The IV is taken from `iv`, starting at
    `offset` inclusive.
    Note that the size of the IV (block size), starting at
    `offset` inclusive, must be twice the word size.
    The bytes that constitute the IV are those between
    `iv[offset]` and `iv[offset+2*(wordSize/8)-1]`
    inclusive.

    Parameters:
    :   `version` - the version.
    :   `rounds` - the number of rounds.
    :   `wordSize` - the word size in bits.
    :   `iv` - the buffer with the IV. The first `2*(wordSize/8)`
        bytes of the buffer beginning at `offset`
        inclusive are copied to protect against subsequent modification.
    :   `offset` - the offset in `iv` where the IV starts.

    Throws:
    :   `IllegalArgumentException` - if `iv` is
        `null` or
        `(iv.length - offset < 2 * (wordSize / 8))`
* ## Method Details

  + ### getVersion

    public int getVersion()

    Returns the version.

    Returns:
    :   the version.
  + ### getRounds

    public int getRounds()

    Returns the number of rounds.

    Returns:
    :   the number of rounds.
  + ### getWordSize

    public int getWordSize()

    Returns the word size in bits.

    Returns:
    :   the word size in bits.
  + ### getIV

    public byte[] getIV()

    Returns the IV or null if this parameter set does not contain an IV.

    Returns:
    :   the IV or null if this parameter set does not contain an IV.
        Returns a new array each time this method is called.
  + ### equals

    public boolean equals([Object](../../../java/lang/Object.md "class in java.lang") obj)

    Tests for equality between the specified object and this
    object. Two RC5ParameterSpec objects are considered equal if their
    version numbers, number of rounds, word sizes, and IVs are equal.
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