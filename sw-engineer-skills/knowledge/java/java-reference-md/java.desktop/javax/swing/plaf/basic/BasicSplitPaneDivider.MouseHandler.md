Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneDivider.MouseHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicSplitPaneDivider.MouseHandler

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

Enclosing class:
:   `BasicSplitPaneDivider`

---

protected class BasicSplitPaneDivider.MouseHandler
extends [MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")
implements [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

MouseHandler is responsible for converting mouse events
(released, dragged...) into the appropriate DragController
methods.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MouseHandler()`

  Constructs a `MouseHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseDragged(MouseEvent e)`

  If dragger is not null it is messaged with continueDrag.

  `void`

  `mouseEntered(MouseEvent e)`

  Invoked when the mouse enters a component.

  `void`

  `mouseExited(MouseEvent e)`

  Invoked when the mouse exits a component.

  `void`

  `mouseMoved(MouseEvent e)`

  Resets the cursor based on the orientation.

  `void`

  `mousePressed(MouseEvent e)`

  Starts the dragging session by creating the appropriate instance
  of DragController.

  `void`

  `mouseReleased(MouseEvent e)`

  If dragger is not null it is messaged with completeDrag.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseHandler

    protected MouseHandler()

    Constructs a `MouseHandler`.
* ## Method Details

  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Starts the dragging session by creating the appropriate instance
    of DragController.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Overrides:
    :   `mousePressed` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseReleased

    public void mouseReleased([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    If dragger is not null it is messaged with completeDrag.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Overrides:
    :   `mouseReleased` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    If dragger is not null it is messaged with continueDrag.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Overrides:
    :   `mouseDragged` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Resets the cursor based on the orientation.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Overrides:
    :   `mouseMoved` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseEntered

    public void mouseEntered([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse enters a component.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Overrides:
    :   `mouseEntered` in class `MouseAdapter`

    Parameters:
    :   `e` - MouseEvent describing the details of the enter event.

    Since:
    :   1.5
  + ### mouseExited

    public void mouseExited([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse exits a component.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Overrides:
    :   `mouseExited` in class `MouseAdapter`

    Parameters:
    :   `e` - MouseEvent describing the details of the exit event.

    Since:
    :   1.5