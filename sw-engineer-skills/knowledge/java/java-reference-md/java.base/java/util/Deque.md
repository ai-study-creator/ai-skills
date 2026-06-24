Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Deque<E>

Type Parameters:
:   `E` - the type of elements held in this deque

All Superinterfaces:
:   `Collection<E>`, `Iterable<E>`, `Queue<E>`, `SequencedCollection<E>`

All Known Subinterfaces:
:   `BlockingDeque<E>`

All Known Implementing Classes:
:   `ArrayDeque`, `ConcurrentLinkedDeque`, `LinkedBlockingDeque`, `LinkedList`

---

public interface Deque<E>
extends [Queue](Queue.md "interface in java.util")<E>, [SequencedCollection](SequencedCollection.md "interface in java.util")<E>

A linear collection that supports element insertion and removal at
both ends. The name *deque* is short for "double ended queue"
and is usually pronounced "deck". Most `Deque`
implementations place no fixed limits on the number of elements
they may contain, but this interface supports capacity-restricted
deques as well as those with no fixed size limit.

This interface defines methods to access the elements at both
ends of the deque. Methods are provided to insert, remove, and
examine the element. Each of these methods exists in two forms:
one throws an exception if the operation fails, the other returns a
special value (either `null` or `false`, depending on
the operation). The latter form of the insert operation is
designed specifically for use with capacity-restricted
`Deque` implementations; in most implementations, insert
operations cannot fail.

The twelve methods described above are summarized in the
following table:

Summary of Deque methods

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | First Element (Head) | | Last Element (Tail) | |
| Throws exception | Special value | Throws exception | Special value |
| Insert | [`addFirst(e)`](#addFirst(E)) | [`offerFirst(e)`](#offerFirst(E)) | [`addLast(e)`](#addLast(E)) | [`offerLast(e)`](#offerLast(E)) |
| Remove | [`removeFirst()`](#removeFirst()) | [`pollFirst()`](#pollFirst()) | [`removeLast()`](#removeLast()) | [`pollLast()`](#pollLast()) |
| Examine | [`getFirst()`](#getFirst()) | [`peekFirst()`](#peekFirst()) | [`getLast()`](#getLast()) | [`peekLast()`](#peekLast()) |

This interface extends the [`Queue`](Queue.md "interface in java.util") interface. When a deque is
used as a queue, FIFO (First-In-First-Out) behavior results. Elements are
added at the end of the deque and removed from the beginning. The methods
inherited from the `Queue` interface are precisely equivalent to
`Deque` methods as indicated in the following table:

Comparison of Queue and Deque methods

| `Queue` Method | Equivalent `Deque` Method |
| --- | --- |
| [`add(e)`](#add(E)) | [`addLast(e)`](#addLast(E)) |
| [`offer(e)`](#offer(E)) | [`offerLast(e)`](#offerLast(E)) |
| [`remove()`](#remove()) | [`removeFirst()`](#removeFirst()) |
| [`poll()`](#poll()) | [`pollFirst()`](#pollFirst()) |
| [`element()`](#element()) | [`getFirst()`](#getFirst()) |
| [`peek()`](#peek()) | [`peekFirst()`](#peekFirst()) |

Deques can also be used as LIFO (Last-In-First-Out) stacks. This
interface should be used in preference to the legacy [`Stack`](Stack.md "class in java.util") class.
When a deque is used as a stack, elements are pushed and popped from the
beginning of the deque. Stack methods are equivalent to `Deque`
methods as indicated in the table below:

Comparison of Stack and Deque methods

| Stack Method | Equivalent `Deque` Method |
| --- | --- |
| [`push(e)`](#push(E)) | [`addFirst(e)`](#addFirst(E)) |
| [`pop()`](#pop()) | [`removeFirst()`](#removeFirst()) |
| [`peek()`](#peek()) | [`getFirst()`](#getFirst()) |

Note that the [`peek`](#peek()) method works equally well when
a deque is used as a queue or a stack; in either case, elements are
drawn from the beginning of the deque.

This interface provides two methods to remove interior
elements, [`removeFirstOccurrence`](#removeFirstOccurrence(java.lang.Object)) and
[`removeLastOccurrence`](#removeLastOccurrence(java.lang.Object)).

Unlike the [`List`](List.md "interface in java.util") interface, this interface does not
provide support for indexed access to elements.

While `Deque` implementations are not strictly required
to prohibit the insertion of null elements, they are strongly
encouraged to do so. Users of any `Deque` implementations
that do allow null elements are strongly encouraged *not* to
take advantage of the ability to insert nulls. This is so because
`null` is used as a special return value by various methods
to indicate that the deque is empty.

`Deque` implementations generally do not define
element-based versions of the `equals` and `hashCode`
methods, but instead inherit the identity-based versions from class
`Object`.

This interface is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(E e)`

  Inserts the specified element into the queue represented by this deque
  (in other words, at the tail of this deque) if it is possible to do so
  immediately without violating capacity restrictions, returning
  `true` upon success and throwing an
  `IllegalStateException` if no space is currently available.

  `boolean`

  `addAll(Collection<? extends E> c)`

  Adds all of the elements in the specified collection at the end
  of this deque, as if by calling [`addLast(E)`](#addLast(E)) on each one,
  in the order that they are returned by the collection's iterator.

  `void`

  `addFirst(E e)`

  Inserts the specified element at the front of this deque if it is
  possible to do so immediately without violating capacity restrictions,
  throwing an `IllegalStateException` if no space is currently
  available.

  `void`

  `addLast(E e)`

  Inserts the specified element at the end of this deque if it is
  possible to do so immediately without violating capacity restrictions,
  throwing an `IllegalStateException` if no space is currently
  available.

  `boolean`

  `contains(Object o)`

  Returns `true` if this deque contains the specified element.

  `Iterator<E>`

  `descendingIterator()`

  Returns an iterator over the elements in this deque in reverse
  sequential order.

  `E`

  `element()`

  Retrieves, but does not remove, the head of the queue represented by
  this deque (in other words, the first element of this deque).

  `E`

  `getFirst()`

  Retrieves, but does not remove, the first element of this deque.

  `E`

  `getLast()`

  Retrieves, but does not remove, the last element of this deque.

  `Iterator<E>`

  `iterator()`

  Returns an iterator over the elements in this deque in proper sequence.

  `boolean`

  `offer(E e)`

  Inserts the specified element into the queue represented by this deque
  (in other words, at the tail of this deque) if it is possible to do so
  immediately without violating capacity restrictions, returning
  `true` upon success and `false` if no space is currently
  available.

  `boolean`

  `offerFirst(E e)`

  Inserts the specified element at the front of this deque unless it would
  violate capacity restrictions.

  `boolean`

  `offerLast(E e)`

  Inserts the specified element at the end of this deque unless it would
  violate capacity restrictions.

  `E`

  `peek()`

  Retrieves, but does not remove, the head of the queue represented by
  this deque (in other words, the first element of this deque), or
  returns `null` if this deque is empty.

  `E`

  `peekFirst()`

  Retrieves, but does not remove, the first element of this deque,
  or returns `null` if this deque is empty.

  `E`

  `peekLast()`

  Retrieves, but does not remove, the last element of this deque,
  or returns `null` if this deque is empty.

  `E`

  `poll()`

  Retrieves and removes the head of the queue represented by this deque
  (in other words, the first element of this deque), or returns
  `null` if this deque is empty.

  `E`

  `pollFirst()`

  Retrieves and removes the first element of this deque,
  or returns `null` if this deque is empty.

  `E`

  `pollLast()`

  Retrieves and removes the last element of this deque,
  or returns `null` if this deque is empty.

  `E`

  `pop()`

  Pops an element from the stack represented by this deque.

  `void`

  `push(E e)`

  Pushes an element onto the stack represented by this deque (in other
  words, at the head of this deque) if it is possible to do so
  immediately without violating capacity restrictions, throwing an
  `IllegalStateException` if no space is currently available.

  `E`

  `remove()`

  Retrieves and removes the head of the queue represented by this deque
  (in other words, the first element of this deque).

  `boolean`

  `remove(Object o)`

  Removes the first occurrence of the specified element from this deque.

  `E`

  `removeFirst()`

  Retrieves and removes the first element of this deque.

  `boolean`

  `removeFirstOccurrence(Object o)`

  Removes the first occurrence of the specified element from this deque.

  `E`

  `removeLast()`

  Retrieves and removes the last element of this deque.

  `boolean`

  `removeLastOccurrence(Object o)`

  Removes the last occurrence of the specified element from this deque.

  `default Deque<E>`

  `reversed()`

  Returns a reverse-ordered [view](Collection.md#view) of this collection.

  `int`

  `size()`

  Returns the number of elements in this deque.

  ### Methods inherited from interface java.util.[Collection](Collection.md "interface in java.util")

  `clear, containsAll, equals, hashCode, isEmpty, parallelStream, removeAll, removeIf, retainAll, spliterator, stream, toArray, toArray, toArray`

  ### Methods inherited from interface java.lang.[Iterable](../lang/Iterable.md "interface in java.lang")

  `forEach`

* ## Method Details

  + ### addFirst

    void addFirst([E](Deque.md "type parameter in Deque") e)

    Inserts the specified element at the front of this deque if it is
    possible to do so immediately without violating capacity restrictions,
    throwing an `IllegalStateException` if no space is currently
    available. When using a capacity-restricted deque, it is generally
    preferable to use method [`offerFirst(E)`](#offerFirst(E)).

    Specified by:
    :   `addFirst` in interface `SequencedCollection<E>`

    Parameters:
    :   `e` - the element to add

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### addLast

    void addLast([E](Deque.md "type parameter in Deque") e)

    Inserts the specified element at the end of this deque if it is
    possible to do so immediately without violating capacity restrictions,
    throwing an `IllegalStateException` if no space is currently
    available. When using a capacity-restricted deque, it is generally
    preferable to use method [`offerLast(E)`](#offerLast(E)).

    This method is equivalent to [`add(E)`](#add(E)).

    Specified by:
    :   `addLast` in interface `SequencedCollection<E>`

    Parameters:
    :   `e` - the element to add

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offerFirst

    boolean offerFirst([E](Deque.md "type parameter in Deque") e)

    Inserts the specified element at the front of this deque unless it would
    violate capacity restrictions. When using a capacity-restricted deque,
    this method is generally preferable to the [`addFirst(E)`](#addFirst(E)) method,
    which can fail to insert an element only by throwing an exception.

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` if the element was added to this deque, else
        `false`

    Throws:
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offerLast

    boolean offerLast([E](Deque.md "type parameter in Deque") e)

    Inserts the specified element at the end of this deque unless it would
    violate capacity restrictions. When using a capacity-restricted deque,
    this method is generally preferable to the [`addLast(E)`](#addLast(E)) method,
    which can fail to insert an element only by throwing an exception.

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` if the element was added to this deque, else
        `false`

    Throws:
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### removeFirst

    [E](Deque.md "type parameter in Deque") removeFirst()

    Retrieves and removes the first element of this deque. This method
    differs from [`pollFirst`](#pollFirst()) only in that it throws an
    exception if this deque is empty.

    Specified by:
    :   `removeFirst` in interface `SequencedCollection<E>`

    Returns:
    :   the head of this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### removeLast

    [E](Deque.md "type parameter in Deque") removeLast()

    Retrieves and removes the last element of this deque. This method
    differs from [`pollLast`](#pollLast()) only in that it throws an
    exception if this deque is empty.

    Specified by:
    :   `removeLast` in interface `SequencedCollection<E>`

    Returns:
    :   the tail of this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### pollFirst

    [E](Deque.md "type parameter in Deque") pollFirst()

    Retrieves and removes the first element of this deque,
    or returns `null` if this deque is empty.

    Returns:
    :   the head of this deque, or `null` if this deque is empty
  + ### pollLast

    [E](Deque.md "type parameter in Deque") pollLast()

    Retrieves and removes the last element of this deque,
    or returns `null` if this deque is empty.

    Returns:
    :   the tail of this deque, or `null` if this deque is empty
  + ### getFirst

    [E](Deque.md "type parameter in Deque") getFirst()

    Retrieves, but does not remove, the first element of this deque.
    This method differs from [`peekFirst`](#peekFirst()) only in that it
    throws an exception if this deque is empty.

    Specified by:
    :   `getFirst` in interface `SequencedCollection<E>`

    Returns:
    :   the head of this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### getLast

    [E](Deque.md "type parameter in Deque") getLast()

    Retrieves, but does not remove, the last element of this deque.
    This method differs from [`peekLast`](#peekLast()) only in that it
    throws an exception if this deque is empty.

    Specified by:
    :   `getLast` in interface `SequencedCollection<E>`

    Returns:
    :   the tail of this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### peekFirst

    [E](Deque.md "type parameter in Deque") peekFirst()

    Retrieves, but does not remove, the first element of this deque,
    or returns `null` if this deque is empty.

    Returns:
    :   the head of this deque, or `null` if this deque is empty
  + ### peekLast

    [E](Deque.md "type parameter in Deque") peekLast()

    Retrieves, but does not remove, the last element of this deque,
    or returns `null` if this deque is empty.

    Returns:
    :   the tail of this deque, or `null` if this deque is empty
  + ### removeFirstOccurrence

    boolean removeFirstOccurrence([Object](../lang/Object.md "class in java.lang") o)

    Removes the first occurrence of the specified element from this deque.
    If the deque does not contain the element, it is unchanged.
    More formally, removes the first element `e` such that
    `Objects.equals(o, e)` (if such an element exists).
    Returns `true` if this deque contained the specified element
    (or equivalently, if this deque changed as a result of the call).

    Parameters:
    :   `o` - element to be removed from this deque, if present

    Returns:
    :   `true` if an element was removed as a result of this call

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
        ([optional](Collection.md#optional-restrictions))
  + ### removeLastOccurrence

    boolean removeLastOccurrence([Object](../lang/Object.md "class in java.lang") o)

    Removes the last occurrence of the specified element from this deque.
    If the deque does not contain the element, it is unchanged.
    More formally, removes the last element `e` such that
    `Objects.equals(o, e)` (if such an element exists).
    Returns `true` if this deque contained the specified element
    (or equivalently, if this deque changed as a result of the call).

    Parameters:
    :   `o` - element to be removed from this deque, if present

    Returns:
    :   `true` if an element was removed as a result of this call

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
        ([optional](Collection.md#optional-restrictions))
  + ### add

    boolean add([E](Deque.md "type parameter in Deque") e)

    Inserts the specified element into the queue represented by this deque
    (in other words, at the tail of this deque) if it is possible to do so
    immediately without violating capacity restrictions, returning
    `true` upon success and throwing an
    `IllegalStateException` if no space is currently available.
    When using a capacity-restricted deque, it is generally preferable to
    use [`offer`](#offer(E)).

    This method is equivalent to [`addLast(E)`](#addLast(E)).

    Specified by:
    :   `add` in interface `Collection<E>`

    Specified by:
    :   `add` in interface `Queue<E>`

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` (as specified by [`Collection.add(E)`](Collection.md#add(E)))

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offer

    boolean offer([E](Deque.md "type parameter in Deque") e)

    Inserts the specified element into the queue represented by this deque
    (in other words, at the tail of this deque) if it is possible to do so
    immediately without violating capacity restrictions, returning
    `true` upon success and `false` if no space is currently
    available. When using a capacity-restricted deque, this method is
    generally preferable to the [`add(E)`](#add(E)) method, which can fail to
    insert an element only by throwing an exception.

    This method is equivalent to [`offerLast(E)`](#offerLast(E)).

    Specified by:
    :   `offer` in interface `Queue<E>`

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` if the element was added to this deque, else
        `false`

    Throws:
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### remove

    [E](Deque.md "type parameter in Deque") remove()

    Retrieves and removes the head of the queue represented by this deque
    (in other words, the first element of this deque).
    This method differs from [`poll()`](#poll()) only in that it
    throws an exception if this deque is empty.

    This method is equivalent to [`removeFirst()`](#removeFirst()).

    Specified by:
    :   `remove` in interface `Queue<E>`

    Returns:
    :   the head of the queue represented by this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### poll

    [E](Deque.md "type parameter in Deque") poll()

    Retrieves and removes the head of the queue represented by this deque
    (in other words, the first element of this deque), or returns
    `null` if this deque is empty.

    This method is equivalent to [`pollFirst()`](#pollFirst()).

    Specified by:
    :   `poll` in interface `Queue<E>`

    Returns:
    :   the first element of this deque, or `null` if
        this deque is empty
  + ### element

    [E](Deque.md "type parameter in Deque") element()

    Retrieves, but does not remove, the head of the queue represented by
    this deque (in other words, the first element of this deque).
    This method differs from [`peek`](#peek()) only in that it throws an
    exception if this deque is empty.

    This method is equivalent to [`getFirst()`](#getFirst()).

    Specified by:
    :   `element` in interface `Queue<E>`

    Returns:
    :   the head of the queue represented by this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### peek

    [E](Deque.md "type parameter in Deque") peek()

    Retrieves, but does not remove, the head of the queue represented by
    this deque (in other words, the first element of this deque), or
    returns `null` if this deque is empty.

    This method is equivalent to [`peekFirst()`](#peekFirst()).

    Specified by:
    :   `peek` in interface `Queue<E>`

    Returns:
    :   the head of the queue represented by this deque, or
        `null` if this deque is empty
  + ### addAll

    boolean addAll([Collection](Collection.md "interface in java.util")<? extends [E](Deque.md "type parameter in Deque")> c)

    Adds all of the elements in the specified collection at the end
    of this deque, as if by calling [`addLast(E)`](#addLast(E)) on each one,
    in the order that they are returned by the collection's iterator.

    When using a capacity-restricted deque, it is generally preferable
    to call [`offer`](#offer(E)) separately on each element.

    An exception encountered while trying to add an element may result
    in only some of the elements having been successfully added when
    the associated exception is thrown.

    Specified by:
    :   `addAll` in interface `Collection<E>`

    Parameters:
    :   `c` - the elements to be inserted into this deque

    Returns:
    :   `true` if this deque changed as a result of the call

    Throws:
    :   `IllegalStateException` - if not all the elements can be added at
        this time due to insertion restrictions
    :   `ClassCastException` - if the class of an element of the specified
        collection prevents it from being added to this deque
    :   `NullPointerException` - if the specified collection contains a
        null element and this deque does not permit null elements,
        or if the specified collection is null
    :   `IllegalArgumentException` - if some property of an element of the
        specified collection prevents it from being added to this deque

    See Also:
    :   - [`Collection.add(Object)`](Collection.md#add(E))
  + ### push

    void push([E](Deque.md "type parameter in Deque") e)

    Pushes an element onto the stack represented by this deque (in other
    words, at the head of this deque) if it is possible to do so
    immediately without violating capacity restrictions, throwing an
    `IllegalStateException` if no space is currently available.

    This method is equivalent to [`addFirst(E)`](#addFirst(E)).

    Parameters:
    :   `e` - the element to push

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### pop

    [E](Deque.md "type parameter in Deque") pop()

    Pops an element from the stack represented by this deque. In other
    words, removes and returns the first element of this deque.

    This method is equivalent to [`removeFirst()`](#removeFirst()).

    Returns:
    :   the element at the front of this deque (which is the top
        of the stack represented by this deque)

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### remove

    boolean remove([Object](../lang/Object.md "class in java.lang") o)

    Removes the first occurrence of the specified element from this deque.
    If the deque does not contain the element, it is unchanged.
    More formally, removes the first element `e` such that
    `Objects.equals(o, e)` (if such an element exists).
    Returns `true` if this deque contained the specified element
    (or equivalently, if this deque changed as a result of the call).

    This method is equivalent to [`removeFirstOccurrence(Object)`](#removeFirstOccurrence(java.lang.Object)).

    Specified by:
    :   `remove` in interface `Collection<E>`

    Parameters:
    :   `o` - element to be removed from this deque, if present

    Returns:
    :   `true` if an element was removed as a result of this call

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
        ([optional](Collection.md#optional-restrictions))
  + ### contains

    boolean contains([Object](../lang/Object.md "class in java.lang") o)

    Returns `true` if this deque contains the specified element.
    More formally, returns `true` if and only if this deque contains
    at least one element `e` such that `Objects.equals(o, e)`.

    Specified by:
    :   `contains` in interface `Collection<E>`

    Parameters:
    :   `o` - element whose presence in this deque is to be tested

    Returns:
    :   `true` if this deque contains the specified element

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null and this
        deque does not permit null elements
        ([optional](Collection.md#optional-restrictions))
  + ### size

    int size()

    Returns the number of elements in this deque.

    Specified by:
    :   `size` in interface `Collection<E>`

    Returns:
    :   the number of elements in this deque
  + ### iterator

    [Iterator](Iterator.md "interface in java.util")<[E](Deque.md "type parameter in Deque")> iterator()

    Returns an iterator over the elements in this deque in proper sequence.
    The elements will be returned in order from first (head) to last (tail).

    Specified by:
    :   `iterator` in interface `Collection<E>`

    Specified by:
    :   `iterator` in interface `Iterable<E>`

    Returns:
    :   an iterator over the elements in this deque in proper sequence
  + ### descendingIterator

    [Iterator](Iterator.md "interface in java.util")<[E](Deque.md "type parameter in Deque")> descendingIterator()

    Returns an iterator over the elements in this deque in reverse
    sequential order. The elements will be returned in order from
    last (tail) to first (head).

    Returns:
    :   an iterator over the elements in this deque in reverse
        sequence
  + ### reversed

    default [Deque](Deque.md "interface in java.util")<[E](Deque.md "type parameter in Deque")> reversed()

    Returns a reverse-ordered [view](Collection.md#view) of this collection.
    The encounter order of elements in the returned view is the inverse of the encounter
    order of elements in this collection. The reverse ordering affects all order-sensitive
    operations, including those on the view collections of the returned view. If the collection
    implementation permits modifications to this view, the modifications "write through" to the
    underlying collection. Changes to the underlying collection might or might not be visible
    in this reversed view, depending upon the implementation.

    Specified by:
    :   `reversed` in interface `SequencedCollection<E>`

    Returns:
    :   a reverse-ordered view of this collection, as a `Deque`

    Since:
    :   21