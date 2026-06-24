Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RoleUnresolved

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.relation.RoleUnresolved

All Implemented Interfaces:
:   `Serializable`

---

public class RoleUnresolved
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Represents an unresolved role: a role not retrieved from a relation due
to a problem. It provides the role name, value (if problem when trying to
set the role) and an integer defining the problem (constants defined in
RoleStatus).

The **serialVersionUID** of this class is `-48350262537070138L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RoleUnresolved)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RoleUnresolved(String name,
  List<ObjectName> value,
  int pbType)`

  Constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Clone this object.

  `int`

  `getProblemType()`

  Retrieves problem type.

  `String`

  `getRoleName()`

  Retrieves role name.

  `List<ObjectName>`

  `getRoleValue()`

  Retrieves role value.

  `void`

  `setProblemType(int pbType)`

  Sets problem type.

  `void`

  `setRoleName(String name)`

  Sets role name.

  `void`

  `setRoleValue(List<ObjectName> value)`

  Sets role value.

  `String`

  `toString()`

  Return a string describing this object.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RoleUnresolved

    public RoleUnresolved([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> value,
    int pbType)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Constructor.

    Parameters:
    :   `name` - name of the role
    :   `value` - value of the role (if problem when setting the
        role)
    :   `pbType` - type of problem (according to known problem types,
        listed as static final members).

    Throws:
    :   `IllegalArgumentException` - if null parameter or incorrect
        problem type
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
    :   an ArrayList of ObjectName objects, the one provided to be set
        in given role. Null if the unresolved role is returned for a read
        access.

    See Also:
    :   - [`setRoleValue(java.util.List<javax.management.ObjectName>)`](#setRoleValue(java.util.List))
  + ### getProblemType

    public int getProblemType()

    Retrieves problem type.

    Returns:
    :   an integer corresponding to a problem, those being described as
        static final members of current class.

    See Also:
    :   - [`setProblemType(int)`](#setProblemType(int))
  + ### setRoleName

    public void setRoleName([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets role name.

    Parameters:
    :   `name` - the new role name.

    Throws:
    :   `IllegalArgumentException` - if null parameter

    See Also:
    :   - [`getRoleName()`](#getRoleName())
  + ### setRoleValue

    public void setRoleValue([List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> value)

    Sets role value.

    Parameters:
    :   `value` - List of ObjectName objects for referenced
        MBeans not set in role.

    See Also:
    :   - [`getRoleValue()`](#getRoleValue())
  + ### setProblemType

    public void setProblemType(int pbType)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Sets problem type.

    Parameters:
    :   `pbType` - integer corresponding to a problem. Must be one of
        those described as static final members of current class.

    Throws:
    :   `IllegalArgumentException` - if incorrect problem type

    See Also:
    :   - [`getProblemType()`](#getProblemType())
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Clone this object.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   an independent clone.

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Return a string describing this object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a description of this RoleUnresolved object.