Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class InternalFrameAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.event.InternalFrameAdapter

All Implemented Interfaces:
:   `EventListener`, `InternalFrameListener`

---

public abstract class InternalFrameAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [InternalFrameListener](InternalFrameListener.md "interface in javax.swing.event")

An abstract adapter class for receiving internal frame events.
The methods in this class are empty. This class exists as
convenience for creating listener objects, and is functionally
equivalent to the WindowAdapter class in the AWT.

See [How to Write an Internal Frame Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/internalframelistener.html)
in *The Java Tutorial*

See Also:
:   * [`InternalFrameEvent`](InternalFrameEvent.md "class in javax.swing.event")
    * [`InternalFrameListener`](InternalFrameListener.md "interface in javax.swing.event")
    * [`WindowListener`](../../../java/awt/event/WindowListener.md "interface in java.awt.event")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `InternalFrameAdapter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  Invoked when an internal frame has been opened.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InternalFrameAdapter

    protected InternalFrameAdapter()

    Constructor for subclasses to call.
* ## Method Details

  + ### internalFrameOpened

    public void internalFrameOpened([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame has been opened.

    Specified by:
    :   `internalFrameOpened` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.show()`](../JInternalFrame.md#show())
  + ### internalFrameClosing

    public void internalFrameClosing([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is in the process of being closed.
    The close operation can be overridden at this point.

    Specified by:
    :   `internalFrameClosing` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setDefaultCloseOperation(int)`](../JInternalFrame.md#setDefaultCloseOperation(int))
  + ### internalFrameClosed

    public void internalFrameClosed([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame has been closed.

    Specified by:
    :   `internalFrameClosed` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setClosed(boolean)`](../JInternalFrame.md#setClosed(boolean))
  + ### internalFrameIconified

    public void internalFrameIconified([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is iconified.

    Specified by:
    :   `internalFrameIconified` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../JInternalFrame.md#setIcon(boolean))
  + ### internalFrameDeiconified

    public void internalFrameDeiconified([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is de-iconified.

    Specified by:
    :   `internalFrameDeiconified` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../JInternalFrame.md#setIcon(boolean))
  + ### internalFrameActivated

    public void internalFrameActivated([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is activated.

    Specified by:
    :   `internalFrameActivated` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](../JInternalFrame.md#setSelected(boolean))
  + ### internalFrameDeactivated

    public void internalFrameDeactivated([InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is de-activated.

    Specified by:
    :   `internalFrameDeactivated` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](../JInternalFrame.md#setSelected(boolean))