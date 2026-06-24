Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface NotificationEmitter

All Superinterfaces:
:   `NotificationBroadcaster`

All Known Implementing Classes:
:   `CounterMonitor`, `GaugeMonitor`, `JMXConnectorServer`, `MBeanServerDelegate`, `Monitor`, `NotificationBroadcasterSupport`, `RelationService`, `RequiredModelMBean`, `RMIConnectorServer`, `StandardEmitterMBean`, `StringMonitor`, `Timer`

---

public interface NotificationEmitter
extends [NotificationBroadcaster](NotificationBroadcaster.md "interface in javax.management")

Interface implemented by an MBean that emits Notifications. It
allows a listener to be registered with the MBean as a notification
listener.

## Notification dispatch

When an MBean emits a notification, it considers each listener that has been
added with [`addNotificationListener`](NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) and not
subsequently removed with [`removeNotificationListener`](#removeNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)).
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

This interface should be used by new code in preference to the
[`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management") interface.

Implementations of this interface and of `NotificationBroadcaster`
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

  `removeNotificationListener(NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Removes a listener from this MBean.

  ### Methods inherited from interface javax.management.[NotificationBroadcaster](NotificationBroadcaster.md "interface in javax.management")

  `addNotificationListener, getNotificationInfo, removeNotificationListener`

* ## Method Details

  + ### removeNotificationListener

    void removeNotificationListener([NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Removes a listener from this MBean. The MBean must have a
    listener that exactly matches the given `listener`,
    `filter`, and `handback` parameters. If
    there is more than one such listener, only one is removed.

    The `filter` and `handback` parameters
    may be null if and only if they are null in a listener to be
    removed.

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