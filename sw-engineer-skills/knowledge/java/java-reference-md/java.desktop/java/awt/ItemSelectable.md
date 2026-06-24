Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface ItemSelectable

All Known Subinterfaces:
:   `ButtonModel`

All Known Implementing Classes:
:   `AbstractButton`, `BasicArrowButton`, `Checkbox`, `CheckboxMenuItem`, `Choice`, `DefaultButtonModel`, `JButton`, `JCheckBox`, `JCheckBoxMenuItem`, `JComboBox`, `JMenu`, `JMenuItem`, `JRadioButton`, `JRadioButtonMenuItem`, `JToggleButton`, `JToggleButton.ToggleButtonModel`, `List`, `MetalComboBoxButton`, `MetalScrollButton`

---

public interface ItemSelectable

The interface for objects which contain a set of items for
which zero or more can be selected.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addItemListener(ItemListener l)`

  Adds a listener to receive item events when the state of an item is
  changed by the user.

  `Object[]`

  `getSelectedObjects()`

  Returns the selected items or `null` if no
  items are selected.

  `void`

  `removeItemListener(ItemListener l)`

  Removes an item listener.

* ## Method Details

  + ### getSelectedObjects

    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getSelectedObjects()

    Returns the selected items or `null` if no
    items are selected.

    Returns:
    :   the list of selected objects, or `null`
  + ### addItemListener

    void addItemListener([ItemListener](event/ItemListener.md "interface in java.awt.event") l)

    Adds a listener to receive item events when the state of an item is
    changed by the user. Item events are not sent when an item's
    state is set programmatically. If `l` is
    `null`, no exception is thrown and no action is performed.

    Parameters:
    :   `l` - the listener to receive events

    See Also:
    :   - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
  + ### removeItemListener

    void removeItemListener([ItemListener](event/ItemListener.md "interface in java.awt.event") l)

    Removes an item listener.
    If `l` is `null`,
    no exception is thrown and no action is performed.

    Parameters:
    :   `l` - the listener being removed

    See Also:
    :   - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")