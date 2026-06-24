Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Interface UnsolicitedNotificationListener

All Superinterfaces:
:   `EventListener`, `NamingListener`

---

public interface UnsolicitedNotificationListener
extends [NamingListener](../event/NamingListener.md "interface in javax.naming.event")

This interface is for handling `UnsolicitedNotificationEvent`.
"Unsolicited notification" is defined in
[RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).
It allows the server to send unsolicited notifications to the client.
An `UnsolicitedNotificationListener` must:

1. Implement this interface and its method- Implement `NamingListener.namingExceptionThrown()` so
     that it will be notified of exceptions thrown while attempting to
     collect unsolicited notification events.- Register with the context using one of the `addNamingListener()`
       methods from `EventContext` or `EventDirContext`.
       Only the `NamingListener` argument of these methods are applicable;
       the rest are ignored for an `UnsolicitedNotificationListener`.
       (These arguments might be applicable to the listener if it implements
       other listener interfaces).

Since:
:   1.3

See Also:
:   * [`UnsolicitedNotificationEvent`](UnsolicitedNotificationEvent.md "class in javax.naming.ldap")
    * [`UnsolicitedNotification`](UnsolicitedNotification.md "interface in javax.naming.ldap")
    * [`EventContext.addNamingListener(javax.naming.Name, int, javax.naming.event.NamingListener)`](../event/EventContext.md#addNamingListener(javax.naming.Name,int,javax.naming.event.NamingListener))
    * [`EventDirContext.addNamingListener(javax.naming.Name, java.lang.String, javax.naming.directory.SearchControls, javax.naming.event.NamingListener)`](../event/EventDirContext.md#addNamingListener(javax.naming.Name,java.lang.String,javax.naming.directory.SearchControls,javax.naming.event.NamingListener))
    * [`EventContext.removeNamingListener(javax.naming.event.NamingListener)`](../event/EventContext.md#removeNamingListener(javax.naming.event.NamingListener))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `notificationReceived(UnsolicitedNotificationEvent evt)`

  Called when an unsolicited notification has been received.

  ### Methods inherited from interface javax.naming.event.[NamingListener](../event/NamingListener.md "interface in javax.naming.event")

  `namingExceptionThrown`

* ## Method Details

  + ### notificationReceived

    void notificationReceived([UnsolicitedNotificationEvent](UnsolicitedNotificationEvent.md "class in javax.naming.ldap") evt)

    Called when an unsolicited notification has been received.

    Parameters:
    :   `evt` - The non-null UnsolicitedNotificationEvent