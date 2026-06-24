Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class DSAPrivateKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.DSAPrivateKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class DSAPrivateKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

This class specifies a DSA private key with its associated parameters.

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`DSAPublicKeySpec`](DSAPublicKeySpec.md "class in java.security.spec")
    * [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DSAPrivateKeySpec(BigInteger x,
  BigInteger p,
  BigInteger q,
  BigInteger g)`

  Creates a new DSAPrivateKeySpec with the specified parameter values.
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

  `getX()`

  Returns the private key `x`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DSAPrivateKeySpec

    public DSAPrivateKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") x,
    [BigInteger](../../math/BigInteger.md "class in java.math") p,
    [BigInteger](../../math/BigInteger.md "class in java.math") q,
    [BigInteger](../../math/BigInteger.md "class in java.math") g)

    Creates a new DSAPrivateKeySpec with the specified parameter values.

    Parameters:
    :   `x` - the private key.
    :   `p` - the prime.
    :   `q` - the sub-prime.
    :   `g` - the base.
* ## Method Details

  + ### getX

    public [BigInteger](../../math/BigInteger.md "class in java.math") getX()

    Returns the private key `x`.

    Returns:
    :   the private key `x`.
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