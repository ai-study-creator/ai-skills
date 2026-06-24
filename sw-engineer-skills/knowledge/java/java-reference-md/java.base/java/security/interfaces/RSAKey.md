Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface RSAKey

All Known Subinterfaces:
:   `RSAMultiPrimePrivateCrtKey`, `RSAPrivateCrtKey`, `RSAPrivateKey`, `RSAPublicKey`

---

public interface RSAKey

The interface to a public or private key in
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard,
such as those for RSA, or RSASSA-PSS algorithms.

Since:
:   1.3

See Also:
:   * [`RSAPublicKey`](RSAPublicKey.md "interface in java.security.interfaces")
    * [`RSAPrivateKey`](RSAPrivateKey.md "interface in java.security.interfaces")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getModulus()`

  Returns the modulus.

  `default AlgorithmParameterSpec`

  `getParams()`

  Returns the parameters associated with this key.

* ## Method Details

  + ### getModulus

    [BigInteger](../../math/BigInteger.md "class in java.math") getModulus()

    Returns the modulus.

    Returns:
    :   the modulus
  + ### getParams

    default [AlgorithmParameterSpec](../spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParams()

    Returns the parameters associated with this key.
    The parameters are optional and may be either
    explicitly specified or implicitly created during
    key pair generation.

    Returns:
    :   the associated parameters, may be null

    Since:
    :   11