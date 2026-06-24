Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class SecretKeyFactory

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.SecretKeyFactory

---

public class SecretKeyFactory
extends [Object](../../java/lang/Object.md "class in java.lang")

This class represents a factory for secret keys.

Key factories are used to convert *keys* (opaque
cryptographic keys of type `Key`) into *key specifications*
(transparent representations of the underlying key material), and vice
versa.
Secret key factories operate only on secret (symmetric) keys.

Key factories are bidirectional, i.e., they allow to build an opaque
key object from a given key specification (key material), or to retrieve
the underlying key material of a key object in a suitable format.

Application developers should refer to their provider's documentation
to find out which key specifications are supported by the
[`generateSecret`](#generateSecret(java.security.spec.KeySpec)) and
[`getKeySpec`](#getKeySpec(javax.crypto.SecretKey,java.lang.Class))
methods.
For example, the DESede (Triple DES) secret-key factory supplied by the
"SunJCE" provider supports `DESedeKeySpec` as a transparent
representation of Triple DES keys.

Every implementation of the Java platform is required to support the
following standard `SecretKeyFactory` algorithms:

* `DESede`

These algorithms are described in the [SecretKeyFactory section](../../../../specs/security/standard-names.md#secretkeyfactory-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.4

See Also:
:   * [`SecretKey`](SecretKey.md "interface in javax.crypto")
    * [`DESedeKeySpec`](spec/DESedeKeySpec.md "class in javax.crypto.spec")
    * [`PBEKeySpec`](spec/PBEKeySpec.md "class in javax.crypto.spec")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SecretKeyFactory(SecretKeyFactorySpi keyFacSpi,
  Provider provider,
  String algorithm)`

  Creates a `SecretKeyFactory` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final SecretKey`

  `generateSecret(KeySpec keySpec)`

  Generates a `SecretKey` object from the provided key
  specification (key material).

  `final String`

  `getAlgorithm()`

  Returns the algorithm name of this `SecretKeyFactory` object.

  `static final SecretKeyFactory`

  `getInstance(String algorithm)`

  Returns a `SecretKeyFactory` object that converts
  secret keys of the specified algorithm.

  `static final SecretKeyFactory`

  `getInstance(String algorithm,
  String provider)`

  Returns a `SecretKeyFactory` object that converts
  secret keys of the specified algorithm.

  `static final SecretKeyFactory`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `SecretKeyFactory` object that converts
  secret keys of the specified algorithm.

  `final KeySpec`

  `getKeySpec(SecretKey key,
  Class<?> keySpec)`

  Returns a specification (key material) of the given key object
  in the requested format.

  `final Provider`

  `getProvider()`

  Returns the provider of this `SecretKeyFactory` object.

  `final SecretKey`

  `translateKey(SecretKey key)`

  Translates a key object, whose provider may be unknown or potentially
  untrusted, into a corresponding key object of this secret-key factory.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SecretKeyFactory

    protected SecretKeyFactory([SecretKeyFactorySpi](SecretKeyFactorySpi.md "class in javax.crypto") keyFacSpi,
    [Provider](../../java/security/Provider.md "class in java.security") provider,
    [String](../../java/lang/String.md "class in java.lang") algorithm)

    Creates a `SecretKeyFactory` object.

    Parameters:
    :   `keyFacSpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the secret-key algorithm
* ## Method Details

  + ### getInstance

    public static final [SecretKeyFactory](SecretKeyFactory.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `SecretKeyFactory` object that converts
    secret keys of the specified algorithm.

    This method traverses the list of registered security providers,
    starting with the most preferred provider.
    A new `SecretKeyFactory` object encapsulating the
    `SecretKeyFactorySpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested secret-key
        algorithm.
        See the SecretKeyFactory section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#secretkeyfactory-algorithms)
        for information about standard algorithm names.

    Returns:
    :   the new `SecretKeyFactory` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `SecretKeyFactorySpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [SecretKeyFactory](SecretKeyFactory.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm,
    [String](../../java/lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../java/security/NoSuchProviderException.md "class in java.security")

    Returns a `SecretKeyFactory` object that converts
    secret keys of the specified algorithm.

    A new `SecretKeyFactory` object encapsulating the
    `SecretKeyFactorySpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested secret-key
        algorithm.
        See the SecretKeyFactory section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#secretkeyfactory-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `SecretKeyFactory` object

    Throws:
    :   `IllegalArgumentException` - if the `provider`
        is `null` or empty
    :   `NoSuchAlgorithmException` - if a `SecretKeyFactorySpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [SecretKeyFactory](SecretKeyFactory.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm,
    [Provider](../../java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `SecretKeyFactory` object that converts
    secret keys of the specified algorithm.

    A new `SecretKeyFactory` object encapsulating the
    `SecretKeyFactorySpi` implementation from the specified provider
    object is returned. Note that the specified provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the standard name of the requested secret-key
        algorithm.
        See the SecretKeyFactory section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#secretkeyfactory-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   the new `SecretKeyFactory` object

    Throws:
    :   `IllegalArgumentException` - if the `provider`
        is `null`
    :   `NoSuchAlgorithmException` - if a `SecretKeyFactorySpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../../java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `SecretKeyFactory` object.

    Returns:
    :   the provider of this `SecretKeyFactory` object
  + ### getAlgorithm

    public final [String](../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm name of this `SecretKeyFactory` object.

    This is the same name that was specified in one of the
    `getInstance` calls that created this
    `SecretKeyFactory` object.

    Returns:
    :   the algorithm name of this `SecretKeyFactory`
        object.
  + ### generateSecret

    public final [SecretKey](SecretKey.md "interface in javax.crypto") generateSecret([KeySpec](../../java/security/spec/KeySpec.md "interface in java.security.spec") keySpec)
    throws [InvalidKeySpecException](../../java/security/spec/InvalidKeySpecException.md "class in java.security.spec")

    Generates a `SecretKey` object from the provided key
    specification (key material).

    Parameters:
    :   `keySpec` - the specification (key material) of the secret key

    Returns:
    :   the secret key

    Throws:
    :   `InvalidKeySpecException` - if the given key specification
        is inappropriate for this secret-key factory to produce a secret key.
  + ### getKeySpec

    public final [KeySpec](../../java/security/spec/KeySpec.md "interface in java.security.spec") getKeySpec([SecretKey](SecretKey.md "interface in javax.crypto") key,
    [Class](../../java/lang/Class.md "class in java.lang")<?> keySpec)
    throws [InvalidKeySpecException](../../java/security/spec/InvalidKeySpecException.md "class in java.security.spec")

    Returns a specification (key material) of the given key object
    in the requested format.

    Parameters:
    :   `key` - the key
    :   `keySpec` - the requested format in which the key material shall be
        returned

    Returns:
    :   the underlying key specification (key material) in the
        requested format

    Throws:
    :   `InvalidKeySpecException` - if the requested key specification is
        inappropriate for the given key (e.g., the algorithms associated with
        `key` and `keySpec` do not match, or
        `key` references a key on a cryptographic hardware device
        whereas `keySpec` is the specification of a software-based
        key), or the given key cannot be dealt with
        (e.g., the given key has an algorithm or format not supported by this
        secret-key factory).
  + ### translateKey

    public final [SecretKey](SecretKey.md "interface in javax.crypto") translateKey([SecretKey](SecretKey.md "interface in javax.crypto") key)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Translates a key object, whose provider may be unknown or potentially
    untrusted, into a corresponding key object of this secret-key factory.

    Parameters:
    :   `key` - the key whose provider is unknown or untrusted

    Returns:
    :   the translated key

    Throws:
    :   `InvalidKeyException` - if the given key cannot be processed
        by this secret-key factory.