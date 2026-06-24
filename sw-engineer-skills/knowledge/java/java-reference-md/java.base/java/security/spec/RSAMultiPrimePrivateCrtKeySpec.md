Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class RSAMultiPrimePrivateCrtKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.spec.RSAPrivateKeySpec](RSAPrivateKeySpec.md "class in java.security.spec")

java.security.spec.RSAMultiPrimePrivateCrtKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class RSAMultiPrimePrivateCrtKeySpec
extends [RSAPrivateKeySpec](RSAPrivateKeySpec.md "class in java.security.spec")

This class specifies an RSA multi-prime private key, as defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard
using the Chinese Remainder Theorem (CRT) information values
for efficiency.

Since:
:   1.4

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")
    * [`RSAPrivateKeySpec`](RSAPrivateKeySpec.md "class in java.security.spec")
    * [`RSAPublicKeySpec`](RSAPublicKeySpec.md "class in java.security.spec")
    * [`RSAOtherPrimeInfo`](RSAOtherPrimeInfo.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RSAMultiPrimePrivateCrtKeySpec(BigInteger modulus,
  BigInteger publicExponent,
  BigInteger privateExponent,
  BigInteger primeP,
  BigInteger primeQ,
  BigInteger primeExponentP,
  BigInteger primeExponentQ,
  BigInteger crtCoefficient,
  RSAOtherPrimeInfo[] otherPrimeInfo)`

  Creates a new `RSAMultiPrimePrivateCrtKeySpec`.

  `RSAMultiPrimePrivateCrtKeySpec(BigInteger modulus,
  BigInteger publicExponent,
  BigInteger privateExponent,
  BigInteger primeP,
  BigInteger primeQ,
  BigInteger primeExponentP,
  BigInteger primeExponentQ,
  BigInteger crtCoefficient,
  RSAOtherPrimeInfo[] otherPrimeInfo,
  AlgorithmParameterSpec keyParams)`

  Creates a new `RSAMultiPrimePrivateCrtKeySpec` with additional
  key parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getCrtCoefficient()`

  Returns the crtCoefficient.

  `RSAOtherPrimeInfo[]`

  `getOtherPrimeInfo()`

  Returns a copy of the otherPrimeInfo or null if there are
  only two prime factors (p and q).

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

  + ### RSAMultiPrimePrivateCrtKeySpec

    public RSAMultiPrimePrivateCrtKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") privateExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") crtCoefficient,
    [RSAOtherPrimeInfo](RSAOtherPrimeInfo.md "class in java.security.spec")[] otherPrimeInfo)

    Creates a new `RSAMultiPrimePrivateCrtKeySpec`.

    Note that the contents of `otherPrimeInfo`
    are copied to protect against subsequent modification when
    constructing this object.

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
    :   `otherPrimeInfo` - triplets of the rest of primes, null can be
        specified if there are only two prime factors
        (p and q)

    Throws:
    :   `NullPointerException` - if any of the specified parameters
        except `otherPrimeInfo` is null
    :   `IllegalArgumentException` - if an empty, i.e. 0-length,
        `otherPrimeInfo` is specified
  + ### RSAMultiPrimePrivateCrtKeySpec

    public RSAMultiPrimePrivateCrtKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") privateExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentP,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponentQ,
    [BigInteger](../../math/BigInteger.md "class in java.math") crtCoefficient,
    [RSAOtherPrimeInfo](RSAOtherPrimeInfo.md "class in java.security.spec")[] otherPrimeInfo,
    [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") keyParams)

    Creates a new `RSAMultiPrimePrivateCrtKeySpec` with additional
    key parameters.

    Note that the contents of `otherPrimeInfo`
    are copied to protect against subsequent modification when
    constructing this object.

    Parameters:
    :   `modulus` - the modulus n
    :   `publicExponent` - the public exponent e
    :   `privateExponent` - the private exponent d
    :   `primeP` - the prime factor p of n
    :   `primeQ` - the prime factor q of n
    :   `primeExponentP` - this is d mod (p-1)
    :   `primeExponentQ` - this is d mod (q-1)
    :   `crtCoefficient` - the Chinese Remainder Theorem coefficient
        q-1 mod p
    :   `otherPrimeInfo` - triplets of the rest of primes, null can be
        specified if there are only two prime factors
        (p and q)
    :   `keyParams` - the parameters associated with key

    Throws:
    :   `NullPointerException` - if any of the specified parameters
        except `otherPrimeInfo` and `keyParams`
        is null
    :   `IllegalArgumentException` - if an empty, i.e. 0-length,
        `otherPrimeInfo` is specified

    Since:
    :   11
* ## Method Details

  + ### getPublicExponent

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPublicExponent()

    Returns the public exponent.

    Returns:
    :   the public exponent.
  + ### getPrimeP

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeP()

    Returns the primeP.

    Returns:
    :   the primeP.
  + ### getPrimeQ

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeQ()

    Returns the primeQ.

    Returns:
    :   the primeQ.
  + ### getPrimeExponentP

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeExponentP()

    Returns the primeExponentP.

    Returns:
    :   the primeExponentP.
  + ### getPrimeExponentQ

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrimeExponentQ()

    Returns the primeExponentQ.

    Returns:
    :   the primeExponentQ.
  + ### getCrtCoefficient

    public [BigInteger](../../math/BigInteger.md "class in java.math") getCrtCoefficient()

    Returns the crtCoefficient.

    Returns:
    :   the crtCoefficient.
  + ### getOtherPrimeInfo

    public [RSAOtherPrimeInfo](RSAOtherPrimeInfo.md "class in java.security.spec")[] getOtherPrimeInfo()

    Returns a copy of the otherPrimeInfo or null if there are
    only two prime factors (p and q).

    Returns:
    :   the otherPrimeInfo. Returns a new array each time this method
        is called.