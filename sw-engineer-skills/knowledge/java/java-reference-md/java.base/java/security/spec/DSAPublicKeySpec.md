Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class DSAPublicKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.DSAPublicKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class DSAPublicKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

This class specifies a DSA public key with its associated parameters.

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`DSAPrivateKeySpec`](DSAPrivateKeySpec.md "class in java.security.spec")
    * [`X509EncodedKeySpec`](X509EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DSAPublicKeySpec(BigInteger y,
  BigInteger p,
  BigInteger q,
  BigInteger g)`

  Creates a new DSAPublicKeySpec with the specified parameter values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getG()`

  Returns the base `g`.

  `BigInteger`

  `getP()`

  Returns the prime `p`.

  `BigInteger`

  `getQ()`

  Returns the sub-prime `q`.

  `BigInteger`

  `getY()`

  Returns the public key `y`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DSAPublicKeySpec

    public DSAPublicKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") y,
    [BigInteger](../../math/BigInteger.md "class in java.math") p,
    [BigInteger](../../math/BigInteger.md "class in java.math") q,
    [BigInteger](../../math/BigInteger.md "class in java.math") g)

    Creates a new DSAPublicKeySpec with the specified parameter values.

    Parameters:
    :   `y` - the public key.
    :   `p` - the prime.
    :   `q` - the sub-prime.
    :   `g` - the base.
* ## Method Details

  + ### getY

    public [BigInteger](../../math/BigInteger.md "class in java.math") getY()

    Returns the public key `y`.

    Returns:
    :   the public key `y`.
  + ### getP

    public [BigInteger](../../math/BigInteger.md "class in java.math") getP()

    Returns the prime `p`.

    Returns:
    :   the prime `p`.
  + ### getQ

    public [BigInteger](../../math/BigInteger.md "class in java.math") getQ()

    Returns the sub-prime `q`.

    Returns:
    :   the sub-prime `q`.
  + ### getG

    public [BigInteger](../../math/BigInteger.md "class in java.math") getG()

    Returns the base `g`.

    Returns:
    :   the base `g`.