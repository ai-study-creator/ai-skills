Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class Policy

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.Policy

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="17",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public abstract class Policy
extends [Object](../lang/Object.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is only useful in conjunction with
[the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
and subject to removal in a future release. Consequently, this class
is also deprecated and subject to removal. There is no replacement for
the Security Manager or this class.

A `Policy` object is responsible for determining whether code executing
in the Java runtime environment has permission to perform a
security-sensitive operation.

There is only one `Policy` object installed in the runtime at any
given time. A `Policy` object can be installed by calling the
`setPolicy` method. The installed `Policy` object can be
obtained by calling the `getPolicy` method.

If no `Policy` object has been installed in the runtime, a call to
`getPolicy` installs an instance of the default `Policy`
implementation (a default subclass implementation of this abstract class).
The default `Policy` implementation can be changed by setting the value
of the `policy.provider` security property to the fully qualified
name of the desired `Policy` subclass implementation. The system
class loader is used to load this class.

Application code can directly subclass `Policy` to provide a custom
implementation. In addition, an instance of a `Policy` object can be
constructed by invoking one of the `getInstance` factory methods
with a standard type. The default policy type is "JavaPolicy".

Once a `Policy` instance has been installed (either by default,
or by calling `setPolicy`), the Java runtime invokes its
`implies` method when it needs to
determine whether executing code (encapsulated in a ProtectionDomain)
can perform SecurityManager-protected operations. How a `Policy`
object retrieves its policy data is up to the `Policy` implementation
itself. The policy data may be stored, for example, in a flat ASCII file,
in a serialized binary file of the `Policy` class, or in a database.

The `refresh` method causes the policy object to
refresh/reload its data. This operation is implementation-dependent.
For example, if the policy object stores its data in configuration files,
calling `refresh` will cause it to re-read the configuration
policy files. If a refresh operation is not supported, this method does
nothing. Note that refreshed policy may not have an effect on classes
in a particular ProtectionDomain. This is dependent on the policy
provider's implementation of the `implies`
method and its PermissionCollection caching strategy.

Since:
:   1.2

See Also:
:   * [`Provider`](Provider.md "class in java.security")
    * [`ProtectionDomain`](ProtectionDomain.md "class in java.security")
    * [`Permission`](Permission.md "class in java.security")
    * [`security properties`](Security.md "class in java.security")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `Policy.Parameters`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PermissionCollection`

  `UNSUPPORTED_EMPTY_COLLECTION`

  Deprecated, for removal: This API element is subject to removal in a future version.

  A read-only empty PermissionCollection instance.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Policy()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static Policy`

  `getInstance(String type,
  Policy.Parameters params)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a Policy object of the specified type.

  `static Policy`

  `getInstance(String type,
  Policy.Parameters params,
  String provider)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a `Policy` object of the specified type.

  `static Policy`

  `getInstance(String type,
  Policy.Parameters params,
  Provider provider)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a `Policy` object of the specified type.

  `Policy.Parameters`

  `getParameters()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Return `Policy` parameters.

  `PermissionCollection`

  `getPermissions(CodeSource codesource)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Return a PermissionCollection object containing the set of
  permissions granted to the specified CodeSource.

  `PermissionCollection`

  `getPermissions(ProtectionDomain domain)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Return a PermissionCollection object containing the set of
  permissions granted to the specified ProtectionDomain.

  `static Policy`

  `getPolicy()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the installed `Policy` object.

  `Provider`

  `getProvider()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Return the `Provider` of this policy.

  `String`

  `getType()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Return the type of this `Policy`.

  `boolean`

  `implies(ProtectionDomain domain,
  Permission permission)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Evaluates the global policy for the permissions granted to
  the ProtectionDomain and tests whether the permission is
  granted.

  `void`

  `refresh()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Refreshes/reloads the policy configuration.

  `static void`

  `setPolicy(Policy p)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Sets the system-wide `Policy` object.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### UNSUPPORTED\_EMPTY\_COLLECTION

    public static final [PermissionCollection](PermissionCollection.md "class in java.security") UNSUPPORTED\_EMPTY\_COLLECTION

    Deprecated, for removal: This API element is subject to removal in a future version.

    A read-only empty PermissionCollection instance.

    Since:
    :   1.6
* ## Constructor Details

  + ### Policy

    public Policy()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructor for subclasses to call.
* ## Method Details

  + ### getPolicy

    public static [Policy](Policy.md "class in java.security") getPolicy()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the installed `Policy` object. This value should not be
    cached, as it may be changed by a call to `setPolicy`.
    This method first calls
    `SecurityManager.checkPermission` with a
    `SecurityPermission("getPolicy")` permission
    to ensure it's ok to get the `Policy` object.

    Returns:
    :   the installed Policy.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        getting the `Policy` object.

    See Also:
    :   - [`SecurityManager.checkPermission(Permission)`](../lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`setPolicy(java.security.Policy)`](#setPolicy(java.security.Policy))
  + ### setPolicy

    public static void setPolicy([Policy](Policy.md "class in java.security") p)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Sets the system-wide `Policy` object. This method first calls
    `SecurityManager.checkPermission` with a
    `SecurityPermission("setPolicy")`
    permission to ensure it's ok to set the Policy.

    Parameters:
    :   `p` - the new system `Policy` object.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        setting the Policy.

    See Also:
    :   - [`SecurityManager.checkPermission(Permission)`](../lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`getPolicy()`](#getPolicy())
  + ### getInstance

    public static [Policy](Policy.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") type,
    [Policy.Parameters](Policy.Parameters.md "interface in java.security") params)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a Policy object of the specified type.

    This method traverses the list of registered security providers,
    starting with the most preferred provider.
    A new `Policy` object encapsulating the
    `PolicySpi` implementation from the first
    provider that supports the specified type is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `type` - the specified Policy type. See the Policy section in the
        [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#policy-types)
        for a list of standard Policy types.
    :   `params` - parameters for the `Policy`, which may be
        `null`.

    Returns:
    :   the new `Policy` object

    Throws:
    :   `IllegalArgumentException` - if the specified parameters
        are not understood by the `PolicySpi` implementation
        from the selected `Provider`
    :   `NoSuchAlgorithmException` - if no `Provider` supports
        a `PolicySpi` implementation for the specified type
    :   `NullPointerException` - if `type` is `null`
    :   `SecurityException` - if the caller does not have permission
        to get a `Policy` instance for the specified type.

    Since:
    :   1.6

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [Policy](Policy.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") type,
    [Policy.Parameters](Policy.Parameters.md "interface in java.security") params,
    [String](../lang/String.md "class in java.lang") provider)
    throws [NoSuchProviderException](NoSuchProviderException.md "class in java.security"),
    [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a `Policy` object of the specified type.

    A new `Policy` object encapsulating the
    `PolicySpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `type` - the specified Policy type. See the Policy section in the
        [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#policy-types)
        for a list of standard Policy types.
    :   `params` - parameters for the `Policy`, which may be
        `null`.
    :   `provider` - the provider.

    Returns:
    :   the new `Policy` object

    Throws:
    :   `IllegalArgumentException` - if the specified provider
        is `null` or empty, or if the specified parameters are
        not understood by the `PolicySpi` implementation from
        the specified provider
    :   `NoSuchAlgorithmException` - if the specified provider does not
        support a `PolicySpi` implementation for the specified
        type
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `type` is `null`
    :   `SecurityException` - if the caller does not have permission
        to get a `Policy` instance for the specified type

    Since:
    :   1.6

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [Policy](Policy.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") type,
    [Policy.Parameters](Policy.Parameters.md "interface in java.security") params,
    [Provider](Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a `Policy` object of the specified type.

    A new `Policy` object encapsulating the
    `PolicySpi` implementation from the specified provider
    is returned. Note that the specified provider does not
    have to be registered in the provider list.

    Parameters:
    :   `type` - the specified Policy type. See the Policy section in the
        [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#policy-types)
        for a list of standard Policy types.
    :   `params` - parameters for the `Policy`, which may be
        `null`.
    :   `provider` - the `Provider`.

    Returns:
    :   the new `Policy` object

    Throws:
    :   `IllegalArgumentException` - if the specified `Provider`
        is `null`, or if the specified parameters are not
        understood by the `PolicySpi` implementation from the
        specified `Provider`
    :   `NoSuchAlgorithmException` - if the specified `Provider`
        does not support a `PolicySpi` implementation for
        the specified type
    :   `NullPointerException` - if `type` is `null`
    :   `SecurityException` - if the caller does not have permission
        to get a `Policy` instance for the specified type

    Since:
    :   1.6

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getProvider

    public [Provider](Provider.md "class in java.security") getProvider()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Return the `Provider` of this policy.

    This `Policy` instance will only have a provider if it
    was obtained via a call to `Policy.getInstance`.
    Otherwise this method returns `null`.

    Returns:
    :   the `Provider` of this policy, or `null`.

    Since:
    :   1.6
  + ### getType

    public [String](../lang/String.md "class in java.lang") getType()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Return the type of this `Policy`.

    This `Policy` instance will only have a type if it
    was obtained via a call to `Policy.getInstance`.
    Otherwise this method returns `null`.

    Returns:
    :   the type of this `Policy`, or `null`.

    Since:
    :   1.6
  + ### getParameters

    public [Policy.Parameters](Policy.Parameters.md "interface in java.security") getParameters()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Return `Policy` parameters.

    This `Policy` instance will only have parameters if it
    was obtained via a call to `Policy.getInstance`.
    Otherwise this method returns `null`.

    Returns:
    :   `Policy` parameters, or `null`.

    Since:
    :   1.6
  + ### getPermissions

    public [PermissionCollection](PermissionCollection.md "class in java.security") getPermissions([CodeSource](CodeSource.md "class in java.security") codesource)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Return a PermissionCollection object containing the set of
    permissions granted to the specified CodeSource.

    Applications are discouraged from calling this method
    since this operation may not be supported by all policy implementations.
    Applications should solely rely on the `implies` method
    to perform policy checks. If an application absolutely must call
    a getPermissions method, it should call
    `getPermissions(ProtectionDomain)`.

    The default implementation of this method returns
    Policy.UNSUPPORTED\_EMPTY\_COLLECTION. This method can be
    overridden if the policy implementation can return a set of
    permissions granted to a CodeSource.

    Parameters:
    :   `codesource` - the CodeSource to which the returned
        PermissionCollection has been granted.

    Returns:
    :   a set of permissions granted to the specified CodeSource.
        If this operation is supported, the returned
        set of permissions must be a new mutable instance
        and it must support heterogeneous Permission types.
        If this operation is not supported,
        Policy.UNSUPPORTED\_EMPTY\_COLLECTION is returned.
  + ### getPermissions

    public [PermissionCollection](PermissionCollection.md "class in java.security") getPermissions([ProtectionDomain](ProtectionDomain.md "class in java.security") domain)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Return a PermissionCollection object containing the set of
    permissions granted to the specified ProtectionDomain.

    Applications are discouraged from calling this method
    since this operation may not be supported by all policy implementations.
    Applications should rely on the `implies` method
    to perform policy checks.

    The default implementation of this method first retrieves
    the permissions returned via `getPermissions(CodeSource)`
    (the CodeSource is taken from the specified ProtectionDomain),
    as well as the permissions located inside the specified ProtectionDomain.
    All of these permissions are then combined and returned in a new
    PermissionCollection object. If `getPermissions(CodeSource)`
    returns Policy.UNSUPPORTED\_EMPTY\_COLLECTION, then this method
    returns the permissions contained inside the specified ProtectionDomain
    in a new PermissionCollection object.

    This method can be overridden if the policy implementation
    supports returning a set of permissions granted to a ProtectionDomain.

    Parameters:
    :   `domain` - the ProtectionDomain to which the returned
        PermissionCollection has been granted.

    Returns:
    :   a set of permissions granted to the specified ProtectionDomain.
        If this operation is supported, the returned
        set of permissions must be a new mutable instance
        and it must support heterogeneous Permission types.
        If this operation is not supported,
        Policy.UNSUPPORTED\_EMPTY\_COLLECTION is returned.

    Since:
    :   1.4
  + ### implies

    public boolean implies([ProtectionDomain](ProtectionDomain.md "class in java.security") domain,
    [Permission](Permission.md "class in java.security") permission)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Evaluates the global policy for the permissions granted to
    the ProtectionDomain and tests whether the permission is
    granted.

    Parameters:
    :   `domain` - the ProtectionDomain to test
    :   `permission` - the Permission object to be tested for implication.

    Returns:
    :   `true` if "permission" is a proper subset of a permission
        granted to this ProtectionDomain.

    Since:
    :   1.4

    See Also:
    :   - [`ProtectionDomain`](ProtectionDomain.md "class in java.security")
  + ### refresh

    public void refresh()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Refreshes/reloads the policy configuration. The behavior of this method
    depends on the implementation. For example, calling `refresh`
    on a file-based policy will cause the file to be re-read.

    The default implementation of this method does nothing.
    This method should be overridden if a refresh operation is supported
    by the policy implementation.