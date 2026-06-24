Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class AbstractButton.ButtonChangeListener

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.AbstractButton.ButtonChangeListener

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `ChangeListener`

Enclosing class:
:   `AbstractButton`

---

protected class AbstractButton.ButtonChangeListener
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ChangeListener](event/ChangeListener.md "interface in javax.swing.event"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Extends `ChangeListener` to be serializable.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

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

* ## Method Details

  + ### stateChanged

    public void stateChanged([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ChangeListener`

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a ChangeEvent object