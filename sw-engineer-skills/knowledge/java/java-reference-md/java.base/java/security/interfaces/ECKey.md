Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface ECKey

All Known Subinterfaces:
:   `ECPrivateKey`, `ECPublicKey`

---

public interface ECKey

The interface to an elliptic curve (EC) key.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ECParameterSpec`

  `getParams()`

  Returns the domain parameters associated
  with this key.

* ## Method Details

  + ### getParams

    [ECParameterSpec](../spec/ECParameterSpec.md "class in java.security.spec") getParams()

    Returns the domain parameters associated
    with this key. The domain parameters are
    either explicitly specified or implicitly
    created during key generation.

    Returns:
    :   the associated domain parameters.