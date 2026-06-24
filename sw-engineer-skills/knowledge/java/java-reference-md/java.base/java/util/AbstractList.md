Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class AbstractList<E>

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.util.AbstractCollection](AbstractCollection.md "class in java.util")<E>

java.util.AbstractList<E>

Type Parameters:
:   `E` - the type of elements in this list

All Implemented Interfaces:
:   `Iterable<E>`, `Collection<E>`, `List<E>`, `SequencedCollection<E>`

Direct Known Subclasses:
:   `AbstractSequentialList`, `ArrayList`, `Vector`

---

public abstract class AbstractList<E>
extends [AbstractCollection](AbstractCollection.md "class in java.util")<E>
implements [List](List.md "interface in java.util")<E>

This class provides a skeletal implementation of the [`List`](List.md "interface in java.util")
interface to minimize the effort required to implement this interface
backed by a "random access" data store (such as an array). For sequential
access data (such as a linked list), [`AbstractSequentialList`](AbstractSequentialList.md "class in java.util") should
be used in preference to this class.

To implement an unmodifiable list, the programmer needs only to extend
this class and provide implementations for the [`get(int)`](#get(int)) and
[`size()`](List.md#size()) methods.

To implement a modifiable list, the programmer must additionally
override the [`set(int, E)`](#set(int,E)) method (which otherwise
throws an `UnsupportedOperationException`). If the list is
variable-size the programmer must additionally override the
[`add(int, E)`](#add(int,E)) and [`remove(int)`](#remove(int)) methods.

The programmer should generally provide a void (no argument) and collection
constructor, as per the recommendation in the [`Collection`](Collection.md "interface in java.util") interface
specification.

Unlike the other abstract collection implementations, the programmer does
*not* have to provide an iterator implementation; the iterator and
list iterator are implemented by this class, on top of the "random access"
methods:
[`get(int)`](#get(int)),
[`set(int, E)`](#set(int,E)),
[`add(int, E)`](#add(int,E)) and
[`remove(int)`](#remove(int)).

The documentation for each non-abstract method in this class describes its
implementation in detail. Each of these methods may be overridden if the
collection being implemented admits a more efficient implementation.

This class is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `modCount`

  The number of times this list has been *structurally modified*.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractList()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(int index,
  E element)`

  Inserts the specified element at the specified position in this list
  (optional operation).

  `boolean`

  `add(E e)`

  Appends the specified element to the end of this list (optional
  operation).

  `boolean`

  `addAll(int index,
  Collection<? extends E> c)`

  Inserts all of the elements in the specified collection into this
  list at the specified position (optional operation).

  `void`

  `clear()`

  Removes all of the elements from this list (optional operation).

  `boolean`

  `equals(Object o)`

  Compares the specified object with this list for equality.

  `abstract E`

  `get(int index)`

  Returns the element at the specified position in this list.

  `int`

  `hashCode()`

  Returns the hash code value for this list.

  `int`

  `indexOf(Object o)`

  Returns the index of the first occurrence of the specified element
  in this list, or -1 if this list does not contain the element.

  `Iterator<E>`

  `iterator()`

  Returns an iterator over the elements in this list in proper sequence.

  `int`

  `lastIndexOf(Object o)`

  Returns the index of the last occurrence of the specified element
  in this list, or -1 if this list does not contain the element.

  `ListIterator<E>`

  `listIterator()`

  Returns a list iterator over the elements in this list (in proper
  sequence).

  `ListIterator<E>`

  `listIterator(int index)`

  Returns a list iterator over the elements in this list (in proper
  sequence), starting at the specified position in the list.

  `E`

  `remove(int index)`

  Removes the element at the specified position in this list (optional
  operation).

  `protected void`

  `removeRange(int fromIndex,
  int toIndex)`

  Removes from this list all of the elements whose index is between
  `fromIndex`, inclusive, and `toIndex`, exclusive.

  `E`

  `set(int index,
  E element)`

  Replaces the element at the specified position in this list with the
  specified element (optional operation).

  `List<E>`

  `subList(int fromIndex,
  int toIndex)`

  Returns a view of the portion of this list between the specified
  `fromIndex`, inclusive, and `toIndex`, exclusive.

  ### Methods inherited from class java.util.[AbstractCollection](AbstractCollection.md "class in java.util")

  `addAll, contains, containsAll, isEmpty, remove, removeAll, retainAll, size, toArray, toArray, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.[Collection](Collection.md "interface in java.util")

  `parallelStream, removeIf, stream, toArray`

  ### Methods inherited from interface java.lang.[Iterable](../lang/Iterable.md "interface in java.lang")

  `forEach`

  ### Methods inherited from interface java.util.[List](List.md "interface in java.util")

  `addAll, addFirst, addLast, contains, containsAll, getFirst, getLast, isEmpty, remove, removeAll, removeFirst, removeLast, replaceAll, retainAll, reversed, size, sort, spliterator, toArray, toArray`

* ## Field Details

  + ### modCount

    protected transient int modCount

    The number of times this list has been *structurally modified*.
    Structural modifications are those that change the size of the
    list, or otherwise perturb it in such a fashion that iterations in
    progress may yield incorrect results.

    This field is used by the iterator and list iterator implementation
    returned by the `iterator` and `listIterator` methods.
    If the value of this field changes unexpectedly, the iterator (or list
    iterator) will throw a `ConcurrentModificationException` in
    response to the `next`, `remove`, `previous`,
    `set` or `add` operations. This provides
    *fail-fast* behavior, rather than non-deterministic behavior in
    the face of concurrent modification during iteration.

    **Use of this field by subclasses is optional.** If a subclass
    wishes to provide fail-fast iterators (and list iterators), then it
    merely has to increment this field in its `add(int, E)` and
    `remove(int)` methods (and any other methods that it overrides
    that result in structural modifications to the list). A single call to
    `add(int, E)` or `remove(int)` must add no more than
    one to this field, or the iterators (and list iterators) will throw
    bogus `ConcurrentModificationExceptions`. If an implementation
    does not wish to provide fail-fast iterators, this field may be
    ignored.
* ## Constructor Details

  + ### AbstractList

    protected AbstractList()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### add

    public boolean add([E](AbstractList.md "type parameter in AbstractList") e)

    Appends the specified element to the end of this list (optional
    operation).

    Lists that support this operation may place limitations on what
    elements may be added to this list. In particular, some
    lists will refuse to add null elements, and others will impose
    restrictions on the type of elements that may be added. List
    classes should clearly specify in their documentation any restrictions
    on what elements may be added.

    Specified by:
    :   `add` in interface `Collection<E>`

    Specified by:
    :   `add` in interface `List<E>`

    Overrides:
    :   `add` in class `AbstractCollection<E>`

    Parameters:
    :   `e` - element to be appended to this list

    Returns:
    :   `true` (as specified by [`Collection.add(E)`](Collection.md#add(E)))

    Throws:
    :   `UnsupportedOperationException` - if the `add` operation
        is not supported by this list
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this list
    :   `NullPointerException` - if the specified element is null and this
        list does not permit null elements
    :   `IllegalArgumentException` - if some property of this element
        prevents it from being added to this list
  + ### get

    public abstract [E](AbstractList.md "type parameter in AbstractList") get(int index)

    Returns the element at the specified position in this list.

    Specified by:
    :   `get` in interface `List<E>`

    Parameters:
    :   `index` - index of the element to return

    Returns:
    :   the element at the specified position in this list

    Throws:
    :   `IndexOutOfBoundsException` - if the index is out of range
        (`index < 0 || index >= size()`)
  + ### set

    public [E](AbstractList.md "type parameter in AbstractList") set(int index,
    [E](AbstractList.md "type parameter in AbstractList") element)

    Replaces the element at the specified position in this list with the
    specified element (optional operation).

    Specified by:
    :   `set` in interface `List<E>`

    Parameters:
    :   `index` - index of the element to replace
    :   `element` - element to be stored at the specified position

    Returns:
    :   the element previously at the specified position

    Throws:
    :   `UnsupportedOperationException` - if the `set` operation
        is not supported by this list
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this list
    :   `NullPointerException` - if the specified element is null and
        this list does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this list
    :   `IndexOutOfBoundsException` - if the index is out of range
        (`index < 0 || index >= size()`)
  + ### add

    public void add(int index,
    [E](AbstractList.md "type parameter in AbstractList") element)

    Inserts the specified element at the specified position in this list
    (optional operation). Shifts the element currently at that position
    (if any) and any subsequent elements to the right (adds one to their
    indices).

    Specified by:
    :   `add` in interface `List<E>`

    Parameters:
    :   `index` - index at which the specified element is to be inserted
    :   `element` - element to be inserted

    Throws:
    :   `UnsupportedOperationException` - if the `add` operation
        is not supported by this list
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this list
    :   `NullPointerException` - if the specified element is null and
        this list does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this list
    :   `IndexOutOfBoundsException` - if the index is out of range
        (`index < 0 || index > size()`)
  + ### remove

    public [E](AbstractList.md "type parameter in AbstractList") remove(int index)

    Removes the element at the specified position in this list (optional
    operation). Shifts any subsequent elements to the left (subtracts one
    from their indices). Returns the element that was removed from the
    list.

    Specified by:
    :   `remove` in interface `List<E>`

    Parameters:
    :   `index` - the index of the element to be removed

    Returns:
    :   the element previously at the specified position

    Throws:
    :   `UnsupportedOperationException` - if the `remove` operation
        is not supported by this list
    :   `IndexOutOfBoundsException` - if the index is out of range
        (`index < 0 || index >= size()`)
  + ### indexOf

    public int indexOf([Object](../lang/Object.md "class in java.lang") o)

    Returns the index of the first occurrence of the specified element
    in this list, or -1 if this list does not contain the element.
    More formally, returns the lowest index `i` such that
    `Objects.equals(o, get(i))`,
    or -1 if there is no such index.

    Specified by:
    :   `indexOf` in interface `List<E>`

    Parameters:
    :   `o` - element to search for

    Returns:
    :   the index of the first occurrence of the specified element in
        this list, or -1 if this list does not contain the element

    Throws:
    :   `ClassCastException` - if the type of the specified element
        is incompatible with this list
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null and this
        list does not permit null elements
        ([optional](Collection.md#optional-restrictions))
  + ### lastIndexOf

    public int lastIndexOf([Object](../lang/Object.md "class in java.lang") o)

    Returns the index of the last occurrence of the specified element
    in this list, or -1 if this list does not contain the element.
    More formally, returns the highest index `i` such that
    `Objects.equals(o, get(i))`,
    or -1 if there is no such index.

    Specified by:
    :   `lastIndexOf` in interface `List<E>`

    Parameters:
    :   `o` - element to search for

    Returns:
    :   the index of the last occurrence of the specified element in
        this list, or -1 if this list does not contain the element

    Throws:
    :   `ClassCastException` - if the type of the specified element
        is incompatible with this list
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null and this
        list does not permit null elements
        ([optional](Collection.md#optional-restrictions))
  + ### clear

    public void clear()

    Removes all of the elements from this list (optional operation).
    The list will be empty after this call returns.

    Specified by:
    :   `clear` in interface `Collection<E>`

    Specified by:
    :   `clear` in interface `List<E>`

    Overrides:
    :   `clear` in class `AbstractCollection<E>`

    Throws:
    :   `UnsupportedOperationException` - if the `clear` operation
        is not supported by this list
  + ### addAll

    public boolean addAll(int index,
    [Collection](Collection.md "interface in java.util")<? extends [E](AbstractList.md "type parameter in AbstractList")> c)

    Inserts all of the elements in the specified collection into this
    list at the specified position (optional operation). Shifts the
    element currently at that position (if any) and any subsequent
    elements to the right (increases their indices). The new elements
    will appear in this list in the order that they are returned by the
    specified collection's iterator. The behavior of this operation is
    undefined if the specified collection is modified while the
    operation is in progress. (Note that this will occur if the specified
    collection is this list, and it's nonempty.)

    Specified by:
    :   `addAll` in interface `List<E>`

    Parameters:
    :   `index` - index at which to insert the first element from the
        specified collection
    :   `c` - collection containing elements to be added to this list

    Returns:
    :   `true` if this list changed as a result of the call

    Throws:
    :   `UnsupportedOperationException` - if the `addAll` operation
        is not supported by this list
    :   `ClassCastException` - if the class of an element of the specified
        collection prevents it from being added to this list
    :   `NullPointerException` - if the specified collection contains one
        or more null elements and this list does not permit null
        elements, or if the specified collection is null
    :   `IllegalArgumentException` - if some property of an element of the
        specified collection prevents it from being added to this list
    :   `IndexOutOfBoundsException` - if the index is out of range
        (`index < 0 || index > size()`)
  + ### iterator

    public [Iterator](Iterator.md "interface in java.util")<[E](AbstractList.md "type parameter in AbstractList")> iterator()

    Returns an iterator over the elements in this list in proper sequence.

    Specified by:
    :   `iterator` in interface `Collection<E>`

    Specified by:
    :   `iterator` in interface `Iterable<E>`

    Specified by:
    :   `iterator` in interface `List<E>`

    Specified by:
    :   `iterator` in class `AbstractCollection<E>`

    Returns:
    :   an iterator over the elements in this list in proper sequence
  + ### listIterator

    public [ListIterator](ListIterator.md "interface in java.util")<[E](AbstractList.md "type parameter in AbstractList")> listIterator()

    Returns a list iterator over the elements in this list (in proper
    sequence).

    Specified by:
    :   `listIterator` in interface `List<E>`

    Returns:
    :   a list iterator over the elements in this list (in proper
        sequence)

    See Also:
    :   - [`listIterator(int)`](#listIterator(int))
  + ### listIterator

    public [ListIterator](ListIterator.md "interface in java.util")<[E](AbstractList.md "type parameter in AbstractList")> listIterator(int index)

    Returns a list iterator over the elements in this list (in proper
    sequence), starting at the specified position in the list.
    The specified index indicates the first element that would be
    returned by an initial call to [`next`](ListIterator.md#next()).
    An initial call to [`previous`](ListIterator.md#previous()) would
    return the element with the specified index minus one.

    Specified by:
    :   `listIterator` in interface `List<E>`

    Parameters:
    :   `index` - index of the first element to be returned from the
        list iterator (by a call to [`next`](ListIterator.md#next()))

    Returns:
    :   a list iterator over the elements in this list (in proper
        sequence), starting at the specified position in the list

    Throws:
    :   `IndexOutOfBoundsException` - if the index is out of range
        (`index < 0 || index > size()`)
  + ### subList

    public [List](List.md "interface in java.util")<[E](AbstractList.md "type parameter in AbstractList")> subList(int fromIndex,
    int toIndex)

    Returns a view of the portion of this list between the specified
    `fromIndex`, inclusive, and `toIndex`, exclusive. (If
    `fromIndex` and `toIndex` are equal, the returned list is
    empty.) The returned list is backed by this list, so non-structural
    changes in the returned list are reflected in this list, and vice-versa.
    The returned list supports all of the optional list operations supported
    by this list.

    This method eliminates the need for explicit range operations (of
    the sort that commonly exist for arrays). Any operation that expects
    a list can be used as a range operation by passing a subList view
    instead of a whole list. For example, the following idiom
    removes a range of elements from a list:

    ```
          list.subList(from, to).clear();
    ```

    Similar idioms may be constructed for `indexOf` and
    `lastIndexOf`, and all of the algorithms in the
    `Collections` class can be applied to a subList.

    The semantics of the list returned by this method become undefined if
    the backing list (i.e., this list) is *structurally modified* in
    any way other than via the returned list. (Structural modifications are
    those that change the size of this list, or otherwise perturb it in such
    a fashion that iterations in progress may yield incorrect results.)

    Specified by:
    :   `subList` in interface `List<E>`

    Parameters:
    :   `fromIndex` - low endpoint (inclusive) of the subList
    :   `toIndex` - high endpoint (exclusive) of the subList

    Returns:
    :   a view of the specified range within this list

    Throws:
    :   `IndexOutOfBoundsException` - if an endpoint index value is out of range
        `(fromIndex < 0 || toIndex > size)`
    :   `IllegalArgumentException` - if the endpoint indices are out of order
        `(fromIndex > toIndex)`
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") o)

    Compares the specified object with this list for equality. Returns
    `true` if and only if the specified object is also a list, both
    lists have the same size, and all corresponding pairs of elements in
    the two lists are *equal*. (Two elements `e1` and
    `e2` are *equal* if `(e1==null ? e2==null :
    e1.equals(e2))`.) In other words, two lists are defined to be
    equal if they contain the same elements in the same order.

    Specified by:
    :   `equals` in interface `Collection<E>`

    Specified by:
    :   `equals` in interface `List<E>`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to be compared for equality with this list

    Returns:
    :   `true` if the specified object is equal to this list

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this list.

    Specified by:
    :   `hashCode` in interface `Collection<E>`

    Specified by:
    :   `hashCode` in interface `List<E>`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this list

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### removeRange

    protected void removeRange(int fromIndex,
    int toIndex)

    Removes from this list all of the elements whose index is between
    `fromIndex`, inclusive, and `toIndex`, exclusive.
    Shifts any succeeding elements to the left (reduces their index).
    This call shortens the list by `(toIndex - fromIndex)` elements.
    (If `toIndex==fromIndex`, this operation has no effect.)

    This method is called by the `clear` operation on this list
    and its subLists. Overriding this method to take advantage of
    the internals of the list implementation can *substantially*
    improve the performance of the `clear` operation on this list
    and its subLists.

    Parameters:
    :   `fromIndex` - index of first element to be removed
    :   `toIndex` - index after last element to be removed