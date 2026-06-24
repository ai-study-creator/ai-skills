Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class RSAKeyGenParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.RSAKeyGenParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class RSAKeyGenParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the set of parameters used to generate an RSA
key pair.

Since:
:   1.3

See Also:
:   * [`KeyPairGenerator.initialize(java.security.spec.AlgorithmParameterSpec)`](../KeyPairGenerator.md#initialize(java.security.spec.AlgorithmParameterSpec))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final BigInteger`

  `F0`

  The public-exponent value F0 = 3.

  `static final BigInteger`

  `F4`

  The public exponent-value F4 = 65537.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RSAKeyGenParameterSpec(int keysize,
  BigInteger publicExponent)`

  Constructs a new `RSAKeyGenParameterSpec` object from the
  given keysize, public-exponent value, and null key parameters.

  `RSAKeyGenParameterSpec(int keysize,
  BigInteger publicExponent,
  AlgorithmParameterSpec keyParams)`

  Constructs a new `RSAKeyGenParameterSpec` object from the
  given keysize, public-exponent value, and key parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getKeyParams()`

  Returns the parameters to be associated with key.

  `int`

  `getKeysize()`

  Returns the keysize.

  `BigInteger`

  `getPublicExponent()`

  Returns the public-exponent value.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### F0

    public static final [BigInteger](../../math/BigInteger.md "class in java.math") F0

    The public-exponent value F0 = 3.
  + ### F4

    public static final [BigInteger](../../math/BigInteger.md "class in java.math") F4

    The public exponent-value F4 = 65537.
* ## Constructor Details

  + ### RSAKeyGenParameterSpec

    public RSAKeyGenParameterSpec(int keysize,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent)

    Constructs a new `RSAKeyGenParameterSpec` object from the
    given keysize, public-exponent value, and null key parameters.

    Parameters:
    :   `keysize` - the modulus size (specified in number of bits)
    :   `publicExponent` - the public exponent
  + ### RSAKeyGenParameterSpec

    public RSAKeyGenParameterSpec(int keysize,
    [BigInteger](../../math/BigInteger.md "class in java.math") publicExponent,
    [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") keyParams)

    Constructs a new `RSAKeyGenParameterSpec` object from the
    given keysize, public-exponent value, and key parameters.

    Parameters:
    :   `keysize` - the modulus size (specified in number of bits)
    :   `publicExponent` - the public exponent
    :   `keyParams` - the key parameters, may be null

    Since:
    :   11
* ## Method Details

  + ### getKeysize

    public int getKeysize()

    Returns the keysize.

    Returns:
    :   the keysize.
  + ### getPublicExponent

    public [BigInteger](../../math/BigInteger.md "class in java.math") getPublicExponent()

    Returns the public-exponent value.

    Returns:
    :   the public-exponent value.
  + ### getKeyParams

    public [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") getKeyParams()

    Returns the parameters to be associated with key.

    Returns:
    :   the associated parameters, may be null if
        not present

    Since:
    :   11