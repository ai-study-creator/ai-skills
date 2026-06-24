Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class TrustManagerFactory

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.TrustManagerFactory

---

public class TrustManagerFactory
extends [Object](../../../java/lang/Object.md "class in java.lang")

This class acts as a factory for trust managers based on a
source of trust material. Each trust manager manages a specific
type of trust material for use by secure sockets. The trust
material is based on a KeyStore and/or provider-specific sources.

Every implementation of the Java platform is required to support the
following standard `TrustManagerFactory` algorithm:

* `PKIX`

This algorithm is described in the [TrustManagerFactory section](../../../../../specs/security/standard-names.md#trustmanagerfactory-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.4

See Also:
:   * [`TrustManager`](TrustManager.md "interface in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TrustManagerFactory(TrustManagerFactorySpi factorySpi,
  Provider provider,
  String algorithm)`

  Creates a TrustManagerFactory object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getAlgorithm()`

  Returns the algorithm name of this `TrustManagerFactory`
  object.

  `static final String`

  `getDefaultAlgorithm()`

  Obtains the default TrustManagerFactory algorithm name.

  `static final TrustManagerFactory`

  `getInstance(String algorithm)`

  Returns a `TrustManagerFactory` object that acts as a
  factory for trust managers.

  `static final TrustManagerFactory`

  `getInstance(String algorithm,
  String provider)`

  Returns a `TrustManagerFactory` object that acts as a
  factory for trust managers.

  `static final TrustManagerFactory`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `TrustManagerFactory` object that acts as a
  factory for trust managers.

  `final Provider`

  `getProvider()`

  Returns the provider of this `TrustManagerFactory` object.

  `final TrustManager[]`

  `getTrustManagers()`

  Returns one trust manager for each type of trust material.

  `final void`

  `init(KeyStore ks)`

  Initializes this factory with a source of certificate
  authorities and related trust material.

  `final void`

  `init(ManagerFactoryParameters spec)`

  Initializes this factory with a source of provider-specific
  trust material.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TrustManagerFactory

    protected TrustManagerFactory([TrustManagerFactorySpi](TrustManagerFactorySpi.md "class in javax.net.ssl") factorySpi,
    [Provider](../../../java/security/Provider.md "class in java.security") provider,
    [String](../../../java/lang/String.md "class in java.lang") algorithm)

    Creates a TrustManagerFactory object.

    Parameters:
    :   `factorySpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the algorithm
* ## Method Details

  + ### getDefaultAlgorithm

    public static final [String](../../../java/lang/String.md "class in java.lang") getDefaultAlgorithm()

    Obtains the default TrustManagerFactory algorithm name.

    The default TrustManager can be changed at runtime by setting
    the value of the `ssl.TrustManagerFactory.algorithm`
    security property to the desired algorithm name.

    Returns:
    :   the default algorithm name as specified by the
        `ssl.TrustManagerFactory.algorithm` security property, or an
        implementation-specific default if no such property exists.

    See Also:
    :   - [`security properties`](../../../java/security/Security.md "class in java.security")
  + ### getAlgorithm

    public final [String](../../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm name of this `TrustManagerFactory`
    object.

    This is the same name that was specified in one of the
    `getInstance` calls that created this
    `TrustManagerFactory` object.

    Returns:
    :   the algorithm name of this `TrustManagerFactory`
        object
  + ### getInstance

    public static final [TrustManagerFactory](TrustManagerFactory.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `TrustManagerFactory` object that acts as a
    factory for trust managers.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new TrustManagerFactory object encapsulating the
    TrustManagerFactorySpi implementation from the first
    Provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested trust management
        algorithm. See the [TrustManagerFactory section](../../../../../specs/security/standard-names.md#trustmanagerfactory-algorithms) in the Java Security Standard
        Algorithm Names Specification for information about standard
        algorithm names.

    Returns:
    :   the new `TrustManagerFactory` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `TrustManagerFactorySpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [TrustManagerFactory](TrustManagerFactory.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") algorithm,
    [String](../../../java/lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../../java/security/NoSuchProviderException.md "class in java.security")

    Returns a `TrustManagerFactory` object that acts as a
    factory for trust managers.

    A new KeyManagerFactory object encapsulating the
    KeyManagerFactorySpi implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested trust management
        algorithm. See the [TrustManagerFactory section](../../../../../specs/security/standard-names.md#trustmanagerfactory-algorithms) in the Java Security Standard
        Algorithm Names Specification for information about standard
        algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `TrustManagerFactory` object

    Throws:
    :   `IllegalArgumentException` - if the provider name is
        `null` or empty
    :   `NoSuchAlgorithmException` - if a `TrustManagerFactorySpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [TrustManagerFactory](TrustManagerFactory.md "class in javax.net.ssl") getInstance([String](../../../java/lang/String.md "class in java.lang") algorithm,
    [Provider](../../../java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `TrustManagerFactory` object that acts as a
    factory for trust managers.

    A new TrustManagerFactory object encapsulating the
    TrustManagerFactorySpi implementation from the specified Provider
    object is returned. Note that the specified Provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the standard name of the requested trust management
        algorithm. See the [TrustManagerFactory section](../../../../../specs/security/standard-names.md#trustmanagerfactory-algorithms) in the Java Security Standard
        Algorithm Names Specification for information about standard
        algorithm names.
    :   `provider` - an instance of the provider.

    Returns:
    :   the new `TrustManagerFactory` object

    Throws:
    :   `IllegalArgumentException` - if the provider is `null`
    :   `NoSuchAlgorithmException` - if a `TrustManagerFactorySpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../../java/security/Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../../../java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `TrustManagerFactory` object.

    Returns:
    :   the provider of this `TrustManagerFactory` object
  + ### init

    public final void init([KeyStore](../../../java/security/KeyStore.md "class in java.security") ks)
    throws [KeyStoreException](../../../java/security/KeyStoreException.md "class in java.security")

    Initializes this factory with a source of certificate
    authorities and related trust material.

    The provider typically uses a KeyStore as a basis for making
    trust decisions.

    For more flexible initialization, please see
    [`init(ManagerFactoryParameters)`](#init(javax.net.ssl.ManagerFactoryParameters)).

    Parameters:
    :   `ks` - the key store, or null

    Throws:
    :   `KeyStoreException` - if this operation fails
  + ### init

    public final void init([ManagerFactoryParameters](ManagerFactoryParameters.md "interface in javax.net.ssl") spec)
    throws [InvalidAlgorithmParameterException](../../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this factory with a source of provider-specific
    trust material.

    In some cases, initialization parameters other than a keystore
    may be needed by a provider. Users of that particular provider
    are expected to pass an implementation of the appropriate
    `ManagerFactoryParameters` as defined by the
    provider. The provider can then call the specified methods in
    the `ManagerFactoryParameters` implementation to obtain the
    needed information.

    Parameters:
    :   `spec` - an implementation of a provider-specific parameter
        specification

    Throws:
    :   `InvalidAlgorithmParameterException` - if an error is
        encountered
  + ### getTrustManagers

    public final [TrustManager](TrustManager.md "interface in javax.net.ssl")[] getTrustManagers()

    Returns one trust manager for each type of trust material.

    Returns:
    :   the trust managers

    Throws:
    :   `IllegalStateException` - if the factory is not initialized.