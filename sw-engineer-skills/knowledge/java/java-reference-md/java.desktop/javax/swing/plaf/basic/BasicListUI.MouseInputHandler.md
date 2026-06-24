Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicListUI.MouseInputHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicListUI.MouseInputHandler

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `EventListener`, `MouseInputListener`

Enclosing class:
:   `BasicListUI`

---

public class BasicListUI.MouseInputHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event")

Mouse input, and focus handling for JList. An instance of this
class is added to the appropriate java.awt.Component lists
at installUI() time. Note keyboard input is handled with JComponent
KeyboardActions, see installKeyboardActions().

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`BasicListUI.createMouseInputListener()`](BasicListUI.md#createMouseInputListener())
    * [`BasicListUI.installKeyboardActions()`](BasicListUI.md#installKeyboardActions())
    * [`BasicListUI.installUI(javax.swing.JComponent)`](BasicListUI.md#installUI(javax.swing.JComponent))

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

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseInputHandler

    public MouseInputHandler()

    Constructs a `MouseInputHandler`.
* ## Method Details

  + ### mouseClicked

    public void mouseClicked([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseListener`

    Invoked when the mouse button has been clicked (pressed
    and released) on a component.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseEntered

    public void mouseEntered([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseListener`

    Invoked when the mouse enters a component.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseExited

    public void mouseExited([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseListener`

    Invoked when the mouse exits a component.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseListener`

    Invoked when a mouse button has been pressed on a component.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseMotionListener`

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
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseMotionListener`

    Invoked when the mouse cursor has been moved onto a component
    but no buttons have been pushed.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseReleased

    public void mouseReleased([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseListener`

    Invoked when a mouse button has been released on a component.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed