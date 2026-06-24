Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface MouseMotionListener

All Superinterfaces:
:   `EventListener`

All Known Subinterfaces:
:   `MouseInputListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicButtonListener`, `BasicComboPopup.InvocationMouseHandler`, `BasicComboPopup.InvocationMouseMotionHandler`, `BasicComboPopup.ListMouseHandler`, `BasicComboPopup.ListMouseMotionHandler`, `BasicDesktopIconUI.MouseInputHandler`, `BasicFileChooserUI.DoubleClickListener`, `BasicInternalFrameUI.BorderListener`, `BasicInternalFrameUI.GlassPaneDispatcher`, `BasicListUI.MouseInputHandler`, `BasicMenuItemUI.MouseInputHandler`, `BasicMenuUI.MouseInputHandler`, `BasicScrollBarUI.ArrowButtonListener`, `BasicScrollBarUI.TrackListener`, `BasicSliderUI.TrackListener`, `BasicSplitPaneDivider.MouseHandler`, `BasicTabbedPaneUI.MouseHandler`, `BasicTableHeaderUI.MouseInputHandler`, `BasicTableUI.MouseInputHandler`, `BasicTextUI.BasicCaret`, `BasicToolBarUI.DockingListener`, `BasicTreeUI.MouseHandler`, `BasicTreeUI.MouseInputHandler`, `DefaultCaret`, `FormView.MouseEventListener`, `HTMLEditorKit.LinkController`, `MetalFileChooserUI.SingleClickListener`, `MetalToolBarUI.MetalDockingListener`, `MouseAdapter`, `MouseDragGestureRecognizer`, `MouseInputAdapter`, `MouseMotionAdapter`, `ToolTipManager`

---

public interface MouseMotionListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving mouse motion events on a component.
(For clicks and other mouse events, use the `MouseListener`.)

The class that is interested in processing a mouse motion event
either implements this interface (and all the methods it
contains) or extends the abstract `MouseMotionAdapter` class
(overriding only the methods of interest).

The listener object created from that class is then registered with a
component using the component's `addMouseMotionListener`
method. A mouse motion event is generated when the mouse is moved
or dragged. (Many such events will be generated). When a mouse motion event
occurs, the relevant method in the listener object is invoked, and
the `MouseEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`MouseMotionAdapter`](MouseMotionAdapter.md "class in java.awt.event")
    * [`MouseEvent`](MouseEvent.md "class in java.awt.event")
    * [Tutorial: Writing a Mouse Motion Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/mousemotionlistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseDragged(MouseEvent e)`

  Invoked when a mouse button is pressed on a component and then
  dragged.

  `void`

  `mouseMoved(MouseEvent e)`

  Invoked when the mouse cursor has been moved onto a component
  but no buttons have been pushed.

* ## Method Details

  + ### mouseDragged

    void mouseDragged([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when a mouse button is pressed on a component and then
    dragged. `MOUSE_DRAGGED` events will continue to be
    delivered to the component where the drag originated until the
    mouse button is released (regardless of whether the mouse position
    is within the bounds of the component).

    Due to platform-dependent Drag&Drop implementations,
    `MOUSE_DRAGGED` events may not be delivered during a native
    Drag&Drop operation.

    Parameters:
    :   `e` - the event to be processed
  + ### mouseMoved

    void mouseMoved([MouseEvent](MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse cursor has been moved onto a component
    but no buttons have been pushed.

    Parameters:
    :   `e` - the event to be processed