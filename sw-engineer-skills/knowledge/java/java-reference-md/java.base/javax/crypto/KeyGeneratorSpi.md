Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class KeyGeneratorSpi

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.KeyGeneratorSpi

---

public abstract class KeyGeneratorSpi
extends [Object](../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `KeyGenerator` class.
All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a key generator for a particular algorithm.

In case the client does not explicitly initialize the KeyGenerator
(via a call to an `init` method), each provider must
supply (and document) a default initialization.
See the Keysize Restriction sections of the
document for information on the KeyGenerator defaults used by
JDK providers.
However, note that defaults may vary across different providers.
Additionally, the default value for a provider may change in a future
version. Therefore, it is recommended to explicitly initialize the
KeyGenerator instead of relying on provider-specific defaults.

Since:
:   1.4

See Also:
:   * [`SecretKey`](SecretKey.md "interface in javax.crypto")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyGeneratorSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract SecretKey`

  `engineGenerateKey()`

  Generates a secret key.

  `protected abstract void`

  `engineInit(int keysize,
  SecureRandom random)`

  Initializes this key generator for a certain keysize, using the given
  source of randomness.

  `protected abstract void`

  `engineInit(SecureRandom random)`

  Initializes the key generator.

  `protected abstract void`

  `engineInit(AlgorithmParameterSpec params,
  SecureRandom random)`

  Initializes the key generator with the specified parameter
  set and a user-provided source of randomness.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyGeneratorSpi

    public KeyGeneratorSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineInit

    protected abstract void engineInit([SecureRandom](../../java/security/SecureRandom.md "class in java.security") random)

    Initializes the key generator.

    Parameters:
    :   `random` - the source of randomness for this generator
  + ### engineInit

    protected abstract void engineInit([AlgorithmParameterSpec](../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") params,
    [SecureRandom](../../java/security/SecureRandom.md "class in java.security") random)
    throws [InvalidAlgorithmParameterException](../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes the key generator with the specified parameter
    set and a user-provided source of randomness.

    Parameters:
    :   `params` - the key generation parameters
    :   `random` - the source of randomness for this key generator

    Throws:
    :   `InvalidAlgorithmParameterException` - if `params` is
        inappropriate for this key generator
  + ### engineInit

    protected abstract void engineInit(int keysize,
    [SecureRandom](../../java/security/SecureRandom.md "class in java.security") random)

    Initializes this key generator for a certain keysize, using the given
    source of randomness.

    Parameters:
    :   `keysize` - the keysize. This is an algorithm-specific metric,
        specified in number of bits.
    :   `random` - the source of randomness for this key generator

    Throws:
    :   `InvalidParameterException` - if the keysize is wrong or not
        supported.
  + ### engineGenerateKey

    protected abstract [SecretKey](SecretKey.md "interface in javax.crypto") engineGenerateKey()

    Generates a secret key.

    Returns:
    :   the new key