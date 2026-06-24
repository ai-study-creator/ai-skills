Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboPopup.InvocationMouseHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicComboPopup.InvocationMouseHandler

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

Enclosing class:
:   `BasicComboPopup`

---

protected class BasicComboPopup.InvocationMouseHandler
extends [MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

A listener to be registered upon the combo box
(*not* its popup menu)
to handle mouse events
that affect the state of the popup menu.
The main purpose of this listener is to make the popup menu
appear and disappear.
This listener also helps
with click-and-drag scenarios by setting the selection if the mouse was
released over the list during a drag.

**Warning:**
We recommend that you *not*
create subclasses of this class.
If you absolutely must create a subclass,
be sure to invoke the superclass
version of each method.

See Also:
:   * [`BasicComboPopup.createMouseListener()`](BasicComboPopup.md#createMouseListener())

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `InvocationMouseHandler()`

  Constructs an `InvocationMouseHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mousePressed(MouseEvent e)`

  Responds to mouse-pressed events on the combo box.

  `void`

  `mouseReleased(MouseEvent e)`

  Responds to the user terminating
  a click or drag that began on the combo box.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseDragged, mouseEntered, mouseExited, mouseMoved, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InvocationMouseHandler

    protected InvocationMouseHandler()

    Constructs an `InvocationMouseHandler`.
* ## Method Details

  + ### mousePressed

    public void mousePressed([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Responds to mouse-pressed events on the combo box.

    Specified by:
    :   `mousePressed` in interface `MouseListener`

    Overrides:
    :   `mousePressed` in class `MouseAdapter`

    Parameters:
    :   `e` - the mouse-press event to be handled
  + ### mouseReleased

    public void mouseReleased([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Responds to the user terminating
    a click or drag that began on the combo box.

    Specified by:
    :   `mouseReleased` in interface `MouseListener`

    Overrides:
    :   `mouseReleased` in class `MouseAdapter`

    Parameters:
    :   `e` - the mouse-release event to be handled