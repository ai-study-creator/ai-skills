Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTabbedPane.ModelListener

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JTabbedPane.ModelListener

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `ChangeListener`

Enclosing class:
:   `JTabbedPane`

---

protected class JTabbedPane.ModelListener
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ChangeListener](event/ChangeListener.md "interface in javax.swing.event"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

We pass `ModelChanged` events along to the listeners with
the tabbedpane (instead of the model itself) as the event source.

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

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ModelListener

    protected ModelListener()

    Constructs a `ModelListener`.
* ## Method Details

  + ### stateChanged

    public void stateChanged([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ChangeListener`

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a ChangeEvent object