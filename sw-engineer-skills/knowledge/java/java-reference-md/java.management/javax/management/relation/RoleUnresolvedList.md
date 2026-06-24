Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RoleUnresolvedList

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.AbstractCollection](../../../../java.base/java/util/AbstractCollection.md "class in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")>

[java.util.AbstractList](../../../../java.base/java/util/AbstractList.md "class in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")>

[java.util.ArrayList](../../../../java.base/java/util/ArrayList.md "class in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")>

javax.management.relation.RoleUnresolvedList

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Iterable<Object>`, `Collection<Object>`, `List<Object>`, `RandomAccess`, `SequencedCollection<Object>`

---

public class RoleUnresolvedList
extends [ArrayList](../../../../java.base/java/util/ArrayList.md "class in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")>

A RoleUnresolvedList represents a list of RoleUnresolved objects,
representing roles not retrieved from a relation due to a problem
encountered when trying to access (read or write) the roles.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RoleUnresolvedList)

* ## Field Summary

  ### Fields inherited from class java.util.[AbstractList](../../../../java.base/java/util/AbstractList.md "class in java.util")

  `modCount`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RoleUnresolvedList()`

  Constructs an empty RoleUnresolvedList.

  `RoleUnresolvedList(int initialCapacity)`

  Constructs an empty RoleUnresolvedList with the initial capacity
  specified.

  `RoleUnresolvedList(List<RoleUnresolved> list)`

  Constructs a `RoleUnresolvedList` containing the elements of the
  `List` specified, in the order in which they are returned by
  the `List`'s iterator.
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
  RoleUnresolved role)`

  Inserts the unresolved role specified as an element at the position
  specified.

  `boolean`

  `add(Object o)`

  Appends the specified element to the end of this list.

  `void`

  `add(RoleUnresolved role)`

  Adds the RoleUnresolved specified as the last element of the list.

  `boolean`

  `addAll(int index,
  Collection<?> c)`

  Inserts all of the elements in the specified collection into this
  list, starting at the specified position.

  `boolean`

  `addAll(int index,
  RoleUnresolvedList roleList)`

  Inserts all of the elements in the RoleUnresolvedList specified into
  this list, starting at the specified position, in the order in which
  they are returned by the Iterator of the RoleUnresolvedList specified.

  `boolean`

  `addAll(Collection<?> c)`

  Appends all of the elements in the specified collection to the end of
  this list, in the order that they are returned by the
  specified collection's Iterator.

  `boolean`

  `addAll(RoleUnresolvedList roleList)`

  Appends all the elements in the RoleUnresolvedList specified to the end
  of the list, in the order in which they are returned by the Iterator of
  the RoleUnresolvedList specified.

  `List<RoleUnresolved>`

  `asList()`

  Return a view of this list as a `List<RoleUnresolved>`.

  `Object`

  `set(int index,
  Object element)`

  Replaces the element at the specified position in this list with
  the specified element.

  `void`

  `set(int index,
  RoleUnresolved role)`

  Sets the element at the position specified to be the unresolved role
  specified.

  ### Methods inherited from class java.util.[ArrayList](../../../../java.base/java/util/ArrayList.md "class in java.util")

  `addFirst, addLast, clear, clone, contains, ensureCapacity, equals, forEach, get, getFirst, getLast, hashCode, indexOf, isEmpty, iterator, lastIndexOf, listIterator, listIterator, remove, remove, removeAll, removeFirst, removeIf, removeLast, removeRange, replaceAll, retainAll, size, sort, spliterator, subList, toArray, toArray, trimToSize`

  ### Methods inherited from class java.util.[AbstractCollection](../../../../java.base/java/util/AbstractCollection.md "class in java.util")

  `containsAll, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.[Collection](../../../../java.base/java/util/Collection.md "interface in java.util")

  `parallelStream, stream, toArray`

  ### Methods inherited from interface java.util.[List](../../../../java.base/java/util/List.md "interface in java.util")

  `containsAll, reversed`

* ## Constructor Details

  + ### RoleUnresolvedList

    public RoleUnresolvedList()

    Constructs an empty RoleUnresolvedList.
  + ### RoleUnresolvedList

    public RoleUnresolvedList(int initialCapacity)

    Constructs an empty RoleUnresolvedList with the initial capacity
    specified.

    Parameters:
    :   `initialCapacity` - initial capacity
  + ### RoleUnresolvedList

    public RoleUnresolvedList([List](../../../../java.base/java/util/List.md "interface in java.util")<[RoleUnresolved](RoleUnresolved.md "class in javax.management.relation")> list)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Constructs a `RoleUnresolvedList` containing the elements of the
    `List` specified, in the order in which they are returned by
    the `List`'s iterator. The `RoleUnresolvedList` instance has
    an initial capacity of 110% of the size of the `List`
    specified.

    Parameters:
    :   `list` - the `List` that defines the initial contents of
        the new `RoleUnresolvedList`.

    Throws:
    :   `IllegalArgumentException` - if the `list` parameter
        is `null` or if the `list` parameter contains any
        non-RoleUnresolved objects.

    See Also:
    :   - [`ArrayList(java.util.Collection)`](../../../../java.base/java/util/ArrayList.md#%3Cinit%3E(java.util.Collection))
* ## Method Details

  + ### asList

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[RoleUnresolved](RoleUnresolved.md "class in javax.management.relation")> asList()

    Return a view of this list as a `List<RoleUnresolved>`.
    Changes to the returned value are reflected by changes
    to the original `RoleUnresolvedList` and vice versa.

    Returns:
    :   a `List<RoleUnresolved>` whose contents
        reflect the contents of this `RoleUnresolvedList`.

        If this method has ever been called on a given
        `RoleUnresolvedList` instance, a subsequent attempt to add
        an object to that instance which is not a `RoleUnresolved`
        will fail with an `IllegalArgumentException`. For compatibility
        reasons, a `RoleUnresolvedList` on which this method has never
        been called does allow objects other than `RoleUnresolved`s to
        be added.

    Throws:
    :   `IllegalArgumentException` - if this `RoleUnresolvedList`
        contains an element that is not a `RoleUnresolved`.

    Since:
    :   1.6
  + ### add

    public void add([RoleUnresolved](RoleUnresolved.md "class in javax.management.relation") role)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Adds the RoleUnresolved specified as the last element of the list.

    Parameters:
    :   `role` - the unresolved role to be added.

    Throws:
    :   `IllegalArgumentException` - if the unresolved role is null.
  + ### add

    public void add(int index,
    [RoleUnresolved](RoleUnresolved.md "class in javax.management.relation") role)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Inserts the unresolved role specified as an element at the position
    specified.
    Elements with an index greater than or equal to the current position are
    shifted up.

    Parameters:
    :   `index` - The position in the list where the new
        RoleUnresolved object is to be inserted.
    :   `role` - The RoleUnresolved object to be inserted.

    Throws:
    :   `IllegalArgumentException` - if the unresolved role is null.
    :   `IndexOutOfBoundsException` - if index is out of range
        (`index < 0 || index > size()`).
  + ### set

    public void set(int index,
    [RoleUnresolved](RoleUnresolved.md "class in javax.management.relation") role)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Sets the element at the position specified to be the unresolved role
    specified.
    The previous element at that position is discarded.

    Parameters:
    :   `index` - The position specified.
    :   `role` - The value to which the unresolved role element
        should be set.

    Throws:
    :   `IllegalArgumentException` - if the unresolved role is null.
    :   `IndexOutOfBoundsException` - if index is out of range
        (`index < 0 || index >= size()`).
  + ### addAll

    public boolean addAll([RoleUnresolvedList](RoleUnresolvedList.md "class in javax.management.relation") roleList)
    throws [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Appends all the elements in the RoleUnresolvedList specified to the end
    of the list, in the order in which they are returned by the Iterator of
    the RoleUnresolvedList specified.

    Parameters:
    :   `roleList` - Elements to be inserted into the list
        (can be null).

    Returns:
    :   true if this list changed as a result of the call.

    Throws:
    :   `IndexOutOfBoundsException` - if accessing with an index
        outside of the list.
  + ### addAll

    public boolean addAll(int index,
    [RoleUnresolvedList](RoleUnresolvedList.md "class in javax.management.relation") roleList)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Inserts all of the elements in the RoleUnresolvedList specified into
    this list, starting at the specified position, in the order in which
    they are returned by the Iterator of the RoleUnresolvedList specified.

    Parameters:
    :   `index` - Position at which to insert the first element from the
        RoleUnresolvedList specified.
    :   `roleList` - Elements to be inserted into the list.

    Returns:
    :   true if this list changed as a result of the call.

    Throws:
    :   `IllegalArgumentException` - if the role is null.
    :   `IndexOutOfBoundsException` - if index is out of range
        (`index < 0 || index > size()`).
  + ### add

    public boolean add([Object](../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Description copied from class: `ArrayList`

    Appends the specified element to the end of this list.

    Specified by:
    :   `add` in interface `Collection<Object>`

    Specified by:
    :   `add` in interface `List<Object>`

    Overrides:
    :   `add` in class `ArrayList<Object>`

    Parameters:
    :   `o` - element to be appended to this list

    Returns:
    :   `true` (as specified by [`Collection.add(E)`](../../../../java.base/java/util/Collection.md#add(E)))
  + ### add

    public void add(int index,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") element)

    Description copied from class: `ArrayList`

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
  + ### addAll

    public boolean addAll([Collection](../../../../java.base/java/util/Collection.md "interface in java.util")<?> c)

    Description copied from class: `ArrayList`

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

    See Also:
    :   - [`AbstractCollection.add(Object)`](../../../../java.base/java/util/AbstractCollection.md#add(E))
  + ### addAll

    public boolean addAll(int index,
    [Collection](../../../../java.base/java/util/Collection.md "interface in java.util")<?> c)

    Description copied from class: `ArrayList`

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
  + ### set

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") set(int index,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") element)

    Description copied from class: `ArrayList`

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