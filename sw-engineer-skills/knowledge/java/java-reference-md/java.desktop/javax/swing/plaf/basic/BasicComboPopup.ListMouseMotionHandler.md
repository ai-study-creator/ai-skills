Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboPopup.ListMouseMotionHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseMotionAdapter](../../../../java/awt/event/MouseMotionAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicComboPopup.ListMouseMotionHandler

All Implemented Interfaces:
:   `MouseMotionListener`, `EventListener`

Enclosing class:
:   `BasicComboPopup`

---

protected class BasicComboPopup.ListMouseMotionHandler
extends [MouseMotionAdapter](../../../../java/awt/event/MouseMotionAdapter.md "class in java.awt.event")

This listener changes the selected item as you move the mouse over the list.
The selection change is not committed to the model, this is for user feedback only.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ListMouseMotionHandler()`

  Constructs a `ListMouseMotionHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseMoved(MouseEvent anEvent)`

  Invoked when the mouse button has been moved on a component
  (with no buttons no down).

  ### Methods inherited from class java.awt.event.[MouseMotionAdapter](../../../../java/awt/event/MouseMotionAdapter.md "class in java.awt.event")

  `mouseDragged`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ListMouseMotionHandler

    protected ListMouseMotionHandler()

    Constructs a `ListMouseMotionHandler`.
* ## Method Details

  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") anEvent)

    Description copied from class: `MouseMotionAdapter`

    Invoked when the mouse button has been moved on a component
    (with no buttons no down).

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Overrides:
    :   `mouseMoved` in class `MouseMotionAdapter`

    Parameters:
    :   `anEvent` - the event to be processed