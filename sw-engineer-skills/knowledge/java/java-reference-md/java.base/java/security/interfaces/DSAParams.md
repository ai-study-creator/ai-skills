Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface DSAParams

All Known Implementing Classes:
:   `DSAParameterSpec`

---

public interface DSAParams

Interface to a DSA-specific set of key parameters, which defines a
DSA *key family*. DSA (Digital Signature Algorithm) is defined
in NIST's FIPS-186.

Since:
:   1.1

See Also:
:   * [`DSAKey`](DSAKey.md "interface in java.security.interfaces")
    * [`Key`](../Key.md "interface in java.security")
    * [`Signature`](../Signature.md "class in java.security")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getG()`

  Returns the base, `g`.

  `BigInteger`

  `getP()`

  Returns the prime, `p`.

  `BigInteger`

  `getQ()`

  Returns the subprime, `q`.

* ## Method Details

  + ### getP

    [BigInteger](../../math/BigInteger.md "class in java.math") getP()

    Returns the prime, `p`.

    Returns:
    :   the prime, `p`.
  + ### getQ

    [BigInteger](../../math/BigInteger.md "class in java.math") getQ()

    Returns the subprime, `q`.

    Returns:
    :   the subprime, `q`.
  + ### getG

    [BigInteger](../../math/BigInteger.md "class in java.math") getG()

    Returns the base, `g`.

    Returns:
    :   the base, `g`.