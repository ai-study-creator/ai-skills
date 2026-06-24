Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface NotificationListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `RelationService`

---

public interface NotificationListener
extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")

Should be implemented by an object that wants to receive notifications.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `handleNotification(Notification notification,
  Object handback)`

  Invoked when a JMX notification occurs.

* ## Method Details

  + ### handleNotification

    void handleNotification([Notification](Notification.md "class in javax.management") notification,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)

    Invoked when a JMX notification occurs.
    The implementation of this method should return as soon as possible, to avoid
    blocking its notification broadcaster.

    Parameters:
    :   `notification` - The notification.
    :   `handback` - An opaque object which helps the listener to associate
        information regarding the MBean emitter. This object is passed to the
        addNotificationListener call and resent, without modification, to the
        listener.