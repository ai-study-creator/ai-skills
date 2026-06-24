Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface ComboBoxModel<E>

Type Parameters:
:   `E` - the type of the elements of this model

All Superinterfaces:
:   `ListModel<E>`

All Known Subinterfaces:
:   `MutableComboBoxModel<E>`

All Known Implementing Classes:
:   `DefaultComboBoxModel`, `MetalFileChooserUI.DirectoryComboBoxModel`, `MetalFileChooserUI.FilterComboBoxModel`

---

public interface ComboBoxModel<E>
extends [ListModel](ListModel.md "interface in javax.swing")<E>

A data model for a combo box. This interface extends `ListModel`
and adds the concept of a *selected item*. The selected item is generally
the item which is visible in the combo box display area.

The selected item may not necessarily be managed by the underlying
`ListModel`. This disjoint behavior allows for the temporary
storage and retrieval of a selected item in the model.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getSelectedItem()`

  Returns the selected item

  `void`

  `setSelectedItem(Object anItem)`

  Set the selected item.

  ### Methods inherited from interface javax.swing.[ListModel](ListModel.md "interface in javax.swing")

  `addListDataListener, getElementAt, getSize, removeListDataListener`

* ## Method Details

  + ### setSelectedItem

    void setSelectedItem([Object](../../../java.base/java/lang/Object.md "class in java.lang") anItem)

    Set the selected item. The implementation of this method should notify
    all registered `ListDataListener`s that the contents
    have changed.

    Parameters:
    :   `anItem` - the list object to select or `null`
        to clear the selection
  + ### getSelectedItem

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getSelectedItem()

    Returns the selected item

    Returns:
    :   The selected item or `null` if there is no selection