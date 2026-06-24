Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface XECKey

All Known Subinterfaces:
:   `XECPrivateKey`, `XECPublicKey`

---

public interface XECKey

An interface for an elliptic curve public/private key as defined by
RFC 7748. These keys are distinct from the keys represented by
`ECKey`, and they are intended for use with algorithms based on RFC
7748 such as the XDH `KeyAgreement` algorithm. This interface allows
access to the algorithm parameters associated with the key.

Since:
:   11

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getParams()`

  Returns the algorithm parameters associated
  with the key.

* ## Method Details

  + ### getParams

    [AlgorithmParameterSpec](../spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParams()

    Returns the algorithm parameters associated
    with the key.

    Returns:
    :   the associated algorithm parameters