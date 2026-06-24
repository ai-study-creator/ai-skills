Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class MouseAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.MouseAdapter

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

Direct Known Subclasses:
:   `BasicComboPopup.InvocationMouseHandler`, `BasicComboPopup.ListMouseHandler`, `BasicFileChooserUI.DoubleClickListener`, `BasicScrollBarUI.ArrowButtonListener`, `BasicScrollBarUI.TrackListener`, `BasicSplitPaneDivider.MouseHandler`, `BasicTabbedPaneUI.MouseHandler`, `BasicTreeUI.MouseHandler`, `FormView.MouseEventListener`, `HTMLEditorKit.LinkController`, `MetalFileChooserUI.SingleClickListener`, `MouseInputAdapter`, `ToolTipManager`

---

public abstract class MouseAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [MouseListener](MouseListener.md "interface in java.awt.event"), [MouseWheelListener](MouseWheelListener.md "interface in java.awt.event"), [MouseMotionListener](MouseMotionListener.md "interface in java.awt.event")

An abstract adapter class for receiving mouse events.
The methods in this class are empty. This class exists as
convenience for creating listener objects.

Mouse events let you track when a mouse is pressed, released, clicked,
moved, dragged, when it enters a component, when it exits and
when a mouse wheel is moved.

Extend this class to create a `MouseEvent`
(including drag and motion events) or/and `MouseWheelEvent`
listener and override the methods for the events of interest. (If you implement the
`MouseListener`,
`MouseMotionListener`
interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you can only have to define methods for events you care about.)

Create a listener object using the extended class and then register it with
a component using the component's `addMouseListener`
`addMouseMotionListener`, `addMouseWheelListener`
methods.
The relevant method in the listener object is invoked and the `MouseEvent`
or `MouseWheelEvent` is passed to it in following cases:

* when a mouse button is pressed, released, or clicked (pressed and released)* when the mouse cursor enters or exits the component* when the mouse wheel rotated, or mouse moved or dragged

Since:
:   1.1

See Also:
:   * [`MouseEvent`](MouseEvent.md "class in java.awt.event")
    * [`MouseWheelEvent`](MouseWheelEvent.md "class in java.awt.event")
    * [`MouseListener`](MouseListener.md "interface in java.awt.event")
    * [`MouseMotionListener`](MouseMotionListener.md "interface in java.awt.event")
    * [`MouseWheelListener`](MouseWheelListener.md "interface in java.awt.event")
    * [Tutorial: Writing a Mouse Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/mouselistener.html)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MouseAdapter()`

  Constructs a `MouseAdapter`.
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

  `void`

  `mouseWheelMoved(MouseWheelEvent e)`

  Invoked when the mouse wheel is rotated.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseAdapter

    protected MouseAdapter()

    Constructs a `MouseAdapter`.
* ## Method Details

  + ### mouseClicked

    public void mouseClicked([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse button has been clicked (pressed
    and released) on a component.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mousePressed

    public void mousePressed([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been pressed on a component.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseReleased

    public void mouseReleased([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been released on a component.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseEntered

    public void mouseEntered([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse enters a component.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseExited

    public void mouseExited([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse exits a component.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseWheelMoved

    public void mouseWheelMoved([MouseWheelEvent](MouseWheelEvent.md "class in java.awt.event") e)

    Invoked when the mouse wheel is rotated.

    Specified by:
    :   `mouseWheelMoved` in interface `MouseWheelListener`

    Parameters:
    :   `e` - the event to be processed

    Since:
    :   1.6

    See Also:
    :   - [`MouseWheelEvent`](MouseWheelEvent.md "class in java.awt.event")
  + ### mouseDragged

    public void mouseDragged([MouseEvent](MouseEvent.md "class in java.awt.event") e)

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

    Parameters:
    :   `e` - the event to be processed

    Since:
    :   1.6
  + ### mouseMoved

    public void mouseMoved([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse cursor has been moved onto a component
    but no buttons have been pushed.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the event to be processed

    Since:
    :   1.6