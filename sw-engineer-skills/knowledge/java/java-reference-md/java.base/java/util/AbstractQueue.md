Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class AbstractQueue<E>

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.util.AbstractCollection](AbstractCollection.md "class in java.util")<E>

java.util.AbstractQueue<E>

Type Parameters:
:   `E` - the type of elements held in this queue

All Implemented Interfaces:
:   `Iterable<E>`, `Collection<E>`, `Queue<E>`

Direct Known Subclasses:
:   `ArrayBlockingQueue`, `ConcurrentLinkedQueue`, `DelayQueue`, `LinkedBlockingDeque`, `LinkedBlockingQueue`, `LinkedTransferQueue`, `PriorityBlockingQueue`, `PriorityQueue`, `SynchronousQueue`

---

public abstract class AbstractQueue<E>
extends [AbstractCollection](AbstractCollection.md "class in java.util")<E>
implements [Queue](Queue.md "interface in java.util")<E>

This class provides skeletal implementations of some [`Queue`](Queue.md "interface in java.util")
operations. The implementations in this class are appropriate when
the base implementation does *not* allow `null`
elements. Methods [`add`](#add(E)), [`remove`](#remove()), and
[`element`](#element()) are based on [`offer`](Queue.md#offer(E)), [`poll`](Queue.md#poll()), and [`peek`](Queue.md#peek()), respectively, but throw
exceptions instead of indicating failure via `false` or
`null` returns.

A `Queue` implementation that extends this class must
minimally define a method [`Queue.offer(E)`](Queue.md#offer(E)) which does not permit
insertion of `null` elements, along with methods [`Queue.peek()`](Queue.md#peek()), [`Queue.poll()`](Queue.md#poll()), [`Collection.size()`](Collection.md#size()), and
[`Collection.iterator()`](Collection.md#iterator()). Typically, additional methods will be
overridden as well. If these requirements cannot be met, consider
instead subclassing [`AbstractCollection`](AbstractCollection.md "class in java.util").

This class is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractQueue()`

  Constructor for use by subclasses.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(E e)`

  Inserts the specified element into this queue if it is possible to do so
  immediately without violating capacity restrictions, returning
  `true` upon success and throwing an `IllegalStateException`
  if no space is currently available.

  `boolean`

  `addAll(Collection<? extends E> c)`

  Adds all of the elements in the specified collection to this
  queue.

  `void`

  `clear()`

  Removes all of the elements from this queue.

  `E`

  `element()`

  Retrieves, but does not remove, the head of this queue.

  `E`

  `remove()`

  Retrieves and removes the head of this queue.

  ### Methods inherited from class java.util.[AbstractCollection](AbstractCollection.md "class in java.util")

  `contains, containsAll, isEmpty, iterator, remove, removeAll, retainAll, size, toArray, toArray, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.[Collection](Collection.md "interface in java.util")

  `contains, containsAll, equals, hashCode, isEmpty, iterator, parallelStream, remove, removeAll, removeIf, retainAll, size, spliterator, stream, toArray, toArray, toArray`

  ### Methods inherited from interface java.lang.[Iterable](../lang/Iterable.md "interface in java.lang")

  `forEach`

  ### Methods inherited from interface java.util.[Queue](Queue.md "interface in java.util")

  `offer, peek, poll`

* ## Constructor Details

  + ### AbstractQueue

    protected AbstractQueue()

    Constructor for use by subclasses.
* ## Method Details

  + ### add

    public boolean add([E](AbstractQueue.md "type parameter in AbstractQueue") e)

    Inserts the specified element into this queue if it is possible to do so
    immediately without violating capacity restrictions, returning
    `true` upon success and throwing an `IllegalStateException`
    if no space is currently available.

    This implementation returns `true` if `offer` succeeds,
    else throws an `IllegalStateException`.

    Specified by:
    :   `add` in interface `Collection<E>`

    Specified by:
    :   `add` in interface `Queue<E>`

    Overrides:
    :   `add` in class `AbstractCollection<E>`

    Parameters:
    :   `e` - the element to add

    Returns:
    :   `true` (as specified by [`Collection.add(E)`](Collection.md#add(E)))

    Throws:
    :   `IllegalStateException` - if the element cannot be added at this
        time due to capacity restrictions
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this queue
    :   `NullPointerException` - if the specified element is null and
        this queue does not permit null elements
    :   `IllegalArgumentException` - if some property of this element
        prevents it from being added to this queue
  + ### remove

    public [E](AbstractQueue.md "type parameter in AbstractQueue") remove()

    Retrieves and removes the head of this queue. This method differs
    from [`poll`](Queue.md#poll()) only in that it throws an exception if this
    queue is empty.

    This implementation returns the result of `poll`
    unless the queue is empty.

    Specified by:
    :   `remove` in interface `Queue<E>`

    Returns:
    :   the head of this queue

    Throws:
    :   `NoSuchElementException` - if this queue is empty
  + ### element

    public [E](AbstractQueue.md "type parameter in AbstractQueue") element()

    Retrieves, but does not remove, the head of this queue. This method
    differs from [`peek`](Queue.md#peek()) only in that it throws an exception if
    this queue is empty.

    This implementation returns the result of `peek`
    unless the queue is empty.

    Specified by:
    :   `element` in interface `Queue<E>`

    Returns:
    :   the head of this queue

    Throws:
    :   `NoSuchElementException` - if this queue is empty
  + ### clear

    public void clear()

    Removes all of the elements from this queue.
    The queue will be empty after this call returns.

    This implementation repeatedly invokes [`poll`](Queue.md#poll()) until it
    returns `null`.

    Specified by:
    :   `clear` in interface `Collection<E>`

    Overrides:
    :   `clear` in class `AbstractCollection<E>`
  + ### addAll

    public boolean addAll([Collection](Collection.md "interface in java.util")<? extends [E](AbstractQueue.md "type parameter in AbstractQueue")> c)

    Adds all of the elements in the specified collection to this
    queue. Attempts to addAll of a queue to itself result in
    `IllegalArgumentException`. Further, the behavior of
    this operation is undefined if the specified collection is
    modified while the operation is in progress.

    This implementation iterates over the specified collection,
    and adds each element returned by the iterator to this
    queue, in turn. A runtime exception encountered while
    trying to add an element (including, in particular, a
    `null` element) may result in only some of the elements
    having been successfully added when the associated exception is
    thrown.

    Specified by:
    :   `addAll` in interface `Collection<E>`

    Overrides:
    :   `addAll` in class `AbstractCollection<E>`

    Parameters:
    :   `c` - collection containing elements to be added to this queue

    Returns:
    :   `true` if this queue changed as a result of the call

    Throws:
    :   `ClassCastException` - if the class of an element of the specified
        collection prevents it from being added to this queue
    :   `NullPointerException` - if the specified collection contains a
        null element and this queue does not permit null elements,
        or if the specified collection is null
    :   `IllegalArgumentException` - if some property of an element of the
        specified collection prevents it from being added to this
        queue, or if the specified collection is this queue
    :   `IllegalStateException` - if not all the elements can be added at
        this time due to insertion restrictions

    See Also:
    :   - [`add(Object)`](#add(E))