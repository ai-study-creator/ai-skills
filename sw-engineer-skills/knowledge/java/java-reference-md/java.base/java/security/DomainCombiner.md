Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface DomainCombiner

All Known Implementing Classes:
:   `SubjectDomainCombiner`

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="17",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public interface DomainCombiner

Deprecated, for removal: This API element is subject to removal in a future version.

This class is only useful in conjunction with
[the Security Manager](../lang/SecurityManager.md "class in java.lang"), which is deprecated
and subject to removal in a future release. Consequently, this class
is also deprecated and subject to removal. There is no replacement for
the Security Manager or this class.

A `DomainCombiner` provides a means to dynamically
update the ProtectionDomains associated with the current
`AccessControlContext`.

A `DomainCombiner` is passed as a parameter to the
appropriate constructor for `AccessControlContext`.
The newly constructed context is then passed to the
`AccessController.doPrivileged(..., context)` method
to bind the provided context (and associated `DomainCombiner`)
with the current execution thread. Subsequent calls to
`AccessController.getContext` or
`AccessController.checkPermission`
cause the `DomainCombiner.combine` to get invoked.

The combine method takes two arguments. The first argument represents
an array of ProtectionDomains from the current execution thread,
since the most recent call to `AccessController.doPrivileged`.
If no call to doPrivileged was made, then the first argument will contain
all the ProtectionDomains from the current execution thread.
The second argument represents an array of inherited ProtectionDomains,
which may be `null`. ProtectionDomains may be inherited
from a parent thread, or from a privileged context. If no call to
doPrivileged was made, then the second argument will contain the
ProtectionDomains inherited from the parent thread. If one or more calls
to doPrivileged were made, and the most recent call was to
doPrivileged(action, context), then the second argument will contain the
ProtectionDomains from the privileged context. If the most recent call
was to doPrivileged(action), then there is no privileged context,
and the second argument will be `null`.

The `combine` method investigates the two input arrays
of ProtectionDomains and returns a single array containing the updated
ProtectionDomains. In the simplest case, the `combine`
method merges the two stacks into one. In more complex cases,
the `combine` method returns a modified
stack of ProtectionDomains. The modification may have added new
ProtectionDomains, removed certain ProtectionDomains, or simply
updated existing ProtectionDomains. Re-ordering and other optimizations
to the ProtectionDomains are also permitted. Typically the
`combine` method bases its updates on the information
encapsulated in the `DomainCombiner`.

After the `AccessController.getContext` method
receives the combined stack of ProtectionDomains back from
the `DomainCombiner`, it returns a new
AccessControlContext that has both the combined ProtectionDomains
as well as the `DomainCombiner`.

Since:
:   1.3

See Also:
:   * [`AccessController`](AccessController.md "class in java.security")
    * [`AccessControlContext`](AccessControlContext.md "class in java.security")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `ProtectionDomain[]`

  `combine(ProtectionDomain[] currentDomains,
  ProtectionDomain[] assignedDomains)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Modify or update the provided ProtectionDomains.

* ## Method Details

  + ### combine

    [ProtectionDomain](ProtectionDomain.md "class in java.security")[] combine([ProtectionDomain](ProtectionDomain.md "class in java.security")[] currentDomains,
    [ProtectionDomain](ProtectionDomain.md "class in java.security")[] assignedDomains)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Modify or update the provided ProtectionDomains.
    ProtectionDomains may be added to or removed from the given
    ProtectionDomains. The ProtectionDomains may be re-ordered.
    Individual ProtectionDomains may be modified (with a new
    set of Permissions, for example).

    Parameters:
    :   `currentDomains` - the ProtectionDomains associated with the
        current execution thread, up to the most recent
        privileged `ProtectionDomain`.
        The ProtectionDomains are listed in order of execution,
        with the most recently executing `ProtectionDomain`
        residing at the beginning of the array. This parameter may
        be `null` if the current execution thread
        has no associated ProtectionDomains.
    :   `assignedDomains` - an array of inherited ProtectionDomains.
        ProtectionDomains may be inherited from a parent thread,
        or from a privileged `AccessControlContext`.
        This parameter may be `null`
        if there are no inherited ProtectionDomains.

    Returns:
    :   a new array consisting of the updated ProtectionDomains,
        or `null`.