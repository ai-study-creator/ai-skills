Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class X509EncodedKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.spec.EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec")

java.security.spec.X509EncodedKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class X509EncodedKeySpec
extends [EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec")

This class represents the ASN.1 encoding of a public key,
encoded according to the ASN.1 type `SubjectPublicKeyInfo`.
The `SubjectPublicKeyInfo` syntax is defined in the X.509
standard as follows:

```
 SubjectPublicKeyInfo ::= SEQUENCE {
   algorithm AlgorithmIdentifier,
   subjectPublicKey BIT STRING }
```

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`EncodedKeySpec`](EncodedKeySpec.md "class in java.security.spec")
    * [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `X509EncodedKeySpec(byte[] encodedKey)`

  Creates a new `X509EncodedKeySpec` with the given encoded key.

  `X509EncodedKeySpec(byte[] encodedKey,
  String algorithm)`

  Creates a new `X509EncodedKeySpec` with the given encoded key.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getEncoded()`

  Returns the key bytes, encoded according to the X.509 standard.

  `final String`

  `getFormat()`

  Returns the name of the encoding format associated with this
  key specification.

  ### Methods inherited from class java.security.spec.[EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec")

  `getAlgorithm`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### X509EncodedKeySpec

    public X509EncodedKeySpec(byte[] encodedKey)

    Creates a new `X509EncodedKeySpec` with the given encoded key.

    Parameters:
    :   `encodedKey` - the key, which is assumed to be
        encoded according to the X.509 standard. The contents of the
        array are copied to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if `encodedKey`
        is null.
  + ### X509EncodedKeySpec

    public X509EncodedKeySpec(byte[] encodedKey,
    [String](../../lang/String.md "class in java.lang") algorithm)

    Creates a new `X509EncodedKeySpec` with the given encoded key.
    This constructor is useful when subsequent callers of the
    `X509EncodedKeySpec` object might not know the algorithm
    of the key.

    Parameters:
    :   `encodedKey` - the key, which is assumed to be
        encoded according to the X.509 standard. The contents of the
        array are copied to protect against subsequent modification.
    :   `algorithm` - the algorithm name of the encoded public key
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

  + ### getEncoded

    public byte[] getEncoded()

    Returns the key bytes, encoded according to the X.509 standard.

    Overrides:
    :   `getEncoded` in class `EncodedKeySpec`

    Returns:
    :   the X.509 encoding of the key. Returns a new array
        each time this method is called.
  + ### getFormat

    public final [String](../../lang/String.md "class in java.lang") getFormat()

    Returns the name of the encoding format associated with this
    key specification.

    Specified by:
    :   `getFormat` in class `EncodedKeySpec`

    Returns:
    :   the string `"X.509"`.