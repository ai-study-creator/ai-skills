Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface MouseWheelListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicComboPopup.InvocationMouseHandler`, `BasicComboPopup.ListMouseHandler`, `BasicDesktopIconUI.MouseInputHandler`, `BasicFileChooserUI.DoubleClickListener`, `BasicInternalFrameUI.BorderListener`, `BasicScrollBarUI.ArrowButtonListener`, `BasicScrollBarUI.TrackListener`, `BasicScrollPaneUI.MouseWheelHandler`, `BasicSliderUI.TrackListener`, `BasicSplitPaneDivider.MouseHandler`, `BasicTabbedPaneUI.MouseHandler`, `BasicTreeUI.MouseHandler`, `FormView.MouseEventListener`, `HTMLEditorKit.LinkController`, `MetalFileChooserUI.SingleClickListener`, `MouseAdapter`, `MouseInputAdapter`, `ToolTipManager`

---

public interface MouseWheelListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving mouse wheel events on a component.
(For clicks and other mouse events, use the `MouseListener`.
For mouse movement and drags, use the `MouseMotionListener`.)

The class that is interested in processing a mouse wheel event
implements this interface (and all the methods it contains).

The listener object created from that class is then registered with a
component using the component's `addMouseWheelListener`
method. A mouse wheel event is generated when the mouse wheel is rotated.
When a mouse wheel event occurs, that object's `mouseWheelMoved`
method is invoked.

For information on how mouse wheel events are dispatched, see
the class description for [`MouseWheelEvent`](MouseWheelEvent.md "class in java.awt.event").

Since:
:   1.4

See Also:
:   * [`MouseWheelEvent`](MouseWheelEvent.md "class in java.awt.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseWheelMoved(MouseWheelEvent e)`

  Invoked when the mouse wheel is rotated.

* ## Method Details

  + ### mouseWheelMoved

    void mouseWheelMoved([MouseWheelEvent](MouseWheelEvent.md "class in java.awt.event") e)

    Invoked when the mouse wheel is rotated.

    Parameters:
    :   `e` - the event to be processed

    See Also:
    :   - [`MouseWheelEvent`](MouseWheelEvent.md "class in java.awt.event")