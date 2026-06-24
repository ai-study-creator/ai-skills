Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RelationTypeSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.relation.RelationTypeSupport

All Implemented Interfaces:
:   `Serializable`, `RelationType`

---

public class RelationTypeSupport
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [RelationType](RelationType.md "interface in javax.management.relation")

A RelationTypeSupport object implements the RelationType interface.

It represents a relation type, providing role information for each role
expected to be supported in every relation of that type.

A relation type includes a relation type name and a list of
role infos (represented by RoleInfo objects).

A relation type has to be declared in the Relation Service:

- either using the createRelationType() method, where a RelationTypeSupport
object will be created and kept in the Relation Service

- either using the addRelationType() method where the user has to create
an object implementing the RelationType interface, and this object will be
used as representing a relation type in the Relation Service.

The **serialVersionUID** of this class is `4611072955724144607L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RelationTypeSupport)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RelationTypeSupport(String relationTypeName)`

  Constructor to be used for subclasses.

  `RelationTypeSupport(String relationTypeName,
  RoleInfo[] roleInfoArray)`

  Constructor where all role definitions are dynamically created and
  passed as parameter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addRoleInfo(RoleInfo roleInfo)`

  Add a role info.

  `String`

  `getRelationTypeName()`

  Returns the relation type name.

  `RoleInfo`

  `getRoleInfo(String roleInfoName)`

  Returns the role info (RoleInfo object) for the given role info name
  (null if not found).

  `List<RoleInfo>`

  `getRoleInfos()`

  Returns the list of role definitions (ArrayList of RoleInfo objects).

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RelationTypeSupport

    public RelationTypeSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [RoleInfo](RoleInfo.md "class in javax.management.relation")[] roleInfoArray)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [InvalidRelationTypeException](InvalidRelationTypeException.md "class in javax.management.relation")

    Constructor where all role definitions are dynamically created and
    passed as parameter.

    Parameters:
    :   `relationTypeName` - Name of relation type
    :   `roleInfoArray` - List of role definitions (RoleInfo objects)

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `InvalidRelationTypeException` - if:

        - the same name has been used for two different roles

        - no role info provided

        - one null role info provided
  + ### RelationTypeSupport

    protected RelationTypeSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName)

    Constructor to be used for subclasses.

    Parameters:
    :   `relationTypeName` - Name of relation type.

    Throws:
    :   `IllegalArgumentException` - if null parameter.
* ## Method Details

  + ### getRelationTypeName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationTypeName()

    Returns the relation type name.

    Specified by:
    :   `getRelationTypeName` in interface `RelationType`

    Returns:
    :   the relation type name.
  + ### getRoleInfos

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[RoleInfo](RoleInfo.md "class in javax.management.relation")> getRoleInfos()

    Returns the list of role definitions (ArrayList of RoleInfo objects).

    Specified by:
    :   `getRoleInfos` in interface `RelationType`

    Returns:
    :   an [`ArrayList`](../../../../java.base/java/util/ArrayList.md "class in java.util") of [`RoleInfo`](RoleInfo.md "class in javax.management.relation").
  + ### getRoleInfo

    public [RoleInfo](RoleInfo.md "class in javax.management.relation") getRoleInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") roleInfoName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleInfoNotFoundException](RoleInfoNotFoundException.md "class in javax.management.relation")

    Returns the role info (RoleInfo object) for the given role info name
    (null if not found).

    Specified by:
    :   `getRoleInfo` in interface `RelationType`

    Parameters:
    :   `roleInfoName` - role info name

    Returns:
    :   RoleInfo object providing role definition
        does not exist

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RoleInfoNotFoundException` - if no role info with that name in
        relation type.
  + ### addRoleInfo

    protected void addRoleInfo([RoleInfo](RoleInfo.md "class in javax.management.relation") roleInfo)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [InvalidRelationTypeException](InvalidRelationTypeException.md "class in javax.management.relation")

    Add a role info.
    This method of course should not be used after the creation of the
    relation type, because updating it would invalidate that the relations
    created associated to that type still conform to it.
    Can throw a RuntimeException if trying to update a relation type
    declared in the Relation Service.

    Parameters:
    :   `roleInfo` - role info to be added.

    Throws:
    :   `IllegalArgumentException` - if null parameter.
    :   `InvalidRelationTypeException` - if there is already a role
        info in current relation type with the same name.