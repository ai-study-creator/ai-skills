Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class UnsolicitedNotificationEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.naming.ldap.UnsolicitedNotificationEvent

All Implemented Interfaces:
:   `Serializable`

---

public class UnsolicitedNotificationEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

This class represents an event fired in response to an unsolicited
notification sent by the LDAP server.

Since:
:   1.3

See Also:
:   * [`UnsolicitedNotification`](UnsolicitedNotification.md "interface in javax.naming.ldap")
    * [`UnsolicitedNotificationListener`](UnsolicitedNotificationListener.md "interface in javax.naming.ldap")
    * [`EventContext.addNamingListener(javax.naming.Name, int, javax.naming.event.NamingListener)`](../event/EventContext.md#addNamingListener(javax.naming.Name,int,javax.naming.event.NamingListener))
    * [`EventDirContext.addNamingListener(javax.naming.Name, java.lang.String, javax.naming.directory.SearchControls, javax.naming.event.NamingListener)`](../event/EventDirContext.md#addNamingListener(javax.naming.Name,java.lang.String,javax.naming.directory.SearchControls,javax.naming.event.NamingListener))
    * [`EventContext.removeNamingListener(javax.naming.event.NamingListener)`](../event/EventContext.md#removeNamingListener(javax.naming.event.NamingListener))
    * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.UnsolicitedNotificationEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsolicitedNotificationEvent(Object src,
  UnsolicitedNotification notice)`

  Constructs a new instance of `UnsolicitedNotificationEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `dispatch(UnsolicitedNotificationListener listener)`

  Invokes the `notificationReceived()` method on
  a listener using this event.

  `UnsolicitedNotification`

  `getNotification()`

  Returns the unsolicited notification.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsolicitedNotificationEvent

    public UnsolicitedNotificationEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") src,
    [UnsolicitedNotification](UnsolicitedNotification.md "interface in javax.naming.ldap") notice)

    Constructs a new instance of `UnsolicitedNotificationEvent`.

    Parameters:
    :   `src` - The non-null source that fired the event.
    :   `notice` - The non-null unsolicited notification.
* ## Method Details

  + ### getNotification

    public [UnsolicitedNotification](UnsolicitedNotification.md "interface in javax.naming.ldap") getNotification()

    Returns the unsolicited notification.

    Returns:
    :   The non-null unsolicited notification that caused this
        event to be fired.
  + ### dispatch

    public void dispatch([UnsolicitedNotificationListener](UnsolicitedNotificationListener.md "interface in javax.naming.ldap") listener)

    Invokes the `notificationReceived()` method on
    a listener using this event.

    Parameters:
    :   `listener` - The non-null listener on which to invoke
        `notificationReceived`.