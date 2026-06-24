Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface BlockingDeque<E>

Type Parameters:
:   `E` - the type of elements held in this deque

All Superinterfaces:
:   `BlockingQueue<E>`, `Collection<E>`, `Deque<E>`, `Iterable<E>`, `Queue<E>`, `SequencedCollection<E>`

All Known Implementing Classes:
:   `LinkedBlockingDeque`

---

public interface BlockingDeque<E>
extends [BlockingQueue](BlockingQueue.md "interface in java.util.concurrent")<E>, [Deque](../Deque.md "interface in java.util")<E>

A [`Deque`](../Deque.md "interface in java.util") that additionally supports blocking operations that wait
for the deque to become non-empty when retrieving an element, and wait for
space to become available in the deque when storing an element.

`BlockingDeque` methods come in four forms, with different ways
of handling operations that cannot be satisfied immediately, but may be
satisfied at some point in the future:
one throws an exception, the second returns a special value (either
`null` or `false`, depending on the operation), the third
blocks the current thread indefinitely until the operation can succeed,
and the fourth blocks for only a given maximum time limit before giving
up. These methods are summarized in the following table:

Summary of BlockingDeque methods

| First Element (Head) | | | | |
|  | Throws exception | Special value | Blocks | Times out |
| Insert | [`addFirst(e)`](#addFirst(E)) | [`offerFirst(e)`](#offerFirst(E)) | [`putFirst(e)`](#putFirst(E)) | [`offerFirst(e, time, unit)`](#offerFirst(E,long,java.util.concurrent.TimeUnit)) |
| Remove | [`removeFirst()`](../Deque.md#removeFirst()) | [`pollFirst()`](../Deque.md#pollFirst()) | [`takeFirst()`](#takeFirst()) | [`pollFirst(time, unit)`](#pollFirst(long,java.util.concurrent.TimeUnit)) |
| Examine | [`getFirst()`](../Deque.md#getFirst()) | [`peekFirst()`](../Deque.md#peekFirst()) | not applicable | not applicable |
| Last Element (Tail) | | | | |
|  | Throws exception | Special value | Blocks | Times out |
| Insert | [`addLast(e)`](#addLast(E)) | [`offerLast(e)`](#offerLast(E)) | [`putLast(e)`](#putLast(E)) | [`offerLast(e, time, unit)`](#offerLast(E,long,java.util.concurrent.TimeUnit)) |
| Remove | [`removeLast()`](../Deque.md#removeLast()) | [`pollLast()`](../Deque.md#pollLast()) | [`takeLast()`](#takeLast()) | [`pollLast(time, unit)`](#pollLast(long,java.util.concurrent.TimeUnit)) |
| Examine | [`getLast()`](../Deque.md#getLast()) | [`peekLast()`](../Deque.md#peekLast()) | not applicable | not applicable |

Like any [`BlockingQueue`](BlockingQueue.md "interface in java.util.concurrent"), a `BlockingDeque` is thread safe,
does not permit null elements, and may (or may not) be
capacity-constrained.

A `BlockingDeque` implementation may be used directly as a FIFO
`BlockingQueue`. The methods inherited from the
`BlockingQueue` interface are precisely equivalent to
`BlockingDeque` methods as indicated in the following table:

Comparison of BlockingQueue and BlockingDeque methods

|  | `BlockingQueue` Method | Equivalent `BlockingDeque` Method |
| Insert | [`add(e)`](#add(E)) | [`addLast(e)`](#addLast(E)) |
| [`offer(e)`](#offer(E)) | [`offerLast(e)`](#offerLast(E)) |
| [`put(e)`](#put(E)) | [`putLast(e)`](#putLast(E)) |
| [`offer(e, time, unit)`](#offer(E,long,java.util.concurrent.TimeUnit)) | [`offerLast(e, time, unit)`](#offerLast(E,long,java.util.concurrent.TimeUnit)) |
| Remove | [`remove()`](#remove()) | [`removeFirst()`](../Deque.md#removeFirst()) |
| [`poll()`](#poll()) | [`pollFirst()`](../Deque.md#pollFirst()) |
| [`take()`](#take()) | [`takeFirst()`](#takeFirst()) |
| [`poll(time, unit)`](#poll(long,java.util.concurrent.TimeUnit)) | [`pollFirst(time, unit)`](#pollFirst(long,java.util.concurrent.TimeUnit)) |
| Examine | [`element()`](#element()) | [`getFirst()`](../Deque.md#getFirst()) |
| [`peek()`](#peek()) | [`peekFirst()`](../Deque.md#peekFirst()) |

Memory consistency effects: As with other concurrent
collections, actions in a thread prior to placing an object into a
`BlockingDeque`
[*happen-before*](package-summary.md#MemoryVisibility)
actions subsequent to the access or removal of that element from
the `BlockingDeque` in another thread.

This interface is a member of the
[Java Collections Framework](../../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

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

  `E`

  `element()`

  Retrieves, but does not remove, the head of the queue represented by
  this deque (in other words, the first element of this deque).

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

  `offer(E e,
  long timeout,
  TimeUnit unit)`

  Inserts the specified element into the queue represented by this deque
  (in other words, at the tail of this deque), waiting up to the
  specified wait time if necessary for space to become available.

  `boolean`

  `offerFirst(E e)`

  Inserts the specified element at the front of this deque if it is
  possible to do so immediately without violating capacity restrictions,
  returning `true` upon success and `false` if no space is
  currently available.

  `boolean`

  `offerFirst(E e,
  long timeout,
  TimeUnit unit)`

  Inserts the specified element at the front of this deque,
  waiting up to the specified wait time if necessary for space to
  become available.

  `boolean`

  `offerLast(E e)`

  Inserts the specified element at the end of this deque if it is
  possible to do so immediately without violating capacity restrictions,
  returning `true` upon success and `false` if no space is
  currently available.

  `boolean`

  `offerLast(E e,
  long timeout,
  TimeUnit unit)`

  Inserts the specified element at the end of this deque,
  waiting up to the specified wait time if necessary for space to
  become available.

  `E`

  `peek()`

  Retrieves, but does not remove, the head of the queue represented by
  this deque (in other words, the first element of this deque), or
  returns `null` if this deque is empty.

  `E`

  `poll()`

  Retrieves and removes the head of the queue represented by this deque
  (in other words, the first element of this deque), or returns
  `null` if this deque is empty.

  `E`

  `poll(long timeout,
  TimeUnit unit)`

  Retrieves and removes the head of the queue represented by this deque
  (in other words, the first element of this deque), waiting up to the
  specified wait time if necessary for an element to become available.

  `E`

  `pollFirst(long timeout,
  TimeUnit unit)`

  Retrieves and removes the first element of this deque, waiting
  up to the specified wait time if necessary for an element to
  become available.

  `E`

  `pollLast(long timeout,
  TimeUnit unit)`

  Retrieves and removes the last element of this deque, waiting
  up to the specified wait time if necessary for an element to
  become available.

  `void`

  `push(E e)`

  Pushes an element onto the stack represented by this deque (in other
  words, at the head of this deque) if it is possible to do so
  immediately without violating capacity restrictions, throwing an
  `IllegalStateException` if no space is currently available.

  `void`

  `put(E e)`

  Inserts the specified element into the queue represented by this deque
  (in other words, at the tail of this deque), waiting if necessary for
  space to become available.

  `void`

  `putFirst(E e)`

  Inserts the specified element at the front of this deque,
  waiting if necessary for space to become available.

  `void`

  `putLast(E e)`

  Inserts the specified element at the end of this deque,
  waiting if necessary for space to become available.

  `E`

  `remove()`

  Retrieves and removes the head of the queue represented by this deque
  (in other words, the first element of this deque).

  `boolean`

  `remove(Object o)`

  Removes the first occurrence of the specified element from this deque.

  `boolean`

  `removeFirstOccurrence(Object o)`

  Removes the first occurrence of the specified element from this deque.

  `boolean`

  `removeLastOccurrence(Object o)`

  Removes the last occurrence of the specified element from this deque.

  `int`

  `size()`

  Returns the number of elements in this deque.

  `E`

  `take()`

  Retrieves and removes the head of the queue represented by this deque
  (in other words, the first element of this deque), waiting if
  necessary until an element becomes available.

  `E`

  `takeFirst()`

  Retrieves and removes the first element of this deque, waiting
  if necessary until an element becomes available.

  `E`

  `takeLast()`

  Retrieves and removes the last element of this deque, waiting
  if necessary until an element becomes available.

  ### Methods inherited from interface java.util.concurrent.[BlockingQueue](BlockingQueue.md "interface in java.util.concurrent")

  `drainTo, drainTo, remainingCapacity`

  ### Methods inherited from interface java.util.[Collection](../Collection.md "interface in java.util")

  `clear, containsAll, equals, hashCode, isEmpty, parallelStream, removeAll, removeIf, retainAll, spliterator, stream, toArray, toArray, toArray`

  ### Methods inherited from interface java.util.[Deque](../Deque.md "interface in java.util")

  `addAll, descendingIterator, getFirst, getLast, peekFirst, peekLast, pollFirst, pollLast, pop, removeFirst, removeLast, reversed`

  ### Methods inherited from interface java.lang.[Iterable](../../lang/Iterable.md "interface in java.lang")

  `forEach`

* ## Method Details

  + ### addFirst

    void addFirst([E](BlockingDeque.md "type parameter in BlockingDeque") e)

    Inserts the specified element at the front of this deque if it is
    possible to do so immediately without violating capacity restrictions,
    throwing an `IllegalStateException` if no space is currently
    available. When using a capacity-restricted deque, it is generally
    preferable to use [`offerFirst`](#offerFirst(E)).

    Specified by:
    :   `addFirst` in interface `Deque<E>`

    Specified by:
    :   `addFirst` in interface `SequencedCollection<E>`

    Parameters:
    :   `e` - the element to add

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### addLast

    void addLast([E](BlockingDeque.md "type parameter in BlockingDeque") e)

    Inserts the specified element at the end of this deque if it is
    possible to do so immediately without violating capacity restrictions,
    throwing an `IllegalStateException` if no space is currently
    available. When using a capacity-restricted deque, it is generally
    preferable to use [`offerLast`](#offerLast(E)).

    Specified by:
    :   `addLast` in interface `Deque<E>`

    Specified by:
    :   `addLast` in interface `SequencedCollection<E>`

    Parameters:
    :   `e` - the element to add

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offerFirst

    boolean offerFirst([E](BlockingDeque.md "type parameter in BlockingDeque") e)

    Inserts the specified element at the front of this deque if it is
    possible to do so immediately without violating capacity restrictions,
    returning `true` upon success and `false` if no space is
    currently available.
    When using a capacity-restricted deque, this method is generally
    preferable to the [`addFirst`](#addFirst(E)) method, which can
    fail to insert an element only by throwing an exception.

    Specified by:
    :   `offerFirst` in interface `Deque<E>`

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` if the element was added to this deque, else
        `false`

    Throws:
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offerLast

    boolean offerLast([E](BlockingDeque.md "type parameter in BlockingDeque") e)

    Inserts the specified element at the end of this deque if it is
    possible to do so immediately without violating capacity restrictions,
    returning `true` upon success and `false` if no space is
    currently available.
    When using a capacity-restricted deque, this method is generally
    preferable to the [`addLast`](#addLast(E)) method, which can
    fail to insert an element only by throwing an exception.

    Specified by:
    :   `offerLast` in interface `Deque<E>`

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` if the element was added to this deque, else
        `false`

    Throws:
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### putFirst

    void putFirst([E](BlockingDeque.md "type parameter in BlockingDeque") e)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Inserts the specified element at the front of this deque,
    waiting if necessary for space to become available.

    Parameters:
    :   `e` - the element to add

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### putLast

    void putLast([E](BlockingDeque.md "type parameter in BlockingDeque") e)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Inserts the specified element at the end of this deque,
    waiting if necessary for space to become available.

    Parameters:
    :   `e` - the element to add

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offerFirst

    boolean offerFirst([E](BlockingDeque.md "type parameter in BlockingDeque") e,
    long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Inserts the specified element at the front of this deque,
    waiting up to the specified wait time if necessary for space to
    become available.

    Parameters:
    :   `e` - the element to add
    :   `timeout` - how long to wait before giving up, in units of
        `unit`
    :   `unit` - a `TimeUnit` determining how to interpret the
        `timeout` parameter

    Returns:
    :   `true` if successful, or `false` if
        the specified waiting time elapses before space is available

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offerLast

    boolean offerLast([E](BlockingDeque.md "type parameter in BlockingDeque") e,
    long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Inserts the specified element at the end of this deque,
    waiting up to the specified wait time if necessary for space to
    become available.

    Parameters:
    :   `e` - the element to add
    :   `timeout` - how long to wait before giving up, in units of
        `unit`
    :   `unit` - a `TimeUnit` determining how to interpret the
        `timeout` parameter

    Returns:
    :   `true` if successful, or `false` if
        the specified waiting time elapses before space is available

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### takeFirst

    [E](BlockingDeque.md "type parameter in BlockingDeque") takeFirst()
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes the first element of this deque, waiting
    if necessary until an element becomes available.

    Returns:
    :   the head of this deque

    Throws:
    :   `InterruptedException` - if interrupted while waiting
  + ### takeLast

    [E](BlockingDeque.md "type parameter in BlockingDeque") takeLast()
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes the last element of this deque, waiting
    if necessary until an element becomes available.

    Returns:
    :   the tail of this deque

    Throws:
    :   `InterruptedException` - if interrupted while waiting
  + ### pollFirst

    [E](BlockingDeque.md "type parameter in BlockingDeque") pollFirst(long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes the first element of this deque, waiting
    up to the specified wait time if necessary for an element to
    become available.

    Parameters:
    :   `timeout` - how long to wait before giving up, in units of
        `unit`
    :   `unit` - a `TimeUnit` determining how to interpret the
        `timeout` parameter

    Returns:
    :   the head of this deque, or `null` if the specified
        waiting time elapses before an element is available

    Throws:
    :   `InterruptedException` - if interrupted while waiting
  + ### pollLast

    [E](BlockingDeque.md "type parameter in BlockingDeque") pollLast(long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes the last element of this deque, waiting
    up to the specified wait time if necessary for an element to
    become available.

    Parameters:
    :   `timeout` - how long to wait before giving up, in units of
        `unit`
    :   `unit` - a `TimeUnit` determining how to interpret the
        `timeout` parameter

    Returns:
    :   the tail of this deque, or `null` if the specified
        waiting time elapses before an element is available

    Throws:
    :   `InterruptedException` - if interrupted while waiting
  + ### removeFirstOccurrence

    boolean removeFirstOccurrence([Object](../../lang/Object.md "class in java.lang") o)

    Removes the first occurrence of the specified element from this deque.
    If the deque does not contain the element, it is unchanged.
    More formally, removes the first element `e` such that
    `o.equals(e)` (if such an element exists).
    Returns `true` if this deque contained the specified element
    (or equivalently, if this deque changed as a result of the call).

    Specified by:
    :   `removeFirstOccurrence` in interface `Deque<E>`

    Parameters:
    :   `o` - element to be removed from this deque, if present

    Returns:
    :   `true` if an element was removed as a result of this call

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
  + ### removeLastOccurrence

    boolean removeLastOccurrence([Object](../../lang/Object.md "class in java.lang") o)

    Removes the last occurrence of the specified element from this deque.
    If the deque does not contain the element, it is unchanged.
    More formally, removes the last element `e` such that
    `o.equals(e)` (if such an element exists).
    Returns `true` if this deque contained the specified element
    (or equivalently, if this deque changed as a result of the call).

    Specified by:
    :   `removeLastOccurrence` in interface `Deque<E>`

    Parameters:
    :   `o` - element to be removed from this deque, if present

    Returns:
    :   `true` if an element was removed as a result of this call

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
  + ### add

    boolean add([E](BlockingDeque.md "type parameter in BlockingDeque") e)

    Inserts the specified element into the queue represented by this deque
    (in other words, at the tail of this deque) if it is possible to do so
    immediately without violating capacity restrictions, returning
    `true` upon success and throwing an
    `IllegalStateException` if no space is currently available.
    When using a capacity-restricted deque, it is generally preferable to
    use [`offer`](#offer(E)).

    This method is equivalent to [`addLast`](#addLast(E)).

    Specified by:
    :   `add` in interface `BlockingQueue<E>`

    Specified by:
    :   `add` in interface `Collection<E>`

    Specified by:
    :   `add` in interface `Deque<E>`

    Specified by:
    :   `add` in interface `Queue<E>`

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` (as specified by [`Collection.add(E)`](../Collection.md#add(E)))

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offer

    boolean offer([E](BlockingDeque.md "type parameter in BlockingDeque") e)

    Inserts the specified element into the queue represented by this deque
    (in other words, at the tail of this deque) if it is possible to do so
    immediately without violating capacity restrictions, returning
    `true` upon success and `false` if no space is currently
    available. When using a capacity-restricted deque, this method is
    generally preferable to the [`add(E)`](#add(E)) method, which can fail to
    insert an element only by throwing an exception.

    This method is equivalent to [`offerLast`](#offerLast(E)).

    Specified by:
    :   `offer` in interface `BlockingQueue<E>`

    Specified by:
    :   `offer` in interface `Deque<E>`

    Specified by:
    :   `offer` in interface `Queue<E>`

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` if the element was added to this queue, else
        `false`

    Throws:
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### put

    void put([E](BlockingDeque.md "type parameter in BlockingDeque") e)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Inserts the specified element into the queue represented by this deque
    (in other words, at the tail of this deque), waiting if necessary for
    space to become available.

    This method is equivalent to [`putLast`](#putLast(E)).

    Specified by:
    :   `put` in interface `BlockingQueue<E>`

    Parameters:
    :   `e` - the element to add

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### offer

    boolean offer([E](BlockingDeque.md "type parameter in BlockingDeque") e,
    long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Inserts the specified element into the queue represented by this deque
    (in other words, at the tail of this deque), waiting up to the
    specified wait time if necessary for space to become available.

    This method is equivalent to
    [`offerLast`](#offerLast(E,long,java.util.concurrent.TimeUnit)).

    Specified by:
    :   `offer` in interface `BlockingQueue<E>`

    Parameters:
    :   `e` - the element to add
    :   `timeout` - how long to wait before giving up, in units of
        `unit`
    :   `unit` - a `TimeUnit` determining how to interpret the
        `timeout` parameter

    Returns:
    :   `true` if the element was added to this deque, else
        `false`

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque
  + ### remove

    [E](BlockingDeque.md "type parameter in BlockingDeque") remove()

    Retrieves and removes the head of the queue represented by this deque
    (in other words, the first element of this deque).
    This method differs from [`poll()`](#poll()) only in that it
    throws an exception if this deque is empty.

    This method is equivalent to [`removeFirst`](../Deque.md#removeFirst()).

    Specified by:
    :   `remove` in interface `Deque<E>`

    Specified by:
    :   `remove` in interface `Queue<E>`

    Returns:
    :   the head of the queue represented by this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### poll

    [E](BlockingDeque.md "type parameter in BlockingDeque") poll()

    Retrieves and removes the head of the queue represented by this deque
    (in other words, the first element of this deque), or returns
    `null` if this deque is empty.

    This method is equivalent to [`Deque.pollFirst()`](../Deque.md#pollFirst()).

    Specified by:
    :   `poll` in interface `Deque<E>`

    Specified by:
    :   `poll` in interface `Queue<E>`

    Returns:
    :   the head of this deque, or `null` if this deque is empty
  + ### take

    [E](BlockingDeque.md "type parameter in BlockingDeque") take()
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes the head of the queue represented by this deque
    (in other words, the first element of this deque), waiting if
    necessary until an element becomes available.

    This method is equivalent to [`takeFirst`](#takeFirst()).

    Specified by:
    :   `take` in interface `BlockingQueue<E>`

    Returns:
    :   the head of this deque

    Throws:
    :   `InterruptedException` - if interrupted while waiting
  + ### poll

    [E](BlockingDeque.md "type parameter in BlockingDeque") poll(long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Retrieves and removes the head of the queue represented by this deque
    (in other words, the first element of this deque), waiting up to the
    specified wait time if necessary for an element to become available.

    This method is equivalent to
    [`pollFirst`](#pollFirst(long,java.util.concurrent.TimeUnit)).

    Specified by:
    :   `poll` in interface `BlockingQueue<E>`

    Parameters:
    :   `timeout` - how long to wait before giving up, in units of
        `unit`
    :   `unit` - a `TimeUnit` determining how to interpret the
        `timeout` parameter

    Returns:
    :   the head of this deque, or `null` if the
        specified waiting time elapses before an element is available

    Throws:
    :   `InterruptedException` - if interrupted while waiting
  + ### element

    [E](BlockingDeque.md "type parameter in BlockingDeque") element()

    Retrieves, but does not remove, the head of the queue represented by
    this deque (in other words, the first element of this deque).
    This method differs from [`peek`](#peek()) only in that it throws an
    exception if this deque is empty.

    This method is equivalent to [`getFirst`](../Deque.md#getFirst()).

    Specified by:
    :   `element` in interface `Deque<E>`

    Specified by:
    :   `element` in interface `Queue<E>`

    Returns:
    :   the head of this deque

    Throws:
    :   `NoSuchElementException` - if this deque is empty
  + ### peek

    [E](BlockingDeque.md "type parameter in BlockingDeque") peek()

    Retrieves, but does not remove, the head of the queue represented by
    this deque (in other words, the first element of this deque), or
    returns `null` if this deque is empty.

    This method is equivalent to [`peekFirst`](../Deque.md#peekFirst()).

    Specified by:
    :   `peek` in interface `Deque<E>`

    Specified by:
    :   `peek` in interface `Queue<E>`

    Returns:
    :   the head of this deque, or `null` if this deque is empty
  + ### remove

    boolean remove([Object](../../lang/Object.md "class in java.lang") o)

    Removes the first occurrence of the specified element from this deque.
    If the deque does not contain the element, it is unchanged.
    More formally, removes the first element `e` such that
    `o.equals(e)` (if such an element exists).
    Returns `true` if this deque contained the specified element
    (or equivalently, if this deque changed as a result of the call).

    This method is equivalent to
    [`removeFirstOccurrence`](#removeFirstOccurrence(java.lang.Object)).

    Specified by:
    :   `remove` in interface `BlockingQueue<E>`

    Specified by:
    :   `remove` in interface `Collection<E>`

    Specified by:
    :   `remove` in interface `Deque<E>`

    Parameters:
    :   `o` - element to be removed from this deque, if present

    Returns:
    :   `true` if this deque changed as a result of the call

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
  + ### contains

    boolean contains([Object](../../lang/Object.md "class in java.lang") o)

    Returns `true` if this deque contains the specified element.
    More formally, returns `true` if and only if this deque contains
    at least one element `e` such that `o.equals(e)`.

    Specified by:
    :   `contains` in interface `BlockingQueue<E>`

    Specified by:
    :   `contains` in interface `Collection<E>`

    Specified by:
    :   `contains` in interface `Deque<E>`

    Parameters:
    :   `o` - object to be checked for containment in this deque

    Returns:
    :   `true` if this deque contains the specified element

    Throws:
    :   `ClassCastException` - if the class of the specified element
        is incompatible with this deque
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified element is null
        ([optional](../../../../java.base/java/util/Collection.md#optional-restrictions))
  + ### size

    int size()

    Returns the number of elements in this deque.

    Specified by:
    :   `size` in interface `Collection<E>`

    Specified by:
    :   `size` in interface `Deque<E>`

    Returns:
    :   the number of elements in this deque
  + ### iterator

    [Iterator](../Iterator.md "interface in java.util")<[E](BlockingDeque.md "type parameter in BlockingDeque")> iterator()

    Returns an iterator over the elements in this deque in proper sequence.
    The elements will be returned in order from first (head) to last (tail).

    Specified by:
    :   `iterator` in interface `Collection<E>`

    Specified by:
    :   `iterator` in interface `Deque<E>`

    Specified by:
    :   `iterator` in interface `Iterable<E>`

    Returns:
    :   an iterator over the elements in this deque in proper sequence
  + ### push

    void push([E](BlockingDeque.md "type parameter in BlockingDeque") e)

    Pushes an element onto the stack represented by this deque (in other
    words, at the head of this deque) if it is possible to do so
    immediately without violating capacity restrictions, throwing an
    `IllegalStateException` if no space is currently available.

    This method is equivalent to [`addFirst`](#addFirst(E)).

    Specified by:
    :   `push` in interface `Deque<E>`

    Parameters:
    :   `e` - the element to push

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this deque
    :   `NullPointerException` - if the specified element is null
    :   `IllegalArgumentException` - if some property of the specified
        element prevents it from being added to this deque