Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface ListIterator<E>

Type Parameters:
:   `E` - the type of elements returned by this list iterator

All Superinterfaces:
:   `Iterator<E>`

---

public interface ListIterator<E>
extends [Iterator](Iterator.md "interface in java.util")<E>

An iterator for lists that allows the programmer
to traverse the list in either direction, modify
the list during iteration, and obtain the iterator's
current position in the list. A `ListIterator`
has no current element; its *cursor position* always
lies between the element that would be returned by a call
to `previous()` and the element that would be
returned by a call to `next()`.
An iterator for a list of length `n` has `n+1` possible
cursor positions, as illustrated by the carets (`^`) below:

```
                      Element(0)   Element(1)   Element(2)   ... Element(n-1)
 cursor positions:  ^            ^            ^            ^                  ^
```

Note that the [`remove()`](#remove()) and [`set(Object)`](#set(E)) methods are
*not* defined in terms of the cursor position; they are defined to
operate on the last element returned by a call to [`next()`](#next()) or
[`previous()`](#previous()).

This interface is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.2

See Also:
:   * [`Collection`](Collection.md "interface in java.util")
    * [`List`](List.md "interface in java.util")
    * [`Iterator`](Iterator.md "interface in java.util")
    * [`Enumeration`](Enumeration.md "interface in java.util")
    * [`List.listIterator()`](List.md#listIterator())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(E e)`

  Inserts the specified element into the list (optional operation).

  `boolean`

  `hasNext()`

  Returns `true` if this list iterator has more elements when
  traversing the list in the forward direction.

  `boolean`

  `hasPrevious()`

  Returns `true` if this list iterator has more elements when
  traversing the list in the reverse direction.

  `E`

  `next()`

  Returns the next element in the list and advances the cursor position.

  `int`

  `nextIndex()`

  Returns the index of the element that would be returned by a
  subsequent call to [`next()`](#next()).

  `E`

  `previous()`

  Returns the previous element in the list and moves the cursor
  position backwards.

  `int`

  `previousIndex()`

  Returns the index of the element that would be returned by a
  subsequent call to [`previous()`](#previous()).

  `void`

  `remove()`

  Removes from the list the last element that was returned by [`next()`](#next()) or [`previous()`](#previous()) (optional operation).

  `void`

  `set(E e)`

  Replaces the last element returned by [`next()`](#next()) or
  [`previous()`](#previous()) with the specified element (optional operation).

  ### Methods inherited from interface java.util.[Iterator](Iterator.md "interface in java.util")

  `forEachRemaining`

* ## Method Details

  + ### hasNext

    boolean hasNext()

    Returns `true` if this list iterator has more elements when
    traversing the list in the forward direction. (In other words,
    returns `true` if [`next()`](#next()) would return an element rather
    than throwing an exception.)

    Specified by:
    :   `hasNext` in interface `Iterator<E>`

    Returns:
    :   `true` if the list iterator has more elements when
        traversing the list in the forward direction
  + ### next

    [E](ListIterator.md "type parameter in ListIterator") next()

    Returns the next element in the list and advances the cursor position.
    This method may be called repeatedly to iterate through the list,
    or intermixed with calls to [`previous()`](#previous()) to go back and forth.
    (Note that alternating calls to `next` and `previous`
    will return the same element repeatedly.)

    Specified by:
    :   `next` in interface `Iterator<E>`

    Returns:
    :   the next element in the list

    Throws:
    :   `NoSuchElementException` - if the iteration has no next element
  + ### hasPrevious

    boolean hasPrevious()

    Returns `true` if this list iterator has more elements when
    traversing the list in the reverse direction. (In other words,
    returns `true` if [`previous()`](#previous()) would return an element
    rather than throwing an exception.)

    Returns:
    :   `true` if the list iterator has more elements when
        traversing the list in the reverse direction
  + ### previous

    [E](ListIterator.md "type parameter in ListIterator") previous()

    Returns the previous element in the list and moves the cursor
    position backwards. This method may be called repeatedly to
    iterate through the list backwards, or intermixed with calls to
    [`next()`](#next()) to go back and forth. (Note that alternating calls
    to `next` and `previous` will return the same
    element repeatedly.)

    Returns:
    :   the previous element in the list

    Throws:
    :   `NoSuchElementException` - if the iteration has no previous
        element
  + ### nextIndex

    int nextIndex()

    Returns the index of the element that would be returned by a
    subsequent call to [`next()`](#next()). (Returns list size if the list
    iterator is at the end of the list.)

    Returns:
    :   the index of the element that would be returned by a
        subsequent call to `next`, or list size if the list
        iterator is at the end of the list
  + ### previousIndex

    int previousIndex()

    Returns the index of the element that would be returned by a
    subsequent call to [`previous()`](#previous()). (Returns -1 if the list
    iterator is at the beginning of the list.)

    Returns:
    :   the index of the element that would be returned by a
        subsequent call to `previous`, or -1 if the list
        iterator is at the beginning of the list
  + ### remove

    void remove()

    Removes from the list the last element that was returned by [`next()`](#next()) or [`previous()`](#previous()) (optional operation). This call can
    only be made once per call to `next` or `previous`.
    It can be made only if [`add(E)`](#add(E)) has not been
    called after the last call to `next` or `previous`.

    Specified by:
    :   `remove` in interface `Iterator<E>`

    Throws:
    :   `UnsupportedOperationException` - if the `remove`
        operation is not supported by this list iterator
    :   `IllegalStateException` - if neither `next` nor
        `previous` have been called, or `remove` or
        `add` have been called after the last call to
        `next` or `previous`
  + ### set

    void set([E](ListIterator.md "type parameter in ListIterator") e)

    Replaces the last element returned by [`next()`](#next()) or
    [`previous()`](#previous()) with the specified element (optional operation).
    This call can be made only if neither [`remove()`](#remove()) nor [`add(E)`](#add(E)) have been called after the last call to `next` or
    `previous`.

    Parameters:
    :   `e` - the element with which to replace the last element returned by
        `next` or `previous`

    Throws:
    :   `UnsupportedOperationException` - if the `set` operation
        is not supported by this list iterator
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this list
    :   `IllegalArgumentException` - if some aspect of the specified
        element prevents it from being added to this list
    :   `IllegalStateException` - if neither `next` nor
        `previous` have been called, or `remove` or
        `add` have been called after the last call to
        `next` or `previous`
  + ### add

    void add([E](ListIterator.md "type parameter in ListIterator") e)

    Inserts the specified element into the list (optional operation).
    The element is inserted immediately before the element that
    would be returned by [`next()`](#next()), if any, and after the element
    that would be returned by [`previous()`](#previous()), if any. (If the
    list contains no elements, the new element becomes the sole element
    on the list.) The new element is inserted before the implicit
    cursor: a subsequent call to `next` would be unaffected, and a
    subsequent call to `previous` would return the new element.
    (This call increases by one the value that would be returned by a
    call to `nextIndex` or `previousIndex`.)

    Parameters:
    :   `e` - the element to insert

    Throws:
    :   `UnsupportedOperationException` - if the `add` method is
        not supported by this list iterator
    :   `ClassCastException` - if the class of the specified element
        prevents it from being added to this list
    :   `IllegalArgumentException` - if some aspect of this element
        prevents it from being added to this list