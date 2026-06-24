Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class Permissions

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.security.PermissionCollection](PermissionCollection.md "class in java.security")

java.security.Permissions

All Implemented Interfaces:
:   `Serializable`

---

public final class Permissions
extends [PermissionCollection](PermissionCollection.md "class in java.security")
implements [Serializable](../io/Serializable.md "interface in java.io")

This class represents a heterogeneous collection of permissions.
That is, it contains different types of `Permission` objects,
organized into `PermissionCollection` objects. For example, if any
`java.io.FilePermission` objects are added to an instance of
this class, they are all stored in a single `PermissionCollection`.
It is the `PermissionCollection` returned by a call to
the `newPermissionCollection` method in the `FilePermission`
class. Similarly, any `java.lang.RuntimePermission` objects are
stored in the `PermissionCollection` returned by a call to the
`newPermissionCollection` method in the `RuntimePermission`
class. Thus, this class represents a collection of
`PermissionCollection` objects.

When the `add` method is called to add a `Permission`, the
`Permission` is stored in the appropriate `PermissionCollection`.
If no such collection exists yet, the `Permission` object's class is
determined and the `newPermissionCollection` method is called on that
class to create the `PermissionCollection` and add it to the
`Permissions` object. If `newPermissionCollection` returns
`null`, then a default `PermissionCollection` that uses a
hashtable will be created and used. Each hashtable entry stores a
`Permission` object as both the key and the value.

Enumerations returned via the `elements` method are
not *fail-fast*. Modifications to a collection should not be
performed while enumerating over that collection.

Since:
:   1.2

See Also:
:   * [`Permission`](Permission.md "class in java.security")
    * [`PermissionCollection`](PermissionCollection.md "class in java.security")
    * [`AllPermission`](AllPermission.md "class in java.security")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Permissions()`

  Creates a new `Permissions` object containing no
  `PermissionCollection` objects.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(Permission permission)`

  Adds a `Permission` object to the `PermissionCollection`
  for the class the permission belongs to.

  `Enumeration<Permission>`

  `elements()`

  Returns an enumeration of all the `Permission` objects in all the
  `PermissionCollection` objects in this `Permissions` object.

  `boolean`

  `implies(Permission permission)`

  Checks to see if this object's `PermissionCollection` for
  permissions of the specified permission's class implies the permissions
  expressed in the *permission* object.

  ### Methods inherited from class java.security.[PermissionCollection](PermissionCollection.md "class in java.security")

  `elementsAsStream, isReadOnly, setReadOnly, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Permissions

    public Permissions()

    Creates a new `Permissions` object containing no
    `PermissionCollection` objects.
* ## Method Details

  + ### add

    public void add([Permission](Permission.md "class in java.security") permission)

    Adds a `Permission` object to the `PermissionCollection`
    for the class the permission belongs to. For example,
    if *permission* is a `FilePermission`, it is added to
    the `FilePermissionCollection` stored in this
    `Permissions` object.
    This method creates a new `PermissionCollection` object
    (and adds the permission to it) if an appropriate collection does
    not yet exist.

    Specified by:
    :   `add` in class `PermissionCollection`

    Parameters:
    :   `permission` - the `Permission` object to add.

    Throws:
    :   `SecurityException` - if this `Permissions` object is
        marked as readonly.

    See Also:
    :   - [`PermissionCollection.isReadOnly()`](PermissionCollection.md#isReadOnly())
  + ### implies

    public boolean implies([Permission](Permission.md "class in java.security") permission)

    Checks to see if this object's `PermissionCollection` for
    permissions of the specified permission's class implies the permissions
    expressed in the *permission* object. Returns `true` if the
    combination of permissions in the appropriate
    `PermissionCollection` (e.g., a `FilePermissionCollection`
    for a `FilePermission`) together imply the specified permission.

    For example, suppose there is a `FilePermissionCollection`
    in this `Permissions` object, and it contains one
    `FilePermission` that specifies "read" access for all files
    in all subdirectories of the "/tmp" directory, and another
    `FilePermission` that specifies "write" access for all files
    in the "/tmp/scratch/foo" directory. Then if the `implies` method
    is called with a permission specifying both "read" and "write" access
    to files in the "/tmp/scratch/foo" directory, `true` is
    returned.

    Additionally, if this `PermissionCollection` contains the
    `AllPermission`, this method will always return `true`.

    Specified by:
    :   `implies` in class `PermissionCollection`

    Parameters:
    :   `permission` - the `Permission` object to check.

    Returns:
    :   `true` if "permission" is implied by the permissions in the
        `PermissionCollection` it belongs to, `false` if not.
  + ### elements

    public [Enumeration](../util/Enumeration.md "interface in java.util")<[Permission](Permission.md "class in java.security")> elements()

    Returns an enumeration of all the `Permission` objects in all the
    `PermissionCollection` objects in this `Permissions` object.

    Specified by:
    :   `elements` in class `PermissionCollection`

    Returns:
    :   an enumeration of all the `Permission` objects.

    See Also:
    :   - [`PermissionCollection.elementsAsStream()`](PermissionCollection.md#elementsAsStream())