Module [java.naming](../../../module-summary.md)

Package [javax.naming.event](package-summary.md)

# Interface ObjectChangeListener

All Superinterfaces:
:   `EventListener`, `NamingListener`

---

public interface ObjectChangeListener
extends [NamingListener](NamingListener.md "interface in javax.naming.event")

Specifies the method that a listener of a `NamingEvent`
with event type of `OBJECT_CHANGED` must implement.

An `OBJECT_CHANGED` event type is fired when (the contents of)
an object has changed. This might mean that its attributes have been modified,
added, or removed, and/or that the object itself has been replaced.
How the object has changed can be determined by examining the
`NamingEvent`'s old and new bindings.

A listener interested in `OBJECT_CHANGED` event types must:

1. Implement this interface and its method (`objectChanged()`)- Implement `NamingListener.namingExceptionThrown()` so that
     it will be notified of exceptions thrown while attempting to
     collect information about the events.- Register with the source using the source's `addNamingListener()`
       method.

A listener that wants to be notified of namespace change events
should also implement the `NamespaceChangeListener`
interface.

Since:
:   1.3

See Also:
:   * [`NamingEvent`](NamingEvent.md "class in javax.naming.event")
    * [`NamespaceChangeListener`](NamespaceChangeListener.md "interface in javax.naming.event")
    * [`EventContext`](EventContext.md "interface in javax.naming.event")
    * [`EventDirContext`](EventDirContext.md "interface in javax.naming.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `objectChanged(NamingEvent evt)`

  Called when an object has been changed.

  ### Methods inherited from interface javax.naming.event.[NamingListener](NamingListener.md "interface in javax.naming.event")

  `namingExceptionThrown`

* ## Method Details

  + ### objectChanged

    void objectChanged([NamingEvent](NamingEvent.md "class in javax.naming.event") evt)

    Called when an object has been changed.

    The binding of the changed object can be obtained using
    `evt.getNewBinding()`. Its old binding (before the change)
    can be obtained using `evt.getOldBinding()`.

    Parameters:
    :   `evt` - The nonnull naming event.

    See Also:
    :   - [`NamingEvent.OBJECT_CHANGED`](NamingEvent.md#OBJECT_CHANGED)