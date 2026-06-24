Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface PrimitiveIterator.OfLong

All Superinterfaces:
:   `Iterator<Long>`, `PrimitiveIterator<Long,LongConsumer>`

Enclosing interface:
:   `PrimitiveIterator<T,T_CONS>`

---

public static interface PrimitiveIterator.OfLong
extends [PrimitiveIterator](PrimitiveIterator.md "interface in java.util")<[Long](../lang/Long.md "class in java.lang"),[LongConsumer](function/LongConsumer.md "interface in java.util.function")>

An Iterator specialized for `long` values.

Since:
:   1.8

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.[PrimitiveIterator](PrimitiveIterator.md "interface in java.util")

  `PrimitiveIterator.OfDouble, PrimitiveIterator.OfInt, PrimitiveIterator.OfLong`
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default void`

  `forEachRemaining(Consumer<? super Long> action)`

  Performs the given action for each remaining element until all elements
  have been processed or the action throws an exception.

  `default void`

  `forEachRemaining(LongConsumer action)`

  Performs the given action for each remaining element until all elements
  have been processed or the action throws an exception.

  `default Long`

  `next()`

  Returns the next element in the iteration.

  `long`

  `nextLong()`

  Returns the next `long` element in the iteration.

  ### Methods inherited from interface java.util.[Iterator](Iterator.md "interface in java.util")

  `hasNext, remove`

* ## Method Details

  + ### nextLong

    long nextLong()

    Returns the next `long` element in the iteration.

    Returns:
    :   the next `long` element in the iteration

    Throws:
    :   `NoSuchElementException` - if the iteration has no more elements
  + ### forEachRemaining

    default void forEachRemaining([LongConsumer](function/LongConsumer.md "interface in java.util.function") action)

    Performs the given action for each remaining element until all elements
    have been processed or the action throws an exception. Actions are
    performed in the order of iteration, if that order is specified.
    Exceptions thrown by the action are relayed to the caller.

    The behavior of an iterator is unspecified if the action modifies the
    source of elements in any way (even by calling the [`remove`](Iterator.md#remove())
    method or other mutator methods of `Iterator` subtypes),
    unless an overriding class has specified a concurrent modification policy.

    Subsequent behavior of an iterator is unspecified if the action throws an
    exception.

    Specified by:
    :   `forEachRemaining` in interface `PrimitiveIterator<Long,LongConsumer>`

    Parameters:
    :   `action` - The action to be performed for each element
  + ### next

    default [Long](../lang/Long.md "class in java.lang") next()

    Returns the next element in the iteration.

    Specified by:
    :   `next` in interface `Iterator<Long>`

    Returns:
    :   the next element in the iteration
  + ### forEachRemaining

    default void forEachRemaining([Consumer](function/Consumer.md "interface in java.util.function")<? super [Long](../lang/Long.md "class in java.lang")> action)

    Performs the given action for each remaining element until all elements
    have been processed or the action throws an exception. Actions are
    performed in the order of iteration, if that order is specified.
    Exceptions thrown by the action are relayed to the caller.

    The behavior of an iterator is unspecified if the action modifies the
    collection in any way (even by calling the [`remove`](Iterator.md#remove()) method
    or other mutator methods of `Iterator` subtypes),
    unless an overriding class has specified a concurrent modification policy.

    Subsequent behavior of an iterator is unspecified if the action throws an
    exception.

    Specified by:
    :   `forEachRemaining` in interface `Iterator<Long>`

    Parameters:
    :   `action` - The action to be performed for each element