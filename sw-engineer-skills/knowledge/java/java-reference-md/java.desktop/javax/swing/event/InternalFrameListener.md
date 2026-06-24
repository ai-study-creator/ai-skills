Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface InternalFrameListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BasicInternalFrameUI.BasicInternalFrameListener`, `InternalFrameAdapter`

---

public interface InternalFrameListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving internal frame events.
This class is functionally equivalent to the WindowListener class
in the AWT.

See [How to Write an Internal Frame Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/internalframelistener.html)
in *The Java Tutorial* for further documentation.

See Also:
:   * [`WindowListener`](../../../java/awt/event/WindowListener.md "interface in java.awt.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `internalFrameActivated(InternalFrameEvent e)`

  Invoked when an internal frame is activated.

  `void`

  `internalFrameClosed(InternalFrameEvent e)`

  Invoked when an internal frame has been closed.

  `void`

  `internalFrameClosing(InternalFrameEvent e)`

  Invoked when an internal frame is in the process of being closed.

  `void`

  `internalFrameDeactivated(InternalFrameEvent e)`

  Invoked when an internal frame is de-activated.

  `void`

  `internalFrameDeiconified(InternalFrameEvent e)`

  Invoked when an internal frame is de-iconified.

  `void`

  `internalFrameIconified(InternalFrameEvent e)`

  Invoked when an internal frame is iconified.

  `void`

  `internalFrameOpened(InternalFrameEvent e)`

  Invoked when a internal frame has been opened.

* ## Method Details

  + ### internalFrameOpened

    void internalFrameOpened([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when a internal frame has been opened.

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.show()`](../JInternalFrame.md#show())
  + ### internalFrameClosing

    void internalFrameClosing([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is in the process of being closed.
    The close operation can be overridden at this point.

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setDefaultCloseOperation(int)`](../JInternalFrame.md#setDefaultCloseOperation(int))
  + ### internalFrameClosed

    void internalFrameClosed([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame has been closed.

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setClosed(boolean)`](../JInternalFrame.md#setClosed(boolean))
  + ### internalFrameIconified

    void internalFrameIconified([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is iconified.

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../JInternalFrame.md#setIcon(boolean))
  + ### internalFrameDeiconified

    void internalFrameDeiconified([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is de-iconified.

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../JInternalFrame.md#setIcon(boolean))
  + ### internalFrameActivated

    void internalFrameActivated([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is activated.

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](../JInternalFrame.md#setSelected(boolean))
  + ### internalFrameDeactivated

    void internalFrameDeactivated([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is de-activated.

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](../JInternalFrame.md#setSelected(boolean))