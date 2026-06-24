Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface ListModel<E>

Type Parameters:
:   `E` - the type of the elements of this model

All Known Subinterfaces:
:   `ComboBoxModel<E>`, `MutableComboBoxModel<E>`

All Known Implementing Classes:
:   `AbstractListModel`, `BasicDirectoryModel`, `DefaultComboBoxModel`, `DefaultListModel`, `MetalFileChooserUI.DirectoryComboBoxModel`, `MetalFileChooserUI.FilterComboBoxModel`

---

public interface ListModel<E>

This interface defines the methods components like JList use
to get the value of each cell in a list and the length of the list.
Logically the model is a vector, indices vary from 0 to
ListModel.getSize() - 1. Any change to the contents or
length of the data model must be reported to all of the
ListDataListeners.

Since:
:   1.2

See Also:
:   * [`JList`](JList.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addListDataListener(ListDataListener l)`

  Adds a listener to the list that's notified each time a change
  to the data model occurs.

  `E`

  `getElementAt(int index)`

  Returns the value at the specified index.

  `int`

  `getSize()`

  Returns the length of the list.

  `void`

  `removeListDataListener(ListDataListener l)`

  Removes a listener from the list that's notified each time a
  change to the data model occurs.

* ## Method Details

  + ### getSize

    int getSize()

    Returns the length of the list.

    Returns:
    :   the length of the list
  + ### getElementAt

    [E](ListModel.md "type parameter in ListModel") getElementAt(int index)

    Returns the value at the specified index.

    Parameters:
    :   `index` - the requested index

    Returns:
    :   the value at `index`
  + ### addListDataListener

    void addListDataListener([ListDataListener](event/ListDataListener.md "interface in javax.swing.event") l)

    Adds a listener to the list that's notified each time a change
    to the data model occurs.

    Parameters:
    :   `l` - the `ListDataListener` to be added
  + ### removeListDataListener

    void removeListDataListener([ListDataListener](event/ListDataListener.md "interface in javax.swing.event") l)

    Removes a listener from the list that's notified each time a
    change to the data model occurs.

    Parameters:
    :   `l` - the `ListDataListener` to be removed