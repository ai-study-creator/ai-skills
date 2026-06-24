Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class Identity

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.Identity

All Implemented Interfaces:
:   `Serializable`, `Principal`

Direct Known Subclasses:
:   `IdentityScope`, `Signer`

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="1.2",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public abstract class Identity
extends [Object](../lang/Object.md "class in java.lang")
implements [Principal](Principal.md "interface in java.security"), [Serializable](../io/Serializable.md "interface in java.io")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is deprecated and subject to removal in a future
version of Java SE. It has been replaced by
`java.security.KeyStore`, the `java.security.cert` package,
and `java.security.Principal`.

This class represents identities: real-world objects such as people,
companies or organizations whose identities can be authenticated using
their public keys. Identities may also be more abstract (or concrete)
constructs, such as daemon threads or smart cards.

All `Identity` objects have a name and a public key. Names are
immutable. Identities may also be scoped. That is, if an `Identity` is
specified to have a particular scope, then the name and public
key of the `Identity` are unique within that scope.

An `Identity` also has a set of certificates (all certifying its own
public key). The Principal names specified in these certificates need
not be the same, only the key.

An `Identity` can be subclassed, to include postal and email
addresses, telephone numbers, images of faces and logos, and so on.

Since:
:   1.1

See Also:
:   * [`IdentityScope`](IdentityScope.md "class in java.security")
    * [`Signer`](Signer.md "class in java.security")
    * [`Principal`](Principal.md "interface in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.Identity)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Identity()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructor for serialization only.

  `Identity(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs an `Identity` with the specified name and no scope.

  `Identity(String name,
  IdentityScope scope)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs an `Identity` with the specified name and scope.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addCertificate(Certificate certificate)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Adds a certificate for this `Identity`.

  `Certificate[]`

  `certificates()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a copy of all the certificates for this `Identity`.

  `final boolean`

  `equals(Object identity)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Tests for equality between the specified object and this
  `Identity`.

  `String`

  `getInfo()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns general information previously specified for this `Identity`.

  `final String`

  `getName()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns this identity's name.

  `PublicKey`

  `getPublicKey()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns this identity's public key.

  `final IdentityScope`

  `getScope()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns this identity's scope.

  `int`

  `hashCode()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a hashcode for this `Identity`.

  `protected boolean`

  `identityEquals(Identity identity)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Tests for equality between the specified `Identity` and this
  `Identity`.

  `void`

  `removeCertificate(Certificate certificate)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Removes a certificate from this `Identity`.

  `void`

  `setInfo(String info)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Specifies a general information string for this `Identity`.

  `void`

  `setPublicKey(PublicKey key)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Sets this identity's public key.

  `String`

  `toString()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a short string describing this `Identity`, telling its
  name and its scope (if any).

  `String`

  `toString(boolean detailed)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a string representation of this `Identity`, with
  optionally more details than that provided by the
  `toString` method without any arguments.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.security.[Principal](Principal.md "interface in java.security")

  `implies`

* ## Constructor Details

  + ### Identity

    protected Identity()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructor for serialization only.
  + ### Identity

    public Identity([String](../lang/String.md "class in java.lang") name,
    [IdentityScope](IdentityScope.md "class in java.security") scope)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs an `Identity` with the specified name and scope.

    Parameters:
    :   `name` - the `Identity` name.
    :   `scope` - the scope of the `Identity`.

    Throws:
    :   `KeyManagementException` - if there is already an `Identity`
        with the same name in the scope.
  + ### Identity

    public Identity([String](../lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs an `Identity` with the specified name and no scope.

    Parameters:
    :   `name` - the identity name.
* ## Method Details

  + ### getName

    public final [String](../lang/String.md "class in java.lang") getName()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns this identity's name.

    Specified by:
    :   `getName` in interface `Principal`

    Returns:
    :   the name of this `Identity`.
  + ### getScope

    public final [IdentityScope](IdentityScope.md "class in java.security") getScope()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns this identity's scope.

    Returns:
    :   the scope of this `Identity`.
  + ### getPublicKey

    public [PublicKey](PublicKey.md "interface in java.security") getPublicKey()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns this identity's public key.

    Returns:
    :   the public key for this `Identity`.

    See Also:
    :   - [`setPublicKey(java.security.PublicKey)`](#setPublicKey(java.security.PublicKey))
  + ### setPublicKey

    public void setPublicKey([PublicKey](PublicKey.md "interface in java.security") key)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Sets this identity's public key. The old key and all of this
    identity's certificates are removed by this operation.

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"setIdentityPublicKey"`
    as its argument to see if it's ok to set the public key.

    Parameters:
    :   `key` - the public key for this `Identity`.

    Throws:
    :   `KeyManagementException` - if another identity in the
        identity's scope has the same public key, or if another exception occurs.
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        setting the public key.

    See Also:
    :   - [`getPublicKey()`](#getPublicKey())
        - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### setInfo

    public void setInfo([String](../lang/String.md "class in java.lang") info)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Specifies a general information string for this `Identity`.

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"setIdentityInfo"`
    as its argument to see if it's ok to specify the information string.

    Parameters:
    :   `info` - the information string.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        setting the information string.

    See Also:
    :   - [`getInfo()`](#getInfo())
        - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### getInfo

    public [String](../lang/String.md "class in java.lang") getInfo()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns general information previously specified for this `Identity`.

    Returns:
    :   general information about this `Identity`.

    See Also:
    :   - [`setInfo(java.lang.String)`](#setInfo(java.lang.String))
  + ### addCertificate

    public void addCertificate([Certificate](Certificate.md "interface in java.security") certificate)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Adds a certificate for this `Identity`. If the `Identity` has a public
    key, the public key in the certificate must be the same, and if
    the `Identity` does not have a public key, the identity's
    public key is set to be that specified in the certificate.

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"addIdentityCertificate"`
    as its argument to see if it's ok to add a certificate.

    Parameters:
    :   `certificate` - the certificate to be added.

    Throws:
    :   `KeyManagementException` - if the certificate is not valid,
        if the public key in the certificate being added conflicts with
        this identity's public key, or if another exception occurs.
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        adding a certificate.

    See Also:
    :   - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### removeCertificate

    public void removeCertificate([Certificate](Certificate.md "interface in java.security") certificate)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Removes a certificate from this `Identity`.

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"removeIdentityCertificate"`
    as its argument to see if it's ok to remove a certificate.

    Parameters:
    :   `certificate` - the certificate to be removed.

    Throws:
    :   `KeyManagementException` - if the certificate is
        missing, or if another exception occurs.
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        removing a certificate.

    See Also:
    :   - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### certificates

    public [Certificate](Certificate.md "interface in java.security")[] certificates()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a copy of all the certificates for this `Identity`.

    Returns:
    :   a copy of all the certificates for this `Identity`.
  + ### equals

    public final boolean equals([Object](../lang/Object.md "class in java.lang") identity)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Tests for equality between the specified object and this
    `Identity`.
    This first tests to see if the entities actually refer to the same
    object, in which case it returns `true`. Next, it checks to see if
    the entities have the same name and the same scope. If they do,
    the method returns `true`. Otherwise, it calls
    [`identityEquals`](#identityEquals(java.security.Identity)), which subclasses should
    override.

    Specified by:
    :   `equals` in interface `Principal`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `identity` - the object to test for equality with this
        `Identity`.

    Returns:
    :   `true` if the objects are considered equal,
        `false` otherwise.

    See Also:
    :   - [`identityEquals(java.security.Identity)`](#identityEquals(java.security.Identity))
  + ### identityEquals

    protected boolean identityEquals([Identity](Identity.md "class in java.security") identity)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Tests for equality between the specified `Identity` and this
    `Identity`.
    This method should be overridden by subclasses to test for equality.
    The default behavior is to return `true` if the names and public
    keys are equal.

    Parameters:
    :   `identity` - the identity to test for equality with this
        `identity`.

    Returns:
    :   `true` if the identities are considered equal,
        `false` otherwise.

    See Also:
    :   - [`equals(java.lang.Object)`](#equals(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a short string describing this `Identity`, telling its
    name and its scope (if any).

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"printIdentity"`
    as its argument to see if it's ok to return the string.

    Specified by:
    :   `toString` in interface `Principal`

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   information about this `Identity`, such as its name and the
        name of its scope (if any).

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        returning a string describing this `Identity`.

    See Also:
    :   - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString(boolean detailed)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a string representation of this `Identity`, with
    optionally more details than that provided by the
    `toString` method without any arguments.

    First, if there is a security manager, its `checkSecurityAccess`
    method is called with `"printIdentity"`
    as its argument to see if it's ok to return the string.

    Parameters:
    :   `detailed` - whether or not to provide detailed information.

    Returns:
    :   information about this `Identity`. If `detailed`
        is `true`, then this method returns more information than that
        provided by the `toString` method without any arguments.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        returning a string describing this `Identity`.

    See Also:
    :   - [`toString()`](#toString())
        - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### hashCode

    public int hashCode()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a hashcode for this `Identity`.

    Specified by:
    :   `hashCode` in interface `Principal`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashcode for this `Identity`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))