Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.ComponentHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.ComponentAdapter](../../../../java/awt/event/ComponentAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicTreeUI.ComponentHandler

All Implemented Interfaces:
:   `ActionListener`, `ComponentListener`, `EventListener`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.ComponentHandler
extends [ComponentAdapter](../../../../java/awt/event/ComponentAdapter.md "class in java.awt.event")
implements [ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event")

Updates the preferred size when scrolling (if necessary).

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JScrollBar`

  `scrollBar`

  ScrollBar that is being adjusted.

  `protected Timer`

  `timer`

  Timer used when inside a scrollpane and the scrollbar is
  adjusting.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ComponentHandler()`

  Constructs a `ComponentHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent ae)`

  Public as a result of Timer.

  `void`

  `componentMoved(ComponentEvent e)`

  Invoked when the component's position changes.

  `protected JScrollPane`

  `getScrollPane()`

  Returns the `JScrollPane` housing the `JTree`,
  or null if one isn't found.

  `protected void`

  `startTimer()`

  Creates, if necessary, and starts a Timer to check if need to
  resize the bounds.

  ### Methods inherited from class java.awt.event.[ComponentAdapter](../../../../java/awt/event/ComponentAdapter.md "class in java.awt.event")

  `componentHidden, componentResized, componentShown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### timer

    protected [Timer](../../Timer.md "class in javax.swing") timer

    Timer used when inside a scrollpane and the scrollbar is
    adjusting.
  + ### scrollBar

    protected [JScrollBar](../../JScrollBar.md "class in javax.swing") scrollBar

    ScrollBar that is being adjusted.
* ## Constructor Details

  + ### ComponentHandler

    public ComponentHandler()

    Constructs a `ComponentHandler`.
* ## Method Details

  + ### componentMoved

    public void componentMoved([ComponentEvent](../../../../java/awt/event/ComponentEvent.md "class in java.awt.event") e)

    Description copied from class: `ComponentAdapter`

    Invoked when the component's position changes.

    Specified by:
    :   `componentMoved` in interface `ComponentListener`

    Overrides:
    :   `componentMoved` in class `ComponentAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### startTimer

    protected void startTimer()

    Creates, if necessary, and starts a Timer to check if need to
    resize the bounds.
  + ### getScrollPane

    protected [JScrollPane](../../JScrollPane.md "class in javax.swing") getScrollPane()

    Returns the `JScrollPane` housing the `JTree`,
    or null if one isn't found.

    Returns:
    :   the `JScrollPane` housing the `JTree`
  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") ae)

    Public as a result of Timer. If the scrollBar is null, or
    not adjusting, this stops the timer and updates the sizing.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `ae` - the event to be processed