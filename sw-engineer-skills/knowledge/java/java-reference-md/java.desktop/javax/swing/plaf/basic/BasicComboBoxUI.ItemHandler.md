Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboBoxUI.ItemHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicComboBoxUI.ItemHandler

All Implemented Interfaces:
:   `ItemListener`, `EventListener`

Enclosing class:
:   `BasicComboBoxUI`

---

public class BasicComboBoxUI.ItemHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ItemListener](../../../../java/awt/event/ItemListener.md "interface in java.awt.event")

This listener watches for changes to the selection in the
combo box.

This public inner class should be treated as protected.
Instantiate it only within subclasses of
`BasicComboBoxUI`.

See Also:
:   * [`BasicComboBoxUI.createItemListener()`](BasicComboBoxUI.md#createItemListener())

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ItemHandler()`

  Constructs a `ItemHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `itemStateChanged(ItemEvent e)`

  Invoked when an item has been selected or deselected by the user.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ItemHandler

    public ItemHandler()

    Constructs a `ItemHandler`.
* ## Method Details

  + ### itemStateChanged

    public void itemStateChanged([ItemEvent](../../../../java/awt/event/ItemEvent.md "class in java.awt.event") e)

    Description copied from interface: `ItemListener`

    Invoked when an item has been selected or deselected by the user.
    The code written for this method performs the operations
    that need to occur when an item is selected (or deselected).

    Specified by:
    :   `itemStateChanged` in interface `ItemListener`

    Parameters:
    :   `e` - the event to be processed