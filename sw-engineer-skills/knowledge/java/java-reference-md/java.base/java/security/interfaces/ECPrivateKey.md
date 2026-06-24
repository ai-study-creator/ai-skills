Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface ECPrivateKey

All Superinterfaces:
:   `Destroyable`, `ECKey`, `Key`, `PrivateKey`, `Serializable`

---

public interface ECPrivateKey
extends [PrivateKey](../PrivateKey.md "interface in java.security"), [ECKey](ECKey.md "interface in java.security.interfaces")

The interface to an elliptic curve (EC) private key.

Since:
:   1.5

See Also:
:   * [`PrivateKey`](../PrivateKey.md "interface in java.security")
    * [`ECKey`](ECKey.md "interface in java.security.interfaces")

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

  `getS()`

  Returns the private value S.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface java.security.interfaces.[ECKey](ECKey.md "interface in java.security.interfaces")

  `getParams`

  ### Methods inherited from interface java.security.[Key](../Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    The class fingerprint that is set to indicate
    serialization compatibility.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.security.interfaces.ECPrivateKey.serialVersionUID)
* ## Method Details

  + ### getS

    [BigInteger](../../math/BigInteger.md "class in java.math") getS()

    Returns the private value S.

    Returns:
    :   the private value S.