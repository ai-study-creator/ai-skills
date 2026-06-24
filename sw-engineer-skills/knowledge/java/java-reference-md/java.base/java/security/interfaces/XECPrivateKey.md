Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface XECPrivateKey

All Superinterfaces:
:   `Destroyable`, `Key`, `PrivateKey`, `Serializable`, `XECKey`

---

public interface XECPrivateKey
extends [XECKey](XECKey.md "interface in java.security.interfaces"), [PrivateKey](../PrivateKey.md "interface in java.security")

An interface for an elliptic curve private key as defined by RFC 7748.
These keys are distinct from the keys represented by `ECPrivateKey`,
and they are intended for use with algorithms based on RFC 7748 such as the
XDH `KeyAgreement` algorithm.
An XEC private key is an encoded scalar value as described in RFC 7748.
The decoding procedure defined in this RFC includes an operation that forces
certain bits of the key to either 1 or 0. This operation is known as
"pruning" or "clamping" the private key. Arrays returned by this interface
are unpruned, and implementations will need to prune the array before
using it in any numerical operations.

Since:
:   11

* ## Field Summary

  ### Fields inherited from interface java.security.[PrivateKey](../PrivateKey.md "interface in java.security")

  `serialVersionUID`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Optional<byte[]>`

  `getScalar()`

  Get the scalar value encoded as an unpruned byte array.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface java.security.[Key](../Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

  ### Methods inherited from interface java.security.interfaces.[XECKey](XECKey.md "interface in java.security.interfaces")

  `getParams`

* ## Method Details

  + ### getScalar

    [Optional](../../util/Optional.md "class in java.util")<byte[]> getScalar()

    Get the scalar value encoded as an unpruned byte array. A new copy of
    the array is returned each time this method is called.

    Returns:
    :   the unpruned encoded scalar value, or an empty Optional if the
        scalar cannot be extracted (e.g. if the provider is a hardware token
        and the private key is not allowed to leave the crypto boundary).