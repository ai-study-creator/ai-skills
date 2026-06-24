Module [java.naming](../../../module-summary.md)

Package [javax.naming.event](package-summary.md)

# Interface NamingListener

All Superinterfaces:
:   `EventListener`

All Known Subinterfaces:
:   `NamespaceChangeListener`, `ObjectChangeListener`, `UnsolicitedNotificationListener`

---

public interface NamingListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

This interface is the root of listener interfaces that
handle `NamingEvent`s.
It does not make sense for a listener to implement just this interface.
A listener typically implements a subinterface of `NamingListener`,
such as `ObjectChangeListener` or `NamespaceChangeListener`.

This interface contains a single method, `namingExceptionThrown()`,
that must be implemented so that the listener can be notified of
exceptions that are thrown (by the service provider) while gathering
information about the events that they're interested in.
When this method is invoked, the listener has been automatically deregistered
from the `EventContext` with which it has registered.

For example, suppose a listener implements `ObjectChangeListener` and
registers with an `EventContext`.
Then, if the connection to the server is subsequently broken,
the listener will receive a `NamingExceptionEvent` and may
take some corrective action, such as notifying the user of the application.

Since:
:   1.3

See Also:
:   * [`NamingEvent`](NamingEvent.md "class in javax.naming.event")
    * [`NamingExceptionEvent`](NamingExceptionEvent.md "class in javax.naming.event")
    * [`EventContext`](EventContext.md "interface in javax.naming.event")
    * [`EventDirContext`](EventDirContext.md "interface in javax.naming.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `namingExceptionThrown(NamingExceptionEvent evt)`

  Called when a naming exception is thrown while attempting
  to fire a `NamingEvent`.

* ## Method Details

  + ### namingExceptionThrown

    void namingExceptionThrown([NamingExceptionEvent](NamingExceptionEvent.md "class in javax.naming.event") evt)

    Called when a naming exception is thrown while attempting
    to fire a `NamingEvent`.

    Parameters:
    :   `evt` - The nonnull event.