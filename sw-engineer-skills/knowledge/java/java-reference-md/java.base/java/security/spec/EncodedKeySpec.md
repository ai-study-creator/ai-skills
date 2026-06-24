Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class EncodedKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.EncodedKeySpec

All Implemented Interfaces:
:   `KeySpec`

Direct Known Subclasses:
:   `PKCS8EncodedKeySpec`, `X509EncodedKeySpec`

---

public abstract class EncodedKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

This class represents a public or private key in encoded format.

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`X509EncodedKeySpec`](X509EncodedKeySpec.md "class in java.security.spec")
    * [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `EncodedKeySpec(byte[] encodedKey)`

  Creates a new `EncodedKeySpec` with the given encoded key.

  `protected`

  `EncodedKeySpec(byte[] encodedKey,
  String algorithm)`

  Creates a new `EncodedKeySpec` with the given encoded key.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAlgorithm()`

  Returns the name of the algorithm of the encoded key.

  `byte[]`

  `getEncoded()`

  Returns the encoded key.

  `abstract String`

  `getFormat()`

  Returns the name of the encoding format associated with this
  key specification.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EncodedKeySpec

    public EncodedKeySpec(byte[] encodedKey)

    Creates a new `EncodedKeySpec` with the given encoded key.

    Parameters:
    :   `encodedKey` - the encoded key. The contents of the
        array are copied to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if `encodedKey`
        is null.
  + ### EncodedKeySpec

    protected EncodedKeySpec(byte[] encodedKey,
    [String](../../lang/String.md "class in java.lang") algorithm)

    Creates a new `EncodedKeySpec` with the given encoded key.
    This constructor is useful when subsequent callers of the
    `EncodedKeySpec` object might not know the algorithm
    of the key.

    Parameters:
    :   `encodedKey` - the encoded key. The contents of the
        array are copied to protect against subsequent modification.
    :   `algorithm` - the algorithm name of the encoded key
        See the KeyFactory section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#keyfactory-algorithms)
        for information about standard algorithm names.

    Throws:
    :   `NullPointerException` - if `encodedKey`
        or `algorithm` is null.
    :   `IllegalArgumentException` - if `algorithm` is
        the empty string `""`

    Since:
    :   9
* ## Method Details

  + ### getAlgorithm

    public [String](../../lang/String.md "class in java.lang") getAlgorithm()

    Returns the name of the algorithm of the encoded key.

    Returns:
    :   the name of the algorithm, or null if not specified

    Since:
    :   9
  + ### getEncoded

    public byte[] getEncoded()

    Returns the encoded key.

    Returns:
    :   the encoded key. Returns a new array each time
        this method is called.
  + ### getFormat

    public abstract [String](../../lang/String.md "class in java.lang") getFormat()

    Returns the name of the encoding format associated with this
    key specification.

    If the opaque representation of a key
    (see [`Key`](../Key.md "interface in java.security")) can be transformed
    (see [`KeyFactory`](../KeyFactory.md "class in java.security"))
    into this key specification (or a subclass of it),
    `getFormat` called
    on the opaque key returns the same value as the
    `getFormat` method
    of this key specification.

    Returns:
    :   a string representation of the encoding format.