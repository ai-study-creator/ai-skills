Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface IntStream

All Superinterfaces:
:   `AutoCloseable`, `BaseStream<Integer,IntStream>`

---

public interface IntStream
extends [BaseStream](BaseStream.md "interface in java.util.stream")<[Integer](../../lang/Integer.md "class in java.lang"),[IntStream](IntStream.md "interface in java.util.stream")>

A sequence of primitive int-valued elements supporting sequential and parallel
aggregate operations. This is the `int` primitive specialization of
[`Stream`](Stream.md "interface in java.util.stream").

The following example illustrates an aggregate operation using
[`Stream`](Stream.md "interface in java.util.stream") and [`IntStream`](IntStream.md "interface in java.util.stream"), computing the sum of the weights of the
red widgets:

```
     int sum = widgets.stream()
                      .filter(w -> w.getColor() == RED)
                      .mapToInt(w -> w.getWeight())
                      .sum();
```

See the class documentation for [`Stream`](Stream.md "interface in java.util.stream") and the package documentation
for [java.util.stream](package-summary.md) for additional
specification of streams, stream operations, stream pipelines, and
parallelism.

Since:
:   1.8

See Also:
:   * [`Stream`](Stream.md "interface in java.util.stream")
    * [java.util.stream](package-summary.md)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `IntStream.Builder`

  A mutable builder for an `IntStream`.

  `static interface`

  `IntStream.IntMapMultiConsumer`

  Represents an operation that accepts an `int`-valued argument
  and an IntConsumer, and returns no result.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `allMatch(IntPredicate predicate)`

  Returns whether all elements of this stream match the provided predicate.

  `boolean`

  `anyMatch(IntPredicate predicate)`

  Returns whether any elements of this stream match the provided
  predicate.

  `DoubleStream`

  `asDoubleStream()`

  Returns a `DoubleStream` consisting of the elements of this stream,
  converted to `double`.

  `LongStream`

  `asLongStream()`

  Returns a `LongStream` consisting of the elements of this stream,
  converted to `long`.

  `OptionalDouble`

  `average()`

  Returns an `OptionalDouble` describing the arithmetic mean of elements of
  this stream, or an empty optional if this stream is empty.

  `Stream<Integer>`

  `boxed()`

  Returns a `Stream` consisting of the elements of this stream,
  each boxed to an `Integer`.

  `static IntStream.Builder`

  `builder()`

  Returns a builder for an `IntStream`.

  `<R> R`

  `collect(Supplier<R> supplier,
  ObjIntConsumer<R> accumulator,
  BiConsumer<R,R> combiner)`

  Performs a [mutable
  reduction](package-summary.md#MutableReduction) operation on the elements of this stream.

  `static IntStream`

  `concat(IntStream a,
  IntStream b)`

  Creates a lazily concatenated stream whose elements are all the
  elements of the first stream followed by all the elements of the
  second stream.

  `long`

  `count()`

  Returns the count of elements in this stream.

  `IntStream`

  `distinct()`

  Returns a stream consisting of the distinct elements of this stream.

  `default IntStream`

  `dropWhile(IntPredicate predicate)`

  Returns, if this stream is ordered, a stream consisting of the remaining
  elements of this stream after dropping the longest prefix of elements
  that match the given predicate.

  `static IntStream`

  `empty()`

  Returns an empty sequential `IntStream`.

  `IntStream`

  `filter(IntPredicate predicate)`

  Returns a stream consisting of the elements of this stream that match
  the given predicate.

  `OptionalInt`

  `findAny()`

  Returns an [`OptionalInt`](../OptionalInt.md "class in java.util") describing some element of the stream, or
  an empty `OptionalInt` if the stream is empty.

  `OptionalInt`

  `findFirst()`

  Returns an [`OptionalInt`](../OptionalInt.md "class in java.util") describing the first element of this
  stream, or an empty `OptionalInt` if the stream is empty.

  `IntStream`

  `flatMap(IntFunction<? extends IntStream> mapper)`

  Returns a stream consisting of the results of replacing each element of
  this stream with the contents of a mapped stream produced by applying
  the provided mapping function to each element.

  `void`

  `forEach(IntConsumer action)`

  Performs an action for each element of this stream.

  `void`

  `forEachOrdered(IntConsumer action)`

  Performs an action for each element of this stream, guaranteeing that
  each element is processed in encounter order for streams that have a
  defined encounter order.

  `static IntStream`

  `generate(IntSupplier s)`

  Returns an infinite sequential unordered stream where each element is
  generated by the provided `IntSupplier`.

  `static IntStream`

  `iterate(int seed,
  IntPredicate hasNext,
  IntUnaryOperator next)`

  Returns a sequential ordered `IntStream` produced by iterative
  application of the given `next` function to an initial element,
  conditioned on satisfying the given `hasNext` predicate.

  `static IntStream`

  `iterate(int seed,
  IntUnaryOperator f)`

  Returns an infinite sequential ordered `IntStream` produced by iterative
  application of a function `f` to an initial element `seed`,
  producing a `Stream` consisting of `seed`, `f(seed)`,
  `f(f(seed))`, etc.

  `PrimitiveIterator.OfInt`

  `iterator()`

  Returns an iterator for the elements of this stream.

  `IntStream`

  `limit(long maxSize)`

  Returns a stream consisting of the elements of this stream, truncated
  to be no longer than `maxSize` in length.

  `IntStream`

  `map(IntUnaryOperator mapper)`

  Returns a stream consisting of the results of applying the given
  function to the elements of this stream.

  `default IntStream`

  `mapMulti(IntStream.IntMapMultiConsumer mapper)`

  Returns a stream consisting of the results of replacing each element of
  this stream with multiple elements, specifically zero or more elements.

  `DoubleStream`

  `mapToDouble(IntToDoubleFunction mapper)`

  Returns a `DoubleStream` consisting of the results of applying the
  given function to the elements of this stream.

  `LongStream`

  `mapToLong(IntToLongFunction mapper)`

  Returns a `LongStream` consisting of the results of applying the
  given function to the elements of this stream.

  `<U> Stream<U>`

  `mapToObj(IntFunction<? extends U> mapper)`

  Returns an object-valued `Stream` consisting of the results of
  applying the given function to the elements of this stream.

  `OptionalInt`

  `max()`

  Returns an `OptionalInt` describing the maximum element of this
  stream, or an empty optional if this stream is empty.

  `OptionalInt`

  `min()`

  Returns an `OptionalInt` describing the minimum element of this
  stream, or an empty optional if this stream is empty.

  `boolean`

  `noneMatch(IntPredicate predicate)`

  Returns whether no elements of this stream match the provided predicate.

  `static IntStream`

  `of(int t)`

  Returns a sequential `IntStream` containing a single element.

  `static IntStream`

  `of(int... values)`

  Returns a sequential ordered stream whose elements are the specified values.

  `IntStream`

  `parallel()`

  Returns an equivalent stream that is parallel.

  `IntStream`

  `peek(IntConsumer action)`

  Returns a stream consisting of the elements of this stream, additionally
  performing the provided action on each element as elements are consumed
  from the resulting stream.

  `static IntStream`

  `range(int startInclusive,
  int endExclusive)`

  Returns a sequential ordered `IntStream` from `startInclusive`
  (inclusive) to `endExclusive` (exclusive) by an incremental step of
  `1`.

  `static IntStream`

  `rangeClosed(int startInclusive,
  int endInclusive)`

  Returns a sequential ordered `IntStream` from `startInclusive`
  (inclusive) to `endInclusive` (inclusive) by an incremental step of
  `1`.

  `int`

  `reduce(int identity,
  IntBinaryOperator op)`

  Performs a [reduction](package-summary.md#Reduction) on the
  elements of this stream, using the provided identity value and an
  [associative](package-summary.md#Associativity)
  accumulation function, and returns the reduced value.

  `OptionalInt`

  `reduce(IntBinaryOperator op)`

  Performs a [reduction](package-summary.md#Reduction) on the
  elements of this stream, using an
  [associative](package-summary.md#Associativity) accumulation
  function, and returns an `OptionalInt` describing the reduced value,
  if any.

  `IntStream`

  `sequential()`

  Returns an equivalent stream that is sequential.

  `IntStream`

  `skip(long n)`

  Returns a stream consisting of the remaining elements of this stream
  after discarding the first `n` elements of the stream.

  `IntStream`

  `sorted()`

  Returns a stream consisting of the elements of this stream in sorted
  order.

  `Spliterator.OfInt`

  `spliterator()`

  Returns a spliterator for the elements of this stream.

  `int`

  `sum()`

  Returns the sum of elements in this stream.

  `IntSummaryStatistics`

  `summaryStatistics()`

  Returns an `IntSummaryStatistics` describing various
  summary data about the elements of this stream.

  `default IntStream`

  `takeWhile(IntPredicate predicate)`

  Returns, if this stream is ordered, a stream consisting of the longest
  prefix of elements taken from this stream that match the given predicate.

  `int[]`

  `toArray()`

  Returns an array containing the elements of this stream.

  ### Methods inherited from interface java.util.stream.[BaseStream](BaseStream.md "interface in java.util.stream")

  `close, isParallel, onClose, unordered`

* ## Method Details

  + ### filter

    [IntStream](IntStream.md "interface in java.util.stream") filter([IntPredicate](../function/IntPredicate.md "interface in java.util.function") predicate)

    Returns a stream consisting of the elements of this stream that match
    the given predicate.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `predicate` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        predicate to apply to each element to determine if it
        should be included

    Returns:
    :   the new stream
  + ### map

    [IntStream](IntStream.md "interface in java.util.stream") map([IntUnaryOperator](../function/IntUnaryOperator.md "interface in java.util.function") mapper)

    Returns a stream consisting of the results of applying the given
    function to the elements of this stream.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element

    Returns:
    :   the new stream
  + ### mapToObj

    <U> [Stream](Stream.md "interface in java.util.stream")<U> mapToObj([IntFunction](../function/IntFunction.md "interface in java.util.function")<? extends U> mapper)

    Returns an object-valued `Stream` consisting of the results of
    applying the given function to the elements of this stream.

    This is an [intermediate operation](package-summary.md#StreamOps).

    Type Parameters:
    :   `U` - the element type of the new stream

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element

    Returns:
    :   the new stream
  + ### mapToLong

    [LongStream](LongStream.md "interface in java.util.stream") mapToLong([IntToLongFunction](../function/IntToLongFunction.md "interface in java.util.function") mapper)

    Returns a `LongStream` consisting of the results of applying the
    given function to the elements of this stream.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element

    Returns:
    :   the new stream
  + ### mapToDouble

    [DoubleStream](DoubleStream.md "interface in java.util.stream") mapToDouble([IntToDoubleFunction](../function/IntToDoubleFunction.md "interface in java.util.function") mapper)

    Returns a `DoubleStream` consisting of the results of applying the
    given function to the elements of this stream.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element

    Returns:
    :   the new stream
  + ### flatMap

    [IntStream](IntStream.md "interface in java.util.stream") flatMap([IntFunction](../function/IntFunction.md "interface in java.util.function")<? extends [IntStream](IntStream.md "interface in java.util.stream")> mapper)

    Returns a stream consisting of the results of replacing each element of
    this stream with the contents of a mapped stream produced by applying
    the provided mapping function to each element. Each mapped stream is
    [`closed`](BaseStream.md#close()) after its contents
    have been placed into this stream. (If a mapped stream is `null`
    an empty stream is used, instead.)

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element which produces an
        `IntStream` of new values

    Returns:
    :   the new stream

    See Also:
    :   - [`Stream.flatMap(Function)`](Stream.md#flatMap(java.util.function.Function))
  + ### mapMulti

    default [IntStream](IntStream.md "interface in java.util.stream") mapMulti([IntStream.IntMapMultiConsumer](IntStream.IntMapMultiConsumer.md "interface in java.util.stream") mapper)

    Returns a stream consisting of the results of replacing each element of
    this stream with multiple elements, specifically zero or more elements.
    Replacement is performed by applying the provided mapping function to each
    element in conjunction with a [consumer](../function/IntConsumer.md "interface in java.util.function") argument
    that accepts replacement elements. The mapping function calls the consumer
    zero or more times to provide the replacement elements.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    If the [consumer](../function/IntConsumer.md "interface in java.util.function") argument is used outside the scope of
    its application to the mapping function, the results are undefined.

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function that generates replacement elements

    Returns:
    :   the new stream

    Since:
    :   16

    See Also:
    :   - [`Stream.mapMulti`](Stream.md#mapMulti(java.util.function.BiConsumer))
  + ### distinct

    [IntStream](IntStream.md "interface in java.util.stream") distinct()

    Returns a stream consisting of the distinct elements of this stream.

    This is a [stateful
    intermediate operation](package-summary.md#StreamOps).

    Returns:
    :   the new stream
  + ### sorted

    [IntStream](IntStream.md "interface in java.util.stream") sorted()

    Returns a stream consisting of the elements of this stream in sorted
    order.

    This is a [stateful
    intermediate operation](package-summary.md#StreamOps).

    Returns:
    :   the new stream
  + ### peek

    [IntStream](IntStream.md "interface in java.util.stream") peek([IntConsumer](../function/IntConsumer.md "interface in java.util.function") action)

    Returns a stream consisting of the elements of this stream, additionally
    performing the provided action on each element as elements are consumed
    from the resulting stream.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    For parallel stream pipelines, the action may be called at
    whatever time and in whatever thread the element is made available by the
    upstream operation. If the action modifies shared state,
    it is responsible for providing the required synchronization.

    Parameters:
    :   `action` - a [non-interfering](package-summary.md#NonInterference) action to perform on the elements as
        they are consumed from the stream

    Returns:
    :   the new stream
  + ### limit

    [IntStream](IntStream.md "interface in java.util.stream") limit(long maxSize)

    Returns a stream consisting of the elements of this stream, truncated
    to be no longer than `maxSize` in length.

    This is a [short-circuiting
    stateful intermediate operation](package-summary.md#StreamOps).

    Parameters:
    :   `maxSize` - the number of elements the stream should be limited to

    Returns:
    :   the new stream

    Throws:
    :   `IllegalArgumentException` - if `maxSize` is negative
  + ### skip

    [IntStream](IntStream.md "interface in java.util.stream") skip(long n)

    Returns a stream consisting of the remaining elements of this stream
    after discarding the first `n` elements of the stream.
    If this stream contains fewer than `n` elements then an
    empty stream will be returned.

    This is a [stateful
    intermediate operation](package-summary.md#StreamOps).

    Parameters:
    :   `n` - the number of leading elements to skip

    Returns:
    :   the new stream

    Throws:
    :   `IllegalArgumentException` - if `n` is negative
  + ### takeWhile

    default [IntStream](IntStream.md "interface in java.util.stream") takeWhile([IntPredicate](../function/IntPredicate.md "interface in java.util.function") predicate)

    Returns, if this stream is ordered, a stream consisting of the longest
    prefix of elements taken from this stream that match the given predicate.
    Otherwise returns, if this stream is unordered, a stream consisting of a
    subset of elements taken from this stream that match the given predicate.

    If this stream is ordered then the longest prefix is a contiguous
    sequence of elements of this stream that match the given predicate. The
    first element of the sequence is the first element of this stream, and
    the element immediately following the last element of the sequence does
    not match the given predicate.

    If this stream is unordered, and some (but not all) elements of this
    stream match the given predicate, then the behavior of this operation is
    nondeterministic; it is free to take any subset of matching elements
    (which includes the empty set).

    Independent of whether this stream is ordered or unordered if all
    elements of this stream match the given predicate then this operation
    takes all elements (the result is the same as the input), or if no
    elements of the stream match the given predicate then no elements are
    taken (the result is an empty stream).

    This is a [short-circuiting
    stateful intermediate operation](package-summary.md#StreamOps).

    Parameters:
    :   `predicate` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        predicate to apply to elements to determine the longest
        prefix of elements.

    Returns:
    :   the new stream

    Since:
    :   9
  + ### dropWhile

    default [IntStream](IntStream.md "interface in java.util.stream") dropWhile([IntPredicate](../function/IntPredicate.md "interface in java.util.function") predicate)

    Returns, if this stream is ordered, a stream consisting of the remaining
    elements of this stream after dropping the longest prefix of elements
    that match the given predicate. Otherwise returns, if this stream is
    unordered, a stream consisting of the remaining elements of this stream
    after dropping a subset of elements that match the given predicate.

    If this stream is ordered then the longest prefix is a contiguous
    sequence of elements of this stream that match the given predicate. The
    first element of the sequence is the first element of this stream, and
    the element immediately following the last element of the sequence does
    not match the given predicate.

    If this stream is unordered, and some (but not all) elements of this
    stream match the given predicate, then the behavior of this operation is
    nondeterministic; it is free to drop any subset of matching elements
    (which includes the empty set).

    Independent of whether this stream is ordered or unordered if all
    elements of this stream match the given predicate then this operation
    drops all elements (the result is an empty stream), or if no elements of
    the stream match the given predicate then no elements are dropped (the
    result is the same as the input).

    This is a [stateful
    intermediate operation](package-summary.md#StreamOps).

    Parameters:
    :   `predicate` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        predicate to apply to elements to determine the longest
        prefix of elements.

    Returns:
    :   the new stream

    Since:
    :   9
  + ### forEach

    void forEach([IntConsumer](../function/IntConsumer.md "interface in java.util.function") action)

    Performs an action for each element of this stream.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    For parallel stream pipelines, this operation does *not*
    guarantee to respect the encounter order of the stream, as doing so
    would sacrifice the benefit of parallelism. For any given element, the
    action may be performed at whatever time and in whatever thread the
    library chooses. If the action accesses shared state, it is
    responsible for providing the required synchronization.

    Parameters:
    :   `action` - a [non-interfering](package-summary.md#NonInterference) action to perform on the elements
  + ### forEachOrdered

    void forEachOrdered([IntConsumer](../function/IntConsumer.md "interface in java.util.function") action)

    Performs an action for each element of this stream, guaranteeing that
    each element is processed in encounter order for streams that have a
    defined encounter order.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `action` - a [non-interfering](package-summary.md#NonInterference) action to perform on the elements

    See Also:
    :   - [`forEach(IntConsumer)`](#forEach(java.util.function.IntConsumer))
  + ### toArray

    int[] toArray()

    Returns an array containing the elements of this stream.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Returns:
    :   an array containing the elements of this stream
  + ### reduce

    int reduce(int identity,
    [IntBinaryOperator](../function/IntBinaryOperator.md "interface in java.util.function") op)

    Performs a [reduction](package-summary.md#Reduction) on the
    elements of this stream, using the provided identity value and an
    [associative](package-summary.md#Associativity)
    accumulation function, and returns the reduced value. This is equivalent
    to:

    ```
         int result = identity;
         for (int element : this stream)
             result = accumulator.applyAsInt(result, element)
         return result;
    ```

    but is not constrained to execute sequentially.

    The `identity` value must be an identity for the accumulator
    function. This means that for all `x`,
    `accumulator.apply(identity, x)` is equal to `x`.
    The `accumulator` function must be an
    [associative](package-summary.md#Associativity) function.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `identity` - the identity value for the accumulating function
    :   `op` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function for combining two values

    Returns:
    :   the result of the reduction

    See Also:
    :   - [`sum()`](#sum())
        - [`min()`](#min())
        - [`max()`](#max())
        - [`average()`](#average())
  + ### reduce

    [OptionalInt](../OptionalInt.md "class in java.util") reduce([IntBinaryOperator](../function/IntBinaryOperator.md "interface in java.util.function") op)

    Performs a [reduction](package-summary.md#Reduction) on the
    elements of this stream, using an
    [associative](package-summary.md#Associativity) accumulation
    function, and returns an `OptionalInt` describing the reduced value,
    if any. This is equivalent to:

    ```
         boolean foundAny = false;
         int result = null;
         for (int element : this stream) {
             if (!foundAny) {
                 foundAny = true;
                 result = element;
             }
             else
                 result = accumulator.applyAsInt(result, element);
         }
         return foundAny ? OptionalInt.of(result) : OptionalInt.empty();
    ```

    but is not constrained to execute sequentially.

    The `accumulator` function must be an
    [associative](package-summary.md#Associativity) function.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `op` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function for combining two values

    Returns:
    :   the result of the reduction

    See Also:
    :   - [`reduce(int, IntBinaryOperator)`](#reduce(int,java.util.function.IntBinaryOperator))
  + ### collect

    <R> R collect([Supplier](../function/Supplier.md "interface in java.util.function")<R> supplier,
    [ObjIntConsumer](../function/ObjIntConsumer.md "interface in java.util.function")<R> accumulator,
    [BiConsumer](../function/BiConsumer.md "interface in java.util.function")<R,R> combiner)

    Performs a [mutable
    reduction](package-summary.md#MutableReduction) operation on the elements of this stream. A mutable
    reduction is one in which the reduced value is a mutable result container,
    such as an `ArrayList`, and elements are incorporated by updating
    the state of the result rather than by replacing the result. This
    produces a result equivalent to:

    ```
         R result = supplier.get();
         for (int element : this stream)
             accumulator.accept(result, element);
         return result;
    ```

    Like [`reduce(int, IntBinaryOperator)`](#reduce(int,java.util.function.IntBinaryOperator)), `collect` operations
    can be parallelized without requiring additional synchronization.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Type Parameters:
    :   `R` - the type of the mutable result container

    Parameters:
    :   `supplier` - a function that creates a new mutable result container.
        For a parallel execution, this function may be called
        multiple times and must return a fresh value each time.
    :   `accumulator` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function that must fold an element into a result
        container.
    :   `combiner` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function that accepts two partial result containers
        and merges them, which must be compatible with the
        accumulator function. The combiner function must fold
        the elements from the second result container into the
        first result container.

    Returns:
    :   the result of the reduction

    See Also:
    :   - [`Stream.collect(Supplier, BiConsumer, BiConsumer)`](Stream.md#collect(java.util.function.Supplier,java.util.function.BiConsumer,java.util.function.BiConsumer))
  + ### sum

    int sum()

    Returns the sum of elements in this stream. This is a special case
    of a [reduction](package-summary.md#Reduction)
    and is equivalent to:

    ```
         return reduce(0, Integer::sum);
    ```

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Returns:
    :   the sum of elements in this stream
  + ### min

    [OptionalInt](../OptionalInt.md "class in java.util") min()

    Returns an `OptionalInt` describing the minimum element of this
    stream, or an empty optional if this stream is empty. This is a special
    case of a [reduction](package-summary.md#Reduction)
    and is equivalent to:

    ```
         return reduce(Integer::min);
    ```

    This is a [terminal operation](package-summary.md#StreamOps).

    Returns:
    :   an `OptionalInt` containing the minimum element of this
        stream, or an empty `OptionalInt` if the stream is empty
  + ### max

    [OptionalInt](../OptionalInt.md "class in java.util") max()

    Returns an `OptionalInt` describing the maximum element of this
    stream, or an empty optional if this stream is empty. This is a special
    case of a [reduction](package-summary.md#Reduction)
    and is equivalent to:

    ```
         return reduce(Integer::max);
    ```

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Returns:
    :   an `OptionalInt` containing the maximum element of this
        stream, or an empty `OptionalInt` if the stream is empty
  + ### count

    long count()

    Returns the count of elements in this stream. This is a special case of
    a [reduction](package-summary.md#Reduction) and is
    equivalent to:

    ```
         return mapToLong(e -> 1L).sum();
    ```

    This is a [terminal operation](package-summary.md#StreamOps).

    Returns:
    :   the count of elements in this stream
  + ### average

    [OptionalDouble](../OptionalDouble.md "class in java.util") average()

    Returns an `OptionalDouble` describing the arithmetic mean of elements of
    this stream, or an empty optional if this stream is empty. This is a
    special case of a
    [reduction](package-summary.md#Reduction).

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Returns:
    :   an `OptionalDouble` containing the average element of this
        stream, or an empty optional if the stream is empty
  + ### summaryStatistics

    [IntSummaryStatistics](../IntSummaryStatistics.md "class in java.util") summaryStatistics()

    Returns an `IntSummaryStatistics` describing various
    summary data about the elements of this stream. This is a special
    case of a [reduction](package-summary.md#Reduction).

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Returns:
    :   an `IntSummaryStatistics` describing various summary data
        about the elements of this stream
  + ### anyMatch

    boolean anyMatch([IntPredicate](../function/IntPredicate.md "interface in java.util.function") predicate)

    Returns whether any elements of this stream match the provided
    predicate. May not evaluate the predicate on all elements if not
    necessary for determining the result. If the stream is empty then
    `false` is returned and the predicate is not evaluated.

    This is a [short-circuiting
    terminal operation](package-summary.md#StreamOps).

    Parameters:
    :   `predicate` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        predicate to apply to elements of this stream

    Returns:
    :   `true` if any elements of the stream match the provided
        predicate, otherwise `false`
  + ### allMatch

    boolean allMatch([IntPredicate](../function/IntPredicate.md "interface in java.util.function") predicate)

    Returns whether all elements of this stream match the provided predicate.
    May not evaluate the predicate on all elements if not necessary for
    determining the result. If the stream is empty then `true` is
    returned and the predicate is not evaluated.

    This is a [short-circuiting
    terminal operation](package-summary.md#StreamOps).

    Parameters:
    :   `predicate` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        predicate to apply to elements of this stream

    Returns:
    :   `true` if either all elements of the stream match the
        provided predicate or the stream is empty, otherwise `false`
  + ### noneMatch

    boolean noneMatch([IntPredicate](../function/IntPredicate.md "interface in java.util.function") predicate)

    Returns whether no elements of this stream match the provided predicate.
    May not evaluate the predicate on all elements if not necessary for
    determining the result. If the stream is empty then `true` is
    returned and the predicate is not evaluated.

    This is a [short-circuiting
    terminal operation](package-summary.md#StreamOps).

    Parameters:
    :   `predicate` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        predicate to apply to elements of this stream

    Returns:
    :   `true` if either no elements of the stream match the
        provided predicate or the stream is empty, otherwise `false`
  + ### findFirst

    [OptionalInt](../OptionalInt.md "class in java.util") findFirst()

    Returns an [`OptionalInt`](../OptionalInt.md "class in java.util") describing the first element of this
    stream, or an empty `OptionalInt` if the stream is empty. If the
    stream has no encounter order, then any element may be returned.

    This is a [short-circuiting
    terminal operation](package-summary.md#StreamOps).

    Returns:
    :   an `OptionalInt` describing the first element of this stream,
        or an empty `OptionalInt` if the stream is empty
  + ### findAny

    [OptionalInt](../OptionalInt.md "class in java.util") findAny()

    Returns an [`OptionalInt`](../OptionalInt.md "class in java.util") describing some element of the stream, or
    an empty `OptionalInt` if the stream is empty.

    This is a [short-circuiting
    terminal operation](package-summary.md#StreamOps).

    The behavior of this operation is explicitly nondeterministic; it is
    free to select any element in the stream. This is to allow for maximal
    performance in parallel operations; the cost is that multiple invocations
    on the same source may not return the same result. (If a stable result
    is desired, use [`findFirst()`](#findFirst()) instead.)

    Returns:
    :   an `OptionalInt` describing some element of this stream, or
        an empty `OptionalInt` if the stream is empty

    See Also:
    :   - [`findFirst()`](#findFirst())
  + ### asLongStream

    [LongStream](LongStream.md "interface in java.util.stream") asLongStream()

    Returns a `LongStream` consisting of the elements of this stream,
    converted to `long`.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Returns:
    :   a `LongStream` consisting of the elements of this stream,
        converted to `long`
  + ### asDoubleStream

    [DoubleStream](DoubleStream.md "interface in java.util.stream") asDoubleStream()

    Returns a `DoubleStream` consisting of the elements of this stream,
    converted to `double`.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Returns:
    :   a `DoubleStream` consisting of the elements of this stream,
        converted to `double`
  + ### boxed

    [Stream](Stream.md "interface in java.util.stream")<[Integer](../../lang/Integer.md "class in java.lang")> boxed()

    Returns a `Stream` consisting of the elements of this stream,
    each boxed to an `Integer`.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Returns:
    :   a `Stream` consistent of the elements of this stream,
        each boxed to an `Integer`
  + ### sequential

    [IntStream](IntStream.md "interface in java.util.stream") sequential()

    Description copied from interface: `BaseStream`

    Returns an equivalent stream that is sequential. May return
    itself, either because the stream was already sequential, or because
    the underlying stream state was modified to be sequential.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Specified by:
    :   `sequential` in interface `BaseStream<Integer,IntStream>`

    Returns:
    :   a sequential stream
  + ### parallel

    [IntStream](IntStream.md "interface in java.util.stream") parallel()

    Description copied from interface: `BaseStream`

    Returns an equivalent stream that is parallel. May return
    itself, either because the stream was already parallel, or because
    the underlying stream state was modified to be parallel.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Specified by:
    :   `parallel` in interface `BaseStream<Integer,IntStream>`

    Returns:
    :   a parallel stream
  + ### iterator

    [PrimitiveIterator.OfInt](../PrimitiveIterator.OfInt.md "interface in java.util") iterator()

    Description copied from interface: `BaseStream`

    Returns an iterator for the elements of this stream.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Specified by:
    :   `iterator` in interface `BaseStream<Integer,IntStream>`

    Returns:
    :   the element iterator for this stream
  + ### spliterator

    [Spliterator.OfInt](../Spliterator.OfInt.md "interface in java.util") spliterator()

    Description copied from interface: `BaseStream`

    Returns a spliterator for the elements of this stream.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Specified by:
    :   `spliterator` in interface `BaseStream<Integer,IntStream>`

    Returns:
    :   the element spliterator for this stream
  + ### builder

    static [IntStream.Builder](IntStream.Builder.md "interface in java.util.stream") builder()

    Returns a builder for an `IntStream`.

    Returns:
    :   a stream builder
  + ### empty

    static [IntStream](IntStream.md "interface in java.util.stream") empty()

    Returns an empty sequential `IntStream`.

    Returns:
    :   an empty sequential stream
  + ### of

    static [IntStream](IntStream.md "interface in java.util.stream") of(int t)

    Returns a sequential `IntStream` containing a single element.

    Parameters:
    :   `t` - the single element

    Returns:
    :   a singleton sequential stream
  + ### of

    static [IntStream](IntStream.md "interface in java.util.stream") of(int... values)

    Returns a sequential ordered stream whose elements are the specified values.

    Parameters:
    :   `values` - the elements of the new stream

    Returns:
    :   the new stream
  + ### iterate

    static [IntStream](IntStream.md "interface in java.util.stream") iterate(int seed,
    [IntUnaryOperator](../function/IntUnaryOperator.md "interface in java.util.function") f)

    Returns an infinite sequential ordered `IntStream` produced by iterative
    application of a function `f` to an initial element `seed`,
    producing a `Stream` consisting of `seed`, `f(seed)`,
    `f(f(seed))`, etc.

    The first element (position `0`) in the `IntStream` will be
    the provided `seed`. For `n > 0`, the element at position
    `n`, will be the result of applying the function `f` to the
    element at position `n - 1`.

    The action of applying `f` for one element
    [*happens-before*](../concurrent/package-summary.md#MemoryVisibility)
    the action of applying `f` for subsequent elements. For any given
    element the action may be performed in whatever thread the library
    chooses.

    Parameters:
    :   `seed` - the initial element
    :   `f` - a function to be applied to the previous element to produce
        a new element

    Returns:
    :   a new sequential `IntStream`
  + ### iterate

    static [IntStream](IntStream.md "interface in java.util.stream") iterate(int seed,
    [IntPredicate](../function/IntPredicate.md "interface in java.util.function") hasNext,
    [IntUnaryOperator](../function/IntUnaryOperator.md "interface in java.util.function") next)

    Returns a sequential ordered `IntStream` produced by iterative
    application of the given `next` function to an initial element,
    conditioned on satisfying the given `hasNext` predicate. The
    stream terminates as soon as the `hasNext` predicate returns false.

    `IntStream.iterate` should produce the same sequence of elements as
    produced by the corresponding for-loop:

    ```
         for (int index=seed; hasNext.test(index); index = next.applyAsInt(index)) {
             ...
         }
    ```

    The resulting sequence may be empty if the `hasNext` predicate
    does not hold on the seed value. Otherwise the first element will be the
    supplied `seed` value, the next element (if present) will be the
    result of applying the `next` function to the `seed` value,
    and so on iteratively until the `hasNext` predicate indicates that
    the stream should terminate.

    The action of applying the `hasNext` predicate to an element
    [*happens-before*](../concurrent/package-summary.md#MemoryVisibility)
    the action of applying the `next` function to that element. The
    action of applying the `next` function for one element
    *happens-before* the action of applying the `hasNext`
    predicate for subsequent elements. For any given element an action may
    be performed in whatever thread the library chooses.

    Parameters:
    :   `seed` - the initial element
    :   `hasNext` - a predicate to apply to elements to determine when the
        stream must terminate.
    :   `next` - a function to be applied to the previous element to produce
        a new element

    Returns:
    :   a new sequential `IntStream`

    Since:
    :   9
  + ### generate

    static [IntStream](IntStream.md "interface in java.util.stream") generate([IntSupplier](../function/IntSupplier.md "interface in java.util.function") s)

    Returns an infinite sequential unordered stream where each element is
    generated by the provided `IntSupplier`. This is suitable for
    generating constant streams, streams of random elements, etc.

    Parameters:
    :   `s` - the `IntSupplier` for generated elements

    Returns:
    :   a new infinite sequential unordered `IntStream`
  + ### range

    static [IntStream](IntStream.md "interface in java.util.stream") range(int startInclusive,
    int endExclusive)

    Returns a sequential ordered `IntStream` from `startInclusive`
    (inclusive) to `endExclusive` (exclusive) by an incremental step of
    `1`.

    Parameters:
    :   `startInclusive` - the (inclusive) initial value
    :   `endExclusive` - the exclusive upper bound

    Returns:
    :   a sequential `IntStream` for the range of `int`
        elements
  + ### rangeClosed

    static [IntStream](IntStream.md "interface in java.util.stream") rangeClosed(int startInclusive,
    int endInclusive)

    Returns a sequential ordered `IntStream` from `startInclusive`
    (inclusive) to `endInclusive` (inclusive) by an incremental step of
    `1`.

    Parameters:
    :   `startInclusive` - the (inclusive) initial value
    :   `endInclusive` - the inclusive upper bound

    Returns:
    :   a sequential `IntStream` for the range of `int`
        elements
  + ### concat

    static [IntStream](IntStream.md "interface in java.util.stream") concat([IntStream](IntStream.md "interface in java.util.stream") a,
    [IntStream](IntStream.md "interface in java.util.stream") b)

    Creates a lazily concatenated stream whose elements are all the
    elements of the first stream followed by all the elements of the
    second stream. The resulting stream is ordered if both
    of the input streams are ordered, and parallel if either of the input
    streams is parallel. When the resulting stream is closed, the close
    handlers for both input streams are invoked.

    This method operates on the two input streams and binds each stream
    to its source. As a result subsequent modifications to an input stream
    source may not be reflected in the concatenated stream result.

    Parameters:
    :   `a` - the first stream
    :   `b` - the second stream

    Returns:
    :   the concatenation of the two input streams