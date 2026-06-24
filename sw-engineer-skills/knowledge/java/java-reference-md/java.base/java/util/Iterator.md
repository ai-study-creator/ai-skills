Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Iterator<E>

Type Parameters:
:   `E` - the type of elements returned by this iterator

All Known Subinterfaces:
:   `ListIterator<E>`, `PrimitiveIterator<T,T_CONS>`, `PrimitiveIterator.OfDouble`, `PrimitiveIterator.OfInt`, `PrimitiveIterator.OfLong`, `XMLEventReader`

All Known Implementing Classes:
:   `BeanContextSupport.BCSIterator`, `EventReaderDelegate`, `Scanner`

---

public interface Iterator<E>

An iterator over a collection. `Iterator` takes the place of
[`Enumeration`](Enumeration.md "interface in java.util") in the Java Collections Framework. Iterators
differ from enumerations in two ways:

* Iterators allow the caller to remove elements from the
  underlying collection during the iteration with well-defined
  semantics.* Method names have been improved.

This interface is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.2

See Also:
:   * [`Collection`](Collection.md "interface in java.util")
    * [`ListIterator`](ListIterator.md "interface in java.util")
    * [`Iterable`](../lang/Iterable.md "interface in java.lang")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default void`

  `forEachRemaining(Consumer<? super E> action)`

  Performs the given action for each remaining element until all elements
  have been processed or the action throws an exception.

  `boolean`

  `hasNext()`

  Returns `true` if the iteration has more elements.

  `E`

  `next()`

  Returns the next element in the iteration.

  `default void`

  `remove()`

  Removes from the underlying collection the last element returned
  by this iterator (optional operation).

* ## Method Details

  + ### hasNext

    boolean hasNext()

    Returns `true` if the iteration has more elements.
    (In other words, returns `true` if [`next()`](#next()) would
    return an element rather than throwing an exception.)

    Returns:
    :   `true` if the iteration has more elements
  + ### next

    [E](Iterator.md "type parameter in Iterator") next()

    Returns the next element in the iteration.

    Returns:
    :   the next element in the iteration

    Throws:
    :   `NoSuchElementException` - if the iteration has no more elements
  + ### remove

    default void remove()

    Removes from the underlying collection the last element returned
    by this iterator (optional operation). This method can be called
    only once per call to [`next()`](#next()).

    The behavior of an iterator is unspecified if the underlying collection
    is modified while the iteration is in progress in any way other than by
    calling this method, unless an overriding class has specified a
    concurrent modification policy.

    The behavior of an iterator is unspecified if this method is called
    after a call to the [`forEachRemaining`](#forEachRemaining(java.util.function.Consumer)) method.

    Throws:
    :   `UnsupportedOperationException` - if the `remove`
        operation is not supported by this iterator
    :   `IllegalStateException` - if the `next` method has not
        yet been called, or the `remove` method has already
        been called after the last call to the `next`
        method
  + ### forEachRemaining

    default void forEachRemaining([Consumer](function/Consumer.md "interface in java.util.function")<? super [E](Iterator.md "type parameter in Iterator")> action)

    Performs the given action for each remaining element until all elements
    have been processed or the action throws an exception. Actions are
    performed in the order of iteration, if that order is specified.
    Exceptions thrown by the action are relayed to the caller.

    The behavior of an iterator is unspecified if the action modifies the
    collection in any way (even by calling the [`remove`](#remove()) method
    or other mutator methods of `Iterator` subtypes),
    unless an overriding class has specified a concurrent modification policy.

    Subsequent behavior of an iterator is unspecified if the action throws an
    exception.

    Parameters:
    :   `action` - The action to be performed for each element

    Throws:
    :   `NullPointerException` - if the specified action is null

    Since:
    :   1.8