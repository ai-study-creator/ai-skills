Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface MutableComboBoxModel<E>

Type Parameters:
:   `E` - the type of the elements of this model

All Superinterfaces:
:   `ComboBoxModel<E>`, `ListModel<E>`

All Known Implementing Classes:
:   `DefaultComboBoxModel`

---

public interface MutableComboBoxModel<E>
extends [ComboBoxModel](ComboBoxModel.md "interface in javax.swing")<E>

A mutable version of `ComboBoxModel`.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addElement(E item)`

  Adds an item at the end of the model.

  `void`

  `insertElementAt(E item,
  int index)`

  Adds an item at a specific index.

  `void`

  `removeElement(Object obj)`

  Removes an item from the model.

  `void`

  `removeElementAt(int index)`

  Removes an item at a specific index.

  ### Methods inherited from interface javax.swing.[ComboBoxModel](ComboBoxModel.md "interface in javax.swing")

  `getSelectedItem, setSelectedItem`

  ### Methods inherited from interface javax.swing.[ListModel](ListModel.md "interface in javax.swing")

  `addListDataListener, getElementAt, getSize, removeListDataListener`

* ## Method Details

  + ### addElement

    void addElement([E](MutableComboBoxModel.md "type parameter in MutableComboBoxModel") item)

    Adds an item at the end of the model. The implementation of this method
    should notify all registered `ListDataListener`s that the
    item has been added.

    Parameters:
    :   `item` - the item to be added
  + ### removeElement

    void removeElement([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Removes an item from the model. The implementation of this method should
    should notify all registered `ListDataListener`s that the
    item has been removed.

    Parameters:
    :   `obj` - the `Object` to be removed
  + ### insertElementAt

    void insertElementAt([E](MutableComboBoxModel.md "type parameter in MutableComboBoxModel") item,
    int index)

    Adds an item at a specific index. The implementation of this method
    should notify all registered `ListDataListener`s that the
    item has been added.

    Parameters:
    :   `item` - the item to be added
    :   `index` - location to add the object
  + ### removeElementAt

    void removeElementAt(int index)

    Removes an item at a specific index. The implementation of this method
    should notify all registered `ListDataListener`s that the
    item has been removed.

    Parameters:
    :   `index` - location of the item to be removed