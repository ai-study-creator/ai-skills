Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface WindowStateListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicToolBarUI.FrameListener`, `JMenu.WinListener`, `WindowAdapter`

---

public interface WindowStateListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving window state events.

The class that is interested in processing a window state event
either implements this interface (and all the methods it contains)
or extends the abstract `WindowAdapter` class
(overriding only the methods of interest).

The listener object created from that class is then registered with
a window using the `Window`'s
`addWindowStateListener` method. When the window's
state changes by virtue of being iconified, maximized etc., the
`windowStateChanged` method in the listener object is
invoked, and the `WindowEvent` is passed to it.

Since:
:   1.4

See Also:
:   * [`WindowAdapter`](WindowAdapter.md "class in java.awt.event")
    * [`WindowEvent`](WindowEvent.md "class in java.awt.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `windowStateChanged(WindowEvent e)`

  Invoked when window state is changed.

* ## Method Details

  + ### windowStateChanged

    void windowStateChanged([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when window state is changed.

    Parameters:
    :   `e` - the event to be processed