Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanServerPermission

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../java.base/java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../java.base/java/security/BasicPermission.md "class in java.security")

javax.management.MBeanServerPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public class MBeanServerPermission
extends [BasicPermission](../../../java.base/java/security/BasicPermission.md "class in java.security")

A Permission to perform actions related to MBeanServers.
The *name* of the permission specifies the operation requested
or granted by the permission. For a granted permission, it can be
`*` to allow all of the MBeanServer operations specified below.
Otherwise, for a granted or requested permission, it must be one of the
following:

createMBeanServer
:   Create a new MBeanServer object using the method
    [`MBeanServerFactory.createMBeanServer()`](MBeanServerFactory.md#createMBeanServer()) or
    [`MBeanServerFactory.createMBeanServer(java.lang.String)`](MBeanServerFactory.md#createMBeanServer(java.lang.String)).

    findMBeanServer
    :   Find an MBeanServer with a given name, or all MBeanServers in this
        JVM, using the method [`MBeanServerFactory.findMBeanServer(java.lang.String)`](MBeanServerFactory.md#findMBeanServer(java.lang.String)).

        newMBeanServer
        :   Create a new MBeanServer object without keeping a reference to it,
            using the method [`MBeanServerFactory.newMBeanServer()`](MBeanServerFactory.md#newMBeanServer()) or
            [`MBeanServerFactory.newMBeanServer(java.lang.String)`](MBeanServerFactory.md#newMBeanServer(java.lang.String)).

            releaseMBeanServer
            :   Remove the MBeanServerFactory's reference to an MBeanServer,
                using the method [`MBeanServerFactory.releaseMBeanServer(javax.management.MBeanServer)`](MBeanServerFactory.md#releaseMBeanServer(javax.management.MBeanServer)).

The *name* of the permission can also denote a list of one or more
comma-separated operations. Spaces are allowed at the beginning and
end of the *name* and before and after commas.

`MBeanServerPermission("createMBeanServer")` implies
`MBeanServerPermission("newMBeanServer")`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanServerPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanServerPermission(String name)`

  Create a new MBeanServerPermission with the given name.

  `MBeanServerPermission(String name,
  String actions)`

  Create a new MBeanServerPermission with the given name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Checks two MBeanServerPermission objects for equality.

  `int`

  `hashCode()`

  Returns the hash code value for this object.

  `boolean`

  `implies(Permission p)`

  Checks if this MBeanServerPermission object "implies" the specified
  permission.

  `PermissionCollection`

  `newPermissionCollection()`

  Returns a new `PermissionCollection` object for storing
  `BasicPermission` objects.

  ### Methods inherited from class java.security.[BasicPermission](../../../java.base/java/security/BasicPermission.md "class in java.security")

  `getActions`

  ### Methods inherited from class java.security.[Permission](../../../java.base/java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MBeanServerPermission

    public MBeanServerPermission([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Create a new MBeanServerPermission with the given name.

    This constructor is equivalent to
    `MBeanServerPermission(name,null)`.

    Parameters:
    :   `name` - the name of the granted permission. It must
        respect the constraints spelt out in the description of the
        [`MBeanServerPermission`](MBeanServerPermission.md "class in javax.management") class.

    Throws:
    :   `NullPointerException` - if the name is null.
    :   `IllegalArgumentException` - if the name is not
        `*` or one of the allowed names or a comma-separated
        list of the allowed names.
  + ### MBeanServerPermission

    public MBeanServerPermission([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") actions)

    Create a new MBeanServerPermission with the given name.

    Parameters:
    :   `name` - the name of the granted permission. It must
        respect the constraints spelt out in the description of the
        [`MBeanServerPermission`](MBeanServerPermission.md "class in javax.management") class.
    :   `actions` - the associated actions. This parameter is not
        currently used and must be null or the empty string.

    Throws:
    :   `NullPointerException` - if the name is null.
    :   `IllegalArgumentException` - if the name is not
        `*` or one of the allowed names or a comma-separated
        list of the allowed names, or if `actions` is a non-null
        non-empty string.
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty or
        if arguments are invalid.
* ## Method Details

  + ### hashCode

    public int hashCode()

    Description copied from class: `BasicPermission`

    Returns the hash code value for this object.
    The hash code used is the hash code of the name, that is,
    `getName().hashCode()`, where `getName` is
    from the `Permission` superclass.

    Overrides:
    :   `hashCode` in class `BasicPermission`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### implies

    public boolean implies([Permission](../../../java.base/java/security/Permission.md "class in java.security") p)

    Checks if this MBeanServerPermission object "implies" the specified
    permission.

    More specifically, this method returns true if:

    - *p* is an instance of MBeanServerPermission,
    - *p*'s target names are a subset of this object's target
      names

    The `createMBeanServer` permission implies the
    `newMBeanServer` permission.

    Overrides:
    :   `implies` in class `BasicPermission`

    Parameters:
    :   `p` - the permission to check against.

    Returns:
    :   true if the specified permission is implied by this object,
        false if not.
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Checks two MBeanServerPermission objects for equality. Checks that
    *obj* is an MBeanServerPermission, and represents the same
    list of allowable actions as this object.

    Overrides:
    :   `equals` in class `BasicPermission`

    Parameters:
    :   `obj` - the object we are testing for equality with this object.

    Returns:
    :   true if the objects are equal.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### newPermissionCollection

    public [PermissionCollection](../../../java.base/java/security/PermissionCollection.md "class in java.security") newPermissionCollection()

    Description copied from class: `BasicPermission`

    Returns a new `PermissionCollection` object for storing
    `BasicPermission` objects.

    `BasicPermission` objects must be stored in a manner
    that allows them to be inserted in any order, but that also enables the
    [`PermissionCollection.implies(java.security.Permission)`](../../../java.base/java/security/PermissionCollection.md#implies(java.security.Permission)) method
    to be implemented in an efficient (and consistent) manner.

    Overrides:
    :   `newPermissionCollection` in class `BasicPermission`

    Returns:
    :   a new `PermissionCollection` object suitable for
        storing `BasicPermission` objects.