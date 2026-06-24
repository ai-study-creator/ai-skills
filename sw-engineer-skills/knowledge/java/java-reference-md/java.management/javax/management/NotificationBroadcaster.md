Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface NotificationBroadcaster

All Known Subinterfaces:
:   `ModelMBean`, `ModelMBeanNotificationBroadcaster`, `NotificationEmitter`

All Known Implementing Classes:
:   `CounterMonitor`, `GaugeMonitor`, `JMXConnectorServer`, `MBeanServerDelegate`, `Monitor`, `NotificationBroadcasterSupport`, `RelationService`, `RequiredModelMBean`, `RMIConnectorServer`, `StandardEmitterMBean`, `StringMonitor`, `Timer`

---

public interface NotificationBroadcaster

Interface implemented by an MBean that emits Notifications. It
allows a listener to be registered with the MBean as a notification
listener.

## Notification dispatch

When an MBean emits a notification, it considers each listener that has been
added with [`addNotificationListener`](#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) and not
subsequently removed with [`removeNotificationListener`](#removeNotificationListener(javax.management.NotificationListener)).
If a filter was provided with that listener, and if the filter's
[`isNotificationEnabled`](NotificationFilter.md#isNotificationEnabled(javax.management.Notification)) method returns
false, the listener is ignored. Otherwise, the listener's
[`handleNotification`](NotificationListener.md#handleNotification(javax.management.Notification,java.lang.Object)) method is called with
the notification, as well as the handback object that was provided to
`addNotificationListener`.

If the same listener is added more than once, it is considered as many times as it was
added. It is often useful to add the same listener with different filters or handback
objects.

Implementations of this interface can differ regarding the thread in which the methods
of filters and listeners are called.

If the method call of a filter or listener throws an [`Exception`](../../../java.base/java/lang/Exception.md "class in java.lang"), then that
exception should not prevent other listeners from being invoked. However, if the method
call throws an [`Error`](../../../java.base/java/lang/Error.md "class in java.lang"), then it is recommended that processing of the notification
stop at that point, and if it is possible to propagate the `Error` to the sender of
the notification, this should be done.

New code should use the [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") interface
instead.

Implementations of this interface and of `NotificationEmitter`
should be careful about synchronization. In particular, it is not a good
idea for an implementation to hold any locks while it is calling a
listener. To deal with the possibility that the list of listeners might
change while a notification is being dispatched, a good strategy is to
use a [`CopyOnWriteArrayList`](../../../java.base/java/util/concurrent/CopyOnWriteArrayList.md "class in java.util.concurrent") for this list.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Adds a listener to this MBean.

  `MBeanNotificationInfo[]`

  `getNotificationInfo()`

  Returns an array indicating, for each notification this
  MBean may send, the name of the Java class of the notification
  and the notification type.

  `void`

  `removeNotificationListener(NotificationListener listener)`

  Removes a listener from this MBean.

* ## Method Details

  + ### addNotificationListener

    void addNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Adds a listener to this MBean.

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
    :   - [`removeNotificationListener(javax.management.NotificationListener)`](#removeNotificationListener(javax.management.NotificationListener))
  + ### removeNotificationListener

    void removeNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener)
    throws [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Removes a listener from this MBean. If the listener
    has been registered with different handback objects or
    notification filters, all entries corresponding to the listener
    will be removed.

    Parameters:
    :   `listener` - A listener that was previously added to this
        MBean.

    Throws:
    :   `ListenerNotFoundException` - The listener is not
        registered with the MBean.

    See Also:
    :   - [`addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
        - [`NotificationEmitter.removeNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationEmitter.md#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### getNotificationInfo

    [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")[] getNotificationInfo()

    Returns an array indicating, for each notification this
    MBean may send, the name of the Java class of the notification
    and the notification type.

    It is not illegal for the MBean to send notifications not
    described in this array. However, some clients of the MBean
    server may depend on the array being complete for their correct
    functioning.

    Returns:
    :   the array of possible notifications.