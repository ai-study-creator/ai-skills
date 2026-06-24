Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanServerDelegate

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.MBeanServerDelegate

All Implemented Interfaces:
:   `MBeanServerDelegateMBean`, `NotificationBroadcaster`, `NotificationEmitter`

---

public class MBeanServerDelegate
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [MBeanServerDelegateMBean](MBeanServerDelegateMBean.md "interface in javax.management"), [NotificationEmitter](NotificationEmitter.md "interface in javax.management")

Represents the MBean server from the management point of view.
The MBeanServerDelegate MBean emits the MBeanServerNotifications when
an MBean is registered/unregistered in the MBean server.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ObjectName`

  `DELEGATE_NAME`

  Defines the default ObjectName of the MBeanServerDelegate.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanServerDelegate()`

  Create a MBeanServerDelegate object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Adds a listener to this MBean.

  `String`

  `getImplementationName()`

  Returns the JMX implementation name (the name of this product).

  `String`

  `getImplementationVendor()`

  Returns the JMX implementation vendor (the vendor of this product).

  `String`

  `getImplementationVersion()`

  Returns the JMX implementation version (the version of this product).

  `String`

  `getMBeanServerId()`

  Returns the MBean server agent identity.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns an array indicating, for each notification this
  MBean may send, the name of the Java class of the notification
  and the notification type.

  `String`

  `getSpecificationName()`

  Returns the full name of the JMX specification implemented
  by this product.

  `String`

  `getSpecificationVendor()`

  Returns the vendor of the JMX specification implemented
  by this product.

  `String`

  `getSpecificationVersion()`

  Returns the version of the JMX specification implemented
  by this product.

  `void`

  `removeNotificationListener(NotificationListener listener)`

  Removes a listener from this MBean.

  `void`

  `removeNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Removes a listener from this MBean.

  `void`

  `sendNotification(Notification notification)`

  Enables the MBean server to send a notification.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DELEGATE\_NAME

    public static final [ObjectName](ObjectName.md "class in javax.management") DELEGATE\_NAME

    Defines the default ObjectName of the MBeanServerDelegate.

    Since:
    :   1.6
* ## Constructor Details

  + ### MBeanServerDelegate

    public MBeanServerDelegate()

    Create a MBeanServerDelegate object.
* ## Method Details

  + ### getMBeanServerId

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getMBeanServerId()

    Returns the MBean server agent identity.

    Specified by:
    :   `getMBeanServerId` in interface `MBeanServerDelegateMBean`

    Returns:
    :   the identity.
  + ### getSpecificationName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getSpecificationName()

    Returns the full name of the JMX specification implemented
    by this product.

    Specified by:
    :   `getSpecificationName` in interface `MBeanServerDelegateMBean`

    Returns:
    :   the specification name.
  + ### getSpecificationVersion

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getSpecificationVersion()

    Returns the version of the JMX specification implemented
    by this product.

    Specified by:
    :   `getSpecificationVersion` in interface `MBeanServerDelegateMBean`

    Returns:
    :   the specification version.
  + ### getSpecificationVendor

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getSpecificationVendor()

    Returns the vendor of the JMX specification implemented
    by this product.

    Specified by:
    :   `getSpecificationVendor` in interface `MBeanServerDelegateMBean`

    Returns:
    :   the specification vendor.
  + ### getImplementationName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getImplementationName()

    Returns the JMX implementation name (the name of this product).

    Specified by:
    :   `getImplementationName` in interface `MBeanServerDelegateMBean`

    Returns:
    :   the implementation name.
  + ### getImplementationVersion

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getImplementationVersion()

    Returns the JMX implementation version (the version of this product).

    Specified by:
    :   `getImplementationVersion` in interface `MBeanServerDelegateMBean`

    Returns:
    :   the implementation version.
  + ### getImplementationVendor

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getImplementationVendor()

    Returns the JMX implementation vendor (the vendor of this product).

    Specified by:
    :   `getImplementationVendor` in interface `MBeanServerDelegateMBean`

    Returns:
    :   the implementation vendor.
  + ### getNotificationInfo

    public [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Description copied from interface: `NotificationBroadcaster`

    Returns an array indicating, for each notification this
    MBean may send, the name of the Java class of the notification
    and the notification type.

    It is not illegal for the MBean to send notifications not
    described in this array. However, some clients of the MBean
    server may depend on the array being complete for their correct
    functioning.

    Specified by:
    :   `getNotificationInfo` in interface `NotificationBroadcaster`

    Returns:
    :   the array of possible notifications.
  + ### addNotificationListener

    public void addNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Description copied from interface: `NotificationBroadcaster`

    Adds a listener to this MBean.

    Specified by:
    :   `addNotificationListener` in interface `NotificationBroadcaster`

    Parameters:
    :   `listener` - The listener object which will handle the
        notifications emitted by the broadcaster.
    :   `filter` - The filter object. If filter is null, no
        filtering will be performed before handling notifications.
    :   `handback` - An opaque object to be sent back to the
        listener when a notification is emitted. This object cannot be
        used by the Notification broadcaster object. It should be
        resent unchanged with the notification to the listener.

    Throws:
    :   `IllegalArgumentException` - Listener parameter is null.

    See Also:
    :   - [`NotificationBroadcaster.removeNotificationListener(javax.management.NotificationListener)`](NotificationBroadcaster.md#removeNotificationListener(javax.management.NotificationListener))
  + ### removeNotificationListener

    public void removeNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `NotificationEmitter`

    Removes a listener from this MBean. The MBean must have a
    listener that exactly matches the given `listener`,
    `filter`, and `handback` parameters. If
    there is more than one such listener, only one is removed.

    The `filter` and `handback` parameters
    may be null if and only if they are null in a listener to be
    removed.

    Specified by:
    :   `removeNotificationListener` in interface `NotificationEmitter`

    Parameters:
    :   `listener` - A listener that was previously added to this
        MBean.
    :   `filter` - The filter that was specified when the listener
        was added.
    :   `handback` - The handback that was specified when the listener was
        added.

    Throws:
    :   `ListenerNotFoundException` - The listener is not
        registered with the MBean, or it is not registered with the
        given filter and handback.
  + ### removeNotificationListener

    public void removeNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener)
    throws [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `NotificationBroadcaster`

    Removes a listener from this MBean. If the listener
    has been registered with different handback objects or
    notification filters, all entries corresponding to the listener
    will be removed.

    Specified by:
    :   `removeNotificationListener` in interface `NotificationBroadcaster`

    Parameters:
    :   `listener` - A listener that was previously added to this
        MBean.

    Throws:
    :   `ListenerNotFoundException` - The listener is not
        registered with the MBean.

    See Also:
    :   - [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`NotificationEmitter.removeNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationEmitter.md#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### sendNotification

    public void sendNotification([Notification](Notification.md "class in javax.management") notification)

    Enables the MBean server to send a notification.
    If the passed notification has a sequence number lesser
    or equal to 0, then replace it with the delegate's own sequence
    number.

    Parameters:
    :   `notification` - The notification to send.