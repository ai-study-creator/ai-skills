Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DropTarget.DropTargetAutoScroller

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DropTarget.DropTargetAutoScroller

All Implemented Interfaces:
:   `ActionListener`, `EventListener`

Enclosing class:
:   `DropTarget`

---

protected static class DropTarget.DropTargetAutoScroller
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ActionListener](../event/ActionListener.md "interface in java.awt.event")

this protected nested class implements autoscrolling

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DropTargetAutoScroller(Component c,
  Point p)`

  construct a DropTargetAutoScroller
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  cause autoscroll to occur

  `protected void`

  `stop()`

  cause autoscrolling to stop

  `protected void`

  `updateLocation(Point newLocn)`

  cause autoscroll to occur

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DropTargetAutoScroller

    protected DropTargetAutoScroller([Component](../Component.md "class in java.awt") c,
    [Point](../Point.md "class in java.awt") p)

    construct a DropTargetAutoScroller

    Parameters:
    :   `c` - the `Component`
    :   `p` - the `Point`
* ## Method Details

  + ### updateLocation

    protected void updateLocation([Point](../Point.md "class in java.awt") newLocn)

    cause autoscroll to occur

    Parameters:
    :   `newLocn` - the `Point`
  + ### stop

    protected void stop()

    cause autoscrolling to stop
  + ### actionPerformed

    public void actionPerformed([ActionEvent](../event/ActionEvent.md "class in java.awt.event") e)

    cause autoscroll to occur

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `e` - the `ActionEvent`