Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface ItemListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicComboBoxUI.ItemHandler`, `BasicComboPopup.ItemHandler`, `Checkbox.AccessibleAWTCheckbox`, `DefaultCellEditor.EditorDelegate`, `JCheckBox.AccessibleJCheckBox`, `JRadioButton.AccessibleJRadioButton`, `JToggleButton.AccessibleJToggleButton`, `List.AccessibleAWTList`

---

public interface ItemListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving item events.
The class that is interested in processing an item event
implements this interface. The object created with that
class is then registered with a component using the
component's `addItemListener` method. When an
item-selection event occurs, the listener object's
`itemStateChanged` method is invoked.

Since:
:   1.1

See Also:
:   * [`ItemSelectable`](../ItemSelectable.md "interface in java.awt")
    * [`ItemEvent`](ItemEvent.md "class in java.awt.event")
    * [Tutorial: Writing an Item Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/itemlistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `itemStateChanged(ItemEvent e)`

  Invoked when an item has been selected or deselected by the user.

* ## Method Details

  + ### itemStateChanged

    void itemStateChanged([ItemEvent](ItemEvent.md "class in java.awt.event") e)

    Invoked when an item has been selected or deselected by the user.
    The code written for this method performs the operations
    that need to occur when an item is selected (or deselected).

    Parameters:
    :   `e` - the event to be processed