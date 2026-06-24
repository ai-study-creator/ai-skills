Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class TargetedNotification

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.remote.TargetedNotification

All Implemented Interfaces:
:   `Serializable`

---

public class TargetedNotification
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A (Notification, Listener ID) pair.

This class is used to associate an emitted notification
with the listener ID to which it is targeted.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.remote.TargetedNotification)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TargetedNotification(Notification notification,
  Integer listenerID)`

  Constructs a `TargetedNotification` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Integer`

  `getListenerID()`

  The ID of the listener to which the notification is
  targeted.

  `Notification`

  `getNotification()`

  The emitted notification.

  `String`

  `toString()`

  Returns a textual representation of this Targeted Notification.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TargetedNotification

    public TargetedNotification([Notification](../Notification.md "class in javax.management") notification,
    [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") listenerID)

    Constructs a `TargetedNotification` object. The
    object contains a pair (Notification, Listener ID).
    The Listener ID identifies the client listener to which that
    notification is targeted. The client listener ID is one
    previously returned by the connector server in response to an
    `addNotificationListener` request.

    Parameters:
    :   `notification` - Notification emitted from the MBean server.
    :   `listenerID` - The ID of the listener to which this
        notification is targeted.

    Throws:
    :   `IllegalArgumentException` - if the listenerID
        or notification is null.
* ## Method Details

  + ### getNotification

    public [Notification](../Notification.md "class in javax.management") getNotification()

    The emitted notification.

    Returns:
    :   The notification.
  + ### getListenerID

    public [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") getListenerID()

    The ID of the listener to which the notification is
    targeted.

    Returns:
    :   The listener ID.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a textual representation of this Targeted Notification.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this Targeted Notification.