Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameUI.BasicInternalFrameListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicInternalFrameUI.BasicInternalFrameListener

All Implemented Interfaces:
:   `EventListener`, `InternalFrameListener`

Enclosing class:
:   `BasicInternalFrameUI`

---

protected class BasicInternalFrameUI.BasicInternalFrameListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [InternalFrameListener](../../event/InternalFrameListener.md "interface in javax.swing.event")

Basic internal frame listener.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `BasicInternalFrameListener()`

  Constructs a `BasicInternalFrameListener`.
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

  Invoked when a internal frame has been opened.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicInternalFrameListener

    protected BasicInternalFrameListener()

    Constructs a `BasicInternalFrameListener`.
* ## Method Details

  + ### internalFrameClosing

    public void internalFrameClosing([InternalFrameEvent](../../event/InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is in the process of being closed.
    The close operation can be overridden at this point.

    Specified by:
    :   `internalFrameClosing` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setDefaultCloseOperation(int)`](../../JInternalFrame.md#setDefaultCloseOperation(int))
  + ### internalFrameClosed

    public void internalFrameClosed([InternalFrameEvent](../../event/InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame has been closed.

    Specified by:
    :   `internalFrameClosed` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setClosed(boolean)`](../../JInternalFrame.md#setClosed(boolean))
  + ### internalFrameOpened

    public void internalFrameOpened([InternalFrameEvent](../../event/InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when a internal frame has been opened.

    Specified by:
    :   `internalFrameOpened` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.show()`](../../JInternalFrame.md#show())
  + ### internalFrameIconified

    public void internalFrameIconified([InternalFrameEvent](../../event/InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is iconified.

    Specified by:
    :   `internalFrameIconified` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../../JInternalFrame.md#setIcon(boolean))
  + ### internalFrameDeiconified

    public void internalFrameDeiconified([InternalFrameEvent](../../event/InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is de-iconified.

    Specified by:
    :   `internalFrameDeiconified` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../../JInternalFrame.md#setIcon(boolean))
  + ### internalFrameActivated

    public void internalFrameActivated([InternalFrameEvent](../../event/InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is activated.

    Specified by:
    :   `internalFrameActivated` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](../../JInternalFrame.md#setSelected(boolean))
  + ### internalFrameDeactivated

    public void internalFrameDeactivated([InternalFrameEvent](../../event/InternalFrameEvent.md "class in javax.swing.event") e)

    Invoked when an internal frame is de-activated.

    Specified by:
    :   `internalFrameDeactivated` in interface `InternalFrameListener`

    Parameters:
    :   `e` - an `InternalFrameEvent` with information about the
        `JInteralFrame` that originated the event

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](../../JInternalFrame.md#setSelected(boolean))