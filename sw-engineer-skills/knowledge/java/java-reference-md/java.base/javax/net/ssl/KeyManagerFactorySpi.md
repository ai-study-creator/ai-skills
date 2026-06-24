Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class KeyManagerFactorySpi

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.KeyManagerFactorySpi

---

public abstract class KeyManagerFactorySpi
extends [Object](../../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `KeyManagerFactory` class.

All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a particular key manager factory.

Since:
:   1.4

See Also:
:   * [`KeyManagerFactory`](KeyManagerFactory.md "class in javax.net.ssl")
    * [`KeyManager`](KeyManager.md "interface in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyManagerFactorySpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract KeyManager[]`

  `engineGetKeyManagers()`

  Returns one key manager for each type of key material.

  `protected abstract void`

  `engineInit(KeyStore ks,
  char[] password)`

  Initializes this factory with a source of key material.

  `protected abstract void`

  `engineInit(ManagerFactoryParameters spec)`

  Initializes this factory with a source of key material.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyManagerFactorySpi

    public KeyManagerFactorySpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineInit

    protected abstract void engineInit([KeyStore](../../../java/security/KeyStore.md "class in java.security") ks,
    char[] password)
    throws [KeyStoreException](../../../java/security/KeyStoreException.md "class in java.security"),
    [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [UnrecoverableKeyException](../../../java/security/UnrecoverableKeyException.md "class in java.security")

    Initializes this factory with a source of key material.

    Parameters:
    :   `ks` - the key store or null
    :   `password` - the password for recovering keys

    Throws:
    :   `KeyStoreException` - if this operation fails
    :   `NoSuchAlgorithmException` - if the specified algorithm is not
        available from the specified provider.
    :   `UnrecoverableKeyException` - if the key cannot be recovered

    See Also:
    :   - [`KeyManagerFactory.init(KeyStore, char[])`](KeyManagerFactory.md#init(java.security.KeyStore,char%5B%5D))
  + ### engineInit

    protected abstract void engineInit([ManagerFactoryParameters](ManagerFactoryParameters.md "interface in javax.net.ssl") spec)
    throws [InvalidAlgorithmParameterException](../../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this factory with a source of key material.

    In some cases, initialization parameters other than a keystore
    and password may be needed by a provider. Users of that
    particular provider are expected to pass an implementation of
    the appropriate `ManagerFactoryParameters` as
    defined by the provider. The provider can then call the
    specified methods in the ManagerFactoryParameters
    implementation to obtain the needed information.

    Parameters:
    :   `spec` - an implementation of a provider-specific parameter
        specification

    Throws:
    :   `InvalidAlgorithmParameterException` - if there is problem
        with the parameters

    See Also:
    :   - [`KeyManagerFactory.init(ManagerFactoryParameters spec)`](KeyManagerFactory.md#init(javax.net.ssl.ManagerFactoryParameters))
  + ### engineGetKeyManagers

    protected abstract [KeyManager](KeyManager.md "interface in javax.net.ssl")[] engineGetKeyManagers()

    Returns one key manager for each type of key material.

    Returns:
    :   the key managers

    Throws:
    :   `IllegalStateException` - if the KeyManagerFactorySpi is not initialized