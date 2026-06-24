Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class Spliterators.AbstractSpliterator<T>

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.Spliterators.AbstractSpliterator<T>

Type Parameters:
:   `T` - the type of elements returned by this Spliterator

All Implemented Interfaces:
:   `Spliterator<T>`

Enclosing class:
:   `Spliterators`

---

public abstract static class Spliterators.AbstractSpliterator<T>
extends [Object](../lang/Object.md "class in java.lang")
implements [Spliterator](Spliterator.md "interface in java.util")<T>

An abstract `Spliterator` that implements `trySplit` to
permit limited parallelism.

An extending class need only
implement [`tryAdvance`](Spliterator.md#tryAdvance(java.util.function.Consumer)).
The extending class should override
[`forEachRemaining`](Spliterator.md#forEachRemaining(java.util.function.Consumer))
if it can provide a more performant implementation.

Since:
:   1.8

See Also:
:   * [`Spliterators.spliterator(Iterator, long, int)`](Spliterators.md#spliterator(java.util.Iterator,long,int))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.[Spliterator](Spliterator.md "interface in java.util")

  `Spliterator.OfDouble, Spliterator.OfInt, Spliterator.OfLong, Spliterator.OfPrimitive<T,T_CONS,T_SPLITR extends Spliterator.OfPrimitive<T,T_CONS,T_SPLITR>>`
* ## Field Summary

  ### Fields inherited from interface java.util.[Spliterator](Spliterator.md "interface in java.util")

  `CONCURRENT, DISTINCT, IMMUTABLE, NONNULL, ORDERED, SIZED, SORTED, SUBSIZED`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractSpliterator(long est,
  int additionalCharacteristics)`

  Creates a spliterator reporting the given estimated size and
  additionalCharacteristics.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `characteristics()`

  Returns a set of characteristics of this Spliterator and its
  elements.

  `long`

  `estimateSize()`

  Returns an estimate of the number of elements that would be
  encountered by a [`Spliterator.forEachRemaining(java.util.function.Consumer<? super T>)`](Spliterator.md#forEachRemaining(java.util.function.Consumer)) traversal, or returns [`Long.MAX_VALUE`](../lang/Long.md#MAX_VALUE) if infinite, unknown, or too expensive to compute.

  `Spliterator<T>`

  `trySplit()`

  If this spliterator can be partitioned, returns a Spliterator
  covering elements, that will, upon return from this method, not
  be covered by this Spliterator.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.[Spliterator](Spliterator.md "interface in java.util")

  `forEachRemaining, getComparator, getExactSizeIfKnown, hasCharacteristics, tryAdvance`

* ## Constructor Details

  + ### AbstractSpliterator

    protected AbstractSpliterator(long est,
    int additionalCharacteristics)

    Creates a spliterator reporting the given estimated size and
    additionalCharacteristics.

    Parameters:
    :   `est` - the estimated size of this spliterator if known, otherwise
        `Long.MAX_VALUE`.
    :   `additionalCharacteristics` - properties of this spliterator's
        source or elements. If `SIZED` is reported then this
        spliterator will additionally report `SUBSIZED`.
* ## Method Details

  + ### trySplit

    public [Spliterator](Spliterator.md "interface in java.util")<[T](Spliterators.AbstractSpliterator.md "type parameter in Spliterators.AbstractSpliterator")> trySplit()

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
    This implementation permits limited parallelism.

    Specified by:
    :   `trySplit` in interface `Spliterator<T>`

    Returns:
    :   a `Spliterator` covering some portion of the
        elements, or `null` if this spliterator cannot be split
  + ### estimateSize

    public long estimateSize()

    Returns an estimate of the number of elements that would be
    encountered by a [`Spliterator.forEachRemaining(java.util.function.Consumer<? super T>)`](Spliterator.md#forEachRemaining(java.util.function.Consumer)) traversal, or returns [`Long.MAX_VALUE`](../lang/Long.md#MAX_VALUE) if infinite, unknown, or too expensive to compute.

    If this Spliterator is [`Spliterator.SIZED`](Spliterator.md#SIZED) and has not yet been partially
    traversed or split, or this Spliterator is [`Spliterator.SUBSIZED`](Spliterator.md#SUBSIZED) and has
    not yet been partially traversed, this estimate must be an accurate
    count of elements that would be encountered by a complete traversal.
    Otherwise, this estimate may be arbitrarily inaccurate, but must decrease
    as specified across invocations of [`Spliterator.trySplit()`](Spliterator.md#trySplit()).

    Specified by:
    :   `estimateSize` in interface `Spliterator<T>`

    Returns:
    :   the estimated size, or `Long.MAX_VALUE` if infinite,
        unknown, or too expensive to compute.
  + ### characteristics

    public int characteristics()

    Returns a set of characteristics of this Spliterator and its
    elements. The result is represented as ORed values from [`Spliterator.ORDERED`](Spliterator.md#ORDERED), [`Spliterator.DISTINCT`](Spliterator.md#DISTINCT), [`Spliterator.SORTED`](Spliterator.md#SORTED), [`Spliterator.SIZED`](Spliterator.md#SIZED),
    [`Spliterator.NONNULL`](Spliterator.md#NONNULL), [`Spliterator.IMMUTABLE`](Spliterator.md#IMMUTABLE), [`Spliterator.CONCURRENT`](Spliterator.md#CONCURRENT),
    [`Spliterator.SUBSIZED`](Spliterator.md#SUBSIZED). Repeated calls to `characteristics()` on
    a given spliterator, prior to or in-between calls to `trySplit`,
    should always return the same result.

    If a Spliterator reports an inconsistent set of
    characteristics (either those returned from a single invocation
    or across multiple invocations), no guarantees can be made
    about any computation using this Spliterator.

    Specified by:
    :   `characteristics` in interface `Spliterator<T>`

    Returns:
    :   a representation of characteristics