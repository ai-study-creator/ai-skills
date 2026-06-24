Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class DHPrivateKeySpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.DHPrivateKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class DHPrivateKeySpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [KeySpec](../../../java/security/spec/KeySpec.md "interface in java.security.spec")

This class specifies a Diffie-Hellman private key with its associated
parameters.

Note that this class does not perform any validation on specified
parameters. Thus, the specified values are returned directly even
if they are null.

Since:
:   1.4

See Also:
:   * [`DHPublicKeySpec`](DHPublicKeySpec.md "class in javax.crypto.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DHPrivateKeySpec(BigInteger x,
  BigInteger p,
  BigInteger g)`

  Constructor that takes a private value `x`, a prime
  modulus `p`, and a base generator `g`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getG()`

  Returns the base generator `g`.

  `BigInteger`

  `getP()`

  Returns the prime modulus `p`.

  `BigInteger`

  `getX()`

  Returns the private value `x`.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DHPrivateKeySpec

    public DHPrivateKeySpec([BigInteger](../../../java/math/BigInteger.md "class in java.math") x,
    [BigInteger](../../../java/math/BigInteger.md "class in java.math") p,
    [BigInteger](../../../java/math/BigInteger.md "class in java.math") g)

    Constructor that takes a private value `x`, a prime
    modulus `p`, and a base generator `g`.

    Parameters:
    :   `x` - private value x
    :   `p` - prime modulus p
    :   `g` - base generator g
* ## Method Details

  + ### getX

    public [BigInteger](../../../java/math/BigInteger.md "class in java.math") getX()

    Returns the private value `x`.

    Returns:
    :   the private value `x`
  + ### getP

    public [BigInteger](../../../java/math/BigInteger.md "class in java.math") getP()

    Returns the prime modulus `p`.

    Returns:
    :   the prime modulus `p`
  + ### getG

    public [BigInteger](../../../java/math/BigInteger.md "class in java.math") getG()

    Returns the base generator `g`.

    Returns:
    :   the base generator `g`