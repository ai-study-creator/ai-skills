# Hierarchy For Package javax.management.relation

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[AbstractCollection](../../../../java.base/java/util/AbstractCollection.md "class in java.util")<E> (implements java.util.[Collection](../../../../java.base/java/util/Collection.md "interface in java.util")<E>)
    - java.util.[AbstractList](../../../../java.base/java/util/AbstractList.md "class in java.util")<E> (implements java.util.[List](../../../../java.base/java/util/List.md "interface in java.util")<E>)
      * java.util.[ArrayList](../../../../java.base/java/util/ArrayList.md "class in java.util")<E> (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.util.[List](../../../../java.base/java/util/List.md "interface in java.util")<E>, java.util.[RandomAccess](../../../../java.base/java/util/RandomAccess.md "interface in java.util"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
        + javax.management.relation.[RoleList](RoleList.md "class in javax.management.relation")
        + javax.management.relation.[RoleUnresolvedList](RoleUnresolvedList.md "class in javax.management.relation")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.[Notification](../Notification.md "class in javax.management")
      * javax.management.relation.[RelationNotification](RelationNotification.md "class in javax.management.relation")
  + javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management") (implements javax.management.[NotificationEmitter](../NotificationEmitter.md "interface in javax.management"))
    - javax.management.relation.[RelationService](RelationService.md "class in javax.management.relation") (implements javax.management.[MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), javax.management.[NotificationListener](../NotificationListener.md "interface in javax.management"), javax.management.relation.[RelationServiceMBean](RelationServiceMBean.md "interface in javax.management.relation"))
  + javax.management.[NotificationFilterSupport](../NotificationFilterSupport.md "class in javax.management") (implements javax.management.[NotificationFilter](../NotificationFilter.md "interface in javax.management"))
    - javax.management.relation.[MBeanServerNotificationFilter](MBeanServerNotificationFilter.md "class in javax.management.relation")
  + javax.management.relation.[RelationSupport](RelationSupport.md "class in javax.management.relation") (implements javax.management.[MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), javax.management.relation.[RelationSupportMBean](RelationSupportMBean.md "interface in javax.management.relation"))
  + javax.management.relation.[RelationTypeSupport](RelationTypeSupport.md "class in javax.management.relation") (implements javax.management.relation.[RelationType](RelationType.md "interface in javax.management.relation"))
  + javax.management.relation.[Role](Role.md "class in javax.management.relation") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.management.relation.[RoleInfo](RoleInfo.md "class in javax.management.relation") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.management.relation.[RoleResult](RoleResult.md "class in javax.management.relation") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.management.relation.[RoleStatus](RoleStatus.md "class in javax.management.relation")
  + javax.management.relation.[RoleUnresolved](RoleUnresolved.md "class in javax.management.relation") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.management.[JMException](../JMException.md "class in javax.management")
        + javax.management.relation.[RelationException](RelationException.md "class in javax.management.relation")
          - javax.management.relation.[InvalidRelationIdException](InvalidRelationIdException.md "class in javax.management.relation")
          - javax.management.relation.[InvalidRelationServiceException](InvalidRelationServiceException.md "class in javax.management.relation")
          - javax.management.relation.[InvalidRelationTypeException](InvalidRelationTypeException.md "class in javax.management.relation")
          - javax.management.relation.[InvalidRoleInfoException](InvalidRoleInfoException.md "class in javax.management.relation")
          - javax.management.relation.[InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation")
          - javax.management.relation.[RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")
          - javax.management.relation.[RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")
          - javax.management.relation.[RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation")
          - javax.management.relation.[RoleInfoNotFoundException](RoleInfoNotFoundException.md "class in javax.management.relation")
          - javax.management.relation.[RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation")

## Interface Hierarchy

* javax.management.relation.[Relation](Relation.md "interface in javax.management.relation")
  + javax.management.relation.[RelationSupportMBean](RelationSupportMBean.md "interface in javax.management.relation")
* javax.management.relation.[RelationServiceMBean](RelationServiceMBean.md "interface in javax.management.relation")
* java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")
  + javax.management.relation.[RelationType](RelationType.md "interface in javax.management.relation")