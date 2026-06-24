Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ToolTipManager.stillInsideTimerAction

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.ToolTipManager.stillInsideTimerAction

All Implemented Interfaces:
:   `ActionListener`, `EventListener`

Enclosing class:
:   `ToolTipManager`

---

protected class ToolTipManager.stillInsideTimerAction
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event")

Still inside timer action.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `stillInsideTimerAction()`

  Constructs a `stillInsideTimerAction`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  Invoked when an action occurs.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### stillInsideTimerAction

    protected stillInsideTimerAction()

    Constructs a `stillInsideTimerAction`.
* ## Method Details

  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    Invoked when an action occurs.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `e` - the event to be processed