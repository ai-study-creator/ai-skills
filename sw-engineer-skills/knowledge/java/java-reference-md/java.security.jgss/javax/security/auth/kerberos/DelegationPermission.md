Module [java.security.jgss](../../../../module-summary.md)

Package [javax.security.auth.kerberos](package-summary.md)

# Class DelegationPermission

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../../../java.base/java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../../../java.base/java/security/BasicPermission.md "class in java.security")

javax.security.auth.kerberos.DelegationPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class DelegationPermission
extends [BasicPermission](../../../../../java.base/java/security/BasicPermission.md "class in java.security")
implements [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

This class is used to restrict the usage of the Kerberos
delegation model, ie: forwardable and proxiable tickets.

The target name of this `Permission` specifies a pair of
kerberos service principals. The first is the subordinate service principal
being entrusted to use the TGT. The second service principal designates
the target service the subordinate service principal is to
interact with on behalf of the initiating KerberosPrincipal. This
latter service principal is specified to restrict the use of a
proxiable ticket.

For example, to specify the "host" service use of a forwardable TGT the
target permission is specified as follows:

```
  DelegationPermission("\"host/foo.example.com@EXAMPLE.COM\" \"krbtgt/EXAMPLE.COM@EXAMPLE.COM\"");
```

To give the "backup" service a proxiable nfs service ticket the target permission
might be specified:

```
  DelegationPermission("\"backup/bar.example.com@EXAMPLE.COM\" \"nfs/home.EXAMPLE.COM@EXAMPLE.COM\"");
```

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.kerberos.DelegationPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DelegationPermission(String principals)`

  Create a new `DelegationPermission`
  with the specified subordinate and target principals.

  `DelegationPermission(String principals,
  String actions)`

  Create a new `DelegationPermission`
  with the specified subordinate and target principals.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Checks two DelegationPermission objects for equality.

  `int`

  `hashCode()`

  Returns the hash code value for this object.

  `boolean`

  `implies(Permission p)`

  Checks if this Kerberos delegation permission object "implies" the
  specified permission.

  `PermissionCollection`

  `newPermissionCollection()`

  Returns a PermissionCollection object for storing
  DelegationPermission objects.

  ### Methods inherited from class java.security.[BasicPermission](../../../../../java.base/java/security/BasicPermission.md "class in java.security")

  `getActions`

  ### Methods inherited from class java.security.[Permission](../../../../../java.base/java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DelegationPermission

    public DelegationPermission([String](../../../../../java.base/java/lang/String.md "class in java.lang") principals)

    Create a new `DelegationPermission`
    with the specified subordinate and target principals.

    Parameters:
    :   `principals` - the name of the subordinate and target principals

    Throws:
    :   `NullPointerException` - if `principals` is `null`.
    :   `IllegalArgumentException` - if `principals` is empty,
        or does not contain a pair of principals, or is improperly quoted
  + ### DelegationPermission

    public DelegationPermission([String](../../../../../java.base/java/lang/String.md "class in java.lang") principals,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") actions)

    Create a new `DelegationPermission`
    with the specified subordinate and target principals.

    Parameters:
    :   `principals` - the name of the subordinate and target principals
    :   `actions` - should be null.

    Throws:
    :   `NullPointerException` - if `principals` is `null`.
    :   `IllegalArgumentException` - if `principals` is empty,
        or does not contain a pair of principals, or is improperly quoted
* ## Method Details

  + ### implies

    public boolean implies([Permission](../../../../../java.base/java/security/Permission.md "class in java.security") p)

    Checks if this Kerberos delegation permission object "implies" the
    specified permission.

    This method returns true if this `DelegationPermission`
    is equal to `p`, and returns false otherwise.

    Overrides:
    :   `implies` in class `BasicPermission`

    Parameters:
    :   `p` - the permission to check against.

    Returns:
    :   true if the specified permission is implied by this object,
        false if not.
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Checks two DelegationPermission objects for equality.

    Overrides:
    :   `equals` in class `BasicPermission`

    Parameters:
    :   `obj` - the object to test for equality with this object.

    Returns:
    :   true if `obj` is a DelegationPermission, and
        has the same subordinate and service principal as this
        DelegationPermission object.

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this object.

    Overrides:
    :   `hashCode` in class `BasicPermission`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### newPermissionCollection

    public [PermissionCollection](../../../../../java.base/java/security/PermissionCollection.md "class in java.security") newPermissionCollection()

    Returns a PermissionCollection object for storing
    DelegationPermission objects.
      
    DelegationPermission objects must be stored in a manner that
    allows them to be inserted into the collection in any order, but
    that also enables the PermissionCollection implies method to
    be implemented in an efficient (and consistent) manner.

    Overrides:
    :   `newPermissionCollection` in class `BasicPermission`

    Returns:
    :   a new PermissionCollection object suitable for storing
        DelegationPermissions.