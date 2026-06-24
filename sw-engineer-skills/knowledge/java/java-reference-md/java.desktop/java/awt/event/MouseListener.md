Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface MouseListener

All Superinterfaces:
:   `EventListener`

All Known Subinterfaces:
:   `MouseInputListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicButtonListener`, `BasicComboPopup.InvocationMouseHandler`, `BasicComboPopup.ListMouseHandler`, `BasicDesktopIconUI.MouseInputHandler`, `BasicFileChooserUI.DoubleClickListener`, `BasicInternalFrameUI.BorderListener`, `BasicInternalFrameUI.GlassPaneDispatcher`, `BasicListUI.MouseInputHandler`, `BasicMenuItemUI.MouseInputHandler`, `BasicMenuUI.MouseInputHandler`, `BasicScrollBarUI.ArrowButtonListener`, `BasicScrollBarUI.TrackListener`, `BasicSliderUI.TrackListener`, `BasicSplitPaneDivider.MouseHandler`, `BasicTabbedPaneUI.MouseHandler`, `BasicTableHeaderUI.MouseInputHandler`, `BasicTableUI.MouseInputHandler`, `BasicTextUI.BasicCaret`, `BasicToolBarUI.DockingListener`, `BasicTreeUI.MouseHandler`, `BasicTreeUI.MouseInputHandler`, `DefaultCaret`, `FormView.MouseEventListener`, `HTMLEditorKit.LinkController`, `MetalFileChooserUI.SingleClickListener`, `MetalToolBarUI.MetalDockingListener`, `MouseAdapter`, `MouseDragGestureRecognizer`, `MouseInputAdapter`, `ToolTipManager`

---

public interface MouseListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving "interesting" mouse events
(press, release, click, enter, and exit) on a component.
(To track mouse moves and mouse drags, use the
`MouseMotionListener`.)

The class that is interested in processing a mouse event
either implements this interface (and all the methods it
contains) or extends the abstract `MouseAdapter` class
(overriding only the methods of interest).

The listener object created from that class is then registered with a
component using the component's `addMouseListener`
method. A mouse event is generated when the mouse is pressed, released
clicked (pressed and released). A mouse event is also generated when
the mouse cursor enters or leaves a component. When a mouse event
occurs, the relevant method in the listener object is invoked, and
the `MouseEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`MouseAdapter`](MouseAdapter.md "class in java.awt.event")
    * [`MouseEvent`](MouseEvent.md "class in java.awt.event")
    * [Tutorial: Writing a Mouse Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/mouselistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseClicked(MouseEvent e)`

  Invoked when the mouse button has been clicked (pressed
  and released) on a component.

  `void`

  `mouseEntered(MouseEvent e)`

  Invoked when the mouse enters a component.

  `void`

  `mouseExited(MouseEvent e)`

  Invoked when the mouse exits a component.

  `void`

  `mousePressed(MouseEvent e)`

  Invoked when a mouse button has been pressed on a component.

  `void`

  `mouseReleased(MouseEvent e)`

  Invoked when a mouse button has been released on a component.

* ## Method Details

  + ### mouseClicked

    void mouseClicked([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse button has been clicked (pressed
    and released) on a component.

    Parameters:
    :   `e` - the event to be processed
  + ### mousePressed

    void mousePressed([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been pressed on a component.

    Parameters:
    :   `e` - the event to be processed
  + ### mouseReleased

    void mouseReleased([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button has been released on a component.

    Parameters:
    :   `e` - the event to be processed
  + ### mouseEntered

    void mouseEntered([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse enters a component.

    Parameters:
    :   `e` - the event to be processed
  + ### mouseExited

    void mouseExited([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse exits a component.

    Parameters:
    :   `e` - the event to be processed