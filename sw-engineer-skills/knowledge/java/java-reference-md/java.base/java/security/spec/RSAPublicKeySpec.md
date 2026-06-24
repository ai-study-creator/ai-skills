Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class RSAPublicKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.RSAPublicKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class RSAPublicKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

This class specifies an RSA public key.

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`X509EncodedKeySpec`](X509EncodedKeySpec.md "class in java.security.spec")
    * [`RSAPrivateKeySpec`](RSAPrivateKeySpec.md "class in java.security.spec")
    * [`RSAPrivateCrtKeySpec`](RSAPrivateCrtKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RSAPublicKeySpec(BigInteger modulus,
  BigInteger publicExponent)`

  Creates a new RSAPublicKeySpec.

  `RSAPublicKeySpec(BigInteger modulus,
  BigInteger publicExponent,
  AlgorithmParameterSpec params)`

  Creates a new RSAPublicKeySpec with additional key parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BigInteger`

  `getModulus()`

  Returns the modulus.

  `AlgorithmParameterSpec`

  `getParams()`

  Returns the parameters associated with this key, may be null if not
  present.

  `BigInteger`

  `getPublicExponent()`

  Returns the public exponent.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RSAPublicKeySpec

    public RSAPublicKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent)

    Creates a new RSAPublicKeySpec.

    Parameters:
    :   `modulus` - the modulus
    :   `publicExponent` - the public exponent
  + ### RSAPublicKeySpec

    public RSAPublicKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent,
    [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") params)

    Creates a new RSAPublicKeySpec with additional key parameters.

    Parameters:
    :   `modulus` - the modulus
    :   `publicExponent` - the public exponent
    :   `params` - the parameters associated with this key, may be null

    Since:
    :   11
* ## Method Details

  + ### getModulus

    public [BigInteger](../../math/BigInteger.md "class in java.math") getModulus()

    Returns the modulus.

    Returns:
    :   the modulus
  + ### getPublicExponent

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPublicExponent()

    Returns the public exponent.

    Returns:
    :   the public exponent
  + ### getParams

    public [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") getParams()

    Returns the parameters associated with this key, may be null if not
    present.

    Returns:
    :   the parameters associated with this key

    Since:
    :   11