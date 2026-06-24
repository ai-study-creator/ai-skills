Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface ECPublicKey

All Superinterfaces:
:   `ECKey`, `Key`, `PublicKey`, `Serializable`

---

public interface ECPublicKey
extends [PublicKey](../PublicKey.md "interface in java.security"), [ECKey](ECKey.md "interface in java.security.interfaces")

The interface to an elliptic curve (EC) public key.

Since:
:   1.5

See Also:
:   * [`PublicKey`](../PublicKey.md "interface in java.security")
    * [`ECKey`](ECKey.md "interface in java.security.interfaces")
    * [`ECPoint`](../spec/ECPoint.md "class in java.security.spec")

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

  `ECPoint`

  `getW()`

  Returns the public point W.

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
    :   - [Constant Field Values](../../../../constant-values.md#java.security.interfaces.ECPublicKey.serialVersionUID)
* ## Method Details

  + ### getW

    [ECPoint](../spec/ECPoint.md "class in java.security.spec") getW()

    Returns the public point W.

    Returns:
    :   the public point W.