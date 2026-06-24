Module [java.base](../../../module-summary.md)

Package [javax.crypto.interfaces](package-summary.md)

# Interface DHKey

All Known Subinterfaces:
:   `DHPrivateKey`, `DHPublicKey`

---

public interface DHKey

The interface to a Diffie-Hellman key.

Since:
:   1.4

See Also:
:   * [`DHParameterSpec`](../spec/DHParameterSpec.md "class in javax.crypto.spec")
    * [`DHPublicKey`](DHPublicKey.md "interface in javax.crypto.interfaces")
    * [`DHPrivateKey`](DHPrivateKey.md "interface in javax.crypto.interfaces")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DHParameterSpec`

  `getParams()`

  Returns the key parameters.

* ## Method Details

  + ### getParams

    [DHParameterSpec](../spec/DHParameterSpec.md "class in javax.crypto.spec") getParams()

    Returns the key parameters.

    Returns:
    :   the key parameters