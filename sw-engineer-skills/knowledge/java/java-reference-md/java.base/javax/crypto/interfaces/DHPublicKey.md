Module [java.base](../../../module-summary.md)

Package [javax.crypto.interfaces](package-summary.md)

# Interface DHPublicKey

All Superinterfaces:
:   `DHKey`, `Key`, `PublicKey`, `Serializable`

---

public interface DHPublicKey
extends [DHKey](DHKey.md "interface in javax.crypto.interfaces"), [PublicKey](../../../java/security/PublicKey.md "interface in java.security")

The interface to a Diffie-Hellman public key.

Since:
:   1.4

See Also:
:   * [`DHKey`](DHKey.md "interface in javax.crypto.interfaces")
    * [`DHPrivateKey`](DHPrivateKey.md "interface in javax.crypto.interfaces")

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

  `getY()`

  Returns the public value, `y`.

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
    :   - [Constant Field Values](../../../../constant-values.md#javax.crypto.interfaces.DHPublicKey.serialVersionUID)
* ## Method Details

  + ### getY

    [BigInteger](../../../java/math/BigInteger.md "class in java.math") getY()

    Returns the public value, `y`.

    Returns:
    :   the public value, `y`