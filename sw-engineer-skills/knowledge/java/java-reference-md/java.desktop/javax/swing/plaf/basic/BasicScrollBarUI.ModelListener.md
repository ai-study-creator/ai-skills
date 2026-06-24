Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollBarUI.ModelListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicScrollBarUI.ModelListener

All Implemented Interfaces:
:   `EventListener`, `ChangeListener`

Enclosing class:
:   `BasicScrollBarUI`

---

protected class BasicScrollBarUI.ModelListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event")

A listener to listen for model changes.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ModelListener()`

  Constructs a `ModelListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `stateChanged(ChangeEvent e)`

  Invoked when the target of the listener has changed its state.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ModelListener

    protected ModelListener()

    Constructs a `ModelListener`.
* ## Method Details

  + ### stateChanged

    public void stateChanged([ChangeEvent](../../event/ChangeEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ChangeListener`

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a ChangeEvent object