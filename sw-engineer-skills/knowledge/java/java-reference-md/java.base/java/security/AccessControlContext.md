Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class AccessControlContext

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.AccessControlContext

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="17",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public final class AccessControlContext
extends [Object](../lang/Object.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is only useful in conjunction with
[the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
and subject to removal in a future release. Consequently, this class
is also deprecated and subject to removal. There is no replacement for
the Security Manager or this class.

An `AccessControlContext` is used to make system resource access
decisions based on the context it encapsulates.

More specifically, it encapsulates a context and
has a single method, `checkPermission`,
that is equivalent to the `checkPermission` method
in the `AccessController` class, with one difference:
The `checkPermission` method makes access decisions based on the
context it encapsulates,
rather than that of the current execution thread.

Thus, the purpose of `AccessControlContext` is for those
situations where a security check that should be made within a given context
actually needs to be done from within a
*different* context (for example, from within a worker thread).

An `AccessControlContext` is created by calling the
`AccessController.getContext` method.
The `getContext` method takes a "snapshot"
of the current calling context, and places
it in an `AccessControlContext` object, which it returns.
A sample call is the following:

```
   AccessControlContext acc = AccessController.getContext()
```

Code within a different context can subsequently call the
`checkPermission` method on the
previously-saved `AccessControlContext` object. A sample call is the
following:

```
   acc.checkPermission(permission)
```

Since:
:   1.2

See Also:
:   * [`AccessController`](AccessController.md "class in java.security")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessControlContext(AccessControlContext acc,
  DomainCombiner combiner)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Create a new `AccessControlContext` with the given
  `AccessControlContext` and `DomainCombiner`.

  `AccessControlContext(ProtectionDomain[] context)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Create an `AccessControlContext` with the given array of
  `ProtectionDomain` objects.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `checkPermission(Permission perm)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Determines whether the access request indicated by the
  specified permission should be allowed or denied, based on
  the security policy currently in effect, and the context in
  this object.

  `boolean`

  `equals(Object obj)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Checks two `AccessControlContext` objects for equality.

  `DomainCombiner`

  `getDomainCombiner()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Get the `DomainCombiner` associated with this
  `AccessControlContext`.

  `int`

  `hashCode()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the hash code value for this context.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessControlContext

    public AccessControlContext([ProtectionDomain](ProtectionDomain.md "class in java.security")[] context)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Create an `AccessControlContext` with the given array of
    `ProtectionDomain` objects.
    Context must not be `null`. Duplicate domains will be removed
    from the context.

    Parameters:
    :   `context` - the `ProtectionDomain` objects associated with this
        context. The non-duplicate domains are copied from the array. Subsequent
        changes to the array will not affect this `AccessControlContext`.

    Throws:
    :   `NullPointerException` - if `context` is `null`
  + ### AccessControlContext

    public AccessControlContext([AccessControlContext](AccessControlContext.md "class in java.security") acc,
    [DomainCombiner](DomainCombiner.md "interface in java.security") combiner)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Create a new `AccessControlContext` with the given
    `AccessControlContext` and `DomainCombiner`.
    This constructor associates the provided
    `DomainCombiner` with the provided
    `AccessControlContext`.

    Parameters:
    :   `acc` - the `AccessControlContext` associated
        with the provided `DomainCombiner`.
    :   `combiner` - the `DomainCombiner` to be associated
        with the provided `AccessControlContext`.

    Throws:
    :   `NullPointerException` - if the provided
        `context` is `null`.
    :   `SecurityException` - if a security manager is installed and the
        caller does not have the "createAccessControlContext"
        [`SecurityPermission`](SecurityPermission.md "class in java.security")

    Since:
    :   1.3
* ## Method Details

  + ### getDomainCombiner

    public [DomainCombiner](DomainCombiner.md "interface in java.security") getDomainCombiner()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Get the `DomainCombiner` associated with this
    `AccessControlContext`.

    Returns:
    :   the `DomainCombiner` associated with this
        `AccessControlContext`, or `null`
        if there is none.

    Throws:
    :   `SecurityException` - if a security manager is installed and
        the caller does not have the "getDomainCombiner"
        [`SecurityPermission`](SecurityPermission.md "class in java.security")

    Since:
    :   1.3
  + ### checkPermission

    public void checkPermission([Permission](Permission.md "class in java.security") perm)
    throws [AccessControlException](AccessControlException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Determines whether the access request indicated by the
    specified permission should be allowed or denied, based on
    the security policy currently in effect, and the context in
    this object. The request is allowed only if every
    `ProtectionDomain` in the context implies the permission.
    Otherwise the request is denied.

    This method quietly returns if the access request
    is permitted, or throws a suitable `AccessControlException`
    otherwise.

    Parameters:
    :   `perm` - the requested permission.

    Throws:
    :   `AccessControlException` - if the specified permission
        is not permitted, based on the current security policy and the
        context encapsulated by this object.
    :   `NullPointerException` - if the permission to check for is
        `null`.
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Checks two `AccessControlContext` objects for equality.
    Checks that `obj` is
    an `AccessControlContext` and has the same set of
    `ProtectionDomain` objects as this context.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object we are testing for equality with this object.

    Returns:
    :   `true` if `obj` is an `AccessControlContext`,
        and has the same set of `ProtectionDomain` objects as this context,
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the hash code value for this context. The hash code
    is computed by exclusive or-ing the hash code of all the protection
    domains in the context together.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this context.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))