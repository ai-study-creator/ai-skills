Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Interface Relation

All Known Subinterfaces:
:   `RelationSupportMBean`

All Known Implementing Classes:
:   `RelationSupport`

---

public interface Relation

This interface has to be implemented by any MBean class expected to
represent a relation managed using the Relation Service.

Simple relations, i.e. having only roles, no properties or methods, can
be created directly by the Relation Service (represented as RelationSupport
objects, internally handled by the Relation Service).

If the user wants to represent more complex relations, involving
properties and/or methods, he has to provide his own class implementing the
Relation interface. This can be achieved either by inheriting from
RelationSupport class, or by implementing the interface (fully or delegation to
a RelationSupport object member).

Specifying such user relation class is to introduce properties and/or
methods. Those have to be exposed for remote management. So this means that
any user relation class must be a MBean class.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `RoleResult`

  `getAllRoles()`

  Returns all roles present in the relation.

  `Map<ObjectName,List<String>>`

  `getReferencedMBeans()`

  Retrieves MBeans referenced in the various roles of the relation.

  `String`

  `getRelationId()`

  Returns relation identifier (used to uniquely identify the relation
  inside the Relation Service).

  `ObjectName`

  `getRelationServiceName()`

  Returns ObjectName of the Relation Service handling the relation.

  `String`

  `getRelationTypeName()`

  Returns name of associated relation type.

  `List<ObjectName>`

  `getRole(String roleName)`

  Retrieves role value for given role name.

  `Integer`

  `getRoleCardinality(String roleName)`

  Returns the number of MBeans currently referenced in the given role.

  `RoleResult`

  `getRoles(String[] roleNameArray)`

  Retrieves values of roles with given names.

  `void`

  `handleMBeanUnregistration(ObjectName objectName,
  String roleName)`

  Callback used by the Relation Service when a MBean referenced in a role
  is unregistered.

  `RoleList`

  `retrieveAllRoles()`

  Returns all roles in the relation without checking read mode.

  `void`

  `setRole(Role role)`

  Sets the given role.

  `RoleResult`

  `setRoles(RoleList roleList)`

  Sets the given roles.

* ## Method Details

  + ### getRole

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getRole([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Retrieves role value for given role name.

    Checks if the role exists and is readable according to the relation
    type.

    Parameters:
    :   `roleName` - name of role

    Returns:
    :   the ArrayList of ObjectName objects being the role value

    Throws:
    :   `IllegalArgumentException` - if null role name
    :   `RoleNotFoundException` - if:

        - there is no role with given name

        - the role is not readable.
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server

    See Also:
    :   - [`setRole(javax.management.relation.Role)`](#setRole(javax.management.relation.Role))
  + ### getRoles

    [RoleResult](RoleResult.md "class in javax.management.relation") getRoles([String](../../../../java.base/java/lang/String.md "class in java.lang")[] roleNameArray)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Retrieves values of roles with given names.

    Checks for each role if it exists and is readable according to the
    relation type.

    Parameters:
    :   `roleNameArray` - array of names of roles to be retrieved

    Returns:
    :   a RoleResult object, including a RoleList (for roles
        successfully retrieved) and a RoleUnresolvedList (for roles not
        retrieved).

    Throws:
    :   `IllegalArgumentException` - if null role name
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server

    See Also:
    :   - [`setRoles(javax.management.relation.RoleList)`](#setRoles(javax.management.relation.RoleList))
  + ### getRoleCardinality

    [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") getRoleCardinality([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation")

    Returns the number of MBeans currently referenced in the given role.

    Parameters:
    :   `roleName` - name of role

    Returns:
    :   the number of currently referenced MBeans in that role

    Throws:
    :   `IllegalArgumentException` - if null role name
    :   `RoleNotFoundException` - if there is no role with given name
  + ### getAllRoles

    [RoleResult](RoleResult.md "class in javax.management.relation") getAllRoles()
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Returns all roles present in the relation.

    Returns:
    :   a RoleResult object, including a RoleList (for roles
        successfully retrieved) and a RoleUnresolvedList (for roles not
        readable).

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
  + ### retrieveAllRoles

    [RoleList](RoleList.md "class in javax.management.relation") retrieveAllRoles()

    Returns all roles in the relation without checking read mode.

    Returns:
    :   a RoleList.
  + ### setRole

    void setRole([Role](Role.md "class in javax.management.relation") role)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation"),
    [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Sets the given role.

    Will check the role according to its corresponding role definition
    provided in relation's relation type

    Will send a notification (RelationNotification with type
    RELATION\_BASIC\_UPDATE or RELATION\_MBEAN\_UPDATE, depending if the
    relation is a MBean or not).

    Parameters:
    :   `role` - role to be set (name and new value)

    Throws:
    :   `IllegalArgumentException` - if null role
    :   `RoleNotFoundException` - if there is no role with the supplied
        role's name or if the role is not writable (no test on the write access
        mode performed when initializing the role)
    :   `InvalidRoleValueException` - if value provided for
        role is not valid, i.e.:

        - the number of referenced MBeans in given value is less than
        expected minimum degree

        - the number of referenced MBeans in provided value exceeds expected
        maximum degree

        - one referenced MBean in the value is not an Object of the MBean
        class expected for that role

        - a MBean provided for that role does not exist.
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `RelationTypeNotFoundException` - if the relation type has not
        been declared in the Relation Service.
    :   `RelationNotFoundException` - if the relation has not been
        added in the Relation Service.

    See Also:
    :   - [`getRole(java.lang.String)`](#getRole(java.lang.String))
  + ### setRoles

    [RoleResult](RoleResult.md "class in javax.management.relation") setRoles([RoleList](RoleList.md "class in javax.management.relation") roleList)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Sets the given roles.

    Will check the role according to its corresponding role definition
    provided in relation's relation type

    Will send one notification (RelationNotification with type
    RELATION\_BASIC\_UPDATE or RELATION\_MBEAN\_UPDATE, depending if the
    relation is a MBean or not) per updated role.

    Parameters:
    :   `roleList` - list of roles to be set

    Returns:
    :   a RoleResult object, including a RoleList (for roles
        successfully set) and a RoleUnresolvedList (for roles not
        set).

    Throws:
    :   `IllegalArgumentException` - if null role list
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `RelationTypeNotFoundException` - if the relation type has not
        been declared in the Relation Service.
    :   `RelationNotFoundException` - if the relation MBean has not been
        added in the Relation Service.

    See Also:
    :   - [`getRoles(java.lang.String[])`](#getRoles(java.lang.String%5B%5D))
  + ### handleMBeanUnregistration

    void handleMBeanUnregistration([ObjectName](../ObjectName.md "class in javax.management") objectName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation"),
    [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Callback used by the Relation Service when a MBean referenced in a role
    is unregistered.

    The Relation Service will call this method to let the relation
    take action to reflect the impact of such unregistration.

    BEWARE. the user is not expected to call this method.

    Current implementation is to set the role with its current value
    (list of ObjectNames of referenced MBeans) without the unregistered
    one.

    Parameters:
    :   `objectName` - ObjectName of unregistered MBean
    :   `roleName` - name of role where the MBean is referenced

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RoleNotFoundException` - if role does not exist in the
        relation or is not writable
    :   `InvalidRoleValueException` - if role value does not conform to
        the associated role info (this will never happen when called from the
        Relation Service)
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `RelationTypeNotFoundException` - if the relation type has not
        been declared in the Relation Service.
    :   `RelationNotFoundException` - if this method is called for a
        relation MBean not added in the Relation Service.
  + ### getReferencedMBeans

    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management"),[List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")>> getReferencedMBeans()

    Retrieves MBeans referenced in the various roles of the relation.

    Returns:
    :   a HashMap mapping:

        ObjectName -> ArrayList of String (role names)
  + ### getRelationTypeName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationTypeName()

    Returns name of associated relation type.

    Returns:
    :   the name of the relation type.
  + ### getRelationServiceName

    [ObjectName](../ObjectName.md "class in javax.management") getRelationServiceName()

    Returns ObjectName of the Relation Service handling the relation.

    Returns:
    :   the ObjectName of the Relation Service.
  + ### getRelationId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationId()

    Returns relation identifier (used to uniquely identify the relation
    inside the Relation Service).

    Returns:
    :   the relation id.