Module [java.naming](../../../module-summary.md)

Package [javax.naming.event](package-summary.md)

# Interface NamespaceChangeListener

All Superinterfaces:
:   `EventListener`, `NamingListener`

---

public interface NamespaceChangeListener
extends [NamingListener](NamingListener.md "interface in javax.naming.event")

Specifies the methods that a listener interested in namespace changes
must implement.
Specifically, the listener is interested in `NamingEvent`s
with event types of `OBJECT_ADDED, OBJECT_RENAMED`, or
`OBJECT_REMOVED`.

Such a listener must:

1. Implement this interface and its methods.- Implement `NamingListener.namingExceptionThrown()` so that
     it will be notified of exceptions thrown while attempting to
     collect information about the events.- Register with the source using the source's `addNamingListener()`
       method.

A listener that wants to be notified of `OBJECT_CHANGED` event types
should also implement the `ObjectChangeListener`
interface.

Since:
:   1.3

See Also:
:   * [`NamingEvent`](NamingEvent.md "class in javax.naming.event")
    * [`ObjectChangeListener`](ObjectChangeListener.md "interface in javax.naming.event")
    * [`EventContext`](EventContext.md "interface in javax.naming.event")
    * [`EventDirContext`](EventDirContext.md "interface in javax.naming.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `objectAdded(NamingEvent evt)`

  Called when an object has been added.

  `void`

  `objectRemoved(NamingEvent evt)`

  Called when an object has been removed.

  `void`

  `objectRenamed(NamingEvent evt)`

  Called when an object has been renamed.

  ### Methods inherited from interface javax.naming.event.[NamingListener](NamingListener.md "interface in javax.naming.event")

  `namingExceptionThrown`

* ## Method Details

  + ### objectAdded

    void objectAdded([NamingEvent](NamingEvent.md "class in javax.naming.event") evt)

    Called when an object has been added.

    The binding of the newly added object can be obtained using
    `evt.getNewBinding()`.

    Parameters:
    :   `evt` - The nonnull event.

    See Also:
    :   - [`NamingEvent.OBJECT_ADDED`](NamingEvent.md#OBJECT_ADDED)
  + ### objectRemoved

    void objectRemoved([NamingEvent](NamingEvent.md "class in javax.naming.event") evt)

    Called when an object has been removed.

    The binding of the newly removed object can be obtained using
    `evt.getOldBinding()`.

    Parameters:
    :   `evt` - The nonnull event.

    See Also:
    :   - [`NamingEvent.OBJECT_REMOVED`](NamingEvent.md#OBJECT_REMOVED)
  + ### objectRenamed

    void objectRenamed([NamingEvent](NamingEvent.md "class in javax.naming.event") evt)

    Called when an object has been renamed.

    The binding of the renamed object can be obtained using
    `evt.getNewBinding()`. Its old binding (before the rename)
    can be obtained using `evt.getOldBinding()`.
    One of these may be null if the old/new binding was outside the
    scope in which the listener has registered interest.

    Parameters:
    :   `evt` - The nonnull event.

    See Also:
    :   - [`NamingEvent.OBJECT_RENAMED`](NamingEvent.md#OBJECT_RENAMED)