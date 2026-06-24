Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface DSAPrivateKey

All Superinterfaces:
:   `Destroyable`, `DSAKey`, `Key`, `PrivateKey`, `Serializable`

---

public interface DSAPrivateKey
extends [DSAKey](DSAKey.md "interface in java.security.interfaces"), [PrivateKey](../PrivateKey.md "interface in java.security")

The standard interface to a DSA private key. DSA (Digital Signature
Algorithm) is defined in NIST's FIPS-186.

Since:
:   1.1

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`Signature`](../Signature.md "class in java.security")
    * [`DSAKey`](DSAKey.md "interface in java.security.interfaces")
    * [`DSAPublicKey`](DSAPublicKey.md "interface in java.security.interfaces")

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

  Returns the value of the private key, `x`.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface java.security.interfaces.[DSAKey](DSAKey.md "interface in java.security.interfaces")

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
    serialization compatibility with a previous
    version of the class.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.security.interfaces.DSAPrivateKey.serialVersionUID)
* ## Method Details

  + ### getX

    [BigInteger](../../math/BigInteger.md "class in java.math") getX()

    Returns the value of the private key, `x`.

    Returns:
    :   the value of the private key, `x`.