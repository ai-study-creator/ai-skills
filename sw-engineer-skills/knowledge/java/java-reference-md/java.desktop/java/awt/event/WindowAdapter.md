Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class WindowAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.WindowAdapter

All Implemented Interfaces:
:   `WindowFocusListener`, `WindowListener`, `WindowStateListener`, `EventListener`

Direct Known Subclasses:
:   `BasicToolBarUI.FrameListener`, `JMenu.WinListener`

---

public abstract class WindowAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [WindowListener](WindowListener.md "interface in java.awt.event"), [WindowStateListener](WindowStateListener.md "interface in java.awt.event"), [WindowFocusListener](WindowFocusListener.md "interface in java.awt.event")

An abstract adapter class for receiving window events.
The methods in this class are empty. This class exists as
convenience for creating listener objects.

Extend this class to create a `WindowEvent` listener
and override the methods for the events of interest. (If you implement the
`WindowListener` interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you can only have to define methods for events you care about.)

Create a listener object using the extended class and then register it with
a Window using the window's `addWindowListener`
method. When the window's status changes by virtue of being opened,
closed, activated or deactivated, iconified or deiconified,
the relevant method in the listener
object is invoked, and the `WindowEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`WindowEvent`](WindowEvent.md "class in java.awt.event")
    * [`WindowListener`](WindowListener.md "interface in java.awt.event")
    * [Tutorial: Writing a Window Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/windowlistener.html)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `WindowAdapter()`

  Constructs a `WindowAdapter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `windowActivated(WindowEvent e)`

  Invoked when a window is activated.

  `void`

  `windowClosed(WindowEvent e)`

  Invoked when a window has been closed.

  `void`

  `windowClosing(WindowEvent e)`

  Invoked when a window is in the process of being closed.

  `void`

  `windowDeactivated(WindowEvent e)`

  Invoked when a window is de-activated.

  `void`

  `windowDeiconified(WindowEvent e)`

  Invoked when a window is de-iconified.

  `void`

  `windowGainedFocus(WindowEvent e)`

  Invoked when the Window is set to be the focused Window, which means
  that the Window, or one of its subcomponents, will receive keyboard
  events.

  `void`

  `windowIconified(WindowEvent e)`

  Invoked when a window is iconified.

  `void`

  `windowLostFocus(WindowEvent e)`

  Invoked when the Window is no longer the focused Window, which means
  that keyboard events will no longer be delivered to the Window or any of
  its subcomponents.

  `void`

  `windowOpened(WindowEvent e)`

  Invoked when a window has been opened.

  `void`

  `windowStateChanged(WindowEvent e)`

  Invoked when a window state is changed.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### WindowAdapter

    protected WindowAdapter()

    Constructs a `WindowAdapter`.
* ## Method Details

  + ### windowOpened

    public void windowOpened([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window has been opened.

    Specified by:
    :   `windowOpened` in interface `WindowListener`

    Parameters:
    :   `e` - the event to be processed
  + ### windowClosing

    public void windowClosing([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window is in the process of being closed.
    The close operation can be overridden at this point.

    Specified by:
    :   `windowClosing` in interface `WindowListener`

    Parameters:
    :   `e` - the event to be processed
  + ### windowClosed

    public void windowClosed([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window has been closed.

    Specified by:
    :   `windowClosed` in interface `WindowListener`

    Parameters:
    :   `e` - the event to be processed
  + ### windowIconified

    public void windowIconified([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window is iconified.

    Specified by:
    :   `windowIconified` in interface `WindowListener`

    Parameters:
    :   `e` - the event to be processed

    See Also:
    :   - [`Frame.setIconImage(java.awt.Image)`](../Frame.md#setIconImage(java.awt.Image))
  + ### windowDeiconified

    public void windowDeiconified([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window is de-iconified.

    Specified by:
    :   `windowDeiconified` in interface `WindowListener`

    Parameters:
    :   `e` - the event to be processed
  + ### windowActivated

    public void windowActivated([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window is activated.

    Specified by:
    :   `windowActivated` in interface `WindowListener`

    Parameters:
    :   `e` - the event to be processed
  + ### windowDeactivated

    public void windowDeactivated([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window is de-activated.

    Specified by:
    :   `windowDeactivated` in interface `WindowListener`

    Parameters:
    :   `e` - the event to be processed
  + ### windowStateChanged

    public void windowStateChanged([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when a window state is changed.

    Specified by:
    :   `windowStateChanged` in interface `WindowStateListener`

    Parameters:
    :   `e` - the event to be processed

    Since:
    :   1.4
  + ### windowGainedFocus

    public void windowGainedFocus([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when the Window is set to be the focused Window, which means
    that the Window, or one of its subcomponents, will receive keyboard
    events.

    Specified by:
    :   `windowGainedFocus` in interface `WindowFocusListener`

    Parameters:
    :   `e` - the event to be processed

    Since:
    :   1.4
  + ### windowLostFocus

    public void windowLostFocus([WindowEvent](WindowEvent.md "class in java.awt.event") e)

    Invoked when the Window is no longer the focused Window, which means
    that keyboard events will no longer be delivered to the Window or any of
    its subcomponents.

    Specified by:
    :   `windowLostFocus` in interface `WindowFocusListener`

    Parameters:
    :   `e` - the event to be processed

    Since:
    :   1.4