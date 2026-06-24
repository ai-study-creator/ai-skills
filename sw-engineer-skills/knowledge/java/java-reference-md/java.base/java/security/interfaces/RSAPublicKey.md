Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface RSAPublicKey

All Superinterfaces:
:   `Key`, `PublicKey`, `RSAKey`, `Serializable`

---

public interface RSAPublicKey
extends [PublicKey](../PublicKey.md "interface in java.security"), [RSAKey](RSAKey.md "interface in java.security.interfaces")

The interface to an RSA public key.

Since:
:   1.2

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

  `getPublicExponent()`

  Returns the public exponent.

  ### Methods inherited from interface java.security.[Key](../Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

  ### Methods inherited from interface java.security.interfaces.[RSAKey](RSAKey.md "interface in java.security.interfaces")

  `getModulus, getParams`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    The type fingerprint that is set to indicate
    serialization compatibility with a previous
    version of the type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.security.interfaces.RSAPublicKey.serialVersionUID)
* ## Method Details

  + ### getPublicExponent

    [BigInteger](../../math/BigInteger.md "class in java.math") getPublicExponent()

    Returns the public exponent.

    Returns:
    :   the public exponent