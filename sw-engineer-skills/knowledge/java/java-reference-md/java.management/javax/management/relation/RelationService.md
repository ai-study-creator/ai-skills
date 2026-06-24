Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RelationService

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

javax.management.relation.RelationService

All Implemented Interfaces:
:   `EventListener`, `MBeanRegistration`, `NotificationBroadcaster`, `NotificationEmitter`, `NotificationListener`, `RelationServiceMBean`

---

public class RelationService
extends [NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")
implements [RelationServiceMBean](RelationServiceMBean.md "interface in javax.management.relation"), [MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), [NotificationListener](../NotificationListener.md "interface in javax.management")

The Relation Service is in charge of creating and deleting relation types
and relations, of handling the consistency and of providing query
mechanisms.

It implements the NotificationBroadcaster by extending
NotificationBroadcasterSupport to send notifications when a relation is
removed from it.

It implements the NotificationListener interface to be able to receive
notifications concerning unregistration of MBeans referenced in relation
roles and of relation MBeans.

It implements the MBeanRegistration interface to be able to retrieve
its ObjectName and MBean Server.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RelationService(boolean immediatePurgeFlag)`

  Constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addRelation(ObjectName relationObjectName)`

  Adds an MBean created by the user (and registered by him in the MBean
  Server) as a relation in the Relation Service.

  `void`

  `addRelationType(RelationType relationTypeObj)`

  Adds given object as a relation type.

  `Integer`

  `checkRoleReading(String roleName,
  String relationTypeName)`

  Checks if given Role can be read in a relation of the given type.

  `Integer`

  `checkRoleWriting(Role role,
  String relationTypeName,
  Boolean initFlag)`

  Checks if given Role can be set in a relation of given type.

  `void`

  `createRelation(String relationId,
  String relationTypeName,
  RoleList roleList)`

  Creates a simple relation (represented by a RelationSupport object) of
  given relation type, and adds it in the Relation Service.

  `void`

  `createRelationType(String relationTypeName,
  RoleInfo[] roleInfoArray)`

  Creates a relation type (a RelationTypeSupport object) with given
  role infos (provided by the RoleInfo objects), and adds it in the
  Relation Service.

  `Map<ObjectName,List<String>>`

  `findAssociatedMBeans(ObjectName mbeanName,
  String relationTypeName,
  String roleName)`

  Retrieves the MBeans associated to given one in a relation.

  `Map<String,List<String>>`

  `findReferencingRelations(ObjectName mbeanName,
  String relationTypeName,
  String roleName)`

  Retrieves the relations where a given MBean is referenced.

  `List<String>`

  `findRelationsOfType(String relationTypeName)`

  Returns the relation ids for relations of the given type.

  `List<String>`

  `getAllRelationIds()`

  Returns all the relation ids for all the relations handled by the
  Relation Service.

  `List<String>`

  `getAllRelationTypeNames()`

  Retrieves names of all known relation types.

  `RoleResult`

  `getAllRoles(String relationId)`

  Returns all roles present in the relation.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns a NotificationInfo object containing the name of the Java class
  of the notification and the notification types sent.

  `boolean`

  `getPurgeFlag()`

  Returns the flag to indicate if when a notification is received for the
  unregistration of an MBean referenced in a relation, if an immediate
  "purge" of the relations (look for the relations no longer valid)
  has to be performed , or if that will be performed only when the
  purgeRelations method will be explicitly called.

  `Map<ObjectName,List<String>>`

  `getReferencedMBeans(String relationId)`

  Retrieves MBeans referenced in the various roles of the relation.

  `String`

  `getRelationTypeName(String relationId)`

  Returns name of associated relation type for given relation.

  `List<ObjectName>`

  `getRole(String relationId,
  String roleName)`

  Retrieves role value for given role name in given relation.

  `Integer`

  `getRoleCardinality(String relationId,
  String roleName)`

  Retrieves the number of MBeans currently referenced in the given role.

  `RoleInfo`

  `getRoleInfo(String relationTypeName,
  String roleInfoName)`

  Retrieves role info for given role name of a given relation type.

  `List<RoleInfo>`

  `getRoleInfos(String relationTypeName)`

  Retrieves list of role infos (RoleInfo objects) of a given relation
  type.

  `RoleResult`

  `getRoles(String relationId,
  String[] roleNameArray)`

  Retrieves values of roles with given names in given relation.

  `void`

  `handleNotification(Notification notif,
  Object handback)`

  Invoked when a JMX notification occurs.

  `Boolean`

  `hasRelation(String relationId)`

  Checks if there is a relation identified in Relation Service with given
  relation id.

  `void`

  `isActive()`

  Checks if the Relation Service is active.

  `String`

  `isRelation(ObjectName objectName)`

  Returns the relation id associated to the given ObjectName if the
  MBean has been added as a relation in the Relation Service.

  `ObjectName`

  `isRelationMBean(String relationId)`

  If the relation is represented by an MBean (created by the user and
  added as a relation in the Relation Service), returns the ObjectName of
  the MBean.

  `void`

  `postDeregister()`

  Allows the MBean to perform any operations needed after having been
  unregistered in the MBean server.

  `void`

  `postRegister(Boolean registrationDone)`

  Allows the MBean to perform any operations needed after having been
  registered in the MBean server or after the registration has failed.

  `void`

  `preDeregister()`

  Allows the MBean to perform any operations it needs before
  being unregistered by the MBean server.

  `ObjectName`

  `preRegister(MBeanServer server,
  ObjectName name)`

  Allows the MBean to perform any operations it needs before
  being registered in the MBean Server.

  `void`

  `purgeRelations()`

  Purges the relations.

  `void`

  `removeRelation(String relationId)`

  Removes given relation from the Relation Service.

  `void`

  `removeRelationType(String relationTypeName)`

  Removes given relation type from Relation Service.

  `void`

  `sendRelationCreationNotification(String relationId)`

  Sends a notification (RelationNotification) for a relation creation.

  `void`

  `sendRelationRemovalNotification(String relationId,
  List<ObjectName> unregMBeanList)`

  Sends a notification (RelationNotification) for a relation removal.

  `void`

  `sendRoleUpdateNotification(String relationId,
  Role newRole,
  List<ObjectName> oldValue)`

  Sends a notification (RelationNotification) for a role update in the
  given relation.

  `void`

  `setPurgeFlag(boolean purgeFlag)`

  Sets the flag to indicate if when a notification is received for the
  unregistration of an MBean referenced in a relation, if an immediate
  "purge" of the relations (look for the relations no longer valid)
  has to be performed , or if that will be performed only when the
  purgeRelations method will be explicitly called.

  `void`

  `setRole(String relationId,
  Role role)`

  Sets the given role in given relation.

  `RoleResult`

  `setRoles(String relationId,
  RoleList roleList)`

  Sets the given roles in given relation.

  `void`

  `updateRoleMap(String relationId,
  Role newRole,
  List<ObjectName> oldValue)`

  Handles update of the Relation Service role map for the update of given
  role in given relation.

  ### Methods inherited from class javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management")

  `addNotificationListener, handleNotification, removeNotificationListener, removeNotificationListener, sendNotification`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RelationService

    public RelationService(boolean immediatePurgeFlag)

    Constructor.

    Parameters:
    :   `immediatePurgeFlag` - flag to indicate when a notification is
        received for the unregistration of an MBean referenced in a relation, if
        an immediate "purge" of the relations (look for the relations no
        longer valid) has to be performed , or if that will be performed only
        when the purgeRelations method will be explicitly called.

        true is immediate purge.
* ## Method Details

  + ### isActive

    public void isActive()
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Checks if the Relation Service is active.
    Current condition is that the Relation Service must be registered in the
    MBean Server

    Specified by:
    :   `isActive` in interface `RelationServiceMBean`

    Throws:
    :   `RelationServiceNotRegisteredException` - if it is not
        registered
  + ### preRegister

    public [ObjectName](../ObjectName.md "class in javax.management") preRegister([MBeanServer](../MBeanServer.md "interface in javax.management") server,
    [ObjectName](../ObjectName.md "class in javax.management") name)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Description copied from interface: `MBeanRegistration`

    Allows the MBean to perform any operations it needs before
    being registered in the MBean Server. If the name of the MBean
    is not specified, the MBean can provide a name for its
    registration. If any exception is raised, the MBean will not be
    registered in the MBean Server.

    Specified by:
    :   `preRegister` in interface `MBeanRegistration`

    Parameters:
    :   `server` - The MBean Server in which the MBean will be registered.
    :   `name` - The object name of the MBean. This name is null if
        the name parameter to one of the `createMBean` or
        `registerMBean` methods in the [`MBeanServer`](../MBeanServer.md "interface in javax.management")
        interface is null. In that case, this method must return a
        non-null ObjectName for the new MBean.

    Returns:
    :   The name under which the MBean is to be registered.
        This value must not be null. If the `name`
        parameter is not null, it will usually but not necessarily be
        the returned value.

    Throws:
    :   `Exception` - This exception will be caught by
        the MBean Server and re-thrown as an [`MBeanRegistrationException`](../MBeanRegistrationException.md "class in javax.management").
  + ### postRegister

    public void postRegister([Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") registrationDone)

    Description copied from interface: `MBeanRegistration`

    Allows the MBean to perform any operations needed after having been
    registered in the MBean server or after the registration has failed.

    If the implementation of this method throws a [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    or an [`Error`](../../../../java.base/java/lang/Error.md "class in java.lang"), the MBean Server will rethrow those inside
    a [`RuntimeMBeanException`](../RuntimeMBeanException.md "class in javax.management") or [`RuntimeErrorException`](../RuntimeErrorException.md "class in javax.management"),
    respectively. However, throwing an exception in `postRegister`
    will not change the state of the MBean:
    if the MBean was already registered (`registrationDone` is
    `true`), the MBean will remain registered.

    This might be confusing for the code calling `createMBean()`
    or `registerMBean()`, as such code might assume that MBean
    registration has failed when such an exception is raised.
    Therefore it is recommended that implementations of
    `postRegister` do not throw Runtime Exceptions or Errors if it
    can be avoided.

    Specified by:
    :   `postRegister` in interface `MBeanRegistration`

    Parameters:
    :   `registrationDone` - Indicates whether or not the MBean has
        been successfully registered in the MBean server. The value
        false means that the registration phase has failed.
  + ### preDeregister

    public void preDeregister()
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Description copied from interface: `MBeanRegistration`

    Allows the MBean to perform any operations it needs before
    being unregistered by the MBean server.

    Specified by:
    :   `preDeregister` in interface `MBeanRegistration`

    Throws:
    :   `Exception` - This exception will be caught by
        the MBean server and re-thrown as an [`MBeanRegistrationException`](../MBeanRegistrationException.md "class in javax.management").
  + ### postDeregister

    public void postDeregister()

    Description copied from interface: `MBeanRegistration`

    Allows the MBean to perform any operations needed after having been
    unregistered in the MBean server.

    If the implementation of this method throws a [`RuntimeException`](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
    or an [`Error`](../../../../java.base/java/lang/Error.md "class in java.lang"), the MBean Server will rethrow those inside
    a [`RuntimeMBeanException`](../RuntimeMBeanException.md "class in javax.management") or [`RuntimeErrorException`](../RuntimeErrorException.md "class in javax.management"),
    respectively. However, throwing an exception in `postDeregister`
    will not change the state of the MBean:
    the MBean was already successfully deregistered and will remain so.

    This might be confusing for the code calling
    `unregisterMBean()`, as it might assume that MBean deregistration
    has failed. Therefore it is recommended that implementations of
    `postDeregister` do not throw Runtime Exceptions or Errors if it
    can be avoided.

    Specified by:
    :   `postDeregister` in interface `MBeanRegistration`
  + ### getPurgeFlag

    public boolean getPurgeFlag()

    Returns the flag to indicate if when a notification is received for the
    unregistration of an MBean referenced in a relation, if an immediate
    "purge" of the relations (look for the relations no longer valid)
    has to be performed , or if that will be performed only when the
    purgeRelations method will be explicitly called.

    true is immediate purge.

    Specified by:
    :   `getPurgeFlag` in interface `RelationServiceMBean`

    Returns:
    :   true if purges are automatic.

    See Also:
    :   - [`setPurgeFlag(boolean)`](#setPurgeFlag(boolean))
  + ### setPurgeFlag

    public void setPurgeFlag(boolean purgeFlag)

    Sets the flag to indicate if when a notification is received for the
    unregistration of an MBean referenced in a relation, if an immediate
    "purge" of the relations (look for the relations no longer valid)
    has to be performed , or if that will be performed only when the
    purgeRelations method will be explicitly called.

    true is immediate purge.

    Specified by:
    :   `setPurgeFlag` in interface `RelationServiceMBean`

    Parameters:
    :   `purgeFlag` - flag

    See Also:
    :   - [`getPurgeFlag()`](#getPurgeFlag())
  + ### createRelationType

    public void createRelationType([String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [RoleInfo](RoleInfo.md "class in javax.management.relation")[] roleInfoArray)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [InvalidRelationTypeException](InvalidRelationTypeException.md "class in javax.management.relation")

    Creates a relation type (a RelationTypeSupport object) with given
    role infos (provided by the RoleInfo objects), and adds it in the
    Relation Service.

    Specified by:
    :   `createRelationType` in interface `RelationServiceMBean`

    Parameters:
    :   `relationTypeName` - name of the relation type
    :   `roleInfoArray` - array of role infos

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `InvalidRelationTypeException` - If:

        - there is already a relation type with that name

        - the same name has been used for two different role infos

        - no role info provided

        - one null role info provided
  + ### addRelationType

    public void addRelationType([RelationType](RelationType.md "interface in javax.management.relation") relationTypeObj)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [InvalidRelationTypeException](InvalidRelationTypeException.md "class in javax.management.relation")

    Adds given object as a relation type. The object is expected to
    implement the RelationType interface.

    Specified by:
    :   `addRelationType` in interface `RelationServiceMBean`

    Parameters:
    :   `relationTypeObj` - relation type object (implementing the
        RelationType interface)

    Throws:
    :   `IllegalArgumentException` - if null parameter or if
        [`relationTypeObj.getRelationTypeName()`](RelationType.md#getRelationTypeName()) returns null.
    :   `InvalidRelationTypeException` - if:

        - the same name has been used for two different roles

        - no role info provided

        - one null role info provided

        - there is already a relation type with that name
  + ### getAllRelationTypeNames

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getAllRelationTypeNames()

    Retrieves names of all known relation types.

    Specified by:
    :   `getAllRelationTypeNames` in interface `RelationServiceMBean`

    Returns:
    :   ArrayList of relation type names (Strings)
  + ### getRoleInfos

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[RoleInfo](RoleInfo.md "class in javax.management.relation")> getRoleInfos([String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation")

    Retrieves list of role infos (RoleInfo objects) of a given relation
    type.

    Specified by:
    :   `getRoleInfos` in interface `RelationServiceMBean`

    Parameters:
    :   `relationTypeName` - name of relation type

    Returns:
    :   ArrayList of RoleInfo.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationTypeNotFoundException` - if there is no relation type
        with that name.
  + ### getRoleInfo

    public [RoleInfo](RoleInfo.md "class in javax.management.relation") getRoleInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") roleInfoName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation"),
    [RoleInfoNotFoundException](RoleInfoNotFoundException.md "class in javax.management.relation")

    Retrieves role info for given role name of a given relation type.

    Specified by:
    :   `getRoleInfo` in interface `RelationServiceMBean`

    Parameters:
    :   `relationTypeName` - name of relation type
    :   `roleInfoName` - name of role

    Returns:
    :   RoleInfo object.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationTypeNotFoundException` - if the relation type is not
        known in the Relation Service
    :   `RoleInfoNotFoundException` - if the role is not part of the
        relation type.
  + ### removeRelationType

    public void removeRelationType([String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName)
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation")

    Removes given relation type from Relation Service.

    The relation objects of that type will be removed from the
    Relation Service.

    Specified by:
    :   `removeRelationType` in interface `RelationServiceMBean`

    Parameters:
    :   `relationTypeName` - name of the relation type to be removed

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `IllegalArgumentException` - if null parameter
    :   `RelationTypeNotFoundException` - If there is no relation type
        with that name
  + ### createRelation

    public void createRelation([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [RoleList](RoleList.md "class in javax.management.relation") roleList)
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation"),
    [InvalidRelationIdException](InvalidRelationIdException.md "class in javax.management.relation"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation"),
    [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation")

    Creates a simple relation (represented by a RelationSupport object) of
    given relation type, and adds it in the Relation Service.

    Roles are initialized according to the role list provided in
    parameter. The ones not initialized in this way are set to an empty
    ArrayList of ObjectNames.

    A RelationNotification, with type RELATION\_BASIC\_CREATION, is sent.

    Specified by:
    :   `createRelation` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation identifier, to identify uniquely the relation
        inside the Relation Service
    :   `relationTypeName` - name of the relation type (has to be created
        in the Relation Service)
    :   `roleList` - role list to initialize roles of the relation (can
        be null).

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `IllegalArgumentException` - if null parameter, except the role
        list which can be null if no role initialization
    :   `RoleNotFoundException` - if a value is provided for a role
        that does not exist in the relation type
    :   `InvalidRelationIdException` - if relation id already used
    :   `RelationTypeNotFoundException` - if relation type not known in
        Relation Service
    :   `InvalidRoleValueException` - if:

        - the same role name is used for two different roles

        - the number of referenced MBeans in given value is less than
        expected minimum degree

        - the number of referenced MBeans in provided value exceeds expected
        maximum degree

        - one referenced MBean in the value is not an Object of the MBean
        class expected for that role

        - an MBean provided for that role does not exist
  + ### addRelation

    public void addRelation([ObjectName](../ObjectName.md "class in javax.management") relationObjectName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [NoSuchMethodException](../../../../java.base/java/lang/NoSuchMethodException.md "class in java.lang"),
    [InvalidRelationIdException](InvalidRelationIdException.md "class in javax.management.relation"),
    [InstanceNotFoundException](../InstanceNotFoundException.md "class in javax.management"),
    [InvalidRelationServiceException](InvalidRelationServiceException.md "class in javax.management.relation"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation"),
    [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation")

    Adds an MBean created by the user (and registered by him in the MBean
    Server) as a relation in the Relation Service.

    To be added as a relation, the MBean must conform to the
    following:

    - implement the Relation interface

    - have for RelationService ObjectName the ObjectName of current
    Relation Service

    - have a relation id unique and unused in current Relation Service

    - have for relation type a relation type created in the Relation
    Service

    - have roles conforming to the role info provided in the relation
    type.

    Specified by:
    :   `addRelation` in interface `RelationServiceMBean`

    Parameters:
    :   `relationObjectName` - ObjectName of the relation MBean to be added.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `NoSuchMethodException` - If the MBean does not implement the
        Relation interface
    :   `InvalidRelationIdException` - if:

        - no relation identifier in MBean

        - the relation identifier is already used in the Relation Service
    :   `InstanceNotFoundException` - if the MBean for given ObjectName
        has not been registered
    :   `InvalidRelationServiceException` - if:

        - no Relation Service name in MBean

        - the Relation Service name in the MBean is not the one of the
        current Relation Service
    :   `RelationTypeNotFoundException` - if:

        - no relation type name in MBean

        - the relation type name in MBean does not correspond to a relation
        type created in the Relation Service
    :   `InvalidRoleValueException` - if:

        - the number of referenced MBeans in a role is less than
        expected minimum degree

        - the number of referenced MBeans in a role exceeds expected
        maximum degree

        - one referenced MBean in the value is not an Object of the MBean
        class expected for that role

        - an MBean provided for a role does not exist
    :   `RoleNotFoundException` - if a value is provided for a role
        that does not exist in the relation type
  + ### isRelationMBean

    public [ObjectName](../ObjectName.md "class in javax.management") isRelationMBean([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    If the relation is represented by an MBean (created by the user and
    added as a relation in the Relation Service), returns the ObjectName of
    the MBean.

    Specified by:
    :   `isRelationMBean` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id identifying the relation

    Returns:
    :   ObjectName of the corresponding relation MBean, or null if
        the relation is not an MBean.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - there is no relation associated
        to that id
  + ### isRelation

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") isRelation([ObjectName](../ObjectName.md "class in javax.management") objectName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Returns the relation id associated to the given ObjectName if the
    MBean has been added as a relation in the Relation Service.

    Specified by:
    :   `isRelation` in interface `RelationServiceMBean`

    Parameters:
    :   `objectName` - ObjectName of supposed relation

    Returns:
    :   relation id (String) or null (if the ObjectName is not a
        relation handled by the Relation Service)

    Throws:
    :   `IllegalArgumentException` - if null parameter
  + ### hasRelation

    public [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") hasRelation([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Checks if there is a relation identified in Relation Service with given
    relation id.

    Specified by:
    :   `hasRelation` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id identifying the relation

    Returns:
    :   boolean: true if there is a relation, false else

    Throws:
    :   `IllegalArgumentException` - if null parameter
  + ### getAllRelationIds

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getAllRelationIds()

    Returns all the relation ids for all the relations handled by the
    Relation Service.

    Specified by:
    :   `getAllRelationIds` in interface `RelationServiceMBean`

    Returns:
    :   ArrayList of String
  + ### checkRoleReading

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") checkRoleReading([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation")

    Checks if given Role can be read in a relation of the given type.

    Specified by:
    :   `checkRoleReading` in interface `RelationServiceMBean`

    Parameters:
    :   `roleName` - name of role to be checked
    :   `relationTypeName` - name of the relation type

    Returns:
    :   an Integer wrapping an integer corresponding to possible
        problems represented as constants in RoleUnresolved:

        - 0 if role can be read

        - integer corresponding to RoleStatus.NO\_ROLE\_WITH\_NAME

        - integer corresponding to RoleStatus.ROLE\_NOT\_READABLE

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationTypeNotFoundException` - if the relation type is not
        known in the Relation Service
  + ### checkRoleWriting

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") checkRoleWriting([Role](Role.md "class in javax.management.relation") role,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") initFlag)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation")

    Checks if given Role can be set in a relation of given type.

    Specified by:
    :   `checkRoleWriting` in interface `RelationServiceMBean`

    Parameters:
    :   `role` - role to be checked
    :   `relationTypeName` - name of relation type
    :   `initFlag` - flag to specify that the checking is done for the
        initialization of a role, write access shall not be verified.

    Returns:
    :   an Integer wrapping an integer corresponding to possible
        problems represented as constants in RoleUnresolved:

        - 0 if role can be set

        - integer corresponding to RoleStatus.NO\_ROLE\_WITH\_NAME

        - integer for RoleStatus.ROLE\_NOT\_WRITABLE

        - integer for RoleStatus.LESS\_THAN\_MIN\_ROLE\_DEGREE

        - integer for RoleStatus.MORE\_THAN\_MAX\_ROLE\_DEGREE

        - integer for RoleStatus.REF\_MBEAN\_OF\_INCORRECT\_CLASS

        - integer for RoleStatus.REF\_MBEAN\_NOT\_REGISTERED

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationTypeNotFoundException` - if unknown relation type
  + ### sendRelationCreationNotification

    public void sendRelationCreationNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Sends a notification (RelationNotification) for a relation creation.
    The notification type is:

    - RelationNotification.RELATION\_BASIC\_CREATION if the relation is an
    object internal to the Relation Service

    - RelationNotification.RELATION\_MBEAN\_CREATION if the relation is a
    MBean added as a relation.

    The source object is the Relation Service itself.

    It is called in Relation Service createRelation() and
    addRelation() methods.

    Specified by:
    :   `sendRelationCreationNotification` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation identifier of the updated relation

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if there is no relation for given
        relation id
  + ### sendRoleUpdateNotification

    public void sendRoleUpdateNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [Role](Role.md "class in javax.management.relation") newRole,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> oldValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Sends a notification (RelationNotification) for a role update in the
    given relation. The notification type is:

    - RelationNotification.RELATION\_BASIC\_UPDATE if the relation is an
    object internal to the Relation Service

    - RelationNotification.RELATION\_MBEAN\_UPDATE if the relation is a
    MBean added as a relation.

    The source object is the Relation Service itself.

    It is called in relation MBean setRole() (for given role) and
    setRoles() (for each role) methods (implementation provided in
    RelationSupport class).

    It is also called in Relation Service setRole() (for given role) and
    setRoles() (for each role) methods.

    Specified by:
    :   `sendRoleUpdateNotification` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation identifier of the updated relation
    :   `newRole` - new role (name and new value)
    :   `oldValue` - old role value (List of ObjectName objects)

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if there is no relation for given
        relation id
  + ### sendRelationRemovalNotification

    public void sendRelationRemovalNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> unregMBeanList)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Sends a notification (RelationNotification) for a relation removal.
    The notification type is:

    - RelationNotification.RELATION\_BASIC\_REMOVAL if the relation is an
    object internal to the Relation Service

    - RelationNotification.RELATION\_MBEAN\_REMOVAL if the relation is a
    MBean added as a relation.

    The source object is the Relation Service itself.

    It is called in Relation Service removeRelation() method.

    Specified by:
    :   `sendRelationRemovalNotification` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation identifier of the updated relation
    :   `unregMBeanList` - List of ObjectNames of MBeans expected
        to be unregistered due to relation removal (can be null)

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if there is no relation for given
        relation id
  + ### updateRoleMap

    public void updateRoleMap([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [Role](Role.md "class in javax.management.relation") newRole,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> oldValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Handles update of the Relation Service role map for the update of given
    role in given relation.

    It is called in relation MBean setRole() (for given role) and
    setRoles() (for each role) methods (implementation provided in
    RelationSupport class).

    It is also called in Relation Service setRole() (for given role) and
    setRoles() (for each role) methods.

    To allow the Relation Service to maintain the consistency (in case
    of MBean unregistration) and to be able to perform queries, this method
    must be called when a role is updated.

    Specified by:
    :   `updateRoleMap` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation identifier of the updated relation
    :   `newRole` - new role (name and new value)
    :   `oldValue` - old role value (List of ObjectName objects)

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `RelationNotFoundException` - if no relation for given id.
  + ### removeRelation

    public void removeRelation([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId)
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Removes given relation from the Relation Service.

    A RelationNotification notification is sent, its type being:

    - RelationNotification.RELATION\_BASIC\_REMOVAL if the relation was
    only internal to the Relation Service

    - RelationNotification.RELATION\_MBEAN\_REMOVAL if the relation is
    registered as an MBean.

    For MBeans referenced in such relation, nothing will be done,

    Specified by:
    :   `removeRelation` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id of the relation to be removed

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation corresponding to
        given relation id
  + ### purgeRelations

    public void purgeRelations()
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Purges the relations.

    Depending on the purgeFlag value, this method is either called
    automatically when a notification is received for the unregistration of
    an MBean referenced in a relation (if the flag is set to true), or not
    (if the flag is set to false).

    In that case it is up to the user to call it to maintain the
    consistency of the relations. To be kept in mind that if an MBean is
    unregistered and the purge not done immediately, if the ObjectName is
    reused and assigned to another MBean referenced in a relation, calling
    manually this purgeRelations() method will cause trouble, as will
    consider the ObjectName as corresponding to the unregistered MBean, not
    seeing the new one.

    The behavior depends on the cardinality of the role where the
    unregistered MBean is referenced:

    - if removing one MBean reference in the role makes its number of
    references less than the minimum degree, the relation has to be removed.

    - if the remaining number of references after removing the MBean
    reference is still in the cardinality range, keep the relation and
    update it calling its handleMBeanUnregistration() callback.

    Specified by:
    :   `purgeRelations` in interface `RelationServiceMBean`

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server.
  + ### findReferencingRelations

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")>> findReferencingRelations([ObjectName](../ObjectName.md "class in javax.management") mbeanName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Retrieves the relations where a given MBean is referenced.

    This corresponds to the CIM "References" and "ReferenceNames"
    operations.

    Specified by:
    :   `findReferencingRelations` in interface `RelationServiceMBean`

    Parameters:
    :   `mbeanName` - ObjectName of MBean
    :   `relationTypeName` - can be null; if specified, only the relations
        of that type will be considered in the search. Else all relation types
        are considered.
    :   `roleName` - can be null; if specified, only the relations
        where the MBean is referenced in that role will be returned. Else all
        roles are considered.

    Returns:
    :   an HashMap, where the keys are the relation ids of the relations
        where the MBean is referenced, and the value is, for each key,
        an ArrayList of role names (as an MBean can be referenced in several
        roles in the same relation).

    Throws:
    :   `IllegalArgumentException` - if null parameter
  + ### findAssociatedMBeans

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management"),[List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")>> findAssociatedMBeans([ObjectName](../ObjectName.md "class in javax.management") mbeanName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Retrieves the MBeans associated to given one in a relation.

    This corresponds to CIM Associators and AssociatorNames operations.

    Specified by:
    :   `findAssociatedMBeans` in interface `RelationServiceMBean`

    Parameters:
    :   `mbeanName` - ObjectName of MBean
    :   `relationTypeName` - can be null; if specified, only the relations
        of that type will be considered in the search. Else all
        relation types are considered.
    :   `roleName` - can be null; if specified, only the relations
        where the MBean is referenced in that role will be considered. Else all
        roles are considered.

    Returns:
    :   an HashMap, where the keys are the ObjectNames of the MBeans
        associated to given MBean, and the value is, for each key, an ArrayList
        of the relation ids of the relations where the key MBean is
        associated to given one (as they can be associated in several different
        relations).

    Throws:
    :   `IllegalArgumentException` - if null parameter
  + ### findRelationsOfType

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> findRelationsOfType([String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationTypeNotFoundException](RelationTypeNotFoundException.md "class in javax.management.relation")

    Returns the relation ids for relations of the given type.

    Specified by:
    :   `findRelationsOfType` in interface `RelationServiceMBean`

    Parameters:
    :   `relationTypeName` - relation type name

    Returns:
    :   an ArrayList of relation ids.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationTypeNotFoundException` - if there is no relation type
        with that name.
  + ### getRole

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getRole([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation")

    Retrieves role value for given role name in given relation.

    Specified by:
    :   `getRole` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id
    :   `roleName` - name of role

    Returns:
    :   the ArrayList of ObjectName objects being the role value

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation with given id
    :   `RoleNotFoundException` - if:

        - there is no role with given name

        or

        - the role is not readable.

    See Also:
    :   - [`setRole(java.lang.String, javax.management.relation.Role)`](#setRole(java.lang.String,javax.management.relation.Role))
  + ### getRoles

    public [RoleResult](RoleResult.md "class in javax.management.relation") getRoles([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] roleNameArray)
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Retrieves values of roles with given names in given relation.

    Specified by:
    :   `getRoles` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id
    :   `roleNameArray` - array of names of roles to be retrieved

    Returns:
    :   a RoleResult object, including a RoleList (for roles
        successfully retrieved) and a RoleUnresolvedList (for roles not
        retrieved).

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation with given id

    See Also:
    :   - [`setRoles(java.lang.String, javax.management.relation.RoleList)`](#setRoles(java.lang.String,javax.management.relation.RoleList))
  + ### getAllRoles

    public [RoleResult](RoleResult.md "class in javax.management.relation") getAllRoles([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Returns all roles present in the relation.

    Specified by:
    :   `getAllRoles` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id

    Returns:
    :   a RoleResult object, including a RoleList (for roles
        successfully retrieved) and a RoleUnresolvedList (for roles not
        readable).

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation for given id
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
  + ### getRoleCardinality

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") getRoleCardinality([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation")

    Retrieves the number of MBeans currently referenced in the given role.

    Specified by:
    :   `getRoleCardinality` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id
    :   `roleName` - name of role

    Returns:
    :   the number of currently referenced MBeans in that role

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation with given id
    :   `RoleNotFoundException` - if there is no role with given name
  + ### setRole

    public void setRole([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [Role](Role.md "class in javax.management.relation") role)
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation"),
    [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation")

    Sets the given role in given relation.

    Will check the role according to its corresponding role definition
    provided in relation's relation type

    The Relation Service will keep track of the change to keep the
    consistency of relations by handling referenced MBean deregistrations.

    Specified by:
    :   `setRole` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id
    :   `role` - role to be set (name and new value)

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation with given id
    :   `RoleNotFoundException` - if the role does not exist or is not
        writable
    :   `InvalidRoleValueException` - if value provided for role is not
        valid:

        - the number of referenced MBeans in given value is less than
        expected minimum degree

        or

        - the number of referenced MBeans in provided value exceeds expected
        maximum degree

        or

        - one referenced MBean in the value is not an Object of the MBean
        class expected for that role

        or

        - an MBean provided for that role does not exist

    See Also:
    :   - [`getRole(java.lang.String, java.lang.String)`](#getRole(java.lang.String,java.lang.String))
  + ### setRoles

    public [RoleResult](RoleResult.md "class in javax.management.relation") setRoles([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [RoleList](RoleList.md "class in javax.management.relation") roleList)
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Sets the given roles in given relation.

    Will check the role according to its corresponding role definition
    provided in relation's relation type

    The Relation Service keeps track of the changes to keep the
    consistency of relations by handling referenced MBean deregistrations.

    Specified by:
    :   `setRoles` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id
    :   `roleList` - list of roles to be set

    Returns:
    :   a RoleResult object, including a RoleList (for roles
        successfully set) and a RoleUnresolvedList (for roles not
        set).

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation with given id

    See Also:
    :   - [`getRoles(java.lang.String, java.lang.String[])`](#getRoles(java.lang.String,java.lang.String%5B%5D))
  + ### getReferencedMBeans

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management"),[List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")>> getReferencedMBeans([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Retrieves MBeans referenced in the various roles of the relation.

    Specified by:
    :   `getReferencedMBeans` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id

    Returns:
    :   a HashMap mapping:

        ObjectName -> ArrayList of String (role names)

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation for given
        relation id
  + ### getRelationTypeName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationTypeName([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationNotFoundException](RelationNotFoundException.md "class in javax.management.relation")

    Returns name of associated relation type for given relation.

    Specified by:
    :   `getRelationTypeName` in interface `RelationServiceMBean`

    Parameters:
    :   `relationId` - relation id

    Returns:
    :   the name of the associated relation type.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `RelationNotFoundException` - if no relation for given
        relation id
  + ### handleNotification

    public void handleNotification([Notification](../Notification.md "class in javax.management") notif,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") handback)

    Invoked when a JMX notification occurs.
    Currently handles notifications for unregistration of MBeans, either
    referenced in a relation role or being a relation itself.

    Specified by:
    :   `handleNotification` in interface `NotificationListener`

    Parameters:
    :   `notif` - The notification.
    :   `handback` - An opaque object which helps the listener to
        associate information regarding the MBean emitter (can be null).
  + ### getNotificationInfo

    public [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Returns a NotificationInfo object containing the name of the Java class
    of the notification and the notification types sent.

    Specified by:
    :   `getNotificationInfo` in interface `NotificationBroadcaster`

    Overrides:
    :   `getNotificationInfo` in class `NotificationBroadcasterSupport`

    Returns:
    :   the array of possible notifications.