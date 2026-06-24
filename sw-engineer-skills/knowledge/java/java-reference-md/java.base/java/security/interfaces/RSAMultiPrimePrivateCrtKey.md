Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface RSAMultiPrimePrivateCrtKey

All Superinterfaces:
:   `Destroyable`, `Key`, `PrivateKey`, `RSAKey`, `RSAPrivateKey`, `Serializable`

---

public interface RSAMultiPrimePrivateCrtKey
extends [RSAPrivateKey](RSAPrivateKey.md "interface in java.security.interfaces")

The interface to an RSA multi-prime private key, as defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard,
using the *Chinese Remainder Theorem* (CRT) information values.

Since:
:   1.4

See Also:
:   * [`RSAPrivateKeySpec`](../spec/RSAPrivateKeySpec.md "class in java.security.spec")
    * [`RSAMultiPrimePrivateCrtKeySpec`](../spec/RSAMultiPrimePrivateCrtKeySpec.md "class in java.security.spec")
    * [`RSAPrivateKey`](RSAPrivateKey.md "interface in java.security.interfaces")
    * [`RSAPrivateCrtKey`](RSAPrivateCrtKey.md "interface in java.security.interfaces")

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

  `getCrtCoefficient()`

  Returns the crtCoefficient.

  `RSAOtherPrimeInfo[]`

  `getOtherPrimeInfo()`

  Returns the otherPrimeInfo or null if there are only
  two prime factors (p and q).

  `BigInteger`

  `getPrimeExponentP()`

  Returns the primeExponentP.

  `BigInteger`

  `getPrimeExponentQ()`

  Returns the primeExponentQ.

  `BigInteger`

  `getPrimeP()`

  Returns the primeP.

  `BigInteger`

  `getPrimeQ()`

  Returns the primeQ.

  `BigInteger`

  `getPublicExponent()`

  Returns the public exponent.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface java.security.[Key](../Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

  ### Methods inherited from interface java.security.interfaces.[RSAKey](RSAKey.md "interface in java.security.interfaces")

  `getModulus, getParams`

  ### Methods inherited from interface java.security.interfaces.[RSAPrivateKey](RSAPrivateKey.md "interface in java.security.interfaces")

  `getPrivateExponent`

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
    :   - [Constant Field Values](../../../../constant-values.md#java.security.interfaces.RSAMultiPrimePrivateCrtKey.serialVersionUID)
* ## Method Details

  + ### getPublicExponent

    [BigInteger](../../math/BigInteger.md "class in java.math") getPublicExponent()

    Returns the public exponent.

    Returns:
    :   the public exponent.
  + ### getPrimeP

    [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeP()

    Returns the primeP.

    Returns:
    :   the primeP.
  + ### getPrimeQ

    [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeQ()

    Returns the primeQ.

    Returns:
    :   the primeQ.
  + ### getPrimeExponentP

    [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeExponentP()

    Returns the primeExponentP.

    Returns:
    :   the primeExponentP.
  + ### getPrimeExponentQ

    [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeExponentQ()

    Returns the primeExponentQ.

    Returns:
    :   the primeExponentQ.
  + ### getCrtCoefficient

    [BigInteger](../../math/BigInteger.md "class in java.math") getCrtCoefficient()

    Returns the crtCoefficient.

    Returns:
    :   the crtCoefficient.
  + ### getOtherPrimeInfo

    [RSAOtherPrimeInfo](../spec/RSAOtherPrimeInfo.md "class in java.security.spec")[] getOtherPrimeInfo()

    Returns the otherPrimeInfo or null if there are only
    two prime factors (p and q).

    Returns:
    :   the otherPrimeInfo.