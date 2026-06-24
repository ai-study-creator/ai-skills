Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class RSAPrivateCrtKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.spec.RSAPrivateKeySpec](RSAPrivateKeySpec.md "class in java.security.spec")

java.security.spec.RSAPrivateCrtKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class RSAPrivateCrtKeySpec
extends [RSAPrivateKeySpec](RSAPrivateKeySpec.md "class in java.security.spec")

This class specifies an RSA private key, as defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard,
using the Chinese Remainder Theorem (CRT) information values for efficiency.

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")
    * [`RSAPrivateKeySpec`](RSAPrivateKeySpec.md "class in java.security.spec")
    * [`RSAPublicKeySpec`](RSAPublicKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RSAPrivateCrtKeySpec(BigInteger modulus,
  BigInteger publicExponent,
  BigInteger privateExponent,
  BigInteger primeP,
  BigInteger primeQ,
  BigInteger primeExponentP,
  BigInteger primeExponentQ,
  BigInteger crtCoefficient)`

  Creates a new `RSAPrivateCrtKeySpec`.

  `RSAPrivateCrtKeySpec(BigInteger modulus,
  BigInteger publicExponent,
  BigInteger privateExponent,
  BigInteger primeP,
  BigInteger primeQ,
  BigInteger primeExponentP,
  BigInteger primeExponentQ,
  BigInteger crtCoefficient,
  AlgorithmParameterSpec keyParams)`

  Creates a new `RSAPrivateCrtKeySpec` with additional
  key parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getCrtCoefficient()`

  Returns the crtCoefficient.

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

  ### Methods inherited from class java.security.spec.[RSAPrivateKeySpec](RSAPrivateKeySpec.md "class in java.security.spec")

  `getModulus, getParams, getPrivateExponent`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RSAPrivateCrtKeySpec

    public RSAPrivateCrtKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") privateExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") crtCoefficient)

    Creates a new `RSAPrivateCrtKeySpec`.

    Parameters:
    :   `modulus` - the modulus n
    :   `publicExponent` - the public exponent e
    :   `privateExponent` - the private exponent d
    :   `primeP` - the prime factor p of n
    :   `primeQ` - the prime factor q of n
    :   `primeExponentP` - this is d mod (p-1)
    :   `primeExponentQ` - this is d mod (q-1)
    :   `crtCoefficient` - the Chinese Remainder Theorem
        coefficient q-1 mod p
  + ### RSAPrivateCrtKeySpec

    public RSAPrivateCrtKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") privateExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") crtCoefficient,
    [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") keyParams)

    Creates a new `RSAPrivateCrtKeySpec` with additional
    key parameters.

    Parameters:
    :   `modulus` - the modulus n
    :   `publicExponent` - the public exponent e
    :   `privateExponent` - the private exponent d
    :   `primeP` - the prime factor p of n
    :   `primeQ` - the prime factor q of n
    :   `primeExponentP` - this is d mod (p-1)
    :   `primeExponentQ` - this is d mod (q-1)
    :   `crtCoefficient` - the Chinese Remainder Theorem
        coefficient q-1 mod p
    :   `keyParams` - the parameters associated with key

    Since:
    :   11
* ## Method Details

  + ### getPublicExponent

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPublicExponent()

    Returns the public exponent.

    Returns:
    :   the public exponent
  + ### getPrimeP

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeP()

    Returns the primeP.

    Returns:
    :   the primeP
  + ### getPrimeQ

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeQ()

    Returns the primeQ.

    Returns:
    :   the primeQ
  + ### getPrimeExponentP

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeExponentP()

    Returns the primeExponentP.

    Returns:
    :   the primeExponentP
  + ### getPrimeExponentQ

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeExponentQ()

    Returns the primeExponentQ.

    Returns:
    :   the primeExponentQ
  + ### getCrtCoefficient

    public [BigInteger](../../math/BigInteger.md "class in java.math") getCrtCoefficient()

    Returns the crtCoefficient.

    Returns:
    :   the crtCoefficient