Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollBarUI.ScrollListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicScrollBarUI.ScrollListener

All Implemented Interfaces:
:   `ActionListener`, `EventListener`

Enclosing class:
:   `BasicScrollBarUI`

---

protected class BasicScrollBarUI.ScrollListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event")

Listener for scrolling events initiated in the
`ScrollPane`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ScrollListener()`

  Constructs a `ScrollListener`.

  `ScrollListener(int dir,
  boolean block)`

  Constructs a `ScrollListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Invoked when an action occurs.

  `void`

  `setDirection(int direction)`

  Sets the direction.

  `void`

  `setScrollByBlock(boolean block)`

  Sets the scrolling by block

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ScrollListener

    public ScrollListener()

    Constructs a `ScrollListener`.
  + ### ScrollListener

    public ScrollListener(int dir,
    boolean block)

    Constructs a `ScrollListener`.

    Parameters:
    :   `dir` - direction
    :   `block` - use block increment
* ## Method Details

  + ### setDirection

    public void setDirection(int direction)

    Sets the direction.

    Parameters:
    :   `direction` - the new direction
  + ### setScrollByBlock

    public void setScrollByBlock(boolean block)

    Sets the scrolling by block

    Parameters:
    :   `block` - whether or not to scroll by block
  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Invoked when an action occurs.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `e` - the event to be processed