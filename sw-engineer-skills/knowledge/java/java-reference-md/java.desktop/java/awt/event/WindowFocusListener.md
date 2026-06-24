Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface WindowFocusListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicToolBarUI.FrameListener`, `JMenu.WinListener`, `WindowAdapter`

---

public interface WindowFocusListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving `WindowEvents`, including
`WINDOW_GAINED_FOCUS` and `WINDOW_LOST_FOCUS` events.
The class that is interested in processing a `WindowEvent`
either implements this interface (and
all the methods it contains) or extends the abstract
`WindowAdapter` class (overriding only the methods of interest).
The listener object created from that class is then registered with a
`Window`
using the `Window`'s `addWindowFocusListener` method.
When the `Window`'s
status changes by virtue of it being opened, closed, activated, deactivated,
iconified, or deiconified, or by focus being transferred into or out of the
`Window`, the relevant method in the listener object is invoked,
and the `WindowEvent` is passed to it.

Since:
:   1.4

See Also:
:   * [`WindowAdapter`](WindowAdapter.md "class in java.awt.event")
    * [`WindowEvent`](WindowEvent.md "class in java.awt.event")
    * [Tutorial: Writing a Window Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/windowlistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `windowGainedFocus(WindowEvent e)`

  Invoked when the Window is set to be the focused Window, which means
  that the Window, or one of its subcomponents, will receive keyboard
  events.

  `void`

  `windowLostFocus(WindowEvent e)`

  Invoked when the Window is no longer the focused Window, which means
  that keyboard events will no longer be delivered to the Window or any of
  its subcomponents.

* ## Method Details

  + ### windowGainedFocus

    void windowGainedFocus([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when the Window is set to be the focused Window, which means
    that the Window, or one of its subcomponents, will receive keyboard
    events.

    Parameters:
    :   `e` - the event to be processed
  + ### windowLostFocus

    void windowLostFocus([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when the Window is no longer the focused Window, which means
    that keyboard events will no longer be delivered to the Window or any of
    its subcomponents.

    Parameters:
    :   `e` - the event to be processed