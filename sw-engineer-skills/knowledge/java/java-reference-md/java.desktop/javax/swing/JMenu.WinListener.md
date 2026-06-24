Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JMenu.WinListener

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.WindowAdapter](../../java/awt/event/WindowAdapter.md "class in java.awt.event")

javax.swing.JMenu.WinListener

All Implemented Interfaces:
:   `WindowFocusListener`, `WindowListener`, `WindowStateListener`, `Serializable`, `EventListener`

Enclosing class:
:   `JMenu`

---

protected class JMenu.WinListener
extends [WindowAdapter](../../java/awt/event/WindowAdapter.md "class in java.awt.event")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A listener class that watches for a popup window closing.
When the popup is closing, the listener deselects the menu.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `WinListener(JPopupMenu p)`

  Create the window listener for the specified popup.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `windowClosing(WindowEvent e)`

  Deselect the menu when the popup is closed from outside.

  ### Methods inherited from class java.awt.event.[WindowAdapter](../../java/awt/event/WindowAdapter.md "class in java.awt.event")

  `windowActivated, windowClosed, windowDeactivated, windowDeiconified, windowGainedFocus, windowIconified, windowLostFocus, windowOpened, windowStateChanged`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### WinListener

    public WinListener([JPopupMenu](JPopupMenu.md "class in javax.swing") p)

    Create the window listener for the specified popup.

    Parameters:
    :   `p` - the popup menu for which to create a listener

    Since:
    :   1.4
* ## Method Details

  + ### windowClosing

    public void windowClosing([WindowEvent](../../java/awt/event/WindowEvent.md "class in java.awt.event") e)

    Deselect the menu when the popup is closed from outside.

    Specified by:
    :   `windowClosing` in interface `WindowListener`

    Overrides:
    :   `windowClosing` in class `WindowAdapter`

    Parameters:
    :   `e` - the event to be processed