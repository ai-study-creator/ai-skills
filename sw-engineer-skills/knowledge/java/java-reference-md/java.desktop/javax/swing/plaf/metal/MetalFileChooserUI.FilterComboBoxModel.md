Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalFileChooserUI.FilterComboBoxModel

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractListModel](../../AbstractListModel.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>

javax.swing.plaf.metal.MetalFileChooserUI.FilterComboBoxModel

All Implemented Interfaces:
:   `PropertyChangeListener`, `Serializable`, `EventListener`, `ComboBoxModel<Object>`, `ListModel<Object>`

Enclosing class:
:   `MetalFileChooserUI`

---

protected class MetalFileChooserUI.FilterComboBoxModel
extends [AbstractListModel](../../AbstractListModel.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>
implements [ComboBoxModel](../../ComboBoxModel.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>, [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Data model for a type-face selection combo-box.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected FileFilter[]`

  `filters`

  An array of file filters.

  ### Fields inherited from class javax.swing.[AbstractListModel](../../AbstractListModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FilterComboBoxModel()`

  Constructs an instance of `FilterComboBoxModel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `void`

  `setSelectedItem(Object filter)`

  Set the selected item.

  ### Methods inherited from class javax.swing.[AbstractListModel](../../AbstractListModel.md "class in javax.swing")

  `addListDataListener, fireContentsChanged, fireIntervalAdded, fireIntervalRemoved, getListDataListeners, getListeners, removeListDataListener`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[ListModel](../../ListModel.md "interface in javax.swing")

  `addListDataListener, removeListDataListener`

* ## Field Details

  + ### filters

    protected [FileFilter](../../filechooser/FileFilter.md "class in javax.swing.filechooser")[] filters

    An array of file filters.
* ## Constructor Details

  + ### FilterComboBoxModel

    protected FilterComboBoxModel()

    Constructs an instance of `FilterComboBoxModel`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### setSelectedItem

    public void setSelectedItem([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") filter)

    Description copied from interface: `ComboBoxModel`

    Set the selected item. The implementation of this method should notify
    all registered `ListDataListener`s that the contents
    have changed.

    Specified by:
    :   `setSelectedItem` in interface `ComboBoxModel<Object>`

    Parameters:
    :   `filter` - the list object to select or `null`
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