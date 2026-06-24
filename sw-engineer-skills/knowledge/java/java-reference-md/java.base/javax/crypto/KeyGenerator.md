Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class KeyGenerator

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.KeyGenerator

---

public class KeyGenerator
extends [Object](../../java/lang/Object.md "class in java.lang")

This class provides the functionality of a secret (symmetric) key generator.

Key generators are constructed using one of the `getInstance`
class methods of this class.

`KeyGenerator` objects are reusable, i.e., after a key has been
generated, the same `KeyGenerator` object can be re-used
to generate further keys.

There are two ways to generate a key: in an algorithm-independent
manner, and in an algorithm-specific manner.
The only difference between the two is the initialization of the object:

* **Algorithm-Independent Initialization**

  All key generators share the concepts of a *keysize* and a
  *source of randomness*.
  There is an
  [`init`](#init(int,java.security.SecureRandom))
  method in this `KeyGenerator` class that takes these two universally
  shared types of arguments. There is also one that takes just a
  `keysize` argument, and uses the `SecureRandom` implementation
  of the highest-priority installed provider as the source of randomness
  (or a system-provided source of randomness if none of the installed
  providers supply a SecureRandom implementation), and one that takes just a
  source of randomness.

  Since no other parameters are specified when you call the above
  algorithm-independent `init` methods, it is up to the
  provider what to do about the algorithm-specific parameters (if any) to be
  associated with each of the keys.* **Algorithm-Specific Initialization**

    For situations where a set of algorithm-specific parameters already
    exists, there are two
    [`init`](#init(java.security.spec.AlgorithmParameterSpec))
    methods that have an `AlgorithmParameterSpec`
    argument. One also has a `SecureRandom` argument, while the
    other uses the SecureRandom implementation
    of the highest-priority installed provider as the source of randomness
    (or a system-provided source of randomness if none of the installed
    providers supply a SecureRandom implementation).

In case the client does not explicitly initialize the `KeyGenerator`
(via a call to an `init` method), each provider must
supply (and document) a default initialization.
See the Keysize Restriction sections of the
document for information on the `KeyGenerator` defaults used by
JDK providers.
However, note that defaults may vary across different providers.
Additionally, the default value for a provider may change in a future
version. Therefore, it is recommended to explicitly initialize the
`KeyGenerator` instead of relying on provider-specific defaults.

Every implementation of the Java platform is required to support the
following standard `KeyGenerator` algorithms with the keysizes in
parentheses:

* `AES` (128)
* `DESede` (168)
* `HmacSHA1`
* `HmacSHA256`

These algorithms are described in the [KeyGenerator section](../../../../specs/security/standard-names.md#keygenerator-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.4

See Also:
:   * [`SecretKey`](SecretKey.md "interface in javax.crypto")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `KeyGenerator(KeyGeneratorSpi keyGenSpi,
  Provider provider,
  String algorithm)`

  Creates a `KeyGenerator` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final SecretKey`

  `generateKey()`

  Generates a secret key.

  `final String`

  `getAlgorithm()`

  Returns the algorithm name of this `KeyGenerator` object.

  `static final KeyGenerator`

  `getInstance(String algorithm)`

  Returns a `KeyGenerator` object that generates secret keys
  for the specified algorithm.

  `static final KeyGenerator`

  `getInstance(String algorithm,
  String provider)`

  Returns a `KeyGenerator` object that generates secret keys
  for the specified algorithm.

  `static final KeyGenerator`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `KeyGenerator` object that generates secret keys
  for the specified algorithm.

  `final Provider`

  `getProvider()`

  Returns the provider of this `KeyGenerator` object.

  `final void`

  `init(int keysize)`

  Initializes this key generator for a certain keysize.

  `final void`

  `init(int keysize,
  SecureRandom random)`

  Initializes this key generator for a certain keysize, using a
  user-provided source of randomness.

  `final void`

  `init(SecureRandom random)`

  Initializes this key generator.

  `final void`

  `init(AlgorithmParameterSpec params)`

  Initializes this key generator with the specified parameter set.

  `final void`

  `init(AlgorithmParameterSpec params,
  SecureRandom random)`

  Initializes this key generator with the specified parameter
  set and a user-provided source of randomness.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyGenerator

    protected KeyGenerator([KeyGeneratorSpi](KeyGeneratorSpi.md "class in javax.crypto") keyGenSpi,
    [Provider](../../java/security/Provider.md "class in java.security") provider,
    [String](../../java/lang/String.md "class in java.lang") algorithm)

    Creates a `KeyGenerator` object.

    Parameters:
    :   `keyGenSpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the algorithm
* ## Method Details

  + ### getAlgorithm

    public final [String](../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm name of this `KeyGenerator` object.

    This is the same name that was specified in one of the
    `getInstance` calls that created this
    `KeyGenerator` object.

    Returns:
    :   the algorithm name of this `KeyGenerator` object.
  + ### getInstance

    public static final [KeyGenerator](KeyGenerator.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `KeyGenerator` object that generates secret keys
    for the specified algorithm.

    This method traverses the list of registered security providers,
    starting with the most preferred provider.
    A new `KeyGenerator` object encapsulating the
    `KeyGeneratorSpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested key algorithm.
        See the KeyGenerator section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#keygenerator-algorithms)
        for information about standard algorithm names.

    Returns:
    :   the new `KeyGenerator` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `KeyGeneratorSpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [KeyGenerator](KeyGenerator.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm,
    [String](../../java/lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../java/security/NoSuchProviderException.md "class in java.security")

    Returns a `KeyGenerator` object that generates secret keys
    for the specified algorithm.

    A new `KeyGenerator` object encapsulating the
    `KeyGeneratorSpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested key algorithm.
        See the KeyGenerator section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#keygenerator-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `KeyGenerator` object

    Throws:
    :   `IllegalArgumentException` - if the `provider`
        is `null` or empty
    :   `NoSuchAlgorithmException` - if a `KeyGeneratorSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [KeyGenerator](KeyGenerator.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm,
    [Provider](../../java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `KeyGenerator` object that generates secret keys
    for the specified algorithm.

    A new `KeyGenerator` object encapsulating the
    `KeyGeneratorSpi` implementation from the specified provider
    object is returned. Note that the specified provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the standard name of the requested key algorithm.
        See the KeyGenerator section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#keygenerator-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   the new `KeyGenerator` object

    Throws:
    :   `IllegalArgumentException` - if the `provider`
        is `null`
    :   `NoSuchAlgorithmException` - if a `KeyGeneratorSpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../../java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `KeyGenerator` object.

    Returns:
    :   the provider of this `KeyGenerator` object
  + ### init

    public final void init([SecureRandom](../../java/security/SecureRandom.md "class in java.security") random)

    Initializes this key generator.

    Parameters:
    :   `random` - the source of randomness for this generator
  + ### init

    public final void init([AlgorithmParameterSpec](../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") params)
    throws [InvalidAlgorithmParameterException](../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this key generator with the specified parameter set.

    If this key generator requires any random bytes, it will get them
    using the
    [`SecureRandom`](../../java/security/SecureRandom.md "class in java.security")
    implementation of the highest-priority installed
    provider as the source of randomness.
    (If none of the installed providers supply an implementation of
    SecureRandom, a system-provided source of randomness will be used.)

    Parameters:
    :   `params` - the key generation parameters

    Throws:
    :   `InvalidAlgorithmParameterException` - if the given parameters
        are inappropriate for this key generator
  + ### init

    public final void init([AlgorithmParameterSpec](../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") params,
    [SecureRandom](../../java/security/SecureRandom.md "class in java.security") random)
    throws [InvalidAlgorithmParameterException](../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this key generator with the specified parameter
    set and a user-provided source of randomness.

    Parameters:
    :   `params` - the key generation parameters
    :   `random` - the source of randomness for this key generator

    Throws:
    :   `InvalidAlgorithmParameterException` - if `params` is
        inappropriate for this key generator
  + ### init

    public final void init(int keysize)

    Initializes this key generator for a certain keysize.

    If this key generator requires any random bytes, it will get them
    using the
    [`SecureRandom`](../../java/security/SecureRandom.md "class in java.security")
    implementation of the highest-priority installed
    provider as the source of randomness.
    (If none of the installed providers supply an implementation of
    SecureRandom, a system-provided source of randomness will be used.)

    Parameters:
    :   `keysize` - the keysize. This is an algorithm-specific metric,
        specified in number of bits.

    Throws:
    :   `InvalidParameterException` - if the keysize is wrong or not
        supported.
  + ### init

    public final void init(int keysize,
    [SecureRandom](../../java/security/SecureRandom.md "class in java.security") random)

    Initializes this key generator for a certain keysize, using a
    user-provided source of randomness.

    Parameters:
    :   `keysize` - the keysize. This is an algorithm-specific metric,
        specified in number of bits.
    :   `random` - the source of randomness for this key generator

    Throws:
    :   `InvalidParameterException` - if the keysize is wrong or not
        supported.
  + ### generateKey

    public final [SecretKey](SecretKey.md "interface in javax.crypto") generateKey()

    Generates a secret key.

    Returns:
    :   the new key