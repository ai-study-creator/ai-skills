Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Interface RelationType

All Superinterfaces:
:   `Serializable`

All Known Implementing Classes:
:   `RelationTypeSupport`

---

public interface RelationType
extends [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The RelationType interface has to be implemented by any class expected to
represent a relation type.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

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

* ## Method Details

  + ### getRelationTypeName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationTypeName()

    Returns the relation type name.

    Returns:
    :   the relation type name.
  + ### getRoleInfos

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[RoleInfo](RoleInfo.md "class in javax.management.relation")> getRoleInfos()

    Returns the list of role definitions (ArrayList of RoleInfo objects).

    Returns:
    :   an [`ArrayList`](../../../../java.base/java/util/ArrayList.md "class in java.util") of [`RoleInfo`](RoleInfo.md "class in javax.management.relation").
  + ### getRoleInfo

    [RoleInfo](RoleInfo.md "class in javax.management.relation") getRoleInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") roleInfoName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleInfoNotFoundException](RoleInfoNotFoundException.md "class in javax.management.relation")

    Returns the role info (RoleInfo object) for the given role info name
    (null if not found).

    Parameters:
    :   `roleInfoName` - role info name

    Returns:
    :   RoleInfo object providing role definition
        does not exist

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RoleInfoNotFoundException` - if no role info with that name in
        relation type.