Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboPopup.ListSelectionHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicComboPopup.ListSelectionHandler

All Implemented Interfaces:
:   `EventListener`, `ListSelectionListener`

Enclosing class:
:   `BasicComboPopup`

---

protected class BasicComboPopup.ListSelectionHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event")

As of Java 2 platform v 1.4, this class is now obsolete, doesn't do anything, and
is only included for backwards API compatibility. Do not call or
override.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ListSelectionHandler()`

  Constructs a `ListSelectionHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `valueChanged(ListSelectionEvent e)`

  Called whenever the value of the selection changes.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ListSelectionHandler

    protected ListSelectionHandler()

    Constructs a `ListSelectionHandler`.
* ## Method Details

  + ### valueChanged

    public void valueChanged([ListSelectionEvent](../../event/ListSelectionEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ListSelectionListener`

    Called whenever the value of the selection changes.

    Specified by:
    :   `valueChanged` in interface `ListSelectionListener`

    Parameters:
    :   `e` - the event that characterizes the change.