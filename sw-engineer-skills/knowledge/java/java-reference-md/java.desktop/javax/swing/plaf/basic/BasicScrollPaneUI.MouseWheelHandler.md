Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollPaneUI.MouseWheelHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicScrollPaneUI.MouseWheelHandler

All Implemented Interfaces:
:   `MouseWheelListener`, `EventListener`

Enclosing class:
:   `BasicScrollPaneUI`

---

protected class BasicScrollPaneUI.MouseWheelHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [MouseWheelListener](../../../../java/awt/event/MouseWheelListener.md "interface in java.awt.event")

MouseWheelHandler is an inner class which implements the
MouseWheelListener interface. MouseWheelHandler responds to
MouseWheelEvents by scrolling the JScrollPane appropriately.
If the scroll pane's
`isWheelScrollingEnabled`
method returns false, no scrolling occurs.

Since:
:   1.4

See Also:
:   * [`JScrollPane.isWheelScrollingEnabled()`](../../JScrollPane.md#isWheelScrollingEnabled())
    * [`BasicScrollPaneUI.createMouseWheelListener()`](BasicScrollPaneUI.md#createMouseWheelListener())
    * [`MouseWheelListener`](../../../../java/awt/event/MouseWheelListener.md "interface in java.awt.event")
    * [`MouseWheelEvent`](../../../../java/awt/event/MouseWheelEvent.md "class in java.awt.event")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MouseWheelHandler()`

  Constructs a `MouseWheelHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseWheelMoved(MouseWheelEvent e)`

  Called when the mouse wheel is rotated while over a
  JScrollPane.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MouseWheelHandler

    protected MouseWheelHandler()

    Constructs a `MouseWheelHandler`.
* ## Method Details

  + ### mouseWheelMoved

    public void mouseWheelMoved([MouseWheelEvent](../../../../java/awt/event/MouseWheelEvent.md "class in java.awt.event") e)

    Called when the mouse wheel is rotated while over a
    JScrollPane.

    Specified by:
    :   `mouseWheelMoved` in interface `MouseWheelListener`

    Parameters:
    :   `e` - MouseWheelEvent to be handled

    Since:
    :   1.4

    See Also:
    :   - [`MouseWheelEvent`](../../../../java/awt/event/MouseWheelEvent.md "class in java.awt.event")