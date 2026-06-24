Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameUI.BorderListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

[javax.swing.event.MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event")

javax.swing.plaf.basic.BasicInternalFrameUI.BorderListener

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`, `MouseInputListener`, `SwingConstants`

Enclosing class:
:   `BasicInternalFrameUI`

---

protected class BasicInternalFrameUI.BorderListener
extends [MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event")
implements [SwingConstants](../../SwingConstants.md "interface in javax.swing")

Listens for border adjustments.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final int`

  `RESIZE_NONE`

  resize none

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `BorderListener()`

  Constructs a `BorderListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseClicked(MouseEvent e)`

  Invoked when the mouse button has been clicked (pressed
  and released) on a component.

  `void`

  `mouseDragged(MouseEvent e)`

  Invoked when a mouse button is pressed on a component and then
  dragged.

  `void`

  `mouseEntered(MouseEvent e)`

  Invoked when the mouse enters a component.

  `void`

  `mouseExited(MouseEvent e)`

  Invoked when the mouse exits a component.

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

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### RESIZE\_NONE

    protected final int RESIZE\_NONE

    resize none

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicInternalFrameUI.BorderListener.RESIZE_NONE)
* ## Constructor Details

  + ### BorderListener

    protected BorderListener()

    Constructs a `BorderListener`.
* ## Method Details

  + ### mouseClicked

    public void mouseClicked([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseAdapter`

    Invoked when the mouse button has been clicked (pressed
    and released) on a component.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Overrides:
    :   `mouseClicked` in class `MouseAdapter`

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

    Description copied from class: `MouseAdapter`

    Invoked when the mouse cursor has been moved onto a component
    but no buttons have been pushed.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Overrides:
    :   `mouseMoved` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseEntered

    public void mouseEntered([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseAdapter`

    Invoked when the mouse enters a component.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Overrides:
    :   `mouseEntered` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseExited

    public void mouseExited([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from class: `MouseAdapter`

    Invoked when the mouse exits a component.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Overrides:
    :   `mouseExited` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed