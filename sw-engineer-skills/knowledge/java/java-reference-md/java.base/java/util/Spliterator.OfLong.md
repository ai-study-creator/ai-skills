Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Spliterator.OfLong

All Superinterfaces:
:   `Spliterator<Long>`, `Spliterator.OfPrimitive<Long,LongConsumer,Spliterator.OfLong>`

All Known Implementing Classes:
:   `Spliterators.AbstractLongSpliterator`

Enclosing interface:
:   `Spliterator<T>`

---

public static interface Spliterator.OfLong
extends [Spliterator.OfPrimitive](Spliterator.OfPrimitive.md "interface in java.util")<[Long](../lang/Long.md "class in java.lang"),[LongConsumer](function/LongConsumer.md "interface in java.util.function"),[Spliterator.OfLong](Spliterator.OfLong.md "interface in java.util")>

A Spliterator specialized for `long` values.

Since:
:   1.8

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.[Spliterator](Spliterator.md "interface in java.util")

  `Spliterator.OfDouble, Spliterator.OfInt, Spliterator.OfLong, Spliterator.OfPrimitive<T,T_CONS,T_SPLITR extends Spliterator.OfPrimitive<T,T_CONS,T_SPLITR>>`
* ## Field Summary

  ### Fields inherited from interface java.util.[Spliterator](Spliterator.md "interface in java.util")

  `CONCURRENT, DISTINCT, IMMUTABLE, NONNULL, ORDERED, SIZED, SORTED, SUBSIZED`
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default void`

  `forEachRemaining(Consumer<? super Long> action)`

  Performs the given action for each remaining element, sequentially in
  the current thread, until all elements have been processed or the action
  throws an exception.

  `default void`

  `forEachRemaining(LongConsumer action)`

  Performs the given action for each remaining element, sequentially in
  the current thread, until all elements have been processed or the
  action throws an exception.

  `default boolean`

  `tryAdvance(Consumer<? super Long> action)`

  If a remaining element exists: performs the given action on it,
  returning `true`; else returns `false`.

  `boolean`

  `tryAdvance(LongConsumer action)`

  If a remaining element exists, performs the given action on it,
  returning `true`; else returns `false`.

  `Spliterator.OfLong`

  `trySplit()`

  If this spliterator can be partitioned, returns a Spliterator
  covering elements, that will, upon return from this method, not
  be covered by this Spliterator.

  ### Methods inherited from interface java.util.[Spliterator](Spliterator.md "interface in java.util")

  `characteristics, estimateSize, getComparator, getExactSizeIfKnown, hasCharacteristics`

* ## Method Details

  + ### trySplit

    [Spliterator.OfLong](Spliterator.OfLong.md "interface in java.util") trySplit()

    Description copied from interface: `Spliterator`

    If this spliterator can be partitioned, returns a Spliterator
    covering elements, that will, upon return from this method, not
    be covered by this Spliterator.

    If this Spliterator is [`Spliterator.ORDERED`](Spliterator.md#ORDERED), the returned Spliterator
    must cover a strict prefix of the elements.

    Unless this Spliterator covers an infinite number of elements,
    repeated calls to `trySplit()` must eventually return `null`.
    Upon non-null return:
    - the value reported for `estimateSize()` before splitting,
      must, after splitting, be greater than or equal to `estimateSize()`
      for this and the returned Spliterator; and
    - if this Spliterator is `SUBSIZED`, then `estimateSize()`
      for this spliterator before splitting must be equal to the sum of
      `estimateSize()` for this and the returned Spliterator after
      splitting.

    This method may return `null` for any reason,
    including emptiness, inability to split after traversal has
    commenced, data structure constraints, and efficiency
    considerations.

    Specified by:
    :   `trySplit` in interface `Spliterator<Long>`

    Specified by:
    :   `trySplit` in interface `Spliterator.OfPrimitive<Long,LongConsumer,Spliterator.OfLong>`

    Returns:
    :   a `Spliterator` covering some portion of the
        elements, or `null` if this spliterator cannot be split
  + ### tryAdvance

    boolean tryAdvance([LongConsumer](function/LongConsumer.md "interface in java.util.function") action)

    Description copied from interface: `Spliterator.OfPrimitive`

    If a remaining element exists, performs the given action on it,
    returning `true`; else returns `false`. If this
    Spliterator is [`Spliterator.ORDERED`](Spliterator.md#ORDERED) the action is performed on the
    next element in encounter order. Exceptions thrown by the
    action are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Specified by:
    :   `tryAdvance` in interface `Spliterator.OfPrimitive<Long,LongConsumer,Spliterator.OfLong>`

    Parameters:
    :   `action` - The action

    Returns:
    :   `false` if no remaining elements existed
        upon entry to this method, else `true`.
  + ### forEachRemaining

    default void forEachRemaining([LongConsumer](function/LongConsumer.md "interface in java.util.function") action)

    Description copied from interface: `Spliterator.OfPrimitive`

    Performs the given action for each remaining element, sequentially in
    the current thread, until all elements have been processed or the
    action throws an exception. If this Spliterator is [`Spliterator.ORDERED`](Spliterator.md#ORDERED),
    actions are performed in encounter order. Exceptions thrown by the
    action are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Specified by:
    :   `forEachRemaining` in interface `Spliterator.OfPrimitive<Long,LongConsumer,Spliterator.OfLong>`

    Parameters:
    :   `action` - The action
  + ### tryAdvance

    default boolean tryAdvance([Consumer](function/Consumer.md "interface in java.util.function")<? super [Long](../lang/Long.md "class in java.lang")> action)

    If a remaining element exists: performs the given action on it,
    returning `true`; else returns `false`. If this
    Spliterator is [`Spliterator.ORDERED`](Spliterator.md#ORDERED) the action is performed on the
    next element in encounter order. Exceptions thrown by the
    action are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Specified by:
    :   `tryAdvance` in interface `Spliterator<Long>`

    Parameters:
    :   `action` - The action whose operation is performed at-most once

    Returns:
    :   `false` if no remaining elements existed
        upon entry to this method, else `true`.
  + ### forEachRemaining

    default void forEachRemaining([Consumer](function/Consumer.md "interface in java.util.function")<? super [Long](../lang/Long.md "class in java.lang")> action)

    Performs the given action for each remaining element, sequentially in
    the current thread, until all elements have been processed or the action
    throws an exception. If this Spliterator is [`Spliterator.ORDERED`](Spliterator.md#ORDERED), actions
    are performed in encounter order. Exceptions thrown by the action
    are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Specified by:
    :   `forEachRemaining` in interface `Spliterator<Long>`

    Parameters:
    :   `action` - The action