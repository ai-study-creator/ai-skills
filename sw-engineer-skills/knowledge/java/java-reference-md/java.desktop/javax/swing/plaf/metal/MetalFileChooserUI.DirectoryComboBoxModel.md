Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalFileChooserUI.DirectoryComboBoxModel

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractListModel](../../AbstractListModel.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>

javax.swing.plaf.metal.MetalFileChooserUI.DirectoryComboBoxModel

All Implemented Interfaces:
:   `Serializable`, `ComboBoxModel<Object>`, `ListModel<Object>`

Enclosing class:
:   `MetalFileChooserUI`

---

protected class MetalFileChooserUI.DirectoryComboBoxModel
extends [AbstractListModel](../../AbstractListModel.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>
implements [ComboBoxModel](../../ComboBoxModel.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>

Data model for a type-face selection combo-box.

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractListModel](../../AbstractListModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DirectoryComboBoxModel()`

  Constructs an instance of `DirectoryComboBoxModel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDepth(int i)`

  Returns the depth of `i`-th file.

  `Object`

  `getElementAt(int index)`

  Returns the value at the specified index.

  `Object`

  `getSelectedItem()`

  Returns the selected item

  `int`

  `getSize()`

  Returns the length of the list.

  `void`

  `setSelectedItem(Object selectedDirectory)`

  Set the selected item.

  ### Methods inherited from class javax.swing.[AbstractListModel](../../AbstractListModel.md "class in javax.swing")

  `addListDataListener, fireContentsChanged, fireIntervalAdded, fireIntervalRemoved, getListDataListeners, getListeners, removeListDataListener`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[ListModel](../../ListModel.md "interface in javax.swing")

  `addListDataListener, removeListDataListener`

* ## Constructor Details

  + ### DirectoryComboBoxModel

    public DirectoryComboBoxModel()

    Constructs an instance of `DirectoryComboBoxModel`.
* ## Method Details

  + ### getDepth

    public int getDepth(int i)

    Returns the depth of `i`-th file.

    Parameters:
    :   `i` - an index

    Returns:
    :   the depth of `i`-th file
  + ### setSelectedItem

    public void setSelectedItem([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") selectedDirectory)

    Description copied from interface: `ComboBoxModel`

    Set the selected item. The implementation of this method should notify
    all registered `ListDataListener`s that the contents
    have changed.

    Specified by:
    :   `setSelectedItem` in interface `ComboBoxModel<Object>`

    Parameters:
    :   `selectedDirectory` - the list object to select or `null`
        to clear the selection
  + ### getSelectedItem

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getSelectedItem()

    Description copied from interface: `ComboBoxModel`

    Returns the selected item

    Specified by:
    :   `getSelectedItem` in interface `ComboBoxModel<Object>`

    Returns:
    :   The selected item or `null` if there is no selection
  + ### getSize

    public int getSize()

    Description copied from interface: `ListModel`

    Returns the length of the list.

    Specified by:
    :   `getSize` in interface `ListModel<Object>`

    Returns:
    :   the length of the list
  + ### getElementAt

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getElementAt(int index)

    Description copied from interface: `ListModel`

    Returns the value at the specified index.

    Specified by:
    :   `getElementAt` in interface `ListModel<Object>`

    Parameters:
    :   `index` - the requested index

    Returns:
    :   the value at `index`