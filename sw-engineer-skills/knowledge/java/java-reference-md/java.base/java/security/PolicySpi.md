Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class PolicySpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.PolicySpi

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="17",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public abstract class PolicySpi
extends [Object](../lang/Object.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is only useful in conjunction with
[the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
and subject to removal in a future release. Consequently, this class
is also deprecated and subject to removal. There is no replacement for
the Security Manager or this class.

This class defines the *Service Provider Interface* (**SPI**)
for the `Policy` class.
All the abstract methods in this class must be implemented by each
service provider who wishes to supply a `Policy` implementation.

Subclass implementations of this abstract class must provide
a public constructor that takes a `Policy.Parameters`
object as an input parameter. This constructor also must throw
an `IllegalArgumentException` if it does not understand the
`Policy.Parameters` input.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PolicySpi()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected PermissionCollection`

  `engineGetPermissions(CodeSource codesource)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Return a PermissionCollection object containing the set of
  permissions granted to the specified CodeSource.

  `protected PermissionCollection`

  `engineGetPermissions(ProtectionDomain domain)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Return a PermissionCollection object containing the set of
  permissions granted to the specified ProtectionDomain.

  `protected abstract boolean`

  `engineImplies(ProtectionDomain domain,
  Permission permission)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Check whether the policy has granted a Permission to a ProtectionDomain.

  `protected void`

  `engineRefresh()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Refreshes/reloads the policy configuration.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PolicySpi

    public PolicySpi()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructor for subclasses to call.
* ## Method Details

  + ### engineImplies

    protected abstract boolean engineImplies([ProtectionDomain](ProtectionDomain.md "class in java.security") domain,
    [Permission](Permission.md "class in java.security") permission)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Check whether the policy has granted a Permission to a ProtectionDomain.

    Parameters:
    :   `domain` - the ProtectionDomain to check.
    :   `permission` - check whether this permission is granted to the
        specified domain.

    Returns:
    :   boolean `true` if the permission is granted to the domain.
  + ### engineRefresh

    protected void engineRefresh()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Refreshes/reloads the policy configuration. The behavior of this method
    depends on the implementation. For example, calling `refresh`
    on a file-based policy will cause the file to be re-read.

    The default implementation of this method does nothing.
    This method should be overridden if a refresh operation is supported
    by the policy implementation.
  + ### engineGetPermissions

    protected [PermissionCollection](PermissionCollection.md "class in java.security") engineGetPermissions([CodeSource](CodeSource.md "class in java.security") codesource)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Return a PermissionCollection object containing the set of
    permissions granted to the specified CodeSource.

    The default implementation of this method returns
    Policy.UNSUPPORTED\_EMPTY\_COLLECTION object. This method can be
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
  + ### engineGetPermissions

    protected [PermissionCollection](PermissionCollection.md "class in java.security") engineGetPermissions([ProtectionDomain](ProtectionDomain.md "class in java.security") domain)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Return a PermissionCollection object containing the set of
    permissions granted to the specified ProtectionDomain.

    The default implementation of this method returns
    Policy.UNSUPPORTED\_EMPTY\_COLLECTION object. This method can be
    overridden if the policy implementation can return a set of
    permissions granted to a ProtectionDomain.

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