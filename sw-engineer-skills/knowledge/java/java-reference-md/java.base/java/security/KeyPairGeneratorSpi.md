Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyPairGeneratorSpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyPairGeneratorSpi

Direct Known Subclasses:
:   `KeyPairGenerator`

---

public abstract class KeyPairGeneratorSpi
extends [Object](../lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `KeyPairGenerator` class, which is used to generate
pairs of public and private keys.

All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a key pair generator for a particular algorithm.

In case the client does not explicitly initialize the
`KeyPairGenerator` (via a call to an `initialize` method),
each provider must supply (and document) a default initialization.
See the Keysize Restriction sections of the
document for information on the KeyPairGenerator defaults used by
JDK providers.
However, note that defaults may vary across different providers.
Additionally, the default value for a provider may change in a future
version. Therefore, it is recommended to explicitly initialize the
`KeyPairGenerator` instead of relying on provider-specific defaults.

Since:
:   1.2

See Also:
:   * [`KeyPairGenerator`](KeyPairGenerator.md "class in java.security")
    * [`AlgorithmParameterSpec`](spec/AlgorithmParameterSpec.md "interface in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyPairGeneratorSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract KeyPair`

  `generateKeyPair()`

  Generates a key pair.

  `abstract void`

  `initialize(int keysize,
  SecureRandom random)`

  Initializes the key pair generator for a certain keysize, using
  the default parameter set.

  `void`

  `initialize(AlgorithmParameterSpec params,
  SecureRandom random)`

  Initializes the key pair generator using the specified parameter
  set and user-provided source of randomness.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyPairGeneratorSpi

    public KeyPairGeneratorSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### initialize

    public abstract void initialize(int keysize,
    [SecureRandom](SecureRandom.md "class in java.security") random)

    Initializes the key pair generator for a certain keysize, using
    the default parameter set.

    Parameters:
    :   `keysize` - the keysize. This is an
        algorithm-specific metric, such as modulus length, specified in
        number of bits.
    :   `random` - the source of randomness for this generator.

    Throws:
    :   `InvalidParameterException` - if the `keysize` is not
        supported by this `KeyPairGeneratorSpi` object.
  + ### initialize

    public void initialize([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") params,
    [SecureRandom](SecureRandom.md "class in java.security") random)
    throws [InvalidAlgorithmParameterException](InvalidAlgorithmParameterException.md "class in java.security")

    Initializes the key pair generator using the specified parameter
    set and user-provided source of randomness.

    This concrete method has been added to this previously-defined
    abstract class. (For backwards compatibility, it cannot be abstract.)
    It may be overridden by a provider to initialize the key pair
    generator. Such an override
    is expected to throw an `InvalidAlgorithmParameterException` if
    a parameter is inappropriate for this key pair generator.
    If this method is not overridden, it always throws an
    `UnsupportedOperationException`.

    Parameters:
    :   `params` - the parameter set used to generate the keys.
    :   `random` - the source of randomness for this generator.

    Throws:
    :   `InvalidAlgorithmParameterException` - if the given parameters
        are inappropriate for this key pair generator.

    Since:
    :   1.2
  + ### generateKeyPair

    public abstract [KeyPair](KeyPair.md "class in java.security") generateKeyPair()

    Generates a key pair. Unless an initialization method is called
    using a KeyPairGenerator interface, algorithm-specific defaults
    will be used. This will generate a new key pair every time it
    is called.

    Returns:
    :   the newly generated `KeyPair`