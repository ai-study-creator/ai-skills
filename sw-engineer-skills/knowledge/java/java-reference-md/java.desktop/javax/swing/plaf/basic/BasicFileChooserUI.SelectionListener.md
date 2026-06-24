Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicFileChooserUI.SelectionListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicFileChooserUI.SelectionListener

All Implemented Interfaces:
:   `EventListener`, `ListSelectionListener`

Enclosing class:
:   `BasicFileChooserUI`

---

protected class BasicFileChooserUI.SelectionListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event")

A selection listener.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SelectionListener()`

  Constructs a `SelectionListener`.
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

  + ### SelectionListener

    protected SelectionListener()

    Constructs a `SelectionListener`.
* ## Method Details

  + ### valueChanged

    public void valueChanged([ListSelectionEvent](../../event/ListSelectionEvent.md "class in javax.swing.event") e)

    Called whenever the value of the selection changes.

    Specified by:
    :   `valueChanged` in interface `ListSelectionListener`

    Parameters:
    :   `e` - the event that characterizes the change.