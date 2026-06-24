Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class PropertyPermission

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.security.Permission](../security/Permission.md "class in java.security")

[java.security.BasicPermission](../security/BasicPermission.md "class in java.security")

java.util.PropertyPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class PropertyPermission
extends [BasicPermission](../security/BasicPermission.md "class in java.security")

This class is for property permissions.

The name is the name of the property ("java.home",
"os.name", etc). The naming
convention follows the hierarchical property naming convention.
Also, an asterisk
may appear at the end of the name, following a ".", or by itself, to
signify a wildcard match. For example: "java.\*" and "\*" signify a wildcard
match, while "\*java" and "a\*b" do not.

The actions to be granted are passed to the constructor in a string containing
a list of one or more comma-separated keywords. The possible keywords are
"read" and "write". Their meaning is defined as follows:

read: read permission. Allows `System.getProperty` to be called. write: write permission. Allows `System.setProperty` to be called.

The actions string is converted to lowercase before processing.

Care should be taken before granting code permission to access
certain system properties. For example, granting permission to
access the "java.home" system property gives potentially malevolent
code sensitive information about the system environment (the Java
installation directory). Also, granting permission to access
the "user.name" and "user.home" system properties gives potentially
malevolent code sensitive information about the user environment
(the user's account name and home directory).

Since:
:   1.2

See Also:
:   * [`BasicPermission`](../security/BasicPermission.md "class in java.security")
    * [`Permission`](../security/Permission.md "class in java.security")
    * [`Permissions`](../security/Permissions.md "class in java.security")
    * [`PermissionCollection`](../security/PermissionCollection.md "class in java.security")
    * [`SecurityManager`](../lang/SecurityManager.md "class in java.lang")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyPermission(String name,
  String actions)`

  Creates a new PropertyPermission object with the specified name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Checks two PropertyPermission objects for equality.

  `String`

  `getActions()`

  Returns the "canonical string representation" of the actions.

  `int`

  `hashCode()`

  Returns the hash code value for this object.

  `boolean`

  `implies(Permission p)`

  Checks if this PropertyPermission object "implies" the specified
  permission.

  `PermissionCollection`

  `newPermissionCollection()`

  Returns a new PermissionCollection object for storing
  PropertyPermission objects.

  ### Methods inherited from class java.security.[Permission](../security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PropertyPermission

    public PropertyPermission([String](../lang/String.md "class in java.lang") name,
    [String](../lang/String.md "class in java.lang") actions)

    Creates a new PropertyPermission object with the specified name.
    The name is the name of the system property, and
    *actions* contains a comma-separated list of the
    desired actions granted on the property. Possible actions are
    "read" and "write".

    Parameters:
    :   `name` - the name of the PropertyPermission.
    :   `actions` - the actions string.

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty or if
        `actions` is invalid.
* ## Method Details

  + ### implies

    public boolean implies([Permission](../security/Permission.md "class in java.security") p)

    Checks if this PropertyPermission object "implies" the specified
    permission.

    More specifically, this method returns true if:
    - *p* is an instanceof PropertyPermission,- *p*'s actions are a subset of this
        object's actions, and- *p*'s name is implied by this object's
          name. For example, "java.\*" implies "java.home".

    Overrides:
    :   `implies` in class `BasicPermission`

    Parameters:
    :   `p` - the permission to check against.

    Returns:
    :   true if the specified permission is implied by this object,
        false if not.
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Checks two PropertyPermission objects for equality. Checks that *obj* is
    a PropertyPermission, and has the same name and actions as this object.

    Overrides:
    :   `equals` in class `BasicPermission`

    Parameters:
    :   `obj` - the object we are testing for equality with this object.

    Returns:
    :   true if obj is a PropertyPermission, and has the same name and
        actions as this PropertyPermission object.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this object.
    The hash code used is the hash code of this permissions name, that is,
    `getName().hashCode()`, where `getName` is
    from the Permission superclass.

    Overrides:
    :   `hashCode` in class `BasicPermission`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### getActions

    public [String](../lang/String.md "class in java.lang") getActions()

    Returns the "canonical string representation" of the actions.
    That is, this method always returns present actions in the following order:
    read, write. For example, if this PropertyPermission object
    allows both write and read actions, a call to `getActions`
    will return the string "read,write".

    Overrides:
    :   `getActions` in class `BasicPermission`

    Returns:
    :   the canonical string representation of the actions.
  + ### newPermissionCollection

    public [PermissionCollection](../security/PermissionCollection.md "class in java.security") newPermissionCollection()

    Returns a new PermissionCollection object for storing
    PropertyPermission objects.

    Overrides:
    :   `newPermissionCollection` in class `BasicPermission`

    Returns:
    :   a new PermissionCollection object suitable for storing
        PropertyPermissions.