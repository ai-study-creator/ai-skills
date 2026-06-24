Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class DHPublicKeySpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.DHPublicKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class DHPublicKeySpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [KeySpec](../../../java/security/spec/KeySpec.md "interface in java.security.spec")

This class specifies a Diffie-Hellman public key with its associated
parameters.

Note that this class does not perform any validation on specified
parameters. Thus, the specified values are returned directly even
if they are null.

Since:
:   1.4

See Also:
:   * [`DHPrivateKeySpec`](DHPrivateKeySpec.md "class in javax.crypto.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DHPublicKeySpec(BigInteger y,
  BigInteger p,
  BigInteger g)`

  Constructor that takes a public value `y`, a prime
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

  `getY()`

  Returns the public value `y`.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DHPublicKeySpec

    public DHPublicKeySpec([BigInteger](../../../java/math/BigInteger.md "class in java.math") y,
    [BigInteger](../../../java/math/BigInteger.md "class in java.math") p,
    [BigInteger](../../../java/math/BigInteger.md "class in java.math") g)

    Constructor that takes a public value `y`, a prime
    modulus `p`, and a base generator `g`.

    Parameters:
    :   `y` - public value y
    :   `p` - prime modulus p
    :   `g` - base generator g
* ## Method Details

  + ### getY

    public [BigInteger](../../../java/math/BigInteger.md "class in java.math") getY()

    Returns the public value `y`.

    Returns:
    :   the public value `y`
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