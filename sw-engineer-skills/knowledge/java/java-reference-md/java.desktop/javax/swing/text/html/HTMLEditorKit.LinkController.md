Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLEditorKit.LinkController

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.text.html.HTMLEditorKit.LinkController

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `Serializable`, `EventListener`

Enclosing class:
:   `HTMLEditorKit`

---

public static class HTMLEditorKit.LinkController
extends [MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")
implements [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

Class to watch the associated component and fire
hyperlink events on it when appropriate.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LinkController()`

  Constructs a `LinkController`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `activateLink(int pos,
  JEditorPane editor)`

  Calls linkActivated on the associated JEditorPane
  if the given position represents a link.

  `void`

  `mouseClicked(MouseEvent e)`

  Called for a mouse click event.

  `void`

  `mouseDragged(MouseEvent e)`

  Invoked when a mouse button is pressed on a component and then
  dragged.

  `void`

  `mouseMoved(MouseEvent e)`

  Invoked when the mouse cursor has been moved onto a component
  but no buttons have been pushed.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseEntered, mouseExited, mousePressed, mouseReleased, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LinkController

    public LinkController()

    Constructs a `LinkController`.
* ## Method Details

  + ### mouseClicked

    public void mouseClicked([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Called for a mouse click event.
    If the component is read-only (ie a browser) then
    the clicked event is used to drive an attempt to
    follow the reference specified by a link.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Overrides:
    :   `mouseClicked` in class `MouseAdapter`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseListener.mouseClicked(java.awt.event.MouseEvent)`](../../../../java/awt/event/MouseListener.md#mouseClicked(java.awt.event.MouseEvent))
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
  + ### activateLink

    protected void activateLink(int pos,
    [JEditorPane](../../JEditorPane.md "class in javax.swing") editor)

    Calls linkActivated on the associated JEditorPane
    if the given position represents a link.

    This is implemented
    to forward to the method with the same name, but with the following
    args both == -1.

    Parameters:
    :   `pos` - the position
    :   `editor` - the editor pane