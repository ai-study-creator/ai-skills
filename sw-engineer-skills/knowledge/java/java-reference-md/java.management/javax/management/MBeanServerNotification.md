Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanServerNotification

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

[javax.management.Notification](Notification.md "class in javax.management")

javax.management.MBeanServerNotification

All Implemented Interfaces:
:   `Serializable`

---

public class MBeanServerNotification
extends [Notification](Notification.md "class in javax.management")

Represents a notification emitted by the MBean Server through the MBeanServerDelegate MBean.
The MBean Server emits the following types of notifications: MBean registration, MBean
unregistration.

To receive MBeanServerNotifications, you need to register a listener with
the [`MBeanServerDelegate`](MBeanServerDelegate.md "class in javax.management") MBean
that represents the MBeanServer. The ObjectName of the MBeanServerDelegate is
[`MBeanServerDelegate.DELEGATE_NAME`](MBeanServerDelegate.md#DELEGATE_NAME), which is
`JMImplementation:type=MBeanServerDelegate`.

The following code prints a message every time an MBean is registered
or unregistered in the MBean Server `mbeanServer`:

```
 private static final NotificationListener printListener = new NotificationListener() {
     public void handleNotification(Notification n, Object handback) {
         if (!(n instanceof MBeanServerNotification)) {
             System.out.println("Ignored notification of class " + n.getClass().getName());
             return;
         }
         MBeanServerNotification mbsn = (MBeanServerNotification) n;
         String what;
         if (n.getType().equals(MBeanServerNotification.REGISTRATION_NOTIFICATION))
             what = "MBean registered";
         else if (n.getType().equals(MBeanServerNotification.UNREGISTRATION_NOTIFICATION))
             what = "MBean unregistered";
         else
             what = "Unknown type " + n.getType();
         System.out.println("Received MBean Server notification: " + what + ": " +
                 mbsn.getMBeanName());
     }
 };

 ...
     mbeanServer.addNotificationListener(
             MBeanServerDelegate.DELEGATE_NAME, printListener, null, null);
```

An MBean which is not an [`MBeanServerDelegate`](MBeanServerDelegate.md "class in javax.management") may also emit
MBeanServerNotifications. In particular, there is a convention for
MBeans to emit an MBeanServerNotification for a group of MBeans.

An MBeanServerNotification emitted to denote the registration or
unregistration of a group of MBeans has the following characteristics:

* Its [notification type](Notification.md#getType()) is
  `"JMX.mbean.registered.group"` or
  `"JMX.mbean.unregistered.group"`, which can also be written [`REGISTRATION_NOTIFICATION`](#REGISTRATION_NOTIFICATION)`+ ".group"` or
  [`UNREGISTRATION_NOTIFICATION`](#UNREGISTRATION_NOTIFICATION)`+ ".group"`.
* Its [MBean name](#getMBeanName()) is an ObjectName pattern
  that selects the set (or a superset) of the MBeans being registered
  or unregistered
* Its [user data](Notification.md#getUserData()) can optionally
  be set to an array of ObjectNames containing the names of all MBeans
  being registered or unregistered.

MBeans which emit these group registration/unregistration notifications will
declare them in their [`MBeanNotificationInfo`](MBeanInfo.md#getNotifications()).

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanServerNotification)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `REGISTRATION_NOTIFICATION`

  Notification type denoting that an MBean has been registered.

  `static final String`

  `UNREGISTRATION_NOTIFICATION`

  Notification type denoting that an MBean has been unregistered.

  ### Fields inherited from class javax.management.[Notification](Notification.md "class in javax.management")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanServerNotification(String type,
  Object source,
  long sequenceNumber,
  ObjectName objectName)`

  Creates an MBeanServerNotification object specifying object names of
  the MBeans that caused the notification and the specified notification
  type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ObjectName`

  `getMBeanName()`

  Returns the object name of the MBean that caused the notification.

  `String`

  `toString()`

  Returns a String representation of this notification.

  ### Methods inherited from class javax.management.[Notification](Notification.md "class in javax.management")

  `getMessage, getSequenceNumber, getTimeStamp, getType, getUserData, setSequenceNumber, setSource, setTimeStamp, setUserData`

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### REGISTRATION\_NOTIFICATION

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") REGISTRATION\_NOTIFICATION

    Notification type denoting that an MBean has been registered.
    Value is "JMX.mbean.registered".

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.MBeanServerNotification.REGISTRATION_NOTIFICATION)
  + ### UNREGISTRATION\_NOTIFICATION

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") UNREGISTRATION\_NOTIFICATION

    Notification type denoting that an MBean has been unregistered.
    Value is "JMX.mbean.unregistered".

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.MBeanServerNotification.UNREGISTRATION_NOTIFICATION)
* ## Constructor Details

  + ### MBeanServerNotification

    public MBeanServerNotification([String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    long sequenceNumber,
    [ObjectName](ObjectName.md "class in javax.management") objectName)

    Creates an MBeanServerNotification object specifying object names of
    the MBeans that caused the notification and the specified notification
    type.

    Parameters:
    :   `type` - A string denoting the type of the
        notification. Set it to one these values: [`REGISTRATION_NOTIFICATION`](#REGISTRATION_NOTIFICATION), [`UNREGISTRATION_NOTIFICATION`](#UNREGISTRATION_NOTIFICATION).
    :   `source` - The MBeanServerNotification object responsible
        for forwarding MBean server notification.
    :   `sequenceNumber` - A sequence number that can be used to order
        received notifications.
    :   `objectName` - The object name of the MBean that caused the
        notification.
* ## Method Details

  + ### getMBeanName

    public [ObjectName](ObjectName.md "class in javax.management") getMBeanName()

    Returns the object name of the MBean that caused the notification.

    Returns:
    :   the object name of the MBean that caused the notification.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Notification`

    Returns a String representation of this notification.

    Overrides:
    :   `toString` in class `Notification`

    Returns:
    :   A String representation of this notification.