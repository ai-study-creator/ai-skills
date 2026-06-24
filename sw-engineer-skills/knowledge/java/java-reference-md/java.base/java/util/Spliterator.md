Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Spliterator<T>

Type Parameters:
:   `T` - the type of elements returned by this Spliterator

All Known Subinterfaces:
:   `Spliterator.OfDouble`, `Spliterator.OfInt`, `Spliterator.OfLong`, `Spliterator.OfPrimitive<T,T_CONS,T_SPLITR>`

All Known Implementing Classes:
:   `Spliterators.AbstractDoubleSpliterator`, `Spliterators.AbstractIntSpliterator`, `Spliterators.AbstractLongSpliterator`, `Spliterators.AbstractSpliterator`

---

public interface Spliterator<T>

An object for traversing and partitioning elements of a source. The source
of elements covered by a Spliterator could be, for example, an array, a
[`Collection`](Collection.md "interface in java.util"), an IO channel, or a generator function.

A Spliterator may traverse elements individually ([`tryAdvance()`](#tryAdvance(java.util.function.Consumer))) or sequentially in bulk
([`forEachRemaining()`](#forEachRemaining(java.util.function.Consumer))).

A Spliterator may also partition off some of its elements (using
[`trySplit()`](#trySplit())) as another Spliterator, to be used in
possibly-parallel operations. Operations using a Spliterator that
cannot split, or does so in a highly imbalanced or inefficient
manner, are unlikely to benefit from parallelism. Traversal
and splitting exhaust elements; each Spliterator is useful for only a single
bulk computation.

A Spliterator also reports a set of [`characteristics()`](#characteristics()) of its
structure, source, and elements from among [`ORDERED`](#ORDERED),
[`DISTINCT`](#DISTINCT), [`SORTED`](#SORTED), [`SIZED`](#SIZED), [`NONNULL`](#NONNULL),
[`IMMUTABLE`](#IMMUTABLE), [`CONCURRENT`](#CONCURRENT), and [`SUBSIZED`](#SUBSIZED). These may
be employed by Spliterator clients to control, specialize or simplify
computation. For example, a Spliterator for a [`Collection`](Collection.md "interface in java.util") would
report `SIZED`, a Spliterator for a [`Set`](Set.md "interface in java.util") would report
`DISTINCT`, and a Spliterator for a [`SortedSet`](SortedSet.md "interface in java.util") would also
report `SORTED`. Characteristics are reported as a simple unioned bit
set.
Some characteristics additionally constrain method behavior; for example if
`ORDERED`, traversal methods must conform to their documented ordering.
New characteristics may be defined in the future, so implementors should not
assign meanings to unlisted values.

A Spliterator that does not report `IMMUTABLE` or
`CONCURRENT` is expected to have a documented policy concerning:
when the spliterator *binds* to the element source; and detection of
structural interference of the element source detected after binding. A
*late-binding* Spliterator binds to the source of elements at the
point of first traversal, first split, or first query for estimated size,
rather than at the time the Spliterator is created. A Spliterator that is
not *late-binding* binds to the source of elements at the point of
construction or first invocation of any method. Modifications made to the
source prior to binding are reflected when the Spliterator is traversed.
After binding a Spliterator should, on a best-effort basis, throw
[`ConcurrentModificationException`](ConcurrentModificationException.md "class in java.util") if structural interference is
detected. Spliterators that do this are called *fail-fast*. The
bulk traversal method ([`forEachRemaining()`](#forEachRemaining(java.util.function.Consumer))) of a
Spliterator may optimize traversal and check for structural interference
after all elements have been traversed, rather than checking per-element and
failing immediately.

Spliterators can provide an estimate of the number of remaining elements
via the [`estimateSize()`](#estimateSize()) method. Ideally, as reflected in characteristic
[`SIZED`](#SIZED), this value corresponds exactly to the number of elements
that would be encountered in a successful traversal. However, even when not
exactly known, an estimated value may still be useful to operations
being performed on the source, such as helping to determine whether it is
preferable to split further or traverse the remaining elements sequentially.

Despite their obvious utility in parallel algorithms, spliterators are not
expected to be thread-safe; instead, implementations of parallel algorithms
using spliterators should ensure that the spliterator is only used by one
thread at a time. This is generally easy to attain via *serial
thread-confinement*, which often is a natural consequence of typical
parallel algorithms that work by recursive decomposition. A thread calling
[`trySplit()`](#trySplit()) may hand over the returned Spliterator to another thread,
which in turn may traverse or further split that Spliterator. The behaviour
of splitting and traversal is undefined if two or more threads operate
concurrently on the same spliterator. If the original thread hands a
spliterator off to another thread for processing, it is best if that handoff
occurs before any elements are consumed with [`tryAdvance()`](#tryAdvance(java.util.function.Consumer)), as certain guarantees (such as the accuracy of
[`estimateSize()`](#estimateSize()) for `SIZED` spliterators) are only valid before
traversal has begun.

Primitive subtype specializations of `Spliterator` are provided for
[`int`](Spliterator.OfInt.md "interface in java.util"), [`long`](Spliterator.OfLong.md "interface in java.util"), and [`double`](Spliterator.OfDouble.md "interface in java.util") values.
The subtype default implementations of
[`tryAdvance(java.util.function.Consumer)`](#tryAdvance(java.util.function.Consumer))
and [`forEachRemaining(java.util.function.Consumer)`](#forEachRemaining(java.util.function.Consumer)) box
primitive values to instances of their corresponding wrapper class. Such
boxing may undermine any performance advantages gained by using the primitive
specializations. To avoid boxing, the corresponding primitive-based methods
should be used. For example,
[`Spliterator.OfInt.tryAdvance(java.util.function.IntConsumer)`](Spliterator.OfInt.md#tryAdvance(java.util.function.IntConsumer))
and [`Spliterator.OfInt.forEachRemaining(java.util.function.IntConsumer)`](Spliterator.OfInt.md#forEachRemaining(java.util.function.IntConsumer))
should be used in preference to
[`Spliterator.OfInt.tryAdvance(java.util.function.Consumer)`](Spliterator.OfInt.md#tryAdvance(java.util.function.Consumer)) and
[`Spliterator.OfInt.forEachRemaining(java.util.function.Consumer)`](Spliterator.OfInt.md#forEachRemaining(java.util.function.Consumer)).
Traversal of primitive values using boxing-based methods
[`tryAdvance()`](#tryAdvance(java.util.function.Consumer)) and
[`forEachRemaining()`](#forEachRemaining(java.util.function.Consumer))
does not affect the order in which the values, transformed to boxed values,
are encountered.

Since:
:   1.8

See Also:
:   * [`Collection`](Collection.md "interface in java.util")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `Spliterator.OfDouble`

  A Spliterator specialized for `double` values.

  `static interface`

  `Spliterator.OfInt`

  A Spliterator specialized for `int` values.

  `static interface`

  `Spliterator.OfLong`

  A Spliterator specialized for `long` values.

  `static interface`

  `Spliterator.OfPrimitive<T,T_CONS,T_SPLITR extends Spliterator.OfPrimitive<T,T_CONS,T_SPLITR>>`

  A Spliterator specialized for primitive values.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CONCURRENT`

  Characteristic value signifying that the element source may be safely
  concurrently modified (allowing additions, replacements, and/or removals)
  by multiple threads without external synchronization.

  `static final int`

  `DISTINCT`

  Characteristic value signifying that, for each pair of
  encountered elements `x, y`, `!x.equals(y)`.

  `static final int`

  `IMMUTABLE`

  Characteristic value signifying that the element source cannot be
  structurally modified; that is, elements cannot be added, replaced, or
  removed, so such changes cannot occur during traversal.

  `static final int`

  `NONNULL`

  Characteristic value signifying that the source guarantees that
  encountered elements will not be `null`.

  `static final int`

  `ORDERED`

  Characteristic value signifying that an encounter order is defined for
  elements.

  `static final int`

  `SIZED`

  Characteristic value signifying that the value returned from
  `estimateSize()` prior to traversal or splitting represents a
  finite size that, in the absence of structural source modification,
  represents an exact count of the number of elements that would be
  encountered by a complete traversal.

  `static final int`

  `SORTED`

  Characteristic value signifying that encounter order follows a defined
  sort order.

  `static final int`

  `SUBSIZED`

  Characteristic value signifying that all Spliterators resulting from
  `trySplit()` will be both [`SIZED`](#SIZED) and [`SUBSIZED`](#SUBSIZED).
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

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
  encountered by a [`forEachRemaining(java.util.function.Consumer<? super T>)`](#forEachRemaining(java.util.function.Consumer)) traversal, or returns [`Long.MAX_VALUE`](../lang/Long.md#MAX_VALUE) if infinite, unknown, or too expensive to compute.

  `default void`

  `forEachRemaining(Consumer<? super T> action)`

  Performs the given action for each remaining element, sequentially in
  the current thread, until all elements have been processed or the action
  throws an exception.

  `default Comparator<? super T>`

  `getComparator()`

  If this Spliterator's source is [`SORTED`](#SORTED) by a [`Comparator`](Comparator.md "interface in java.util"),
  returns that `Comparator`.

  `default long`

  `getExactSizeIfKnown()`

  Convenience method that returns [`estimateSize()`](#estimateSize()) if this
  Spliterator is [`SIZED`](#SIZED), else `-1`.

  `default boolean`

  `hasCharacteristics(int characteristics)`

  Returns `true` if this Spliterator's [`characteristics()`](#characteristics()) contain all of the given characteristics.

  `boolean`

  `tryAdvance(Consumer<? super T> action)`

  If a remaining element exists: performs the given action on it,
  returning `true`; else returns `false`.

  `Spliterator<T>`

  `trySplit()`

  If this spliterator can be partitioned, returns a Spliterator
  covering elements, that will, upon return from this method, not
  be covered by this Spliterator.

* ## Field Details

  + ### ORDERED

    static final int ORDERED

    Characteristic value signifying that an encounter order is defined for
    elements. If so, this Spliterator guarantees that method
    [`trySplit()`](#trySplit()) splits a strict prefix of elements, that method
    [`tryAdvance(java.util.function.Consumer<? super T>)`](#tryAdvance(java.util.function.Consumer)) steps by one element in prefix order, and that
    [`forEachRemaining(java.util.function.Consumer<? super T>)`](#forEachRemaining(java.util.function.Consumer)) performs actions in encounter order.

    A [`Collection`](Collection.md "interface in java.util") has an encounter order if the corresponding
    [`Collection.iterator()`](Collection.md#iterator()) documents an order. If so, the encounter
    order is the same as the documented order. Otherwise, a collection does
    not have an encounter order.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.ORDERED)
  + ### DISTINCT

    static final int DISTINCT

    Characteristic value signifying that, for each pair of
    encountered elements `x, y`, `!x.equals(y)`. This
    applies for example, to a Spliterator based on a [`Set`](Set.md "interface in java.util").

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.DISTINCT)
  + ### SORTED

    static final int SORTED

    Characteristic value signifying that encounter order follows a defined
    sort order. If so, method [`getComparator()`](#getComparator()) returns the associated
    Comparator, or `null` if all elements are [`Comparable`](../lang/Comparable.md "interface in java.lang") and
    are sorted by their natural ordering.

    A Spliterator that reports `SORTED` must also report
    `ORDERED`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.SORTED)
  + ### SIZED

    static final int SIZED

    Characteristic value signifying that the value returned from
    `estimateSize()` prior to traversal or splitting represents a
    finite size that, in the absence of structural source modification,
    represents an exact count of the number of elements that would be
    encountered by a complete traversal.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.SIZED)
  + ### NONNULL

    static final int NONNULL

    Characteristic value signifying that the source guarantees that
    encountered elements will not be `null`. (This applies,
    for example, to most concurrent collections, queues, and maps.)

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.NONNULL)
  + ### IMMUTABLE

    static final int IMMUTABLE

    Characteristic value signifying that the element source cannot be
    structurally modified; that is, elements cannot be added, replaced, or
    removed, so such changes cannot occur during traversal. A Spliterator
    that does not report `IMMUTABLE` or `CONCURRENT` is expected
    to have a documented policy (for example throwing
    [`ConcurrentModificationException`](ConcurrentModificationException.md "class in java.util")) concerning structural
    interference detected during traversal.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.IMMUTABLE)
  + ### CONCURRENT

    static final int CONCURRENT

    Characteristic value signifying that the element source may be safely
    concurrently modified (allowing additions, replacements, and/or removals)
    by multiple threads without external synchronization. If so, the
    Spliterator is expected to have a documented policy concerning the impact
    of modifications during traversal.

    A top-level Spliterator should not report both `CONCURRENT` and
    `SIZED`, since the finite size, if known, may change if the source
    is concurrently modified during traversal. Such a Spliterator is
    inconsistent and no guarantees can be made about any computation using
    that Spliterator. Sub-spliterators may report `SIZED` if the
    sub-split size is known and additions or removals to the source are not
    reflected when traversing.

    A top-level Spliterator should not report both `CONCURRENT` and
    `IMMUTABLE`, since they are mutually exclusive. Such a Spliterator
    is inconsistent and no guarantees can be made about any computation using
    that Spliterator. Sub-spliterators may report `IMMUTABLE` if
    additions or removals to the source are not reflected when traversing.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.CONCURRENT)
  + ### SUBSIZED

    static final int SUBSIZED

    Characteristic value signifying that all Spliterators resulting from
    `trySplit()` will be both [`SIZED`](#SIZED) and [`SUBSIZED`](#SUBSIZED).
    (This means that all child Spliterators, whether direct or indirect, will
    be `SIZED`.)

    A Spliterator that does not report `SIZED` as required by
    `SUBSIZED` is inconsistent and no guarantees can be made about any
    computation using that Spliterator.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.Spliterator.SUBSIZED)
* ## Method Details

  + ### tryAdvance

    boolean tryAdvance([Consumer](function/Consumer.md "interface in java.util.function")<? super [T](Spliterator.md "type parameter in Spliterator")> action)

    If a remaining element exists: performs the given action on it,
    returning `true`; else returns `false`. If this
    Spliterator is [`ORDERED`](#ORDERED) the action is performed on the
    next element in encounter order. Exceptions thrown by the
    action are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Parameters:
    :   `action` - The action whose operation is performed at-most once

    Returns:
    :   `false` if no remaining elements existed
        upon entry to this method, else `true`.

    Throws:
    :   `NullPointerException` - if the specified action is null
  + ### forEachRemaining

    default void forEachRemaining([Consumer](function/Consumer.md "interface in java.util.function")<? super [T](Spliterator.md "type parameter in Spliterator")> action)

    Performs the given action for each remaining element, sequentially in
    the current thread, until all elements have been processed or the action
    throws an exception. If this Spliterator is [`ORDERED`](#ORDERED), actions
    are performed in encounter order. Exceptions thrown by the action
    are relayed to the caller.

    Subsequent behavior of a spliterator is unspecified if the action throws
    an exception.

    Parameters:
    :   `action` - The action

    Throws:
    :   `NullPointerException` - if the specified action is null
  + ### trySplit

    [Spliterator](Spliterator.md "interface in java.util")<[T](Spliterator.md "type parameter in Spliterator")> trySplit()

    If this spliterator can be partitioned, returns a Spliterator
    covering elements, that will, upon return from this method, not
    be covered by this Spliterator.

    If this Spliterator is [`ORDERED`](#ORDERED), the returned Spliterator
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

    Returns:
    :   a `Spliterator` covering some portion of the
        elements, or `null` if this spliterator cannot be split
  + ### estimateSize

    long estimateSize()

    Returns an estimate of the number of elements that would be
    encountered by a [`forEachRemaining(java.util.function.Consumer<? super T>)`](#forEachRemaining(java.util.function.Consumer)) traversal, or returns [`Long.MAX_VALUE`](../lang/Long.md#MAX_VALUE) if infinite, unknown, or too expensive to compute.

    If this Spliterator is [`SIZED`](#SIZED) and has not yet been partially
    traversed or split, or this Spliterator is [`SUBSIZED`](#SUBSIZED) and has
    not yet been partially traversed, this estimate must be an accurate
    count of elements that would be encountered by a complete traversal.
    Otherwise, this estimate may be arbitrarily inaccurate, but must decrease
    as specified across invocations of [`trySplit()`](#trySplit()).

    Returns:
    :   the estimated size, or `Long.MAX_VALUE` if infinite,
        unknown, or too expensive to compute.
  + ### getExactSizeIfKnown

    default long getExactSizeIfKnown()

    Convenience method that returns [`estimateSize()`](#estimateSize()) if this
    Spliterator is [`SIZED`](#SIZED), else `-1`.

    Returns:
    :   the exact size, if known, else `-1`.
  + ### characteristics

    int characteristics()

    Returns a set of characteristics of this Spliterator and its
    elements. The result is represented as ORed values from [`ORDERED`](#ORDERED), [`DISTINCT`](#DISTINCT), [`SORTED`](#SORTED), [`SIZED`](#SIZED),
    [`NONNULL`](#NONNULL), [`IMMUTABLE`](#IMMUTABLE), [`CONCURRENT`](#CONCURRENT),
    [`SUBSIZED`](#SUBSIZED). Repeated calls to `characteristics()` on
    a given spliterator, prior to or in-between calls to `trySplit`,
    should always return the same result.

    If a Spliterator reports an inconsistent set of
    characteristics (either those returned from a single invocation
    or across multiple invocations), no guarantees can be made
    about any computation using this Spliterator.

    Returns:
    :   a representation of characteristics
  + ### hasCharacteristics

    default boolean hasCharacteristics(int characteristics)

    Returns `true` if this Spliterator's [`characteristics()`](#characteristics()) contain all of the given characteristics.

    Parameters:
    :   `characteristics` - the characteristics to check for

    Returns:
    :   `true` if all the specified characteristics are present,
        else `false`
  + ### getComparator

    default [Comparator](Comparator.md "interface in java.util")<? super [T](Spliterator.md "type parameter in Spliterator")> getComparator()

    If this Spliterator's source is [`SORTED`](#SORTED) by a [`Comparator`](Comparator.md "interface in java.util"),
    returns that `Comparator`. If the source is `SORTED` in
    [natural order](../lang/Comparable.md "interface in java.lang"), returns `null`. Otherwise,
    if the source is not `SORTED`, throws [`IllegalStateException`](../lang/IllegalStateException.md "class in java.lang").

    Returns:
    :   a Comparator, or `null` if the elements are sorted in the
        natural order.

    Throws:
    :   `IllegalStateException` - if the spliterator does not report
        a characteristic of `SORTED`.