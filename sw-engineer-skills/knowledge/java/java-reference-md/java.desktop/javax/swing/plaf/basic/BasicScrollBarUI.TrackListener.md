Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollBarUI.TrackListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicScrollBarUI.TrackListener

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

Enclosing class:
:   `BasicScrollBarUI`

---

protected class BasicScrollBarUI.TrackListener
extends [MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")
implements [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

Track mouse drags.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `currentMouseX`

  Current mouse x position

  `protected int`

  `currentMouseY`

  Current mouse y position

  `protected int`

  `offset`

  The offset
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TrackListener()`

  Constructs a `TrackListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseDragged(MouseEvent e)`

  Set the models value to the position of the thumb's top of Vertical
  scrollbar, or the left/right of Horizontal scrollbar in
  left-to-right/right-to-left scrollbar relative to the origin of the
  track.

  `void`

  `mouseExited(MouseEvent e)`

  Invoked when the mouse exits the scrollbar.

  `void`

  `mouseMoved(MouseEvent e)`

  Invoked when the mouse cursor has been moved onto a component
  but no buttons have been pushed.

  `void`

  `mousePressed(MouseEvent e)`

  If the mouse is pressed above the "thumb" component
  then reduce the scrollbars value by one page ("page up"),
  otherwise increase it by one page.

  `void`

  `mouseReleased(MouseEvent e)`

  Invoked when a mouse button has been released on a component.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseEntered, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### offset

    protected transient int offset

    The offset
  + ### currentMouseX

    protected transient int currentMouseX

    Current mouse x position
  + ### currentMouseY

    protected transient int currentMouseY

    Current mouse y position
* ## Constructor Details

  + ### TrackListener

    protected TrackListener()

    Constructs a `TrackListener`.
* ## Method Details

  + ### mouseReleased

    public void mouseReleased([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been released on a component.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Overrides:
    :   `mouseReleased` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    If the mouse is pressed above the "thumb" component
    then reduce the scrollbars value by one page ("page up"),
    otherwise increase it by one page. If there is no
    thumb then page up if the mouse is in the upper half
    of the track.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Overrides:
    :   `mousePressed` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Set the models value to the position of the thumb's top of Vertical
    scrollbar, or the left/right of Horizontal scrollbar in
    left-to-right/right-to-left scrollbar relative to the origin of the
    track.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Overrides:
    :   `mouseDragged` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse cursor has been moved onto a component
    but no buttons have been pushed.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Overrides:
    :   `mouseMoved` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseExited

    public void mouseExited([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse exits the scrollbar.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Overrides:
    :   `mouseExited` in class `MouseAdapter`

    Parameters:
    :   `e` - MouseEvent further describing the event

    Since:
    :   1.5