Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface RSAPrivateKey

All Superinterfaces:
:   `Destroyable`, `Key`, `PrivateKey`, `RSAKey`, `Serializable`

All Known Subinterfaces:
:   `RSAMultiPrimePrivateCrtKey`, `RSAPrivateCrtKey`

---

public interface RSAPrivateKey
extends [PrivateKey](../PrivateKey.md "interface in java.security"), [RSAKey](RSAKey.md "interface in java.security.interfaces")

The interface to an RSA private key.

Since:
:   1.2

See Also:
:   * [`RSAPrivateCrtKey`](RSAPrivateCrtKey.md "interface in java.security.interfaces")

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

  `getPrivateExponent()`

  Returns the private exponent.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

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
    :   - [Constant Field Values](../../../../constant-values.md#java.security.interfaces.RSAPrivateKey.serialVersionUID)
* ## Method Details

  + ### getPrivateExponent

    [BigInteger](../../math/BigInteger.md "class in java.math") getPrivateExponent()

    Returns the private exponent.

    Returns:
    :   the private exponent