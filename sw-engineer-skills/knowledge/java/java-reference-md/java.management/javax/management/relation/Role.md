Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class Role

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.relation.Role

All Implemented Interfaces:
:   `Serializable`

---

public class Role
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Represents a role: includes a role name and referenced MBeans (via their
ObjectNames). The role value is always represented as an ArrayList
collection (of ObjectNames) to homogenize the access.

The **serialVersionUID** of this class is `-279985518429862552L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.Role)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Role(String roleName,
  List<ObjectName> roleValue)`

  Make a new Role object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Clone the role object.

  `String`

  `getRoleName()`

  Retrieves role name.

  `List<ObjectName>`

  `getRoleValue()`

  Retrieves role value.

  `static String`

  `roleValueToString(List<ObjectName> roleValue)`

  Returns a string for the given role value.

  `void`

  `setRoleName(String roleName)`

  Sets role name.

  `void`

  `setRoleValue(List<ObjectName> roleValue)`

  Sets role value.

  `String`

  `toString()`

  Returns a string describing the role.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Role

    public Role([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> roleValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Make a new Role object.
    No check is made that the ObjectNames in the role value exist in
    an MBean server. That check will be made when the role is set
    in a relation.

    Parameters:
    :   `roleName` - role name
    :   `roleValue` - role value (List of ObjectName objects)

    Throws:
    :   `IllegalArgumentException` - if null parameter
* ## Method Details

  + ### getRoleName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRoleName()

    Retrieves role name.

    Returns:
    :   the role name.

    See Also:
    :   - [`setRoleName(java.lang.String)`](#setRoleName(java.lang.String))
  + ### getRoleValue

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getRoleValue()

    Retrieves role value.

    Returns:
    :   ArrayList of ObjectName objects for referenced MBeans.

    See Also:
    :   - [`setRoleValue(java.util.List<javax.management.ObjectName>)`](#setRoleValue(java.util.List))
  + ### setRoleName

    public void setRoleName([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets role name.

    Parameters:
    :   `roleName` - role name

    Throws:
    :   `IllegalArgumentException` - if null parameter

    See Also:
    :   - [`getRoleName()`](#getRoleName())
  + ### setRoleValue

    public void setRoleValue([List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> roleValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets role value.

    Parameters:
    :   `roleValue` - List of ObjectName objects for referenced
        MBeans.

    Throws:
    :   `IllegalArgumentException` - if null parameter

    See Also:
    :   - [`getRoleValue()`](#getRoleValue())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string describing the role.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the description of the role.
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Clone the role object.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a Role that is an independent copy of the current Role object.

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### roleValueToString

    public static [String](../../../../java.base/java/lang/String.md "class in java.lang") roleValueToString([List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> roleValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Returns a string for the given role value.

    Parameters:
    :   `roleValue` - List of ObjectName objects

    Returns:
    :   A String consisting of the ObjectNames separated by
        newlines (\n).

    Throws:
    :   `IllegalArgumentException` - if null parameter