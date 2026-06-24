Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollBarUI.ArrowButtonListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicScrollBarUI.ArrowButtonListener

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

Enclosing class:
:   `BasicScrollBarUI`

---

protected class BasicScrollBarUI.ArrowButtonListener
extends [MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

Listener for cursor keys.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ArrowButtonListener()`

  Constructs an `ArrowButtonListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mousePressed(MouseEvent e)`

  Invoked when a mouse button has been pressed on a component.

  `void`

  `mouseReleased(MouseEvent e)`

  Invoked when a mouse button has been released on a component.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseDragged, mouseEntered, mouseExited, mouseMoved, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ArrowButtonListener

    protected ArrowButtonListener()

    Constructs an `ArrowButtonListener`.
* ## Method Details

  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseAdapter`

    Invoked when a mouse button has been pressed on a component.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Overrides:
    :   `mousePressed` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseReleased

    public void mouseReleased([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseAdapter`

    Invoked when a mouse button has been released on a component.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Overrides:
    :   `mouseReleased` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed