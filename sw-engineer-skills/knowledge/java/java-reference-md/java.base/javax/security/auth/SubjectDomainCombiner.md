Module [java.base](../../../module-summary.md)

Package [javax.security.auth](package-summary.md)

# Class SubjectDomainCombiner

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.security.auth.SubjectDomainCombiner

All Implemented Interfaces:
:   `DomainCombiner`

---

[@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="17",
[forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
public class SubjectDomainCombiner
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [DomainCombiner](../../../java/security/DomainCombiner.md "interface in java.security")

Deprecated, for removal: This API element is subject to removal in a future version.

This class is only useful in conjunction with
[the Security Manager](../../../java/lang/SecurityManager.md "class in java.lang"), which is deprecated
and subject to removal in a future release. Consequently, this class
is also deprecated and subject to removal. There is no replacement for
the Security Manager or this class.

A `SubjectDomainCombiner` updates ProtectionDomains
with Principals from the `Subject` associated with this
`SubjectDomainCombiner`.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SubjectDomainCombiner(Subject subject)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Associate the provided `Subject` with this
  `SubjectDomainCombiner`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `ProtectionDomain[]`

  `combine(ProtectionDomain[] currentDomains,
  ProtectionDomain[] assignedDomains)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Update the relevant ProtectionDomains with the Principals
  from the `Subject` associated with this
  `SubjectDomainCombiner`.

  `Subject`

  `getSubject()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Get the `Subject` associated with this
  `SubjectDomainCombiner`.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SubjectDomainCombiner

    public SubjectDomainCombiner([Subject](Subject.md "class in javax.security.auth") subject)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Associate the provided `Subject` with this
    `SubjectDomainCombiner`.

    Parameters:
    :   `subject` - the `Subject` to be associated with
        this `SubjectDomainCombiner`.
* ## Method Details

  + ### getSubject

    public [Subject](Subject.md "class in javax.security.auth") getSubject()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Get the `Subject` associated with this
    `SubjectDomainCombiner`.

    Returns:
    :   the `Subject` associated with this
        `SubjectDomainCombiner`, or `null`
        if no `Subject` is associated with this
        `SubjectDomainCombiner`.

    Throws:
    :   `SecurityException` - if the caller does not have permission
        to get the `Subject` associated with this
        `SubjectDomainCombiner`.
  + ### combine

    public [ProtectionDomain](../../../java/security/ProtectionDomain.md "class in java.security")[] combine([ProtectionDomain](../../../java/security/ProtectionDomain.md "class in java.security")[] currentDomains,
    [ProtectionDomain](../../../java/security/ProtectionDomain.md "class in java.security")[] assignedDomains)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Update the relevant ProtectionDomains with the Principals
    from the `Subject` associated with this
    `SubjectDomainCombiner`.

    A new `ProtectionDomain` instance is created
    for each non-static `ProtectionDomain` (
    (staticPermissionsOnly() == false)
    in the `currentDomains` array. Each new `ProtectionDomain`
    instance is created using the `CodeSource`,
    `Permission`s and `ClassLoader`
    from the corresponding `ProtectionDomain` in
    `currentDomains`, as well as with the Principals from
    the `Subject` associated with this
    `SubjectDomainCombiner`. Static ProtectionDomains are
    combined as-is and no new instance is created.

    All of the ProtectionDomains (static and newly instantiated) are
    combined into a new array. The ProtectionDomains from the
    `assignedDomains` array are appended to this new array,
    and the result is returned.

    Note that optimizations such as the removal of duplicate
    ProtectionDomains may have occurred.
    In addition, caching of ProtectionDomains may be permitted.

    Specified by:
    :   `combine` in interface `DomainCombiner`

    Parameters:
    :   `currentDomains` - the ProtectionDomains associated with the
        current execution Thread, up to the most recent
        privileged `ProtectionDomain`.
        The ProtectionDomains are listed in order of execution,
        with the most recently executing `ProtectionDomain`
        residing at the beginning of the array. This parameter may
        be `null` if the current execution Thread
        has no associated ProtectionDomains.
    :   `assignedDomains` - the ProtectionDomains inherited from the
        parent Thread, or the ProtectionDomains from the
        privileged `context`, if a call to
        `AccessController.doPrivileged(..., context)`
        had occurred This parameter may be `null`
        if there were no ProtectionDomains inherited from the
        parent Thread, or from the privileged `context`.

    Returns:
    :   a new array consisting of the updated ProtectionDomains,
        or `null`.