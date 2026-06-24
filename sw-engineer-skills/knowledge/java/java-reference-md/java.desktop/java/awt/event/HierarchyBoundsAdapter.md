Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class HierarchyBoundsAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.HierarchyBoundsAdapter

All Implemented Interfaces:
:   `HierarchyBoundsListener`, `EventListener`

---

public abstract class HierarchyBoundsAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [HierarchyBoundsListener](HierarchyBoundsListener.md "interface in java.awt.event")

An abstract adapter class for receiving ancestor moved and resized events.
The methods in this class are empty. This class exists as a
convenience for creating listener objects.

Extend this class and override the method for the event of interest. (If
you implement the `HierarchyBoundsListener` interface, you have
to define both methods in it. This abstract class defines null methods for
them both, so you only have to define the method for the event you care
about.)

Create a listener object using your class and then register it with a
Component using the Component's `addHierarchyBoundsListener`
method. When the hierarchy to which the Component belongs changes by
resize or movement of an ancestor, the relevant method in the listener
object is invoked, and the `HierarchyEvent` is passed to it.

Since:
:   1.3

See Also:
:   * [`HierarchyBoundsListener`](HierarchyBoundsListener.md "interface in java.awt.event")
    * [`HierarchyEvent`](HierarchyEvent.md "class in java.awt.event")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `HierarchyBoundsAdapter()`

  Constructs a `HierarchyBoundsAdapter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `ancestorMoved(HierarchyEvent e)`

  Called when an ancestor of the source is moved.

  `void`

  `ancestorResized(HierarchyEvent e)`

  Called when an ancestor of the source is resized.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HierarchyBoundsAdapter

    protected HierarchyBoundsAdapter()

    Constructs a `HierarchyBoundsAdapter`.
* ## Method Details

  + ### ancestorMoved

    public void ancestorMoved([HierarchyEvent](HierarchyEvent.md "class in java.awt.event") e)

    Called when an ancestor of the source is moved.

    Specified by:
    :   `ancestorMoved` in interface `HierarchyBoundsListener`

    Parameters:
    :   `e` - the event to be processed
  + ### ancestorResized

    public void ancestorResized([HierarchyEvent](HierarchyEvent.md "class in java.awt.event") e)

    Called when an ancestor of the source is resized.

    Specified by:
    :   `ancestorResized` in interface `HierarchyBoundsListener`

    Parameters:
    :   `e` - the event to be processed