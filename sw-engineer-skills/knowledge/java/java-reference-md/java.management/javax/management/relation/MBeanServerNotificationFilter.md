Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class MBeanServerNotificationFilter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.NotificationFilterSupport](../NotificationFilterSupport.md "class in javax.management")

javax.management.relation.MBeanServerNotificationFilter

All Implemented Interfaces:
:   `Serializable`, `NotificationFilter`

---

public class MBeanServerNotificationFilter
extends [NotificationFilterSupport](../NotificationFilterSupport.md "class in javax.management")

Filter for [`MBeanServerNotification`](../MBeanServerNotification.md "class in javax.management").
This filter filters MBeanServerNotification notifications by
selecting the ObjectNames of interest and the operations (registration,
unregistration, both) of interest (corresponding to notification
types).

The **serialVersionUID** of this class is `2605900539589789736L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.MBeanServerNotificationFilter)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanServerNotificationFilter()`

  Creates a filter selecting all MBeanServerNotification notifications for
  all ObjectNames.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `disableAllObjectNames()`

  Disables any MBeanServerNotification (all ObjectNames are
  deselected).

  `void`

  `disableObjectName(ObjectName objectName)`

  Disables MBeanServerNotifications concerning given ObjectName.

  `void`

  `enableAllObjectNames()`

  Enables all MBeanServerNotifications (all ObjectNames are selected).

  `void`

  `enableObjectName(ObjectName objectName)`

  Enables MBeanServerNotifications concerning given ObjectName.

  `Vector<ObjectName>`

  `getDisabledObjectNames()`

  Gets all the ObjectNames disabled.

  `Vector<ObjectName>`

  `getEnabledObjectNames()`

  Gets all the ObjectNames enabled.

  `boolean`

  `isNotificationEnabled(Notification notif)`

  Invoked before sending the specified notification to the listener.

  ### Methods inherited from class javax.management.[NotificationFilterSupport](../NotificationFilterSupport.md "class in javax.management")

  `disableAllTypes, disableType, enableType, getEnabledTypes`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MBeanServerNotificationFilter

    public MBeanServerNotificationFilter()

    Creates a filter selecting all MBeanServerNotification notifications for
    all ObjectNames.
* ## Method Details

  + ### disableAllObjectNames

    public void disableAllObjectNames()

    Disables any MBeanServerNotification (all ObjectNames are
    deselected).
  + ### disableObjectName

    public void disableObjectName([ObjectName](../ObjectName.md "class in javax.management") objectName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Disables MBeanServerNotifications concerning given ObjectName.

    Parameters:
    :   `objectName` - ObjectName no longer of interest

    Throws:
    :   `IllegalArgumentException` - if the given ObjectName is null
  + ### enableAllObjectNames

    public void enableAllObjectNames()

    Enables all MBeanServerNotifications (all ObjectNames are selected).
  + ### enableObjectName

    public void enableObjectName([ObjectName](../ObjectName.md "class in javax.management") objectName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Enables MBeanServerNotifications concerning given ObjectName.

    Parameters:
    :   `objectName` - ObjectName of interest

    Throws:
    :   `IllegalArgumentException` - if the given ObjectName is null
  + ### getEnabledObjectNames

    public [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getEnabledObjectNames()

    Gets all the ObjectNames enabled.

    Returns:
    :   Vector of ObjectNames:

        - null means all ObjectNames are implicitly selected, except the
        ObjectNames explicitly deselected

        - empty means all ObjectNames are deselected, i.e. no ObjectName
        selected.
  + ### getDisabledObjectNames

    public [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[ObjectName](../ObjectName.md "class in javax.management")> getDisabledObjectNames()

    Gets all the ObjectNames disabled.

    Returns:
    :   Vector of ObjectNames:

        - null means all ObjectNames are implicitly deselected, except the
        ObjectNames explicitly selected

        - empty means all ObjectNames are selected, i.e. no ObjectName
        deselected.
  + ### isNotificationEnabled

    public boolean isNotificationEnabled([Notification](../Notification.md "class in javax.management") notif)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Invoked before sending the specified notification to the listener.

    If:

    - the ObjectName of the concerned MBean is selected (explicitly OR
    (implicitly and not explicitly deselected))

    AND

    - the type of the operation (registration or unregistration) is
    selected

    then the notification is sent to the listener.

    Specified by:
    :   `isNotificationEnabled` in interface `NotificationFilter`

    Overrides:
    :   `isNotificationEnabled` in class `NotificationFilterSupport`

    Parameters:
    :   `notif` - The notification to be sent.

    Returns:
    :   true if the notification has to be sent to the listener, false
        otherwise.

    Throws:
    :   `IllegalArgumentException` - if null parameter