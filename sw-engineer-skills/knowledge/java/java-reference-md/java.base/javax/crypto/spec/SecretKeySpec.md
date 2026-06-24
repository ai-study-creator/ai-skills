Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class SecretKeySpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.SecretKeySpec

All Implemented Interfaces:
:   `Serializable`, `Key`, `KeySpec`, `SecretKey`, `Destroyable`

---

public class SecretKeySpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [KeySpec](../../../java/security/spec/KeySpec.md "interface in java.security.spec"), [SecretKey](../SecretKey.md "interface in javax.crypto")

This class specifies a secret key in a provider-independent fashion.

It can be used to construct a `SecretKey` from a byte array,
without having to go through a (provider-based)
`SecretKeyFactory`.

This class is only useful for raw secret keys that can be represented as
a byte array and have no key parameters associated with them, e.g., DES or
Triple DES keys.

Since:
:   1.4

See Also:
:   * [`SecretKey`](../SecretKey.md "interface in javax.crypto")
    * [`SecretKeyFactory`](../SecretKeyFactory.md "class in javax.crypto")
    * [Serialized Form](../../../../serialized-form.md#javax.crypto.spec.SecretKeySpec)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SecretKeySpec(byte[] key,
  int offset,
  int len,
  String algorithm)`

  Constructs a secret key from the given byte array, using the first
  `len` bytes of `key`, starting at
  `offset` inclusive.

  `SecretKeySpec(byte[] key,
  String algorithm)`

  Constructs a secret key from the given byte array.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Tests for equality between the specified object and this
  object.

  `String`

  `getAlgorithm()`

  Returns the name of the algorithm associated with this secret key.

  `byte[]`

  `getEncoded()`

  Returns the key material of this secret key.

  `String`

  `getFormat()`

  Returns the name of the encoding format for this secret key.

  `int`

  `hashCode()`

  Calculates a hash code value for the object.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

* ## Constructor Details

  + ### SecretKeySpec

    public SecretKeySpec(byte[] key,
    [String](../../../java/lang/String.md "class in java.lang") algorithm)

    Constructs a secret key from the given byte array.

    This constructor does not check if the given bytes indeed specify a
    secret key of the specified algorithm. For example, if the algorithm is
    DES, this constructor does not check if `key` is 8 bytes
    long, and also does not check for weak or semi-weak keys.
    In order for those checks to be performed, an algorithm-specific
    *key specification* class (in this case:
    [`DESKeySpec`](DESKeySpec.md "class in javax.crypto.spec"))
    should be used.

    Parameters:
    :   `key` - the key material of the secret key. The contents of
        the array are copied to protect against subsequent modification.
    :   `algorithm` - the name of the secret-key algorithm to be associated
        with the given key material.
        See the [Java Security Standard Algorithm Names](../../../../../specs/security/standard-names.md) document
        for information about standard algorithm names.

    Throws:
    :   `IllegalArgumentException` - if `algorithm`
        is null or `key` is null or empty.
  + ### SecretKeySpec

    public SecretKeySpec(byte[] key,
    int offset,
    int len,
    [String](../../../java/lang/String.md "class in java.lang") algorithm)

    Constructs a secret key from the given byte array, using the first
    `len` bytes of `key`, starting at
    `offset` inclusive.

    The bytes that constitute the secret key are
    those between `key[offset]` and
    `key[offset+len-1]` inclusive.

    This constructor does not check if the given bytes indeed specify a
    secret key of the specified algorithm. For example, if the algorithm is
    DES, this constructor does not check if `key` is 8 bytes
    long, and also does not check for weak or semi-weak keys.
    In order for those checks to be performed, an algorithm-specific key
    specification class (in this case:
    [`DESKeySpec`](DESKeySpec.md "class in javax.crypto.spec"))
    must be used.

    Parameters:
    :   `key` - the key material of the secret key. The first
        `len` bytes of the array beginning at
        `offset` inclusive are copied to protect
        against subsequent modification.
    :   `offset` - the offset in `key` where the key material
        starts.
    :   `len` - the length of the key material.
    :   `algorithm` - the name of the secret-key algorithm to be associated
        with the given key material.
        See the [Java Security Standard Algorithm Names](../../../../../specs/security/standard-names.md) document
        for information about standard algorithm names.

    Throws:
    :   `IllegalArgumentException` - if `algorithm`
        is null or `key` is null, empty, or too short,
        i.e. `key.length-offset<len`.
    :   `ArrayIndexOutOfBoundsException` - is thrown if
        `offset` or `len` index bytes outside the
        `key`.
* ## Method Details

  + ### getAlgorithm

    public [String](../../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the name of the algorithm associated with this secret key.

    Specified by:
    :   `getAlgorithm` in interface `Key`

    Returns:
    :   the secret key algorithm.
  + ### getFormat

    public [String](../../../java/lang/String.md "class in java.lang") getFormat()

    Returns the name of the encoding format for this secret key.

    Specified by:
    :   `getFormat` in interface `Key`

    Returns:
    :   the string "RAW".
  + ### getEncoded

    public byte[] getEncoded()

    Returns the key material of this secret key.

    Specified by:
    :   `getEncoded` in interface `Key`

    Returns:
    :   the key material. Returns a new array
        each time this method is called.
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
  + ### equals

    public boolean equals([Object](../../../java/lang/Object.md "class in java.lang") obj)

    Tests for equality between the specified object and this
    object. Two SecretKeySpec objects are considered equal if
    they are both SecretKey instances which have the
    same case-insensitive algorithm name and key encoding.

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