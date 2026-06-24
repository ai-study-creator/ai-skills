Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultComboBoxModel<E>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractListModel](AbstractListModel.md "class in javax.swing")<E>

javax.swing.DefaultComboBoxModel<E>

Type Parameters:
:   `E` - the type of the elements of this model

All Implemented Interfaces:
:   `Serializable`, `ComboBoxModel<E>`, `ListModel<E>`, `MutableComboBoxModel<E>`

---

public class DefaultComboBoxModel<E>
extends [AbstractListModel](AbstractListModel.md "class in javax.swing")<E>
implements [MutableComboBoxModel](MutableComboBoxModel.md "interface in javax.swing")<E>, [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The default model for combo boxes.

Since:
:   1.2

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractListModel](AbstractListModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultComboBoxModel()`

  Constructs an empty DefaultComboBoxModel object.

  `DefaultComboBoxModel(E[] items)`

  Constructs a DefaultComboBoxModel object initialized with
  an array of objects.

  `DefaultComboBoxModel(Vector<E> v)`

  Constructs a DefaultComboBoxModel object initialized with
  a vector.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAll(int index,
  Collection<? extends E> c)`

  Adds all of the elements present in the collection, starting
  from the specified index.

  `void`

  `addAll(Collection<? extends E> c)`

  Adds all of the elements present in the collection.

  `void`

  `addElement(E anObject)`

  Adds an item at the end of the model.

  `E`

  `getElementAt(int index)`

  Returns the value at the specified index.

  `int`

  `getIndexOf(Object anObject)`

  Returns the index-position of the specified object in the list.

  `Object`

  `getSelectedItem()`

  Returns the selected item

  `int`

  `getSize()`

  Returns the length of the list.

  `void`

  `insertElementAt(E anObject,
  int index)`

  Adds an item at a specific index.

  `void`

  `removeAllElements()`

  Empties the list.

  `void`

  `removeElement(Object anObject)`

  Removes an item from the model.

  `void`

  `removeElementAt(int index)`

  Removes an item at a specific index.

  `void`

  `setSelectedItem(Object anObject)`

  Set the value of the selected item.

  ### Methods inherited from class javax.swing.[AbstractListModel](AbstractListModel.md "class in javax.swing")

  `addListDataListener, fireContentsChanged, fireIntervalAdded, fireIntervalRemoved, getListDataListeners, getListeners, removeListDataListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[ListModel](ListModel.md "interface in javax.swing")

  `addListDataListener, removeListDataListener`

* ## Constructor Details

  + ### DefaultComboBoxModel

    public DefaultComboBoxModel()

    Constructs an empty DefaultComboBoxModel object.
  + ### DefaultComboBoxModel

    public DefaultComboBoxModel([E](DefaultComboBoxModel.md "type parameter in DefaultComboBoxModel")[] items)

    Constructs a DefaultComboBoxModel object initialized with
    an array of objects.

    Parameters:
    :   `items` - an array of Object objects
  + ### DefaultComboBoxModel

    public DefaultComboBoxModel([Vector](../../../java.base/java/util/Vector.md "class in java.util")<[E](DefaultComboBoxModel.md "type parameter in DefaultComboBoxModel")> v)

    Constructs a DefaultComboBoxModel object initialized with
    a vector.

    Parameters:
    :   `v` - a Vector object ...
* ## Method Details

  + ### setSelectedItem

    public void setSelectedItem([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Set the value of the selected item. The selected item may be null.

    Specified by:
    :   `setSelectedItem` in interface `ComboBoxModel<E>`

    Parameters:
    :   `anObject` - The combo box value or null for no selection.
  + ### getSelectedItem

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getSelectedItem()

    Description copied from interface: `ComboBoxModel`

    Returns the selected item

    Specified by:
    :   `getSelectedItem` in interface `ComboBoxModel<E>`

    Returns:
    :   The selected item or `null` if there is no selection
  + ### getSize

    public int getSize()

    Description copied from interface: `ListModel`

    Returns the length of the list.

    Specified by:
    :   `getSize` in interface `ListModel<E>`

    Returns:
    :   the length of the list
  + ### getElementAt

    public [E](DefaultComboBoxModel.md "type parameter in DefaultComboBoxModel") getElementAt(int index)

    Description copied from interface: `ListModel`

    Returns the value at the specified index.

    Specified by:
    :   `getElementAt` in interface `ListModel<E>`

    Parameters:
    :   `index` - the requested index

    Returns:
    :   the value at `index`
  + ### getIndexOf

    public int getIndexOf([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Returns the index-position of the specified object in the list.

    Parameters:
    :   `anObject` - the object to return the index of

    Returns:
    :   an int representing the index position, where 0 is
        the first position
  + ### addElement

    public void addElement([E](DefaultComboBoxModel.md "type parameter in DefaultComboBoxModel") anObject)

    Description copied from interface: `MutableComboBoxModel`

    Adds an item at the end of the model. The implementation of this method
    should notify all registered `ListDataListener`s that the
    item has been added.

    Specified by:
    :   `addElement` in interface `MutableComboBoxModel<E>`

    Parameters:
    :   `anObject` - the item to be added
  + ### insertElementAt

    public void insertElementAt([E](DefaultComboBoxModel.md "type parameter in DefaultComboBoxModel") anObject,
    int index)

    Description copied from interface: `MutableComboBoxModel`

    Adds an item at a specific index. The implementation of this method
    should notify all registered `ListDataListener`s that the
    item has been added.

    Specified by:
    :   `insertElementAt` in interface `MutableComboBoxModel<E>`

    Parameters:
    :   `anObject` - the item to be added
    :   `index` - location to add the object
  + ### removeElementAt

    public void removeElementAt(int index)

    Description copied from interface: `MutableComboBoxModel`

    Removes an item at a specific index. The implementation of this method
    should notify all registered `ListDataListener`s that the
    item has been removed.

    Specified by:
    :   `removeElementAt` in interface `MutableComboBoxModel<E>`

    Parameters:
    :   `index` - location of the item to be removed
  + ### removeElement

    public void removeElement([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Description copied from interface: `MutableComboBoxModel`

    Removes an item from the model. The implementation of this method should
    should notify all registered `ListDataListener`s that the
    item has been removed.

    Specified by:
    :   `removeElement` in interface `MutableComboBoxModel<E>`

    Parameters:
    :   `anObject` - the `Object` to be removed
  + ### removeAllElements

    public void removeAllElements()

    Empties the list.
  + ### addAll

    public void addAll([Collection](../../../java.base/java/util/Collection.md "interface in java.util")<? extends [E](DefaultComboBoxModel.md "type parameter in DefaultComboBoxModel")> c)

    Adds all of the elements present in the collection.

    Parameters:
    :   `c` - the collection which contains the elements to add

    Throws:
    :   `NullPointerException` - if `c` is null
  + ### addAll

    public void addAll(int index,
    [Collection](../../../java.base/java/util/Collection.md "interface in java.util")<? extends [E](DefaultComboBoxModel.md "type parameter in DefaultComboBoxModel")> c)

    Adds all of the elements present in the collection, starting
    from the specified index.

    Parameters:
    :   `index` - index at which to insert the first element from the
        specified collection
    :   `c` - the collection which contains the elements to add

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if `index` does not
        fall within the range of number of elements currently held
    :   `NullPointerException` - if `c` is null