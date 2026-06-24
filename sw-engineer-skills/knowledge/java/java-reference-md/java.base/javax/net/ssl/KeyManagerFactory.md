Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class KeyManagerFactory

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.KeyManagerFactory

---

public class KeyManagerFactory
extends [Object](../../../java/lang/Object.md "class in java.lang")

This class acts as a factory for key managers based on a
source of key material. Each key manager manages a specific
type of key material for use by secure sockets. The key
material is based on a KeyStore and/or provider specific sources.

Since:
:   1.4

See Also:
:   * [`KeyManager`](KeyManager.md "interface in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `KeyManagerFactory(KeyManagerFactorySpi factorySpi,
  Provider provider,
  String algorithm)`

  Creates a KeyManagerFactory object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getAlgorithm()`

  Returns the algorithm name of this `KeyManagerFactory` object.

  `static final String`

  `getDefaultAlgorithm()`

  Obtains the default KeyManagerFactory algorithm name.

  `static final KeyManagerFactory`

  `getInstance(String algorithm)`

  Returns a `KeyManagerFactory` object that acts as a
  factory for key managers.

  `static final KeyManagerFactory`

  `getInstance(String algorithm,
  String provider)`

  Returns a `KeyManagerFactory` object that acts as a
  factory for key managers.

  `static final KeyManagerFactory`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `KeyManagerFactory` object that acts as a
  factory for key managers.

  `final KeyManager[]`

  `getKeyManagers()`

  Returns one key manager for each type of key material.

  `final Provider`

  `getProvider()`

  Returns the provider of this `KeyManagerFactory` object.

  `final void`

  `init(KeyStore ks,
  char[] password)`

  Initializes this factory with a source of key material.

  `final void`

  `init(ManagerFactoryParameters spec)`

  Initializes this factory with a source of provider-specific
  key material.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyManagerFactory

    protected KeyManagerFactory([KeyManagerFactorySpi](KeyManagerFactorySpi.md "class in javax.net.ssl") factorySpi,
    [Provider](../../../java/security/Provider.md "class in java.security") provider,
    [String](../../../java/lang/String.md "class in java.lang") algorithm)

    Creates a KeyManagerFactory object.

    Parameters:
    :   `factorySpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the algorithm
* ## Method Details

  + ### getDefaultAlgorithm

    public static final [String](../../../java/lang/String.md "class in java.lang") getDefaultAlgorithm()

    Obtains the default KeyManagerFactory algorithm name.

    The default algorithm can be changed at runtime by setting
    the value of the `ssl.KeyManagerFactory.algorithm`
    security property to the desired algorithm name.

    Returns:
    :   the default algorithm name as specified by the
        `ssl.KeyManagerFactory.algorithm` security property, or an
        implementation-specific default if no such property exists.

    See Also:
    :   - [`security properties`](../../../java/security/Security.md "class in java.security")
  + ### getAlgorithm

    public final [String](../../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm name of this `KeyManagerFactory` object.

    This is the same name that was specified in one of the
    `getInstance` calls that created this
    `KeyManagerFactory` object.

    Returns:
    :   the algorithm name of this `KeyManagerFactory` object.
  + ### getInstance

    public static final [KeyManagerFactory](KeyManagerFactory.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `KeyManagerFactory` object that acts as a
    factory for key managers.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new KeyManagerFactory object encapsulating the
    KeyManagerFactorySpi implementation from the first
    Provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested algorithm.
        See the [KeyManagerFactory section](../../../../../specs/security/standard-names.md#keymanagerfactory-algorithms) in the Java Security Standard
        Algorithm Names Specification for information about standard
        algorithm names.

    Returns:
    :   the new `KeyManagerFactory` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `KeyManagerFactorySpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [KeyManagerFactory](KeyManagerFactory.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") algorithm,
    [String](../../../java/lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../../java/security/NoSuchProviderException.md "class in java.security")

    Returns a `KeyManagerFactory` object that acts as a
    factory for key managers.

    A new KeyManagerFactory object encapsulating the
    KeyManagerFactorySpi implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested algorithm.
        See the [KeyManagerFactory section](../../../../../specs/security/standard-names.md#keymanagerfactory-algorithms) in the Java Security Standard
        Algorithm Names Specification for information about standard
        algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `KeyManagerFactory` object

    Throws:
    :   `IllegalArgumentException` - if the provider name is `null`
        or empty
    :   `NoSuchAlgorithmException` - if a `KeyManagerFactorySpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [KeyManagerFactory](KeyManagerFactory.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") algorithm,
    [Provider](../../../java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `KeyManagerFactory` object that acts as a
    factory for key managers.

    A new KeyManagerFactory object encapsulating the
    KeyManagerFactorySpi implementation from the specified Provider
    object is returned. Note that the specified Provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the standard name of the requested algorithm.
        See the [KeyManagerFactory section](../../../../../specs/security/standard-names.md#keymanagerfactory-algorithms) in the Java Security Standard
        Algorithm Names Specification for information about standard
        algorithm names.
    :   `provider` - an instance of the provider.

    Returns:
    :   the new `KeyManagerFactory` object

    Throws:
    :   `IllegalArgumentException` - if provider is `null`
    :   `NoSuchAlgorithmException` - if a `@KeyManagerFactorySpi`
        implementation for the specified algorithm is not available
        from the specified Provider object
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../../../java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `KeyManagerFactory` object.

    Returns:
    :   the provider of this `KeyManagerFactory` object
  + ### init

    public final void init([KeyStore](../../../java/security/KeyStore.md "class in java.security") ks,
    char[] password)
    throws [KeyStoreException](../../../java/security/KeyStoreException.md "class in java.security"),
    [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [UnrecoverableKeyException](../../../java/security/UnrecoverableKeyException.md "class in java.security")

    Initializes this factory with a source of key material.

    The provider typically uses a KeyStore for obtaining
    key material for use during secure socket negotiations.
    The KeyStore is generally password-protected.

    For more flexible initialization, please see
    [`init(ManagerFactoryParameters)`](#init(javax.net.ssl.ManagerFactoryParameters)).

    Parameters:
    :   `ks` - the key store or null
    :   `password` - the password for recovering keys in the KeyStore

    Throws:
    :   `KeyStoreException` - if this operation fails
    :   `NoSuchAlgorithmException` - if the specified algorithm is not
        available from the specified provider.
    :   `UnrecoverableKeyException` - if the key cannot be recovered
        (e.g. the given password is wrong).
  + ### init

    public final void init([ManagerFactoryParameters](ManagerFactoryParameters.md "interface in javax.net.ssl") spec)
    throws [InvalidAlgorithmParameterException](../../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this factory with a source of provider-specific
    key material.

    In some cases, initialization parameters other than a keystore
    and password may be needed by a provider. Users of that
    particular provider are expected to pass an implementation of
    the appropriate `ManagerFactoryParameters` as
    defined by the provider. The provider can then call the
    specified methods in the `ManagerFactoryParameters`
    implementation to obtain the needed information.

    Parameters:
    :   `spec` - an implementation of a provider-specific parameter
        specification

    Throws:
    :   `InvalidAlgorithmParameterException` - if an error is encountered
  + ### getKeyManagers

    public final [KeyManager](KeyManager.md "interface in javax.net.ssl")[] getKeyManagers()

    Returns one key manager for each type of key material.

    Returns:
    :   the key managers

    Throws:
    :   `IllegalStateException` - if the KeyManagerFactory is not initialized