Module [java.base](../../../module-summary.md)

Package [javax.crypto.interfaces](package-summary.md)

# Interface DHPrivateKey

All Superinterfaces:
:   `Destroyable`, `DHKey`, `Key`, `PrivateKey`, `Serializable`

---

public interface DHPrivateKey
extends [DHKey](DHKey.md "interface in javax.crypto.interfaces"), [PrivateKey](../../../java/security/PrivateKey.md "interface in java.security")

The interface to a Diffie-Hellman private key.

Since:
:   1.4

See Also:
:   * [`DHKey`](DHKey.md "interface in javax.crypto.interfaces")
    * [`DHPublicKey`](DHPublicKey.md "interface in javax.crypto.interfaces")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final long`

  `serialVersionUID`

  Deprecated.

  A `serialVersionUID` field in an interface is
  ineffectual.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getX()`

  Returns the private value, `x`.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface javax.crypto.interfaces.[DHKey](DHKey.md "interface in javax.crypto.interfaces")

  `getParams`

  ### Methods inherited from interface java.security.[Key](../../../java/security/Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    The class fingerprint that is set to indicate serialization
    compatibility since J2SE 1.4.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.crypto.interfaces.DHPrivateKey.serialVersionUID)
* ## Method Details

  + ### getX

    [BigInteger](../../../java/math/BigInteger.md "class in java.math") getX()

    Returns the private value, `x`.

    Returns:
    :   the private value, `x`