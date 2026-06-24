Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Interface RelationSupportMBean

All Superinterfaces:
:   `Relation`

All Known Implementing Classes:
:   `RelationSupport`

---

public interface RelationSupportMBean
extends [Relation](Relation.md "interface in javax.management.relation")

A RelationSupport object is used internally by the Relation Service to
represent simple relations (only roles, no properties or methods), with an
unlimited number of roles, of any relation type. As internal representation,
it is not exposed to the user.

RelationSupport class conforms to the design patterns of standard MBean. So
the user can decide to instantiate a RelationSupport object himself as
a MBean (as it follows the MBean design patterns), to register it in the
MBean Server, and then to add it in the Relation Service.

The user can also, when creating his own MBean relation class, have it
extending RelationSupport, to retrieve the implementations of required
interfaces (see below).

It is also possible to have in a user relation MBean class a member
being a RelationSupport object, and to implement the required interfaces by
delegating all to this member.

RelationSupport implements the Relation interface (to be handled by the
Relation Service).

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Boolean`

  `isInRelationService()`

  Returns an internal flag specifying if the object is still handled by
  the Relation Service.

  `void`

  `setRelationServiceManagementFlag(Boolean flag)`

  Specifies whether this relation is handled by the Relation
  Service.

  ### Methods inherited from interface javax.management.relation.[Relation](Relation.md "interface in javax.management.relation")

  `getAllRoles, getReferencedMBeans, getRelationId, getRelationServiceName, getRelationTypeName, getRole, getRoleCardinality, getRoles, handleMBeanUnregistration, retrieveAllRoles, setRole, setRoles`

* ## Method Details

  + ### isInRelationService

    [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") isInRelationService()

    Returns an internal flag specifying if the object is still handled by
    the Relation Service.

    Returns:
    :   a Boolean equal to [`Boolean.TRUE`](../../../../java.base/java/lang/Boolean.md#TRUE) if the object
        is still handled by the Relation Service and [`Boolean.FALSE`](../../../../java.base/java/lang/Boolean.md#FALSE) otherwise.
  + ### setRelationServiceManagementFlag

    void setRelationServiceManagementFlag([Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") flag)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Specifies whether this relation is handled by the Relation
    Service.

    BEWARE, this method has to be exposed as the Relation Service will
    access the relation through its management interface. It is RECOMMENDED
    NOT to use this method. Using it does not affect the registration of the
    relation object in the Relation Service, but will provide wrong
    information about it!

    Parameters:
    :   `flag` - whether the relation is handled by the Relation Service.

    Throws:
    :   `IllegalArgumentException` - if null parameter