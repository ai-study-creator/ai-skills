Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RelationSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.relation.RelationSupport

All Implemented Interfaces:
:   `MBeanRegistration`, `Relation`, `RelationSupportMBean`

---

public class RelationSupport
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [RelationSupportMBean](RelationSupportMBean.md "interface in javax.management.relation"), [MBeanRegistration](../MBeanRegistration.md "interface in javax.management")

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

It implements also the MBeanRegistration interface to be able to retrieve
the MBean Server where it is registered (if registered as a MBean) to access
to its Relation Service.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RelationSupport(String relationId,
  ObjectName relationServiceName,
  String relationTypeName,
  RoleList list)`

  Creates a `RelationSupport` object.

  `RelationSupport(String relationId,
  ObjectName relationServiceName,
  MBeanServer relationServiceMBeanServer,
  String relationTypeName,
  RoleList list)`

  Creates a `RelationSupport` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  `Boolean`

  `isInRelationService()`

  Returns an internal flag specifying if the object is still handled by
  the Relation Service.

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

  `RoleList`

  `retrieveAllRoles()`

  Returns all roles in the relation without checking read mode.

  `void`

  `setRelationServiceManagementFlag(Boolean flag)`

  Specifies whether this relation is handled by the Relation
  Service.

  `void`

  `setRole(Role role)`

  Sets the given role.

  `RoleResult`

  `setRoles(RoleList list)`

  Sets the given roles.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RelationSupport

    public RelationSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [ObjectName](../ObjectName.md "class in javax.management") relationServiceName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [RoleList](RoleList.md "class in javax.management.relation") list)
    throws [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a `RelationSupport` object.

    This constructor has to be used when the RelationSupport object will
    be registered as a MBean by the user, or when creating a user relation
    MBean whose class extends RelationSupport.

    Nothing is done at the Relation Service level, i.e.
    the `RelationSupport` object is not added to the
    `RelationService` and no checks are performed to
    see if the provided values are correct.
    The object is always created, EXCEPT if:

    - any of the required parameters is `null`.

    - the same name is used for two roles.

    To be handled as a relation, the `RelationSupport` object has
    to be added to the Relation Service using the Relation Service method
    addRelation().

    Parameters:
    :   `relationId` - relation identifier, to identify the relation in the
        Relation Service.

        Expected to be unique in the given Relation Service.
    :   `relationServiceName` - ObjectName of the Relation Service where
        the relation will be registered.

        This parameter is required as it is the Relation Service that is
        aware of the definition of the relation type of the given relation,
        so that will be able to check update operations (set).
    :   `relationTypeName` - Name of relation type.

        Expected to have been created in the given Relation Service.
    :   `list` - list of roles (Role objects) to initialize the
        relation. Can be `null`.

        Expected to conform to relation info in associated relation type.

    Throws:
    :   `InvalidRoleValueException` - if the same name is used for two
        roles.
    :   `IllegalArgumentException` - if any of the required parameters
        (relation id, relation service ObjectName, or relation type name) is
        `null`.
  + ### RelationSupport

    public RelationSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") relationId,
    [ObjectName](../ObjectName.md "class in javax.management") relationServiceName,
    [MBeanServer](../MBeanServer.md "interface in javax.management") relationServiceMBeanServer,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") relationTypeName,
    [RoleList](RoleList.md "class in javax.management.relation") list)
    throws [InvalidRoleValueException](InvalidRoleValueException.md "class in javax.management.relation"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a `RelationSupport` object.

    This constructor has to be used when the user relation MBean
    implements the interfaces expected to be supported by a relation by
    delegating to a RelationSupport object.

    This object needs to know the Relation Service expected to handle the
    relation. So it has to know the MBean Server where the Relation Service
    is registered.

    According to a limitation, a relation MBean must be registered in the
    same MBean Server as the Relation Service expected to handle it. So the
    user relation MBean has to be created and registered, and then the
    wrapped RelationSupport object can be created within the identified MBean
    Server.

    Nothing is done at the Relation Service level, i.e.
    the `RelationSupport` object is not added to the
    `RelationService` and no checks are performed to
    see if the provided values are correct.
    The object is always created, EXCEPT if:

    - any of the required parameters is `null`.

    - the same name is used for two roles.

    To be handled as a relation, the `RelationSupport` object has
    to be added to the Relation Service using the Relation Service method
    addRelation().

    Parameters:
    :   `relationId` - relation identifier, to identify the relation in the
        Relation Service.

        Expected to be unique in the given Relation Service.
    :   `relationServiceName` - ObjectName of the Relation Service where
        the relation will be registered.

        This parameter is required as it is the Relation Service that is
        aware of the definition of the relation type of the given relation,
        so that will be able to check update operations (set).
    :   `relationServiceMBeanServer` - MBean Server where the wrapping MBean
        is or will be registered.

        Expected to be the MBean Server where the Relation Service is or will
        be registered.
    :   `relationTypeName` - Name of relation type.

        Expected to have been created in the given Relation Service.
    :   `list` - list of roles (Role objects) to initialize the
        relation. Can be `null`.

        Expected to conform to relation info in associated relation type.

    Throws:
    :   `InvalidRoleValueException` - if the same name is used for two
        roles.
    :   `IllegalArgumentException` - if any of the required parameters
        (relation id, relation service ObjectName, relation service MBeanServer,
        or relation type name) is `null`.
* ## Method Details

  + ### getRole

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getRole([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Retrieves role value for given role name.

    Checks if the role exists and is readable according to the relation
    type.

    Specified by:
    :   `getRole` in interface `Relation`

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

    public [RoleResult](RoleResult.md "class in javax.management.relation") getRoles([String](../../../../java.base/java/lang/String.md "class in java.lang")[] roleNameArray)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Retrieves values of roles with given names.

    Checks for each role if it exists and is readable according to the
    relation type.

    Specified by:
    :   `getRoles` in interface `Relation`

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
  + ### getAllRoles

    public [RoleResult](RoleResult.md "class in javax.management.relation") getAllRoles()
    throws [RelationServiceNotRegisteredException](RelationServiceNotRegisteredException.md "class in javax.management.relation")

    Returns all roles present in the relation.

    Specified by:
    :   `getAllRoles` in interface `Relation`

    Returns:
    :   a RoleResult object, including a RoleList (for roles
        successfully retrieved) and a RoleUnresolvedList (for roles not
        readable).

    Throws:
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
  + ### retrieveAllRoles

    public [RoleList](RoleList.md "class in javax.management.relation") retrieveAllRoles()

    Returns all roles in the relation without checking read mode.

    Specified by:
    :   `retrieveAllRoles` in interface `Relation`

    Returns:
    :   a RoleList
  + ### getRoleCardinality

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") getRoleCardinality([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [RoleNotFoundException](RoleNotFoundException.md "class in javax.management.relation")

    Returns the number of MBeans currently referenced in the given role.

    Specified by:
    :   `getRoleCardinality` in interface `Relation`

    Parameters:
    :   `roleName` - name of role

    Returns:
    :   the number of currently referenced MBeans in that role

    Throws:
    :   `IllegalArgumentException` - if null role name
    :   `RoleNotFoundException` - if there is no role with given name
  + ### setRole

    public void setRole([Role](Role.md "class in javax.management.relation") role)
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

    Specified by:
    :   `setRole` in interface `Relation`

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

        - a MBean provided for that role does not exist
    :   `RelationServiceNotRegisteredException` - if the Relation
        Service is not registered in the MBean Server
    :   `RelationTypeNotFoundException` - if the relation type has not
        been declared in the Relation Service
    :   `RelationNotFoundException` - if the relation has not been
        added in the Relation Service.

    See Also:
    :   - [`getRole(java.lang.String)`](#getRole(java.lang.String))
  + ### setRoles

    public [RoleResult](RoleResult.md "class in javax.management.relation") setRoles([RoleList](RoleList.md "class in javax.management.relation") list)
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

    Specified by:
    :   `setRoles` in interface `Relation`

    Parameters:
    :   `list` - list of roles to be set

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

    public void handleMBeanUnregistration([ObjectName](../ObjectName.md "class in javax.management") objectName,
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

    Specified by:
    :   `handleMBeanUnregistration` in interface `Relation`

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

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management"),[List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")>> getReferencedMBeans()

    Retrieves MBeans referenced in the various roles of the relation.

    Specified by:
    :   `getReferencedMBeans` in interface `Relation`

    Returns:
    :   a HashMap mapping:

        ObjectName -> ArrayList of String (role names)
  + ### getRelationTypeName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationTypeName()

    Returns name of associated relation type.

    Specified by:
    :   `getRelationTypeName` in interface `Relation`

    Returns:
    :   the name of the relation type.
  + ### getRelationServiceName

    public [ObjectName](../ObjectName.md "class in javax.management") getRelationServiceName()

    Returns ObjectName of the Relation Service handling the relation.

    Specified by:
    :   `getRelationServiceName` in interface `Relation`

    Returns:
    :   the ObjectName of the Relation Service.
  + ### getRelationId

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationId()

    Returns relation identifier (used to uniquely identify the relation
    inside the Relation Service).

    Specified by:
    :   `getRelationId` in interface `Relation`

    Returns:
    :   the relation id.
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
  + ### isInRelationService

    public [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") isInRelationService()

    Returns an internal flag specifying if the object is still handled by
    the Relation Service.

    Specified by:
    :   `isInRelationService` in interface `RelationSupportMBean`

    Returns:
    :   a Boolean equal to [`Boolean.TRUE`](../../../../java.base/java/lang/Boolean.md#TRUE) if the object
        is still handled by the Relation Service and [`Boolean.FALSE`](../../../../java.base/java/lang/Boolean.md#FALSE) otherwise.
  + ### setRelationServiceManagementFlag

    public void setRelationServiceManagementFlag([Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") flag)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Description copied from interface: `RelationSupportMBean`

    Specifies whether this relation is handled by the Relation
    Service.

    BEWARE, this method has to be exposed as the Relation Service will
    access the relation through its management interface. It is RECOMMENDED
    NOT to use this method. Using it does not affect the registration of the
    relation object in the Relation Service, but will provide wrong
    information about it!

    Specified by:
    :   `setRelationServiceManagementFlag` in interface `RelationSupportMBean`

    Parameters:
    :   `flag` - whether the relation is handled by the Relation Service.

    Throws:
    :   `IllegalArgumentException` - if null parameter