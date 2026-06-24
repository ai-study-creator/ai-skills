Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class Signer

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.security.Identity](Identity.md "class in java.security")

java.security.Signer

All Implemented Interfaces:
:   `Serializable`, `Principal`

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="1.2",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public abstract class Signer
extends [Identity](Identity.md "class in java.security")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is deprecated and subject to removal in a future
version of Java SE. It has been replaced by
`java.security.KeyStore`, the `java.security.cert` package,
and `java.security.Principal`.

This class is used to represent an Identity that can also digitally
sign data.

The management of a signer's private keys is an important and
sensitive issue that should be handled by subclasses as appropriate
to their intended use.

Since:
:   1.1

See Also:
:   * [`Identity`](Identity.md "class in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.Signer)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Signer()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Creates a `Signer`.

  `Signer(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Creates a `Signer` with the specified identity name.

  `Signer(String name,
  IdentityScope scope)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Creates a `Signer` with the specified identity name and scope.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `PrivateKey`

  `getPrivateKey()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns this signer's private key.

  `final void`

  `setKeyPair(KeyPair pair)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Sets the key pair (public key and private key) for this `Signer`.

  `String`

  `toString()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a string of information about the `Signer`.

  ### Methods inherited from class java.security.[Identity](Identity.md "class in java.security")

  `addCertificate, certificates, equals, getInfo, getName, getPublicKey, getScope, hashCode, identityEquals, removeCertificate, setInfo, setPublicKey, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.security.[Principal](Principal.md "interface in java.security")

  `implies`

* ## Constructor Details

  + ### Signer

    protected Signer()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Creates a `Signer`. This constructor should only be used for
    serialization.
  + ### Signer

    public Signer([String](../lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Creates a `Signer` with the specified identity name.

    Parameters:
    :   `name` - the identity name.
  + ### Signer

    public Signer([String](../lang/String.md "class in java.lang") name,
    [IdentityScope](IdentityScope.md "class in java.security") scope)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Creates a `Signer` with the specified identity name and scope.

    Parameters:
    :   `name` - the identity name.
    :   `scope` - the scope of the identity.

    Throws:
    :   `KeyManagementException` - if there is already an identity
        with the same name in the scope.
* ## Method Details

  + ### getPrivateKey

    public [PrivateKey](PrivateKey.md "interface in java.security") getPrivateKey()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns this signer's private key.

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"getSignerPrivateKey"`
    as its argument to see if it's ok to return the private key.

    Returns:
    :   this signer's private key, or `null` if the private key has
        not yet been set.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        returning the private key.

    See Also:
    :   - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### setKeyPair

    public final void setKeyPair([KeyPair](KeyPair.md "class in java.security") pair)
    throws [InvalidParameterException](InvalidParameterException.md "class in java.security"),
    [KeyException](KeyException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Sets the key pair (public key and private key) for this `Signer`.

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"setSignerKeyPair"`
    as its argument to see if it's ok to set the key pair.

    Parameters:
    :   `pair` - an initialized key pair.

    Throws:
    :   `InvalidParameterException` - if the key pair is not
        properly initialized.
    :   `KeyException` - if the key pair cannot be set for any
        other reason.
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        setting the key pair.

    See Also:
    :   - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a string of information about the `Signer`.

    Specified by:
    :   `toString` in interface `Principal`

    Overrides:
    :   `toString` in class `Identity`

    Returns:
    :   a string of information about the `Signer`.

    See Also:
    :   - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))