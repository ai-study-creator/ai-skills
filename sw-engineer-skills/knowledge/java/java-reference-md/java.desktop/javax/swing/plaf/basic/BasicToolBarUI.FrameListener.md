Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicToolBarUI.FrameListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.WindowAdapter](../../../../java/awt/event/WindowAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicToolBarUI.FrameListener

All Implemented Interfaces:
:   `WindowFocusListener`, `WindowListener`, `WindowStateListener`, `EventListener`

Enclosing class:
:   `BasicToolBarUI`

---

protected class BasicToolBarUI.FrameListener
extends [WindowAdapter](../../../../java/awt/event/WindowAdapter.md "class in java.awt.event")

The class listens for window events.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FrameListener()`

  Constructs a `FrameListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `windowClosing(WindowEvent w)`

  Invoked when a window is in the process of being closed.

  ### Methods inherited from class java.awt.event.[WindowAdapter](../../../../java/awt/event/WindowAdapter.md "class in java.awt.event")

  `windowActivated, windowClosed, windowDeactivated, windowDeiconified, windowGainedFocus, windowIconified, windowLostFocus, windowOpened, windowStateChanged`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FrameListener

    protected FrameListener()

    Constructs a `FrameListener`.
* ## Method Details

  + ### windowClosing

    public void windowClosing([WindowEvent](../../../../java/awt/event/WindowEvent.md "class in java.awt.event") w)

    Description copied from class: `WindowAdapter`

    Invoked when a window is in the process of being closed.
    The close operation can be overridden at this point.

    Specified by:
    :   `windowClosing` in interface `WindowListener`

    Overrides:
    :   `windowClosing` in class `WindowAdapter`

    Parameters:
    :   `w` - the event to be processed