Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface SequencedCollection<E>

Type Parameters:
:   `E` - the type of elements in this collection

All Superinterfaces:
:   `Collection<E>`, `Iterable<E>`

All Known Subinterfaces:
:   `BlockingDeque<E>`, `Deque<E>`, `List<E>`, `NavigableSet<E>`, `SequencedSet<E>`, `SortedSet<E>`

All Known Implementing Classes:
:   `AbstractList`, `AbstractSequentialList`, `ArrayDeque`, `ArrayList`, `AttributeList`, `ConcurrentLinkedDeque`, `ConcurrentSkipListSet`, `CopyOnWriteArrayList`, `LinkedBlockingDeque`, `LinkedHashSet`, `LinkedList`, `RoleList`, `RoleUnresolvedList`, `Stack`, `TreeSet`, `Vector`

---

public interface SequencedCollection<E>
extends [Collection](Collection.md "interface in java.util")<E>

A collection that has a well-defined encounter order, that supports operations at both ends,
and that is reversible. The elements of a sequenced collection have an *encounter order*, where conceptually the elements have a linear arrangement
from the first element to the last element. Given any two elements, one element is
either before (closer to the first element) or after (closer to the last element)
the other element.

(Note that this definition does not imply anything about physical positioning
of elements, such as their locations in a computer's memory.)

Several methods inherited from the [`Collection`](Collection.md "interface in java.util") interface are required to operate
on elements according to this collection's encounter order. For instance, the
[`iterator`](Collection.md#iterator()) method provides elements starting from the first element,
proceeding through successive elements, until the last element. Other methods that are
required to operate on elements in encounter order include the following:
[`forEach`](../lang/Iterable.md#forEach(java.util.function.Consumer)), [`parallelStream`](Collection.md#parallelStream()),
[`spliterator`](Collection.md#spliterator()), [`stream`](Collection.md#stream()),
and all overloads of the [`toArray`](Collection.md#toArray()) method.

This interface provides methods to add, retrieve, and remove elements at either end
of the collection.

This interface also defines the [`reversed`](#reversed()) method, which provides
a reverse-ordered [view](Collection.md#view) of this collection.
In the reverse-ordered view, the concepts of first and last are inverted, as are
the concepts of successor and predecessor. The first element of this collection is
the last element of the reverse-ordered view, and vice-versa. The successor of some
element in this collection is its predecessor in the reversed view, and vice-versa. All
methods that respect the encounter order of the collection operate as if the encounter order
is inverted. For instance, the [`Collection.iterator()`](Collection.md#iterator()) method of the reversed view reports the
elements in order from the last element of this collection to the first. The availability of
the `reversed` method, and its impact on the ordering semantics of all applicable
methods, allow convenient iteration, searching, copying, and streaming of the elements of
this collection in either forward order or reverse order.

This class is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   21

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default void`

  `addFirst(E e)`

  Adds an element as the first element of this collection (optional operation).

  `default void`

  `addLast(E e)`

  Adds an element as the last element of this collection (optional operation).

  `default E`

  `getFirst()`

  Gets the first element of this collection.

  `default E`

  `getLast()`

  Gets the last element of this collection.

  `default E`

  `removeFirst()`

  Removes and returns the first element of this collection (optional operation).

  `default E`

  `removeLast()`

  Removes and returns the last element of this collection (optional operation).

  `SequencedCollection<E>`

  `reversed()`

  Returns a reverse-ordered [view](Collection.md#view) of this collection.

  ### Methods inherited from interface java.util.[Collection](Collection.md "interface in java.util")

  `add, addAll, clear, contains, containsAll, equals, hashCode, isEmpty, iterator, parallelStream, remove, removeAll, removeIf, retainAll, size, spliterator, stream, toArray, toArray, toArray`

  ### Methods inherited from interface java.lang.[Iterable](../lang/Iterable.md "interface in java.lang")

  `forEach`

* ## Method Details

  + ### reversed

    [SequencedCollection](SequencedCollection.md "interface in java.util")<[E](SequencedCollection.md "type parameter in SequencedCollection")> reversed()

    Returns a reverse-ordered [view](Collection.md#view) of this collection.
    The encounter order of elements in the returned view is the inverse of the encounter
    order of elements in this collection. The reverse ordering affects all order-sensitive
    operations, including those on the view collections of the returned view. If the collection
    implementation permits modifications to this view, the modifications "write through" to the
    underlying collection. Changes to the underlying collection might or might not be visible
    in this reversed view, depending upon the implementation.

    Returns:
    :   a reverse-ordered view of this collection
  + ### addFirst

    default void addFirst([E](SequencedCollection.md "type parameter in SequencedCollection") e)

    Adds an element as the first element of this collection (optional operation).
    After this operation completes normally, the given element will be a member of
    this collection, and it will be the first element in encounter order.

    Parameters:
    :   `e` - the element to be added

    Throws:
    :   `NullPointerException` - if the specified element is null and this
        collection does not permit null elements
    :   `UnsupportedOperationException` - if this collection implementation
        does not support this operation
  + ### addLast

    default void addLast([E](SequencedCollection.md "type parameter in SequencedCollection") e)

    Adds an element as the last element of this collection (optional operation).
    After this operation completes normally, the given element will be a member of
    this collection, and it will be the last element in encounter order.

    Parameters:
    :   `e` - the element to be added.

    Throws:
    :   `NullPointerException` - if the specified element is null and this
        collection does not permit null elements
    :   `UnsupportedOperationException` - if this collection implementation
        does not support this operation
  + ### getFirst

    default [E](SequencedCollection.md "type parameter in SequencedCollection") getFirst()

    Gets the first element of this collection.

    Returns:
    :   the retrieved element

    Throws:
    :   `NoSuchElementException` - if this collection is empty
  + ### getLast

    default [E](SequencedCollection.md "type parameter in SequencedCollection") getLast()

    Gets the last element of this collection.

    Returns:
    :   the retrieved element

    Throws:
    :   `NoSuchElementException` - if this collection is empty
  + ### removeFirst

    default [E](SequencedCollection.md "type parameter in SequencedCollection") removeFirst()

    Removes and returns the first element of this collection (optional operation).

    Returns:
    :   the removed element

    Throws:
    :   `NoSuchElementException` - if this collection is empty
    :   `UnsupportedOperationException` - if this collection implementation
        does not support this operation
  + ### removeLast

    default [E](SequencedCollection.md "type parameter in SequencedCollection") removeLast()

    Removes and returns the last element of this collection (optional operation).

    Returns:
    :   the removed element

    Throws:
    :   `NoSuchElementException` - if this collection is empty
    :   `UnsupportedOperationException` - if this collection implementation
        does not support this operation