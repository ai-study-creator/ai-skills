Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicDesktopIconUI.MouseInputHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

[javax.swing.event.MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event")

javax.swing.plaf.basic.BasicDesktopIconUI.MouseInputHandler

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`, `MouseInputListener`

Enclosing class:
:   `BasicDesktopIconUI`

---

public class BasicDesktopIconUI.MouseInputHandler
extends [MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event")

Listens for mouse movements and acts on them.
This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `BasicDesktopIconUI`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MouseInputHandler()`

  Constructs a `MouseInputHandler`.
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

  Invoked when the mouse cursor has been moved onto a component
  but no buttons have been pushed.

  `void`

  `mousePressed(MouseEvent e)`

  Invoked when a mouse button has been pressed on a component.

  `void`

  `mouseReleased(MouseEvent e)`

  Invoked when a mouse button has been released on a component.

  `void`

  `moveAndRepaint(JComponent f,
  int newX,
  int newY,
  int newWidth,
  int newHeight)`

  Moves and repaints a component `f`.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseEntered, mouseExited, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.awt.event.[MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event")

  `mouseClicked, mouseEntered, mouseExited`

* ## Constructor Details

  + ### MouseInputHandler

    public MouseInputHandler()

    Constructs a `MouseInputHandler`.
* ## Method Details

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
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseAdapter`

    Invoked when the mouse cursor has been moved onto a component
    but no buttons have been pushed.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Overrides:
    :   `mouseMoved` in class `MouseAdapter`

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
  + ### moveAndRepaint

    public void moveAndRepaint([JComponent](../../JComponent.md "class in javax.swing") f,
    int newX,
    int newY,
    int newWidth,
    int newHeight)

    Moves and repaints a component `f`.

    Parameters:
    :   `f` - a component
    :   `newX` - a new X coordinate
    :   `newY` - a new Y coordinate
    :   `newWidth` - a new width
    :   `newHeight` - a new height