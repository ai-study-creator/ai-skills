Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface XECPublicKey

All Superinterfaces:
:   `Key`, `PublicKey`, `Serializable`, `XECKey`

---

public interface XECPublicKey
extends [XECKey](XECKey.md "interface in java.security.interfaces"), [PublicKey](../PublicKey.md "interface in java.security")

An interface for an elliptic curve public key as defined by RFC 7748.
These keys are distinct from the keys represented by `ECPublicKey`,
and they are intended for use with algorithms based on RFC 7748 such as the
XDH `KeyAgreement` algorithm.
An XEC public key is a particular point on the curve, which is represented
using only its u-coordinate as described in RFC 7748. A u-coordinate is an
element of the field of integers modulo some value that is determined by
the algorithm parameters. This field element is represented by a BigInteger
which may hold any value. That is, the BigInteger is not restricted to the
range of canonical field elements.

Since:
:   11

* ## Field Summary

  ### Fields inherited from interface java.security.[PublicKey](../PublicKey.md "interface in java.security")

  `serialVersionUID`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getU()`

  Get the u coordinate of the point.

  ### Methods inherited from interface java.security.[Key](../Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

  ### Methods inherited from interface java.security.interfaces.[XECKey](XECKey.md "interface in java.security.interfaces")

  `getParams`

* ## Method Details

  + ### getU

    [BigInteger](../../math/BigInteger.md "class in java.math") getU()

    Get the u coordinate of the point.

    Returns:
    :   the u-coordinate, represented using a BigInteger which may hold
        any value