Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RoleResult

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.relation.RoleResult

All Implemented Interfaces:
:   `Serializable`

---

public class RoleResult
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Represents the result of a multiple access to several roles of a relation
(either for reading or writing).

The **serialVersionUID** of this class is `-6304063118040985512L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RoleResult)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RoleResult(RoleList list,
  RoleUnresolvedList unresolvedList)`

  Constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `RoleList`

  `getRoles()`

  Retrieves list of roles successfully accessed.

  `RoleUnresolvedList`

  `getRolesUnresolved()`

  Retrieves list of roles unsuccessfully accessed.

  `void`

  `setRoles(RoleList list)`

  Sets list of roles successfully accessed.

  `void`

  `setRolesUnresolved(RoleUnresolvedList unresolvedList)`

  Sets list of roles unsuccessfully accessed.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RoleResult

    public RoleResult([RoleList](RoleList.md "class in javax.management.relation") list,
    [RoleUnresolvedList](RoleUnresolvedList.md "class in javax.management.relation") unresolvedList)

    Constructor.

    Parameters:
    :   `list` - list of roles successfully accessed.
    :   `unresolvedList` - list of roles not accessed (with problem
        descriptions).
* ## Method Details

  + ### getRoles

    public [RoleList](RoleList.md "class in javax.management.relation") getRoles()

    Retrieves list of roles successfully accessed.

    Returns:
    :   a RoleList

    See Also:
    :   - [`setRoles(javax.management.relation.RoleList)`](#setRoles(javax.management.relation.RoleList))
  + ### getRolesUnresolved

    public [RoleUnresolvedList](RoleUnresolvedList.md "class in javax.management.relation") getRolesUnresolved()

    Retrieves list of roles unsuccessfully accessed.

    Returns:
    :   a RoleUnresolvedList.

    See Also:
    :   - [`setRolesUnresolved(javax.management.relation.RoleUnresolvedList)`](#setRolesUnresolved(javax.management.relation.RoleUnresolvedList))
  + ### setRoles

    public void setRoles([RoleList](RoleList.md "class in javax.management.relation") list)

    Sets list of roles successfully accessed.

    Parameters:
    :   `list` - list of roles successfully accessed

    See Also:
    :   - [`getRoles()`](#getRoles())
  + ### setRolesUnresolved

    public void setRolesUnresolved([RoleUnresolvedList](RoleUnresolvedList.md "class in javax.management.relation") unresolvedList)

    Sets list of roles unsuccessfully accessed.

    Parameters:
    :   `unresolvedList` - list of roles unsuccessfully accessed

    See Also:
    :   - [`getRolesUnresolved()`](#getRolesUnresolved())