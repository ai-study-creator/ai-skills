Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface NotificationFilter

All Superinterfaces:
:   `Serializable`

All Known Implementing Classes:
:   `AttributeChangeNotificationFilter`, `MBeanServerNotificationFilter`, `NotificationFilterSupport`

---

public interface NotificationFilter
extends [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

To be implemented by a any class acting as a notification filter.
It allows a registered notification listener to filter the notifications of interest.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isNotificationEnabled(Notification notification)`

  Invoked before sending the specified notification to the listener.

* ## Method Details

  + ### isNotificationEnabled

    boolean isNotificationEnabled([Notification](Notification.md "class in javax.management") notification)

    Invoked before sending the specified notification to the listener.

    Parameters:
    :   `notification` - The notification to be sent.

    Returns:
    :   `true` if the notification has to be sent to the listener, `false` otherwise.