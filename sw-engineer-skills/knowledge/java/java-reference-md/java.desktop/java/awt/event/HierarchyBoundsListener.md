Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface HierarchyBoundsListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `HierarchyBoundsAdapter`

---

public interface HierarchyBoundsListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving ancestor moved and resized events.
The class that is interested in processing these events either implements
this interface (and all the methods it contains) or extends the abstract
`HierarchyBoundsAdapter` class (overriding only the method of
interest).
The listener object created from that class is then registered with a
Component using the Component's `addHierarchyBoundsListener`
method. When the hierarchy to which the Component belongs changes by
the resizing or movement of an ancestor, the relevant method in the listener
object is invoked, and the `HierarchyEvent` is passed to it.

Hierarchy events are provided for notification purposes ONLY;
The AWT will automatically handle changes to the hierarchy internally so
that GUI layout works properly regardless of whether a
program registers an `HierarchyBoundsListener` or not.

Since:
:   1.3

See Also:
:   * [`HierarchyBoundsAdapter`](HierarchyBoundsAdapter.md "class in java.awt.event")
    * [`HierarchyEvent`](HierarchyEvent.md "class in java.awt.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `ancestorMoved(HierarchyEvent e)`

  Called when an ancestor of the source is moved.

  `void`

  `ancestorResized(HierarchyEvent e)`

  Called when an ancestor of the source is resized.

* ## Method Details

  + ### ancestorMoved

    void ancestorMoved([HierarchyEvent](HierarchyEvent.md "class in java.awt.event") e)

    Called when an ancestor of the source is moved.

    Parameters:
    :   `e` - the event to be processed
  + ### ancestorResized

    void ancestorResized([HierarchyEvent](HierarchyEvent.md "class in java.awt.event") e)

    Called when an ancestor of the source is resized.

    Parameters:
    :   `e` - the event to be processed