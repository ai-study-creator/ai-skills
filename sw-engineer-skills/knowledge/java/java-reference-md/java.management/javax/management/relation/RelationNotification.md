Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RelationNotification

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[javax.management.Notification](../Notification.md "class in javax.management")

javax.management.relation.RelationNotification

All Implemented Interfaces:
:   `Serializable`

---

public class RelationNotification
extends [Notification](../Notification.md "class in javax.management")

A notification of a change in the Relation Service.
A RelationNotification notification is sent when a relation is created via
the Relation Service, or an MBean is added as a relation in the Relation
Service, or a role is updated in a relation, or a relation is removed from
the Relation Service.

The **serialVersionUID** of this class is `-6871117877523310399L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RelationNotification)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `RELATION_BASIC_CREATION`

  Type for the creation of an internal relation.

  `static final String`

  `RELATION_BASIC_REMOVAL`

  Type for the removal from the Relation Service of an internal relation.

  `static final String`

  `RELATION_BASIC_UPDATE`

  Type for an update of an internal relation.

  `static final String`

  `RELATION_MBEAN_CREATION`

  Type for the relation MBean added into the Relation Service.

  `static final String`

  `RELATION_MBEAN_REMOVAL`

  Type for the removal from the Relation Service of a relation MBean.

  `static final String`

  `RELATION_MBEAN_UPDATE`

  Type for the update of a relation MBean.

  ### Fields inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RelationNotification(String notifType,
  Object sourceObj,
  long sequence,
  long timeStamp,
  String message,
  String id,
  String typeName,
  ObjectName objectName,
  String name,
  List<ObjectName> newValue,
  List<ObjectName> oldValue)`

  Creates a notification for a role update in a relation.

  `RelationNotification(String notifType,
  Object sourceObj,
  long sequence,
  long timeStamp,
  String message,
  String id,
  String typeName,
  ObjectName objectName,
  List<ObjectName> unregMBeanList)`

  Creates a notification for either a relation creation (RelationSupport
  object created internally in the Relation Service, or an MBean added as a
  relation) or for a relation removal from the Relation Service.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<ObjectName>`

  `getMBeansToUnregister()`

  Returns the list of ObjectNames of MBeans expected to be unregistered
  due to a relation removal (only for relation removal).

  `List<ObjectName>`

  `getNewRoleValue()`

  Returns new value of updated role (only for role update).

  `ObjectName`

  `getObjectName()`

  Returns the ObjectName of the
  created/removed/updated relation.

  `List<ObjectName>`

  `getOldRoleValue()`

  Returns old value of updated role (only for role update).

  `String`

  `getRelationId()`

  Returns the relation identifier of created/removed/updated relation.

  `String`

  `getRelationTypeName()`

  Returns the relation type name of created/removed/updated relation.

  `String`

  `getRoleName()`

  Returns name of updated role of updated relation (only for role update).

  ### Methods inherited from class javax.management.[Notification](../Notification.md "class in javax.management")

  `getMessage, getSequenceNumber, getTimeStamp, getType, getUserData, setSequenceNumber, setSource, setTimeStamp, setUserData, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### RELATION\_BASIC\_CREATION

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RELATION\_BASIC\_CREATION

    Type for the creation of an internal relation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RelationNotification.RELATION_BASIC_CREATION)
  + ### RELATION\_MBEAN\_CREATION

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RELATION\_MBEAN\_CREATION

    Type for the relation MBean added into the Relation Service.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RelationNotification.RELATION_MBEAN_CREATION)
  + ### RELATION\_BASIC\_UPDATE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RELATION\_BASIC\_UPDATE

    Type for an update of an internal relation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RelationNotification.RELATION_BASIC_UPDATE)
  + ### RELATION\_MBEAN\_UPDATE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RELATION\_MBEAN\_UPDATE

    Type for the update of a relation MBean.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RelationNotification.RELATION_MBEAN_UPDATE)
  + ### RELATION\_BASIC\_REMOVAL

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RELATION\_BASIC\_REMOVAL

    Type for the removal from the Relation Service of an internal relation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RelationNotification.RELATION_BASIC_REMOVAL)
  + ### RELATION\_MBEAN\_REMOVAL

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RELATION\_MBEAN\_REMOVAL

    Type for the removal from the Relation Service of a relation MBean.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RelationNotification.RELATION_MBEAN_REMOVAL)
* ## Constructor Details

  + ### RelationNotification

    public RelationNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") notifType,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") sourceObj,
    long sequence,
    long timeStamp,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") id,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") typeName,
    [ObjectName](../ObjectName.md "class in javax.management") objectName,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> unregMBeanList)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a notification for either a relation creation (RelationSupport
    object created internally in the Relation Service, or an MBean added as a
    relation) or for a relation removal from the Relation Service.

    Parameters:
    :   `notifType` - type of the notification; either:

        - RELATION\_BASIC\_CREATION

        - RELATION\_MBEAN\_CREATION

        - RELATION\_BASIC\_REMOVAL

        - RELATION\_MBEAN\_REMOVAL
    :   `sourceObj` - source object, sending the notification. This is either
        an ObjectName or a RelationService object. In the latter case it must be
        the MBean emitting the notification; the MBean Server will rewrite the
        source to be the ObjectName under which that MBean is registered.
    :   `sequence` - sequence number to identify the notification
    :   `timeStamp` - time stamp
    :   `message` - human-readable message describing the notification
    :   `id` - relation id identifying the relation in the Relation
        Service
    :   `typeName` - name of the relation type
    :   `objectName` - ObjectName of the relation object if it is an MBean
        (null for relations internally handled by the Relation Service)
    :   `unregMBeanList` - list of ObjectNames of referenced MBeans
        expected to be unregistered due to relation removal (only for removal,
        due to CIM qualifiers, can be null)

    Throws:
    :   `IllegalArgumentException` - if:

        - no value for the notification type

        - the notification type is not RELATION\_BASIC\_CREATION,
        RELATION\_MBEAN\_CREATION, RELATION\_BASIC\_REMOVAL or
        RELATION\_MBEAN\_REMOVAL

        - no source object

        - the source object is not a Relation Service

        - no relation id

        - no relation type name
  + ### RelationNotification

    public RelationNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") notifType,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") sourceObj,
    long sequence,
    long timeStamp,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") id,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") typeName,
    [ObjectName](../ObjectName.md "class in javax.management") objectName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> newValue,
    [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> oldValue)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Creates a notification for a role update in a relation.

    Parameters:
    :   `notifType` - type of the notification; either:

        - RELATION\_BASIC\_UPDATE

        - RELATION\_MBEAN\_UPDATE
    :   `sourceObj` - source object, sending the notification. This is either
        an ObjectName or a RelationService object. In the latter case it must be
        the MBean emitting the notification; the MBean Server will rewrite the
        source to be the ObjectName under which that MBean is registered.
    :   `sequence` - sequence number to identify the notification
    :   `timeStamp` - time stamp
    :   `message` - human-readable message describing the notification
    :   `id` - relation id identifying the relation in the Relation
        Service
    :   `typeName` - name of the relation type
    :   `objectName` - ObjectName of the relation object if it is an MBean
        (null for relations internally handled by the Relation Service)
    :   `name` - name of the updated role
    :   `newValue` - new role value (List of ObjectName objects)
    :   `oldValue` - old role value (List of ObjectName objects)

    Throws:
    :   `IllegalArgumentException` - if null parameter
* ## Method Details

  + ### getRelationId

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationId()

    Returns the relation identifier of created/removed/updated relation.

    Returns:
    :   the relation id.
  + ### getRelationTypeName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRelationTypeName()

    Returns the relation type name of created/removed/updated relation.

    Returns:
    :   the relation type name.
  + ### getObjectName

    public [ObjectName](../ObjectName.md "class in javax.management") getObjectName()

    Returns the ObjectName of the
    created/removed/updated relation.

    Returns:
    :   the ObjectName if the relation is an MBean, otherwise null.
  + ### getMBeansToUnregister

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getMBeansToUnregister()

    Returns the list of ObjectNames of MBeans expected to be unregistered
    due to a relation removal (only for relation removal).

    Returns:
    :   a [`List`](../../../../java.base/java/util/List.md "interface in java.util") of [`ObjectName`](../ObjectName.md "class in javax.management").
  + ### getRoleName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRoleName()

    Returns name of updated role of updated relation (only for role update).

    Returns:
    :   the name of the updated role.
  + ### getOldRoleValue

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getOldRoleValue()

    Returns old value of updated role (only for role update).

    Returns:
    :   the old value of the updated role.
  + ### getNewRoleValue

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getNewRoleValue()

    Returns new value of updated role (only for role update).

    Returns:
    :   the new value of the updated role.