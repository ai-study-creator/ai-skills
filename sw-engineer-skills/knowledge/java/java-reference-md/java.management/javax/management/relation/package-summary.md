Module [java.management](../../../module-summary.md)

# Package javax.management.relation

---

package javax.management.relation

* Related Packages

  Package

  Description

  [javax.management](../package-summary.md)
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [InvalidRelationIdException](InvalidRelationIdException.md "class in javax.management.relation")

  This exception is raised when relation id provided for a relation is already
  used.

  [InvalidRelationServiceException](InvalidRelationServiceException.md "class in javax.management.relation")

  This exception is raised when an invalid Relation Service is provided.

  [InvalidRelationTypeException](InvalidRelationTypeException.md "class in javax.management.relation")

  Invalid relation type.

  [InvalidRoleInfoException](InvalidRoleInfoException.md "class in javax.management.relation")

  This exception is raised when, in a role info, its minimum degree is greater
  than its maximum degree.

  [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation")

  Role value is invalid.

  [MBeanServerNotificationFilter](MBeanServerNotificationFilter.md "class in javax.management.relation")

  Filter for [`MBeanServerNotification`](../MBeanServerNotification.md "class in javax.management").

  [Relation](Relation.md "interface in javax.management.relation")

  This interface has to be implemented by any MBean class expected to
  represent a relation managed using the Relation Service.

  [RelationException](RelationException.md "class in javax.management.relation")

  This class is the superclass of any exception which can be raised during
  relation management.

  [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

  This exception is raised when there is no relation for a given relation id
  in a Relation Service.

  [RelationNotification](RelationNotification.md "class in javax.management.relation")

  A notification of a change in the Relation Service.

  [RelationService](RelationService.md "class in javax.management.relation")

  The Relation Service is in charge of creating and deleting relation types
  and relations, of handling the consistency and of providing query
  mechanisms.

  [RelationServiceMBean](RelationServiceMBean.md "interface in javax.management.relation")

  The Relation Service is in charge of creating and deleting relation types
  and relations, of handling the consistency and of providing query
  mechanisms.

  [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

  This exception is raised when an access is done to the Relation Service and
  that one is not registered.

  [RelationSupport](RelationSupport.md "class in javax.management.relation")

  A RelationSupport object is used internally by the Relation Service to
  represent simple relations (only roles, no properties or methods), with an
  unlimited number of roles, of any relation type.

  [RelationSupportMBean](RelationSupportMBean.md "interface in javax.management.relation")

  A RelationSupport object is used internally by the Relation Service to
  represent simple relations (only roles, no properties or methods), with an
  unlimited number of roles, of any relation type.

  [RelationType](RelationType.md "interface in javax.management.relation")

  The RelationType interface has to be implemented by any class expected to
  represent a relation type.

  [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation")

  This exception is raised when there is no relation type with given name in
  Relation Service.

  [RelationTypeSupport](RelationTypeSupport.md "class in javax.management.relation")

  A RelationTypeSupport object implements the RelationType interface.

  [Role](Role.md "class in javax.management.relation")

  Represents a role: includes a role name and referenced MBeans (via their
  ObjectNames).

  [RoleInfo](RoleInfo.md "class in javax.management.relation")

  A RoleInfo object summarises a role in a relation type.

  [RoleInfoNotFoundException](RoleInfoNotFoundException.md "class in javax.management.relation")

  This exception is raised when there is no role info with given name in a
  given relation type.

  [RoleList](RoleList.md "class in javax.management.relation")

  A RoleList represents a list of roles (Role objects).

  [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation")

  This exception is raised when a role in a relation does not exist, or is not
  readable, or is not settable.

  [RoleResult](RoleResult.md "class in javax.management.relation")

  Represents the result of a multiple access to several roles of a relation
  (either for reading or writing).

  [RoleStatus](RoleStatus.md "class in javax.management.relation")

  This class describes the various problems which can be encountered when
  accessing a role.

  [RoleUnresolved](RoleUnresolved.md "class in javax.management.relation")

  Represents an unresolved role: a role not retrieved from a relation due
  to a problem.

  [RoleUnresolvedList](RoleUnresolvedList.md "class in javax.management.relation")

  A RoleUnresolvedList represents a list of RoleUnresolved objects,
  representing roles not retrieved from a relation due to a problem
  encountered when trying to access (read or write) the roles.