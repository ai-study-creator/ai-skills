Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSliderUI.TrackListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

[javax.swing.event.MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event")

javax.swing.plaf.basic.BasicSliderUI.TrackListener

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`, `MouseInputListener`

Enclosing class:
:   `BasicSliderUI`

---

public class BasicSliderUI.TrackListener
extends [MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event")

Track mouse movements.
This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `currentMouseX`

  Current mouse x.

  `protected int`

  `currentMouseY`

  Current mouse y.

  `protected int`

  `offset`

  The offset
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TrackListener()`

  Constructs a `TrackListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseDragged(MouseEvent e)`

  Set the models value to the position of the top/left
  of the thumb relative to the origin of the track.

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

  `boolean`

  `shouldScroll(int direction)`

  Returns if scrolling should occur

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseEntered, mouseExited, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.awt.event.[MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event")

  `mouseClicked, mouseEntered, mouseExited`

* ## Field Details

  + ### offset

    protected transient int offset

    The offset
  + ### currentMouseX

    protected transient int currentMouseX

    Current mouse x.
  + ### currentMouseY

    protected transient int currentMouseY

    Current mouse y.
* ## Constructor Details

  + ### TrackListener

    public TrackListener()

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
  + ### shouldScroll

    public boolean shouldScroll(int direction)

    Returns if scrolling should occur

    Parameters:
    :   `direction` - the direction.

    Returns:
    :   if scrolling should occur
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Set the models value to the position of the top/left
    of the thumb relative to the origin of the track.

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