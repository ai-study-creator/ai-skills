Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboPopup.InvocationMouseMotionHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseMotionAdapter](../../../../java/awt/event/MouseMotionAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicComboPopup.InvocationMouseMotionHandler

All Implemented Interfaces:
:   `MouseMotionListener`, `EventListener`

Enclosing class:
:   `BasicComboPopup`

---

protected class BasicComboPopup.InvocationMouseMotionHandler
extends [MouseMotionAdapter](../../../../java/awt/event/MouseMotionAdapter.md "class in java.awt.event")

This listener watches for dragging and updates the current selection in the
list if it is dragging over the list.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `InvocationMouseMotionHandler()`

  Constructs an `InvocationMouseMotionHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseDragged(MouseEvent e)`

  Invoked when a mouse button is pressed on a component and then
  dragged.

  ### Methods inherited from class java.awt.event.[MouseMotionAdapter](../../../../java/awt/event/MouseMotionAdapter.md "class in java.awt.event")

  `mouseMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InvocationMouseMotionHandler

    protected InvocationMouseMotionHandler()

    Constructs an `InvocationMouseMotionHandler`.
* ## Method Details

  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseMotionAdapter`

    Invoked when a mouse button is pressed on a component and then
    dragged. Mouse drag events will continue to be delivered to
    the component where the first originated until the mouse button is
    released (regardless of whether the mouse position is within the
    bounds of the component).

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Overrides:
    :   `mouseDragged` in class `MouseMotionAdapter`

    Parameters:
    :   `e` - the event to be processed