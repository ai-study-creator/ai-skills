Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicMenuUI.MouseInputHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicMenuUI.MouseInputHandler

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `EventListener`, `MouseInputListener`

Enclosing class:
:   `BasicMenuUI`

---

protected class BasicMenuUI.MouseInputHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event")

Instantiated and used by a menu item to handle the current menu selection
from mouse events. A MouseInputHandler processes and forwards all mouse events
to a shared instance of the MenuSelectionManager.

This class is protected so that it can be subclassed by other look and
feels to implement their own mouse handling behavior. All overridden
methods should call the parent methods so that the menu selection
is correct.

Since:
:   1.4

See Also:
:   * [`MenuSelectionManager`](../../MenuSelectionManager.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

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

  Invoked when a mouse button is pressed on the menu and then dragged.

  `void`

  `mouseEntered(MouseEvent e)`

  Invoked when the cursor enters the menu.

  `void`

  `mouseExited(MouseEvent e)`

  Invoked when the mouse exits a component.

  `void`

  `mouseMoved(MouseEvent e)`

  Invoked when the mouse cursor has been moved onto a component
  but no buttons have been pushed.

  `void`

  `mousePressed(MouseEvent e)`

  Invoked when the mouse has been clicked on the menu.

  `void`

  `mouseReleased(MouseEvent e)`

  Invoked when the mouse has been released on the menu.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseInputHandler

    protected MouseInputHandler()

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
  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse has been clicked on the menu. This
    method clears or sets the selection path of the
    MenuSelectionManager.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event
  + ### mouseReleased

    public void mouseReleased([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse has been released on the menu. Delegates the
    mouse event to the MenuSelectionManager.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event
  + ### mouseEntered

    public void mouseEntered([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the cursor enters the menu. This method sets the selected
    path for the MenuSelectionManager and handles the case
    in which a menu item is used to pop up an additional menu, as in a
    hierarchical menu system.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Parameters:
    :   `e` - the mouse event; not used
  + ### mouseExited

    public void mouseExited([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseListener`

    Invoked when the mouse exits a component.

    Specified by:
    :   `mouseExited` in interface `MouseListener`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseDragged

    public void mouseDragged([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button is pressed on the menu and then dragged.
    Delegates the mouse event to the MenuSelectionManager.

    Specified by:
    :   `mouseDragged` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the mouse event

    See Also:
    :   - [`MouseMotionListener.mouseDragged(java.awt.event.MouseEvent)`](../../../../java/awt/event/MouseMotionListener.md#mouseDragged(java.awt.event.MouseEvent))
  + ### mouseMoved

    public void mouseMoved([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Description copied from interface: `MouseMotionListener`

    Invoked when the mouse cursor has been moved onto a component
    but no buttons have been pushed.

    Specified by:
    :   `mouseMoved` in interface `MouseMotionListener`

    Parameters:
    :   `e` - the event to be processed