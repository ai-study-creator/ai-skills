Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class AttributeList

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.AbstractCollection](../../../java.base/java/util/AbstractCollection.md "class in java.util")<[Object](../../../java.base/java/lang/Object.md "class in java.lang")>

[java.util.AbstractList](../../../java.base/java/util/AbstractList.md "class in java.util")<[Object](../../../java.base/java/lang/Object.md "class in java.lang")>

[java.util.ArrayList](../../../java.base/java/util/ArrayList.md "class in java.util")<[Object](../../../java.base/java/lang/Object.md "class in java.lang")>

javax.management.AttributeList

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Iterable<Object>`, `Collection<Object>`, `List<Object>`, `RandomAccess`, `SequencedCollection<Object>`

---

public class AttributeList
extends [ArrayList](../../../java.base/java/util/ArrayList.md "class in java.util")<[Object](../../../java.base/java/lang/Object.md "class in java.lang")>

Represents a list of values for attributes of an MBean. See the
[`getAttributes`](MBeanServerConnection.md#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D)) and
[`setAttributes`](MBeanServerConnection.md#setAttributes(javax.management.ObjectName,javax.management.AttributeList)) methods of
[`MBeanServer`](MBeanServer.md "interface in javax.management") and [`MBeanServerConnection`](MBeanServerConnection.md "interface in javax.management").

For compatibility reasons, it is possible, though
highly discouraged, to add objects to an `AttributeList` that are
not instances of `Attribute`. However, an `AttributeList`
can be made *type-safe*, which means that an attempt to add
an object that is not an `Attribute` will produce an `IllegalArgumentException`. An `AttributeList` becomes type-safe
when the method [`asList()`](#asList()) is called on it.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.AttributeList)

* ## Field Summary

  ### Fields inherited from class java.util.[AbstractList](../../../java.base/java/util/AbstractList.md "class in java.util")

  `modCount`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeList()`

  Constructs an empty `AttributeList`.

  `AttributeList(int initialCapacity)`

  Constructs an empty `AttributeList` with
  the initial capacity specified.

  `AttributeList(List<Attribute> list)`

  Constructs an `AttributeList` containing the elements of the
  `List` specified, in the order in which they are returned by
  the `List`'s iterator.

  `AttributeList(AttributeList list)`

  Constructs an `AttributeList` containing the
  elements of the `AttributeList` specified, in the
  order in which they are returned by the
  `AttributeList`'s iterator.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(int index,
  Object element)`

  Inserts the specified element at the specified position in this
  list.

  `void`

  `add(int index,
  Attribute object)`

  Inserts the attribute specified as an element at the position specified.

  `boolean`

  `add(Object element)`

  Appends the specified element to the end of this list.

  `void`

  `add(Attribute object)`

  Adds the `Attribute` specified as the last element of the list.

  `boolean`

  `addAll(int index,
  Collection<?> c)`

  Inserts all of the elements in the specified collection into this
  list, starting at the specified position.

  `boolean`

  `addAll(int index,
  AttributeList list)`

  Inserts all of the elements in the `AttributeList` specified
  into this list, starting at the specified position, in the order in which
  they are returned by the Iterator of the `AttributeList` specified.

  `boolean`

  `addAll(Collection<?> c)`

  Appends all of the elements in the specified collection to the end of
  this list, in the order that they are returned by the
  specified collection's Iterator.

  `boolean`

  `addAll(AttributeList list)`

  Appends all the elements in the `AttributeList` specified to
  the end of the list, in the order in which they are returned by the
  Iterator of the `AttributeList` specified.

  `List<Attribute>`

  `asList()`

  Return a view of this list as a `List<Attribute>`.

  `Object`

  `set(int index,
  Object element)`

  Replaces the element at the specified position in this list with
  the specified element.

  `void`

  `set(int index,
  Attribute object)`

  Sets the element at the position specified to be the attribute specified.

  ### Methods inherited from class java.util.[ArrayList](../../../java.base/java/util/ArrayList.md "class in java.util")

  `addFirst, addLast, clear, clone, contains, ensureCapacity, equals, forEach, get, getFirst, getLast, hashCode, indexOf, isEmpty, iterator, lastIndexOf, listIterator, listIterator, remove, remove, removeAll, removeFirst, removeIf, removeLast, removeRange, replaceAll, retainAll, size, sort, spliterator, subList, toArray, toArray, trimToSize`

  ### Methods inherited from class java.util.[AbstractCollection](../../../java.base/java/util/AbstractCollection.md "class in java.util")

  `containsAll, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.[Collection](../../../java.base/java/util/Collection.md "interface in java.util")

  `parallelStream, stream, toArray`

  ### Methods inherited from interface java.util.[List](../../../java.base/java/util/List.md "interface in java.util")

  `containsAll, reversed`

* ## Constructor Details

  + ### AttributeList

    public AttributeList()

    Constructs an empty `AttributeList`.
  + ### AttributeList

    public AttributeList(int initialCapacity)

    Constructs an empty `AttributeList` with
    the initial capacity specified.

    Parameters:
    :   `initialCapacity` - the initial capacity of the
        `AttributeList`, as specified by [`ArrayList(int)`](../../../java.base/java/util/ArrayList.md#%3Cinit%3E(int)).
  + ### AttributeList

    public AttributeList([AttributeList](AttributeList.md "class in javax.management") list)

    Constructs an `AttributeList` containing the
    elements of the `AttributeList` specified, in the
    order in which they are returned by the
    `AttributeList`'s iterator. The
    `AttributeList` instance has an initial capacity of
    110% of the size of the `AttributeList` specified.

    Parameters:
    :   `list` - the `AttributeList` that defines the initial
        contents of the new `AttributeList`.

    See Also:
    :   - [`ArrayList(java.util.Collection)`](../../../java.base/java/util/ArrayList.md#%3Cinit%3E(java.util.Collection))
  + ### AttributeList

    public AttributeList([List](../../../java.base/java/util/List.md "interface in java.util")<[Attribute](Attribute.md "class in javax.management")> list)

    Constructs an `AttributeList` containing the elements of the
    `List` specified, in the order in which they are returned by
    the `List`'s iterator.

    Parameters:
    :   `list` - the `List` that defines the initial contents of
        the new `AttributeList`.

    Throws:
    :   `IllegalArgumentException` - if the `list` parameter
        is `null` or if the `list` parameter contains any
        non-Attribute objects.

    Since:
    :   1.6

    See Also:
    :   - [`ArrayList(java.util.Collection)`](../../../java.base/java/util/ArrayList.md#%3Cinit%3E(java.util.Collection))
* ## Method Details

  + ### asList

    public [List](../../../java.base/java/util/List.md "interface in java.util")<[Attribute](Attribute.md "class in javax.management")> asList()

    Return a view of this list as a `List<Attribute>`.
    Changes to the returned value are reflected by changes
    to the original `AttributeList` and vice versa.

    Returns:
    :   a `List<Attribute>` whose contents
        reflect the contents of this `AttributeList`.

        If this method has ever been called on a given
        `AttributeList` instance, a subsequent attempt to add
        an object to that instance which is not an `Attribute`
        will fail with an `IllegalArgumentException`. For compatibility
        reasons, an `AttributeList` on which this method has never
        been called does allow objects other than `Attribute`s to
        be added.

    Throws:
    :   `IllegalArgumentException` - if this `AttributeList` contains
        an element that is not an `Attribute`.

    Since:
    :   1.6
  + ### add

    public void add([Attribute](Attribute.md "class in javax.management") object)

    Adds the `Attribute` specified as the last element of the list.

    Parameters:
    :   `object` - The attribute to be added.
  + ### add

    public void add(int index,
    [Attribute](Attribute.md "class in javax.management") object)

    Inserts the attribute specified as an element at the position specified.
    Elements with an index greater than or equal to the current position are
    shifted up. If the index is out of range (index < 0 || index >
    size()) a RuntimeOperationsException should be raised, wrapping the
    java.lang.IndexOutOfBoundsException thrown.

    Parameters:
    :   `index` - The position in the list where the new `Attribute`
        object is to be inserted.
    :   `object` - The `Attribute` object to be inserted.
  + ### set

    public void set(int index,
    [Attribute](Attribute.md "class in javax.management") object)

    Sets the element at the position specified to be the attribute specified.
    The previous element at that position is discarded. If the index is
    out of range (index < 0 || index > size()) a RuntimeOperationsException
    should be raised, wrapping the java.lang.IndexOutOfBoundsException thrown.

    Parameters:
    :   `index` - The position specified.
    :   `object` - The value to which the attribute element should be set.
  + ### addAll

    public boolean addAll([AttributeList](AttributeList.md "class in javax.management") list)

    Appends all the elements in the `AttributeList` specified to
    the end of the list, in the order in which they are returned by the
    Iterator of the `AttributeList` specified.

    Parameters:
    :   `list` - Elements to be inserted into the list.

    Returns:
    :   true if this list changed as a result of the call.

    See Also:
    :   - [`ArrayList.addAll(java.util.Collection)`](../../../java.base/java/util/ArrayList.md#addAll(java.util.Collection))
  + ### addAll

    public boolean addAll(int index,
    [AttributeList](AttributeList.md "class in javax.management") list)

    Inserts all of the elements in the `AttributeList` specified
    into this list, starting at the specified position, in the order in which
    they are returned by the Iterator of the `AttributeList` specified.
    If the index is out of range (index < 0 || index > size()) a
    RuntimeOperationsException should be raised, wrapping the
    java.lang.IndexOutOfBoundsException thrown.

    Parameters:
    :   `index` - Position at which to insert the first element from the
        `AttributeList` specified.
    :   `list` - Elements to be inserted into the list.

    Returns:
    :   true if this list changed as a result of the call.

    See Also:
    :   - [`ArrayList.addAll(int, java.util.Collection)`](../../../java.base/java/util/ArrayList.md#addAll(int,java.util.Collection))
  + ### add

    public boolean add([Object](../../../java.base/java/lang/Object.md "class in java.lang") element)

    Appends the specified element to the end of this list.

    Specified by:
    :   `add` in interface `Collection<Object>`

    Specified by:
    :   `add` in interface `List<Object>`

    Overrides:
    :   `add` in class `ArrayList<Object>`

    Parameters:
    :   `element` - element to be appended to this list

    Returns:
    :   `true` (as specified by [`Collection.add(E)`](../../../java.base/java/util/Collection.md#add(E)))

    Throws:
    :   `IllegalArgumentException` - if this `AttributeList` is
        [type-safe](#type-safe) and `element` is not an
        `Attribute`.
  + ### add

    public void add(int index,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") element)

    Inserts the specified element at the specified position in this
    list. Shifts the element currently at that position (if any) and
    any subsequent elements to the right (adds one to their indices).

    Specified by:
    :   `add` in interface `List<Object>`

    Overrides:
    :   `add` in class `ArrayList<Object>`

    Parameters:
    :   `index` - index at which the specified element is to be inserted
    :   `element` - element to be inserted

    Throws:
    :   `IllegalArgumentException` - if this `AttributeList` is
        [type-safe](#type-safe) and `element` is not an
        `Attribute`.
  + ### addAll

    public boolean addAll([Collection](../../../java.base/java/util/Collection.md "interface in java.util")<?> c)

    Appends all of the elements in the specified collection to the end of
    this list, in the order that they are returned by the
    specified collection's Iterator. The behavior of this operation is
    undefined if the specified collection is modified while the operation
    is in progress. (This implies that the behavior of this call is
    undefined if the specified collection is this list, and this
    list is nonempty.)

    Specified by:
    :   `addAll` in interface `Collection<Object>`

    Specified by:
    :   `addAll` in interface `List<Object>`

    Overrides:
    :   `addAll` in class `ArrayList<Object>`

    Parameters:
    :   `c` - collection containing elements to be added to this list

    Returns:
    :   `true` if this list changed as a result of the call

    Throws:
    :   `IllegalArgumentException` - if this `AttributeList` is
        [type-safe](#type-safe) and `c` contains an
        element that is not an `Attribute`.

    See Also:
    :   - [`AbstractCollection.add(Object)`](../../../java.base/java/util/AbstractCollection.md#add(E))
  + ### addAll

    public boolean addAll(int index,
    [Collection](../../../java.base/java/util/Collection.md "interface in java.util")<?> c)

    Inserts all of the elements in the specified collection into this
    list, starting at the specified position. Shifts the element
    currently at that position (if any) and any subsequent elements to
    the right (increases their indices). The new elements will appear
    in the list in the order that they are returned by the
    specified collection's iterator.

    Specified by:
    :   `addAll` in interface `List<Object>`

    Overrides:
    :   `addAll` in class `ArrayList<Object>`

    Parameters:
    :   `index` - index at which to insert the first element from the
        specified collection
    :   `c` - collection containing elements to be added to this list

    Returns:
    :   `true` if this list changed as a result of the call

    Throws:
    :   `IllegalArgumentException` - if this `AttributeList` is
        [type-safe](#type-safe) and `c` contains an
        element that is not an `Attribute`.
  + ### set

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") set(int index,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") element)

    Replaces the element at the specified position in this list with
    the specified element.

    Specified by:
    :   `set` in interface `List<Object>`

    Overrides:
    :   `set` in class `ArrayList<Object>`

    Parameters:
    :   `index` - index of the element to replace
    :   `element` - element to be stored at the specified position

    Returns:
    :   the element previously at the specified position

    Throws:
    :   `IllegalArgumentException` - if this `AttributeList` is
        [type-safe](#type-safe) and `element` is not an
        `Attribute`.