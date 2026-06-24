Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Spliterator.OfPrimitive<T,T\_CONS,T\_SPLITR extends Spliterator.OfPrimitive<T,T\_CONS,T\_SPLITR>>

Type Parameters:
:   `T` - the type of elements returned by this Spliterator. The
    type must be a wrapper type for a primitive type, such as `Integer`
    for the primitive `int` type.
:   `T_CONS` - the type of primitive consumer. The type must be a
    primitive specialization of [`Consumer`](function/Consumer.md "interface in java.util.function") for
    `T`, such as [`IntConsumer`](function/IntConsumer.md "interface in java.util.function") for
    `Integer`.
:   `T_SPLITR` - the type of primitive Spliterator. The type must be
    a primitive specialization of Spliterator for `T`, such as
    [`Spliterator.OfInt`](Spliterator.OfInt.md "interface in java.util") for `Integer`.

All Superinterfaces:
:   `Spliterator<T>`

All Known Subinterfaces:
:   `Spliterator.OfDouble`, `Spliterator.OfInt`, `Spliterator.OfLong`

All Known Implementing Classes:
:   `Spliterators.AbstractDoubleSpliterator`, `Spliterators.AbstractIntSpliterator`, `Spliterators.AbstractLongSpliterator`

Enclosing interface:
:   `Spliterator<T>`

---

public static interface Spliterator.OfPrimitive<T,T\_CONS,T\_SPLITR extends Spliterator.OfPrimitive<T,T\_CONS,T\_SPLITR>>
extends [Spliterator](Spliterator.md "interface in java.util")<T>

A Spliterator specialized for primitive values.

Since:
:   1.8

See Also:
:   * [`Spliterator.OfInt`](Spliterator.OfInt.md "interface in java.util")
    * [`Spliterator.OfLong`](Spliterator.OfLong.md "interface in java.util")
    * [`Spliterator.OfDouble`](Spliterator.OfDouble.md "interface in java.util")

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

  `forEachRemaining(T_CONS action)`

  Performs the given action for each remaining element, sequentially in
  the current thread, until all elements have been processed or the
  action throws an exception.

  `boolean`

  `tryAdvance(T_CONS action)`

  If a remaining element exists, performs the given action on it,
  returning `true`; else returns `false`.

  `T_SPLITR`

  `trySplit()`

  If this spliterator can be partitioned, returns a Spliterator
  covering elements, that will, upon return from this method, not
  be covered by this Spliterator.

  ### Methods inherited from interface java.util.[Spliterator](Spliterator.md "interface in java.util")

  `characteristics, estimateSize, forEachRemaining, getComparator, getExactSizeIfKnown, hasCharacteristics, tryAdvance`

* ## Method Details

  + ### trySplit

    [T\_SPLITR](Spliterator.OfPrimitive.md "type parameter in Spliterator.OfPrimitive") trySplit()

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
    :   `trySplit` in interface `Spliterator<T>`

    Returns:
    :   a `Spliterator` covering some portion of the
        elements, or `null` if this spliterator cannot be split
  + ### tryAdvance

    boolean tryAdvance([T\_CONS](Spliterator.OfPrimitive.md "type parameter in Spliterator.OfPrimitive") action)

    If a remaining element exists, performs the given action on it,
    returning `true`; else returns `false`. If this
    Spliterator is [`Spliterator.ORDERED`](Spliterator.md#ORDERED) the action is performed on the
    next element in encounter order. Exceptions thrown by the
    action are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Parameters:
    :   `action` - The action

    Returns:
    :   `false` if no remaining elements existed
        upon entry to this method, else `true`.

    Throws:
    :   `NullPointerException` - if the specified action is null
  + ### forEachRemaining

    default void forEachRemaining([T\_CONS](Spliterator.OfPrimitive.md "type parameter in Spliterator.OfPrimitive") action)

    Performs the given action for each remaining element, sequentially in
    the current thread, until all elements have been processed or the
    action throws an exception. If this Spliterator is [`Spliterator.ORDERED`](Spliterator.md#ORDERED),
    actions are performed in encounter order. Exceptions thrown by the
    action are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Parameters:
    :   `action` - The action

    Throws:
    :   `NullPointerException` - if the specified action is null