Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface EdECPrivateKey

All Superinterfaces:
:   `Destroyable`, `EdECKey`, `Key`, `PrivateKey`, `Serializable`

---

public interface EdECPrivateKey
extends [EdECKey](EdECKey.md "interface in java.security.interfaces"), [PrivateKey](../PrivateKey.md "interface in java.security")

An interface for an elliptic curve private key as defined by
[RFC 8032: Edwards-Curve
Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032). These keys are distinct from the
keys represented by `ECPrivateKey`, and they are intended for use
with algorithms based on RFC 8032 such as the EdDSA `Signature`
algorithm.

An Edwards-Curve private key is a bit string. This interface only supports bit
string lengths that are a multiple of 8, and the key is represented using
a byte array.

Since:
:   15

* ## Field Summary

  ### Fields inherited from interface java.security.[PrivateKey](../PrivateKey.md "interface in java.security")

  `serialVersionUID`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Optional<byte[]>`

  `getBytes()`

  Get a copy of the byte array representing the private key.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface java.security.interfaces.[EdECKey](EdECKey.md "interface in java.security.interfaces")

  `getParams`

  ### Methods inherited from interface java.security.[Key](../Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

* ## Method Details

  + ### getBytes

    [Optional](../../util/Optional.md "class in java.util")<byte[]> getBytes()

    Get a copy of the byte array representing the private key. This method
    may return an empty `Optional` if the implementation is not
    willing to produce the private key value.

    Returns:
    :   an `Optional` containing the private key byte array.
        If the key is not available, then an empty `Optional`.