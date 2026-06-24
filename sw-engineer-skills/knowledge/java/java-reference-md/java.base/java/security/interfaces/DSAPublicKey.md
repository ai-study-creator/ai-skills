Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface DSAPublicKey

All Superinterfaces:
:   `DSAKey`, `Key`, `PublicKey`, `Serializable`

---

public interface DSAPublicKey
extends [DSAKey](DSAKey.md "interface in java.security.interfaces"), [PublicKey](../PublicKey.md "interface in java.security")

The interface to a DSA public key. DSA (Digital Signature Algorithm)
is defined in NIST's FIPS-186.

Since:
:   1.1

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`Signature`](../Signature.md "class in java.security")
    * [`DSAKey`](DSAKey.md "interface in java.security.interfaces")
    * [`DSAPrivateKey`](DSAPrivateKey.md "interface in java.security.interfaces")

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

  Returns the value of the public key, `y`.

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
    :   - [Constant Field Values](../../../../constant-values.md#java.security.interfaces.DSAPublicKey.serialVersionUID)
* ## Method Details

  + ### getY

    [BigInteger](../../math/BigInteger.md "class in java.math") getY()

    Returns the value of the public key, `y`.

    Returns:
    :   the value of the public key, `y`.