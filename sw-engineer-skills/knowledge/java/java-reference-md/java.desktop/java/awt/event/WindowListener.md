Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface WindowListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicToolBarUI.FrameListener`, `JMenu.WinListener`, `WindowAdapter`

---

public interface WindowListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving window events.
The class that is interested in processing a window event
either implements this interface (and all the methods it
contains) or extends the abstract `WindowAdapter` class
(overriding only the methods of interest).
The listener object created from that class is then registered with a
Window using the window's `addWindowListener`
method. When the window's status changes by virtue of being opened,
closed, activated or deactivated, iconified or deiconified,
the relevant method in the listener object is invoked, and the
`WindowEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`WindowAdapter`](WindowAdapter.md "class in java.awt.event")
    * [`WindowEvent`](WindowEvent.md "class in java.awt.event")
    * [Tutorial: How to Write Window Listeners](https://docs.oracle.com/javase/tutorial/uiswing/events/windowlistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `windowActivated(WindowEvent e)`

  Invoked when the Window is set to be the active Window.

  `void`

  `windowClosed(WindowEvent e)`

  Invoked when a window has been closed as the result
  of calling dispose on the window.

  `void`

  `windowClosing(WindowEvent e)`

  Invoked when the user attempts to close the window
  from the window's system menu.

  `void`

  `windowDeactivated(WindowEvent e)`

  Invoked when a Window is no longer the active Window.

  `void`

  `windowDeiconified(WindowEvent e)`

  Invoked when a window is changed from a minimized
  to a normal state.

  `void`

  `windowIconified(WindowEvent e)`

  Invoked when a window is changed from a normal to a
  minimized state.

  `void`

  `windowOpened(WindowEvent e)`

  Invoked the first time a window is made visible.

* ## Method Details

  + ### windowOpened

    void windowOpened([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked the first time a window is made visible.

    Parameters:
    :   `e` - the event to be processed
  + ### windowClosing

    void windowClosing([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when the user attempts to close the window
    from the window's system menu.

    Parameters:
    :   `e` - the event to be processed
  + ### windowClosed

    void windowClosed([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window has been closed as the result
    of calling dispose on the window.

    Parameters:
    :   `e` - the event to be processed
  + ### windowIconified

    void windowIconified([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window is changed from a normal to a
    minimized state. For many platforms, a minimized window
    is displayed as the icon specified in the window's
    iconImage property.

    Parameters:
    :   `e` - the event to be processed

    See Also:
    :   - [`Frame.setIconImage(java.awt.Image)`](../Frame.md#setIconImage(java.awt.Image))
  + ### windowDeiconified

    void windowDeiconified([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window is changed from a minimized
    to a normal state.

    Parameters:
    :   `e` - the event to be processed
  + ### windowActivated

    void windowActivated([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when the Window is set to be the active Window. Only a Frame or
    a Dialog can be the active Window. The native windowing system may
    denote the active Window or its children with special decorations, such
    as a highlighted title bar. The active Window is always either the
    focused Window, or the first Frame or Dialog that is an owner of the
    focused Window.

    Parameters:
    :   `e` - the event to be processed
  + ### windowDeactivated

    void windowDeactivated([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a Window is no longer the active Window. Only a Frame or a
    Dialog can be the active Window. The native windowing system may denote
    the active Window or its children with special decorations, such as a
    highlighted title bar. The active Window is always either the focused
    Window, or the first Frame or Dialog that is an owner of the focused
    Window.

    Parameters:
    :   `e` - the event to be processed