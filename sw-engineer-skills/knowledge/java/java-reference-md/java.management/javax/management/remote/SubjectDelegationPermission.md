Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class SubjectDelegationPermission

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../../java.base/java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

javax.management.remote.SubjectDelegationPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class SubjectDelegationPermission
extends [BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

Permission required by an authentication identity to perform
operations on behalf of an authorization identity.

A SubjectDelegationPermission contains a name (also referred
to as a "target name") but no actions list; you either have the
named permission or you don't.

The target name is the name of the authorization principal
classname followed by a period and the authorization principal
name, that is
`"PrincipalClassName.PrincipalName"`.

An asterisk may appear by itself, or if immediately preceded
by a "." may appear at the end of the target name, to signify a
wildcard match.

For example, "\*", "javax.management.remote.JMXPrincipal.\*" and
"javax.management.remote.JMXPrincipal.delegate" are valid target
names. The first one denotes any principal name from any principal
class, the second one denotes any principal name of the concrete
principal class `javax.management.remote.JMXPrincipal`
and the third one denotes a concrete principal name
`delegate` of the concrete principal class
`javax.management.remote.JMXPrincipal`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.remote.SubjectDelegationPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SubjectDelegationPermission(String name)`

  Creates a new SubjectDelegationPermission with the specified name.

  `SubjectDelegationPermission(String name,
  String actions)`

  Creates a new SubjectDelegationPermission object with the
  specified name.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../../../java.base/java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SubjectDelegationPermission

    public SubjectDelegationPermission([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a new SubjectDelegationPermission with the specified name.
    The name is the symbolic name of the SubjectDelegationPermission.

    Parameters:
    :   `name` - the name of the SubjectDelegationPermission

    Throws:
    :   `NullPointerException` - if `name` is
        `null`.
    :   `IllegalArgumentException` - if `name` is empty.
  + ### SubjectDelegationPermission

    public SubjectDelegationPermission([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") actions)

    Creates a new SubjectDelegationPermission object with the
    specified name. The name is the symbolic name of the
    SubjectDelegationPermission, and the actions String is
    currently unused and must be null.

    Parameters:
    :   `name` - the name of the SubjectDelegationPermission
    :   `actions` - must be null.

    Throws:
    :   `NullPointerException` - if `name` is
        `null`.
    :   `IllegalArgumentException` - if `name` is empty
        or `actions` is not null.