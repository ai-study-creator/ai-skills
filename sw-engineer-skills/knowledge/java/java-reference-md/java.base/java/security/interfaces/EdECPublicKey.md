Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface EdECPublicKey

All Superinterfaces:
:   `EdECKey`, `Key`, `PublicKey`, `Serializable`

---

public interface EdECPublicKey
extends [EdECKey](EdECKey.md "interface in java.security.interfaces"), [PublicKey](../PublicKey.md "interface in java.security")

An interface for an elliptic curve public key as defined by
[RFC 8032: Edwards-Curve
Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032). These keys are distinct from the
keys represented by `ECPublicKey`, and they are intended for use with
algorithms based on RFC 8032 such as the EdDSA `Signature` algorithm.

An Edwards-Curve public key is a point on the curve, which is represented using an
EdECPoint.

Since:
:   15

* ## Field Summary

  ### Fields inherited from interface java.security.[PublicKey](../PublicKey.md "interface in java.security")

  `serialVersionUID`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `EdECPoint`

  `getPoint()`

  Get the point representing the public key.

  ### Methods inherited from interface java.security.interfaces.[EdECKey](EdECKey.md "interface in java.security.interfaces")

  `getParams`

  ### Methods inherited from interface java.security.[Key](../Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

* ## Method Details

  + ### getPoint

    [EdECPoint](../spec/EdECPoint.md "class in java.security.spec") getPoint()

    Get the point representing the public key.

    Returns:
    :   the `EdECPoint` representing the public key.