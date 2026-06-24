Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class IdentityScope

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.security.Identity](Identity.md "class in java.security")

java.security.IdentityScope

All Implemented Interfaces:
:   `Serializable`, `Principal`

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="1.2",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public abstract class IdentityScope
extends [Identity](Identity.md "class in java.security")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is deprecated and subject to removal in a future
version of Java SE. It has been replaced by
`java.security.KeyStore`, the `java.security.cert` package,
and `java.security.Principal`.

This class represents a scope for identities. It is an Identity
itself, and therefore has a name and can have a scope. It can also
optionally have a public key and associated certificates.

An `IdentityScope` can contain `Identity` objects of all
kinds, including signers. All types of `Identity` objects can be
retrieved, added, and removed using the same methods. Note that it is
possible, and in fact expected, that different types of identity scopes will
apply different policies for their various operations on the
various types of Identities.

There is a one-to-one mapping between keys and identities, and
there can only be one copy of one key per scope. For example, suppose
**Acme Software, Inc** is a software publisher known to a user.
Suppose it is an Identity, that is, it has a public key, and a set of
associated certificates. It is named in the scope using the name
"Acme Software". No other named Identity in the scope has the same
public key. Of course, none has the same name as well.

Since:
:   1.1

See Also:
:   * [`Identity`](Identity.md "class in java.security")
    * [`Signer`](Signer.md "class in java.security")
    * [`Principal`](Principal.md "interface in java.security")
    * [`Key`](Key.md "interface in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.IdentityScope)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `IdentityScope()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This constructor is used for serialization only and should not
  be used by subclasses.

  `IdentityScope(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a new identity scope with the specified name.

  `IdentityScope(String name,
  IdentityScope scope)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a new identity scope with the specified name and scope.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `addIdentity(Identity identity)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Adds an `Identity` to this identity scope.

  `abstract Identity`

  `getIdentity(String name)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the `Identity` in this scope with the specified
  name (if any).

  `Identity`

  `getIdentity(Principal principal)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Retrieves the `Identity` whose name is the same as that of the
  specified principal.

  `abstract Identity`

  `getIdentity(PublicKey key)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Retrieves the `identity` with the specified public key.

  `static IdentityScope`

  `getSystemScope()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the system's identity scope.

  `abstract Enumeration<Identity>`

  `identities()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns an enumeration of all identities in this identity scope.

  `abstract void`

  `removeIdentity(Identity identity)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Removes an `Identity` from this identity scope.

  `protected static void`

  `setSystemScope(IdentityScope scope)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Sets the system's identity scope.

  `abstract int`

  `size()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the number of identities within this identity scope.

  `String`

  `toString()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a string representation of this identity scope, including
  its name, its scope name, and the number of identities in this
  identity scope.

  ### Methods inherited from class java.security.[Identity](Identity.md "class in java.security")

  `addCertificate, certificates, equals, getInfo, getName, getPublicKey, getScope, hashCode, identityEquals, removeCertificate, setInfo, setPublicKey, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.security.[Principal](Principal.md "interface in java.security")

  `implies`

* ## Constructor Details

  + ### IdentityScope

    protected IdentityScope()

    Deprecated, for removal: This API element is subject to removal in a future version.

    This constructor is used for serialization only and should not
    be used by subclasses.
  + ### IdentityScope

    public IdentityScope([String](../lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a new identity scope with the specified name.

    Parameters:
    :   `name` - the scope name.
  + ### IdentityScope

    public IdentityScope([String](../lang/String.md "class in java.lang") name,
    [IdentityScope](IdentityScope.md "class in java.security") scope)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a new identity scope with the specified name and scope.

    Parameters:
    :   `name` - the scope name.
    :   `scope` - the scope for the new identity scope.

    Throws:
    :   `KeyManagementException` - if there is already an `Identity`
        with the same name in the scope.
* ## Method Details

  + ### getSystemScope

    public static [IdentityScope](IdentityScope.md "class in java.security") getSystemScope()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the system's identity scope.

    Returns:
    :   the system's identity scope, or `null` if none has been
        set.

    See Also:
    :   - [`setSystemScope(java.security.IdentityScope)`](#setSystemScope(java.security.IdentityScope))
  + ### setSystemScope

    protected static void setSystemScope([IdentityScope](IdentityScope.md "class in java.security") scope)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Sets the system's identity scope.

    First, if there is a security manager, its
    `checkSecurityAccess`
    method is called with `"setSystemScope"`
    as its argument to see if it's ok to set the identity scope.

    Parameters:
    :   `scope` - the scope to set.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkSecurityAccess` method doesn't allow
        setting the identity scope.

    See Also:
    :   - [`getSystemScope()`](#getSystemScope())
        - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))
  + ### size

    public abstract int size()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the number of identities within this identity scope.

    Returns:
    :   the number of identities within this identity scope.
  + ### getIdentity

    public abstract [Identity](Identity.md "class in java.security") getIdentity([String](../lang/String.md "class in java.lang") name)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the `Identity` in this scope with the specified
    name (if any).

    Parameters:
    :   `name` - the name of the `Identity` to be retrieved.

    Returns:
    :   the `Identity` named `name`, or `null`
        if there are no identities named `name` in this scope.
  + ### getIdentity

    public [Identity](Identity.md "class in java.security") getIdentity([Principal](Principal.md "interface in java.security") principal)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Retrieves the `Identity` whose name is the same as that of the
    specified principal. (Note: `Identity` implements
    `Principal`.)

    Parameters:
    :   `principal` - the principal corresponding to the `Identity`
        to be retrieved.

    Returns:
    :   the `Identity` whose name is the same as that of the
        principal, or `null` if there are no identities of the same name
        in this scope.
  + ### getIdentity

    public abstract [Identity](Identity.md "class in java.security") getIdentity([PublicKey](PublicKey.md "interface in java.security") key)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Retrieves the `identity` with the specified public key.

    Parameters:
    :   `key` - the public key for the identity to be returned.

    Returns:
    :   the identity with the given key, or `null` if there are
        no identities in this scope with that key.
  + ### addIdentity

    public abstract void addIdentity([Identity](Identity.md "class in java.security") identity)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Adds an `Identity` to this identity scope.

    Parameters:
    :   `identity` - the `Identity` to be added.

    Throws:
    :   `KeyManagementException` - if the identity is not
        valid, a name conflict occurs, another identity has the same
        public key as the identity being added, or another exception
        occurs.
  + ### removeIdentity

    public abstract void removeIdentity([Identity](Identity.md "class in java.security") identity)
    throws [KeyManagementException](KeyManagementException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Removes an `Identity` from this identity scope.

    Parameters:
    :   `identity` - the `Identity` to be removed.

    Throws:
    :   `KeyManagementException` - if the identity is missing,
        or another exception occurs.
  + ### identities

    public abstract [Enumeration](../util/Enumeration.md "interface in java.util")<[Identity](Identity.md "class in java.security")> identities()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns an enumeration of all identities in this identity scope.

    Returns:
    :   an enumeration of all identities in this identity scope.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a string representation of this identity scope, including
    its name, its scope name, and the number of identities in this
    identity scope.

    Specified by:
    :   `toString` in interface `Principal`

    Overrides:
    :   `toString` in class `Identity`

    Returns:
    :   a string representation of this identity scope.

    See Also:
    :   - [`SecurityManager.checkSecurityAccess(java.lang.String)`](../lang/SecurityManager.md#checkSecurityAccess(java.lang.String))