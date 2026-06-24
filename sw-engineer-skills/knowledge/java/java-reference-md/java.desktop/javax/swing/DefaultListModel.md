Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultListModel<E>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractListModel](AbstractListModel.md "class in javax.swing")<E>

javax.swing.DefaultListModel<E>

Type Parameters:
:   `E` - the type of the elements of this model

All Implemented Interfaces:
:   `Serializable`, `ListModel<E>`

---

public class DefaultListModel<E>
extends [AbstractListModel](AbstractListModel.md "class in javax.swing")<E>

This class loosely implements the `java.util.Vector`
API, in that it implements the 1.1.x version of
`java.util.Vector`, has no collection class support,
and notifies the `ListDataListener`s when changes occur.
Presently it delegates to a `Vector`,
in a future release it will be a real Collection implementation.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractListModel](AbstractListModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultListModel()`

  Constructs a `DefaultListModel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(int index,
  E element)`

  Inserts the specified element at the specified position in this list.

  `void`

  `addAll(int index,
  Collection<? extends E> c)`

  Adds all of the elements present in the collection, starting
  from the specified index.

  `void`

  `addAll(Collection<? extends E> c)`

  Adds all of the elements present in the collection to the list.

  `void`

  `addElement(E element)`

  Adds the specified component to the end of this list.

  `int`

  `capacity()`

  Returns the current capacity of this list.

  `void`

  `clear()`

  Removes all of the elements from this list.

  `boolean`

  `contains(Object elem)`

  Tests whether the specified object is a component in this list.

  `void`

  `copyInto(Object[] anArray)`

  Copies the components of this list into the specified array.

  `E`

  `elementAt(int index)`

  Returns the component at the specified index.

  `Enumeration<E>`

  `elements()`

  Returns an enumeration of the components of this list.

  `void`

  `ensureCapacity(int minCapacity)`

  Increases the capacity of this list, if necessary, to ensure
  that it can hold at least the number of components specified by
  the minimum capacity argument.

  `E`

  `firstElement()`

  Returns the first component of this list.

  `E`

  `get(int index)`

  Returns the element at the specified position in this list.

  `E`

  `getElementAt(int index)`

  Returns the component at the specified index.

  `int`

  `getSize()`

  Returns the number of components in this list.

  `int`

  `indexOf(Object elem)`

  Searches for the first occurrence of `elem`.

  `int`

  `indexOf(Object elem,
  int index)`

  Searches for the first occurrence of `elem`, beginning
  the search at `index`.

  `void`

  `insertElementAt(E element,
  int index)`

  Inserts the specified element as a component in this list at the
  specified `index`.

  `boolean`

  `isEmpty()`

  Tests whether this list has any components.

  `E`

  `lastElement()`

  Returns the last component of the list.

  `int`

  `lastIndexOf(Object elem)`

  Returns the index of the last occurrence of `elem`.

  `int`

  `lastIndexOf(Object elem,
  int index)`

  Searches backwards for `elem`, starting from the
  specified index, and returns an index to it.

  `E`

  `remove(int index)`

  Removes the element at the specified position in this list.

  `void`

  `removeAllElements()`

  Removes all components from this list and sets its size to zero.

  `boolean`

  `removeElement(Object obj)`

  Removes the first (lowest-indexed) occurrence of the argument
  from this list.

  `void`

  `removeElementAt(int index)`

  Deletes the component at the specified index.

  `void`

  `removeRange(int fromIndex,
  int toIndex)`

  Deletes the components at the specified range of indexes.

  `E`

  `set(int index,
  E element)`

  Replaces the element at the specified position in this list with the
  specified element.

  `void`

  `setElementAt(E element,
  int index)`

  Sets the component at the specified `index` of this
  list to be the specified element.

  `void`

  `setSize(int newSize)`

  Sets the size of this list.

  `int`

  `size()`

  Returns the number of components in this list.

  `Object[]`

  `toArray()`

  Returns an array containing all of the elements in this list in the
  correct order.

  `String`

  `toString()`

  Returns a string that displays and identifies this
  object's properties.

  `void`

  `trimToSize()`

  Trims the capacity of this list to be the list's current size.

  ### Methods inherited from class javax.swing.[AbstractListModel](AbstractListModel.md "class in javax.swing")

  `addListDataListener, fireContentsChanged, fireIntervalAdded, fireIntervalRemoved, getListDataListeners, getListeners, removeListDataListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DefaultListModel

    public DefaultListModel()

    Constructs a `DefaultListModel`.
* ## Method Details

  + ### getSize

    public int getSize()

    Returns the number of components in this list.

    This method is identical to `size`, which implements the
    `List` interface defined in the 1.2 Collections framework.
    This method exists in conjunction with `setSize` so that
    `size` is identifiable as a JavaBean property.

    Returns:
    :   the number of components in this list

    See Also:
    :   - [`size()`](#size())
  + ### getElementAt

    public [E](DefaultListModel.md "type parameter in DefaultListModel") getElementAt(int index)

    Returns the component at the specified index.
    > **Note:** Although this method is not deprecated, the preferred
    > method to use is `get(int)`, which implements the `List`
    > interface defined in the 1.2 Collections framework.

    Parameters:
    :   `index` - an index into this list

    Returns:
    :   the component at the specified index

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the `index`
        is negative or greater than the current size of this
        list

    See Also:
    :   - [`get(int)`](#get(int))
  + ### copyInto

    public void copyInto([Object](../../../java.base/java/lang/Object.md "class in java.lang")[] anArray)

    Copies the components of this list into the specified array.
    The array must be big enough to hold all the objects in this list,
    else an `IndexOutOfBoundsException` is thrown.

    Parameters:
    :   `anArray` - the array into which the components get copied

    See Also:
    :   - [`Vector.copyInto(Object[])`](../../../java.base/java/util/Vector.md#copyInto(java.lang.Object%5B%5D))
  + ### trimToSize

    public void trimToSize()

    Trims the capacity of this list to be the list's current size.

    See Also:
    :   - [`Vector.trimToSize()`](../../../java.base/java/util/Vector.md#trimToSize())
  + ### ensureCapacity

    public void ensureCapacity(int minCapacity)

    Increases the capacity of this list, if necessary, to ensure
    that it can hold at least the number of components specified by
    the minimum capacity argument.

    Parameters:
    :   `minCapacity` - the desired minimum capacity

    See Also:
    :   - [`Vector.ensureCapacity(int)`](../../../java.base/java/util/Vector.md#ensureCapacity(int))
  + ### setSize

    public void setSize(int newSize)

    Sets the size of this list.

    Parameters:
    :   `newSize` - the new size of this list

    See Also:
    :   - [`Vector.setSize(int)`](../../../java.base/java/util/Vector.md#setSize(int))
  + ### capacity

    public int capacity()

    Returns the current capacity of this list.

    Returns:
    :   the current capacity

    See Also:
    :   - [`Vector.capacity()`](../../../java.base/java/util/Vector.md#capacity())
  + ### size

    public int size()

    Returns the number of components in this list.

    Returns:
    :   the number of components in this list

    See Also:
    :   - [`Vector.size()`](../../../java.base/java/util/Vector.md#size())
  + ### isEmpty

    public boolean isEmpty()

    Tests whether this list has any components.

    Returns:
    :   `true` if and only if this list has
        no components, that is, its size is zero;
        `false` otherwise

    See Also:
    :   - [`Vector.isEmpty()`](../../../java.base/java/util/Vector.md#isEmpty())
  + ### elements

    public [Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<[E](DefaultListModel.md "type parameter in DefaultListModel")> elements()

    Returns an enumeration of the components of this list.

    Returns:
    :   an enumeration of the components of this list

    See Also:
    :   - [`Vector.elements()`](../../../java.base/java/util/Vector.md#elements())
  + ### contains

    public boolean contains([Object](../../../java.base/java/lang/Object.md "class in java.lang") elem)

    Tests whether the specified object is a component in this list.

    Parameters:
    :   `elem` - an object

    Returns:
    :   `true` if the specified object
        is the same as a component in this list

    See Also:
    :   - [`Vector.contains(Object)`](../../../java.base/java/util/Vector.md#contains(java.lang.Object))
  + ### indexOf

    public int indexOf([Object](../../../java.base/java/lang/Object.md "class in java.lang") elem)

    Searches for the first occurrence of `elem`.

    Parameters:
    :   `elem` - an object

    Returns:
    :   the index of the first occurrence of the argument in this
        list; returns `-1` if the object is not found

    See Also:
    :   - [`Vector.indexOf(Object)`](../../../java.base/java/util/Vector.md#indexOf(java.lang.Object))
  + ### indexOf

    public int indexOf([Object](../../../java.base/java/lang/Object.md "class in java.lang") elem,
    int index)

    Searches for the first occurrence of `elem`, beginning
    the search at `index`.

    Parameters:
    :   `elem` - the desired component
    :   `index` - the index from which to begin searching

    Returns:
    :   the index where the first occurrence of `elem`
        is found after `index`; returns `-1`
        if the `elem` is not found in the list

    See Also:
    :   - [`Vector.indexOf(Object,int)`](../../../java.base/java/util/Vector.md#indexOf(java.lang.Object,int))
  + ### lastIndexOf

    public int lastIndexOf([Object](../../../java.base/java/lang/Object.md "class in java.lang") elem)

    Returns the index of the last occurrence of `elem`.

    Parameters:
    :   `elem` - the desired component

    Returns:
    :   the index of the last occurrence of `elem`
        in the list; returns `elem` if the object is not found

    See Also:
    :   - [`Vector.lastIndexOf(Object)`](../../../java.base/java/util/Vector.md#lastIndexOf(java.lang.Object))
  + ### lastIndexOf

    public int lastIndexOf([Object](../../../java.base/java/lang/Object.md "class in java.lang") elem,
    int index)

    Searches backwards for `elem`, starting from the
    specified index, and returns an index to it.

    Parameters:
    :   `elem` - the desired component
    :   `index` - the index to start searching from

    Returns:
    :   the index of the last occurrence of the `elem`
        in this list at position less than `index`;
        returns `-1` if the object is not found

    See Also:
    :   - [`Vector.lastIndexOf(Object,int)`](../../../java.base/java/util/Vector.md#lastIndexOf(java.lang.Object,int))
  + ### elementAt

    public [E](DefaultListModel.md "type parameter in DefaultListModel") elementAt(int index)

    Returns the component at the specified index.
    > **Note:** Although this method is not deprecated, the preferred
    > method to use is `get(int)`, which implements the
    > `List` interface defined in the 1.2 Collections framework.

    Parameters:
    :   `index` - an index into this list

    Returns:
    :   the component at the specified index

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index
        is negative or not less than the size of the list

    See Also:
    :   - [`get(int)`](#get(int))
        - [`Vector.elementAt(int)`](../../../java.base/java/util/Vector.md#elementAt(int))
  + ### firstElement

    public [E](DefaultListModel.md "type parameter in DefaultListModel") firstElement()

    Returns the first component of this list.

    Returns:
    :   the first component of this list

    Throws:
    :   `NoSuchElementException` - if this
        vector has no components

    See Also:
    :   - [`Vector.firstElement()`](../../../java.base/java/util/Vector.md#firstElement())
  + ### lastElement

    public [E](DefaultListModel.md "type parameter in DefaultListModel") lastElement()

    Returns the last component of the list.

    Returns:
    :   the last component of the list

    Throws:
    :   `NoSuchElementException` - if this vector
        has no components

    See Also:
    :   - [`Vector.lastElement()`](../../../java.base/java/util/Vector.md#lastElement())
  + ### setElementAt

    public void setElementAt([E](DefaultListModel.md "type parameter in DefaultListModel") element,
    int index)

    Sets the component at the specified `index` of this
    list to be the specified element. The previous component at that
    position is discarded.
    > **Note:** Although this method is not deprecated, the preferred
    > method to use is `set(int,Object)`, which implements the
    > `List` interface defined in the 1.2 Collections framework.

    Parameters:
    :   `element` - what the component is to be set to
    :   `index` - the specified index

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index is invalid

    See Also:
    :   - [`set(int,Object)`](#set(int,E))
        - [`Vector.setElementAt(Object,int)`](../../../java.base/java/util/Vector.md#setElementAt(E,int))
  + ### removeElementAt

    public void removeElementAt(int index)

    Deletes the component at the specified index.
    > **Note:** Although this method is not deprecated, the preferred
    > method to use is `remove(int)`, which implements the
    > `List` interface defined in the 1.2 Collections framework.

    Parameters:
    :   `index` - the index of the object to remove

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index is invalid

    See Also:
    :   - [`remove(int)`](#remove(int))
        - [`Vector.removeElementAt(int)`](../../../java.base/java/util/Vector.md#removeElementAt(int))
  + ### insertElementAt

    public void insertElementAt([E](DefaultListModel.md "type parameter in DefaultListModel") element,
    int index)

    Inserts the specified element as a component in this list at the
    specified `index`.
    > **Note:** Although this method is not deprecated, the preferred
    > method to use is `add(int,Object)`, which implements the
    > `List` interface defined in the 1.2 Collections framework.

    Parameters:
    :   `element` - the component to insert
    :   `index` - where to insert the new component

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index was invalid

    See Also:
    :   - [`add(int,Object)`](#add(int,E))
        - [`Vector.insertElementAt(Object,int)`](../../../java.base/java/util/Vector.md#insertElementAt(E,int))
  + ### addElement

    public void addElement([E](DefaultListModel.md "type parameter in DefaultListModel") element)

    Adds the specified component to the end of this list.

    Parameters:
    :   `element` - the component to be added

    See Also:
    :   - [`Vector.addElement(Object)`](../../../java.base/java/util/Vector.md#addElement(E))
  + ### removeElement

    public boolean removeElement([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Removes the first (lowest-indexed) occurrence of the argument
    from this list.

    Parameters:
    :   `obj` - the component to be removed

    Returns:
    :   `true` if the argument was a component of this
        list; `false` otherwise

    See Also:
    :   - [`Vector.removeElement(Object)`](../../../java.base/java/util/Vector.md#removeElement(java.lang.Object))
  + ### removeAllElements

    public void removeAllElements()

    Removes all components from this list and sets its size to zero.
    > **Note:** Although this method is not deprecated, the preferred
    > method to use is `clear`, which implements the
    > `List` interface defined in the 1.2 Collections framework.

    See Also:
    :   - [`clear()`](#clear())
        - [`Vector.removeAllElements()`](../../../java.base/java/util/Vector.md#removeAllElements())
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that displays and identifies this
    object's properties.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this object
  + ### toArray

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] toArray()

    Returns an array containing all of the elements in this list in the
    correct order.

    Returns:
    :   an array containing the elements of the list

    See Also:
    :   - [`Vector.toArray()`](../../../java.base/java/util/Vector.md#toArray())
  + ### get

    public [E](DefaultListModel.md "type parameter in DefaultListModel") get(int index)

    Returns the element at the specified position in this list.

    Parameters:
    :   `index` - index of element to return

    Returns:
    :   the element at the specified position in this list

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index is out of range
        (`index &lt; 0 || index &gt;= size()`)
  + ### set

    public [E](DefaultListModel.md "type parameter in DefaultListModel") set(int index,
    [E](DefaultListModel.md "type parameter in DefaultListModel") element)

    Replaces the element at the specified position in this list with the
    specified element.

    Parameters:
    :   `index` - index of element to replace
    :   `element` - element to be stored at the specified position

    Returns:
    :   the element previously at the specified position

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index is out of range
        (`index &lt; 0 || index &gt;= size()`)
  + ### add

    public void add(int index,
    [E](DefaultListModel.md "type parameter in DefaultListModel") element)

    Inserts the specified element at the specified position in this list.

    Parameters:
    :   `index` - index at which the specified element is to be inserted
    :   `element` - element to be inserted

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index is out of range
        (`index &lt; 0 || index &gt; size()`)
  + ### remove

    public [E](DefaultListModel.md "type parameter in DefaultListModel") remove(int index)

    Removes the element at the specified position in this list.
    Returns the element that was removed from the list

    Parameters:
    :   `index` - the index of the element to removed

    Returns:
    :   the element previously at the specified position

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index is out of range
        (`index &lt; 0 || index &gt;= size()`)
  + ### clear

    public void clear()

    Removes all of the elements from this list. The list will
    be empty after this call returns (unless it throws an exception).
  + ### removeRange

    public void removeRange(int fromIndex,
    int toIndex)

    Deletes the components at the specified range of indexes.
    The removal is inclusive, so specifying a range of (1,5)
    removes the component at index 1 and the component at index 5,
    as well as all components in between.

    Parameters:
    :   `fromIndex` - the index of the lower end of the range
    :   `toIndex` - the index of the upper end of the range

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the index was invalid
    :   `IllegalArgumentException` - if `fromIndex &gt; toIndex`

    See Also:
    :   - [`remove(int)`](#remove(int))
  + ### addAll

    public void addAll([Collection](../../../java.base/java/util/Collection.md "interface in java.util")<? extends [E](DefaultListModel.md "type parameter in DefaultListModel")> c)

    Adds all of the elements present in the collection to the list.

    Parameters:
    :   `c` - the collection which contains the elements to add

    Throws:
    :   `NullPointerException` - if `c` is null
  + ### addAll

    public void addAll(int index,
    [Collection](../../../java.base/java/util/Collection.md "interface in java.util")<? extends [E](DefaultListModel.md "type parameter in DefaultListModel")> c)

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