Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.MouseHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicTreeUI.MouseHandler

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.MouseHandler
extends [MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")
implements [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

TreeMouseListener is responsible for updating the selection
based on mouse events.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MouseHandler()`

  Constructs a `MouseHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseDragged(MouseEvent e)`

  Invoked when a mouse button is pressed on a component and then
  dragged.

  `void`

  `mouseMoved(MouseEvent e)`

  Invoked when the mouse button has been moved on a component
  (with no buttons no down).

  `void`

  `mousePressed(MouseEvent e)`

  Invoked when a mouse button has been pressed on a component.

  `void`

  `mouseReleased(MouseEvent e)`

  Invoked when a mouse button has been released on a component.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseEntered, mouseExited, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseHandler

    public MouseHandler()

    Constructs a `MouseHandler`.
* ## Method Details

  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been pressed on a component.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Overrides:
    :   `mousePressed` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseAdapter`

    Invoked when a mouse button is pressed on a component and then
    dragged. `MOUSE_DRAGGED` events will continue to be
    delivered to the component where the drag originated until the
    mouse button is released (regardless of whether the mouse position
    is within the bounds of the component).

    Due to platform-dependent Drag&Drop implementations,
    `MOUSE_DRAGGED` events may not be delivered during a native
    Drag&Drop operation.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Overrides:
    :   `mouseDragged` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse button has been moved on a component
    (with no buttons no down).

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Overrides:
    :   `mouseMoved` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed

    Since:
    :   1.4
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