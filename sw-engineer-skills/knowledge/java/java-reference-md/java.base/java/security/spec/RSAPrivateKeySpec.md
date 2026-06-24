Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class RSAPrivateKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.RSAPrivateKeySpec

All Implemented Interfaces:
:   `KeySpec`

Direct Known Subclasses:
:   `RSAMultiPrimePrivateCrtKeySpec`, `RSAPrivateCrtKeySpec`

---

public class RSAPrivateKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

This class specifies an RSA private key.

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")
    * [`RSAPublicKeySpec`](RSAPublicKeySpec.md "class in java.security.spec")
    * [`RSAPrivateCrtKeySpec`](RSAPrivateCrtKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RSAPrivateKeySpec(BigInteger modulus,
  BigInteger privateExponent)`

  Creates a new RSAPrivateKeySpec.

  `RSAPrivateKeySpec(BigInteger modulus,
  BigInteger privateExponent,
  AlgorithmParameterSpec params)`

  Creates a new RSAPrivateKeySpec with additional key parameters.
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

  `getPrivateExponent()`

  Returns the private exponent.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RSAPrivateKeySpec

    public RSAPrivateKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") privateExponent)

    Creates a new RSAPrivateKeySpec.

    Parameters:
    :   `modulus` - the modulus
    :   `privateExponent` - the private exponent
  + ### RSAPrivateKeySpec

    public RSAPrivateKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") modulus,
    [BigInteger](../../math/BigInteger.md "class in java.math") privateExponent,
    [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") params)

    Creates a new RSAPrivateKeySpec with additional key parameters.

    Parameters:
    :   `modulus` - the modulus
    :   `privateExponent` - the private exponent
    :   `params` - the parameters associated with this key, may be null

    Since:
    :   11
* ## Method Details

  + ### getModulus

    public [BigInteger](../../math/BigInteger.md "class in java.math") getModulus()

    Returns the modulus.

    Returns:
    :   the modulus
  + ### getPrivateExponent

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPrivateExponent()

    Returns the private exponent.

    Returns:
    :   the private exponent
  + ### getParams

    public [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") getParams()

    Returns the parameters associated with this key, may be null if not
    present.

    Returns:
    :   the parameters associated with this key

    Since:
    :   11