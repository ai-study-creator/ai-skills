Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class RSAOtherPrimeInfo

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.RSAOtherPrimeInfo

---

public class RSAOtherPrimeInfo
extends [Object](../../lang/Object.md "class in java.lang")

This class represents the triplet (prime, exponent, and coefficient)
inside RSA's OtherPrimeInfo structure, as defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.
The ASN.1 syntax of RSA's OtherPrimeInfo is as follows:

```
 OtherPrimeInfo ::= SEQUENCE {
   prime        INTEGER,
   exponent     INTEGER,
   coefficient  INTEGER
 }
```

Since:
:   1.4

See Also:
:   * [`RSAPrivateCrtKeySpec`](RSAPrivateCrtKeySpec.md "class in java.security.spec")
    * [`RSAMultiPrimePrivateCrtKey`](../interfaces/RSAMultiPrimePrivateCrtKey.md "interface in java.security.interfaces")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RSAOtherPrimeInfo(BigInteger prime,
  BigInteger primeExponent,
  BigInteger crtCoefficient)`

  Creates a new `RSAOtherPrimeInfo`
  given the prime, primeExponent, and
  crtCoefficient as defined in PKCS#1.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final BigInteger`

  `getCrtCoefficient()`

  Returns the prime's crtCoefficient.

  `final BigInteger`

  `getExponent()`

  Returns the prime's exponent.

  `final BigInteger`

  `getPrime()`

  Returns the prime.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RSAOtherPrimeInfo

    public RSAOtherPrimeInfo([BigInteger](../../math/BigInteger.md "class in java.math") prime,
    [BigInteger](../../math/BigInteger.md "class in java.math") primeExponent,
    [BigInteger](../../math/BigInteger.md "class in java.math") crtCoefficient)

    Creates a new `RSAOtherPrimeInfo`
    given the prime, primeExponent, and
    crtCoefficient as defined in PKCS#1.

    Parameters:
    :   `prime` - the prime factor of n.
    :   `primeExponent` - the exponent.
    :   `crtCoefficient` - the Chinese Remainder Theorem
        coefficient.

    Throws:
    :   `NullPointerException` - if any of the parameters, i.e.
        `prime`, `primeExponent`,
        `crtCoefficient`, is null.
* ## Method Details

  + ### getPrime

    public final [BigInteger](../../math/BigInteger.md "class in java.math") getPrime()

    Returns the prime.

    Returns:
    :   the prime.
  + ### getExponent

    public final [BigInteger](../../math/BigInteger.md "class in java.math") getExponent()

    Returns the prime's exponent.

    Returns:
    :   the primeExponent.
  + ### getCrtCoefficient

    public final [BigInteger](../../math/BigInteger.md "class in java.math") getCrtCoefficient()

    Returns the prime's crtCoefficient.

    Returns:
    :   the crtCoefficient.