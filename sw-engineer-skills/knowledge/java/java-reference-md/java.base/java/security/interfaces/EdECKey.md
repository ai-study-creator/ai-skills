Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface EdECKey

All Known Subinterfaces:
:   `EdECPrivateKey`, `EdECPublicKey`

---

public interface EdECKey

An interface for an elliptic curve public/private key as defined by
[RFC 8032: Edwards-Curve
Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032). These keys are distinct from the
keys represented by `ECKey`, and they are intended for use with
algorithms based on RFC 8032 such as the EdDSA `Signature` algorithm.
This interface allows access to the algorithm parameters associated with
the key.

Since:
:   15

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `NamedParameterSpec`

  `getParams()`

  Returns the algorithm parameters associated with the key.

* ## Method Details

  + ### getParams

    [NamedParameterSpec](../spec/NamedParameterSpec.md "class in java.security.spec") getParams()

    Returns the algorithm parameters associated with the key.

    Returns:
    :   the associated algorithm parameters.