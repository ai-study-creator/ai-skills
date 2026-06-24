Module [java.base](../../../../module-summary.md)

Package [java.nio.file.attribute](package-summary.md)

# Class UserPrincipalLookupService

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.nio.file.attribute.UserPrincipalLookupService

---

public abstract class UserPrincipalLookupService
extends [Object](../../../lang/Object.md "class in java.lang")

An object to lookup user and group principals by name. A [`UserPrincipal`](UserPrincipal.md "interface in java.nio.file.attribute")
represents an identity that may be used to determine access rights to objects
in a file system. A [`GroupPrincipal`](GroupPrincipal.md "interface in java.nio.file.attribute") represents a *group identity*.
A `UserPrincipalLookupService` defines methods to lookup identities by
name or group name (which are typically user or account names). Whether names
and group names are case sensitive or not depends on the implementation.
The exact definition of a group is implementation specific but typically a
group represents an identity created for administrative purposes so as to
determine the access rights for the members of the group. In particular it is
implementation specific if the *namespace* for names and groups is the
same or is distinct. To ensure consistent and correct behavior across
platforms it is recommended that this API be used as if the namespaces are
distinct. In other words, the [`lookupPrincipalByName`](#lookupPrincipalByName(java.lang.String)) should be used to lookup users, and [`lookupPrincipalByGroupName`](#lookupPrincipalByGroupName(java.lang.String)) should be used to
lookup groups.

Since:
:   1.7

See Also:
:   * [`FileSystem.getUserPrincipalLookupService()`](../FileSystem.md#getUserPrincipalLookupService())

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `UserPrincipalLookupService()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract GroupPrincipal`

  `lookupPrincipalByGroupName(String group)`

  Lookup a group principal by group name.

  `abstract UserPrincipal`

  `lookupPrincipalByName(String name)`

  Lookup a user principal by name.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### UserPrincipalLookupService

    protected UserPrincipalLookupService()

    Initializes a new instance of this class.
* ## Method Details

  + ### lookupPrincipalByName

    public abstract [UserPrincipal](UserPrincipal.md "interface in java.nio.file.attribute") lookupPrincipalByName([String](../../../lang/String.md "class in java.lang") name)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Lookup a user principal by name.

    Parameters:
    :   `name` - the string representation of the user principal to lookup

    Returns:
    :   a user principal

    Throws:
    :   `UserPrincipalNotFoundException` - the principal does not exist
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, and a security manager is
        installed, it checks
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("lookupUserInformation")`
  + ### lookupPrincipalByGroupName

    public abstract [GroupPrincipal](GroupPrincipal.md "interface in java.nio.file.attribute") lookupPrincipalByGroupName([String](../../../lang/String.md "class in java.lang") group)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Lookup a group principal by group name.

    Where an implementation does not support any notion of group then
    this method always throws [`UserPrincipalNotFoundException`](UserPrincipalNotFoundException.md "class in java.nio.file.attribute"). Where
    the namespace for user accounts and groups is the same, then this method
    is identical to invoking [`lookupPrincipalByName`](#lookupPrincipalByName(java.lang.String)).

    Parameters:
    :   `group` - the string representation of the group to lookup

    Returns:
    :   a group principal

    Throws:
    :   `UserPrincipalNotFoundException` - the principal does not exist or is not a group
    :   `IOException` - if an I/O error occurs
    :   `SecurityException` - In the case of the default provider, and a security manager is
        installed, it checks
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("lookupUserInformation")`