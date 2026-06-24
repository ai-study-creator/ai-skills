Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class TrustManagerFactorySpi

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.TrustManagerFactorySpi

---

public abstract class TrustManagerFactorySpi
extends [Object](../../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `TrustManagerFactory` class.

All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a particular trust manager factory.

Since:
:   1.4

See Also:
:   * [`TrustManagerFactory`](TrustManagerFactory.md "class in javax.net.ssl")
    * [`TrustManager`](TrustManager.md "interface in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TrustManagerFactorySpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract TrustManager[]`

  `engineGetTrustManagers()`

  Returns one trust manager for each type of trust material.

  `protected abstract void`

  `engineInit(KeyStore ks)`

  Initializes this factory with a source of certificate
  authorities and related trust material.

  `protected abstract void`

  `engineInit(ManagerFactoryParameters spec)`

  Initializes this factory with a source of provider-specific
  key material.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TrustManagerFactorySpi

    public TrustManagerFactorySpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineInit

    protected abstract void engineInit([KeyStore](../../../java/security/KeyStore.md "class in java.security") ks)
    throws [KeyStoreException](../../../java/security/KeyStoreException.md "class in java.security")

    Initializes this factory with a source of certificate
    authorities and related trust material.

    Parameters:
    :   `ks` - the key store or null

    Throws:
    :   `KeyStoreException` - if this operation fails

    See Also:
    :   - [`TrustManagerFactory.init(KeyStore)`](TrustManagerFactory.md#init(java.security.KeyStore))
  + ### engineInit

    protected abstract void engineInit([ManagerFactoryParameters](ManagerFactoryParameters.md "interface in javax.net.ssl") spec)
    throws [InvalidAlgorithmParameterException](../../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this factory with a source of provider-specific
    key material.

    In some cases, initialization parameters other than a keystore
    may be needed by a provider. Users of that
    particular provider are expected to pass an implementation of
    the appropriate `ManagerFactoryParameters` as
    defined by the provider. The provider can then call the
    specified methods in the `ManagerFactoryParameters`
    implementation to obtain the needed information.

    Parameters:
    :   `spec` - an implementation of a provider-specific parameter
        specification

    Throws:
    :   `InvalidAlgorithmParameterException` - if there is problem
        with the parameters

    See Also:
    :   - [`TrustManagerFactory.init(ManagerFactoryParameters spec)`](TrustManagerFactory.md#init(javax.net.ssl.ManagerFactoryParameters))
  + ### engineGetTrustManagers

    protected abstract [TrustManager](TrustManager.md "interface in javax.net.ssl")[] engineGetTrustManagers()

    Returns one trust manager for each type of trust material.

    Returns:
    :   the trust managers

    Throws:
    :   `IllegalStateException` - if the factory is not initialized.