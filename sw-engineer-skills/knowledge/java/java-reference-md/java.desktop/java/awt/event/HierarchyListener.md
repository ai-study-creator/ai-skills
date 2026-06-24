Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface HierarchyListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`

---

public interface HierarchyListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving hierarchy changed events.
The class that is interested in processing a hierarchy changed event
should implement this interface.
The listener object created from that class is then registered with a
Component using the Component's `addHierarchyListener`
method. When the hierarchy to which the Component belongs changes, the
`hierarchyChanged` method in the listener object is invoked,
and the `HierarchyEvent` is passed to it.

Hierarchy events are provided for notification purposes ONLY;
The AWT will automatically handle changes to the hierarchy internally so
that GUI layout, displayability, and visibility work properly regardless
of whether a program registers a `HierarchyListener` or not.

Since:
:   1.3

See Also:
:   * [`HierarchyEvent`](HierarchyEvent.md "class in java.awt.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `hierarchyChanged(HierarchyEvent e)`

  Called when the hierarchy has been changed.

* ## Method Details

  + ### hierarchyChanged

    void hierarchyChanged([HierarchyEvent](HierarchyEvent.md "class in java.awt.event") e)

    Called when the hierarchy has been changed. To discern the actual
    type of change, call `HierarchyEvent.getChangeFlags()`.

    Parameters:
    :   `e` - the event to be processed

    See Also:
    :   - [`HierarchyEvent.getChangeFlags()`](HierarchyEvent.md#getChangeFlags())