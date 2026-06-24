Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class PKCS8EncodedKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.spec.EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec")

java.security.spec.PKCS8EncodedKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class PKCS8EncodedKeySpec
extends [EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec")

This class represents the ASN.1 encoding of a private key,
encoded according to the ASN.1 type `PrivateKeyInfo`.
The `PrivateKeyInfo` syntax is defined in the PKCS#8 standard
as follows:

```
 PrivateKeyInfo ::= SEQUENCE {
   version Version,
   privateKeyAlgorithm PrivateKeyAlgorithmIdentifier,
   privateKey PrivateKey,
   attributes [0] IMPLICIT Attributes OPTIONAL }

 Version ::= INTEGER

 PrivateKeyAlgorithmIdentifier ::= AlgorithmIdentifier

 PrivateKey ::= OCTET STRING

 Attributes ::= SET OF Attribute
```

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`EncodedKeySpec`](EncodedKeySpec.md "class in java.security.spec")
    * [`X509EncodedKeySpec`](X509EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PKCS8EncodedKeySpec(byte[] encodedKey)`

  Creates a new `PKCS8EncodedKeySpec` with the given encoded key.

  `PKCS8EncodedKeySpec(byte[] encodedKey,
  String algorithm)`

  Creates a new `PKCS8EncodedKeySpec` with the given encoded key and
  algorithm.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getEncoded()`

  Returns the key bytes, encoded according to the PKCS #8 standard.

  `final String`

  `getFormat()`

  Returns the name of the encoding format associated with this
  key specification.

  ### Methods inherited from class java.security.spec.[EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec")

  `getAlgorithm`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PKCS8EncodedKeySpec

    public PKCS8EncodedKeySpec(byte[] encodedKey)

    Creates a new `PKCS8EncodedKeySpec` with the given encoded key.

    Parameters:
    :   `encodedKey` - the key, which is assumed to be
        encoded according to the PKCS #8 standard. The contents of
        the array are copied to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if `encodedKey`
        is null.
  + ### PKCS8EncodedKeySpec

    public PKCS8EncodedKeySpec(byte[] encodedKey,
    [String](../../lang/String.md "class in java.lang") algorithm)

    Creates a new `PKCS8EncodedKeySpec` with the given encoded key and
    algorithm. This constructor is useful when subsequent callers of
    the `PKCS8EncodedKeySpec` object might not know the
    algorithm of the private key.

    Parameters:
    :   `encodedKey` - the key, which is assumed to be
        encoded according to the PKCS #8 standard. The contents of
        the array are copied to protect against subsequent modification.
    :   `algorithm` - the algorithm name of the encoded private key
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

    Returns the key bytes, encoded according to the PKCS #8 standard.

    Overrides:
    :   `getEncoded` in class `EncodedKeySpec`

    Returns:
    :   the PKCS #8 encoding of the key. Returns a new array
        each time this method is called.
  + ### getFormat

    public final [String](../../lang/String.md "class in java.lang") getFormat()

    Returns the name of the encoding format associated with this
    key specification.

    Specified by:
    :   `getFormat` in class `EncodedKeySpec`

    Returns:
    :   the string `"PKCS#8"`.