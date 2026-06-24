Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface Stream<T>

Type Parameters:
:   `T` - the type of the stream elements

All Superinterfaces:
:   `AutoCloseable`, `BaseStream<T,Stream<T>>`

---

public interface Stream<T>
extends [BaseStream](BaseStream.md "interface in java.util.stream")<T,[Stream](Stream.md "interface in java.util.stream")<T>>

A sequence of elements supporting sequential and parallel aggregate
operations. The following example illustrates an aggregate operation using
[`Stream`](Stream.md "interface in java.util.stream") and [`IntStream`](IntStream.md "interface in java.util.stream"):

```
     int sum = widgets.stream()
                      .filter(w -> w.getColor() == RED)
                      .mapToInt(w -> w.getWeight())
                      .sum();
```

In this example, `widgets` is a `Collection<Widget>`. We create
a stream of `Widget` objects via [`Collection.stream()`](../Collection.md#stream()),
filter it to produce a stream containing only the red widgets, and then
transform it into a stream of `int` values representing the weight of
each red widget. Then this stream is summed to produce a total weight.

In addition to `Stream`, which is a stream of object references,
there are primitive specializations for [`IntStream`](IntStream.md "interface in java.util.stream"), [`LongStream`](LongStream.md "interface in java.util.stream"),
and [`DoubleStream`](DoubleStream.md "interface in java.util.stream"), all of which are referred to as "streams" and
conform to the characteristics and restrictions described here.

To perform a computation, stream
[operations](package-summary.md#StreamOps) are composed into a
*stream pipeline*. A stream pipeline consists of a source (which
might be an array, a collection, a generator function, an I/O channel,
etc), zero or more *intermediate operations* (which transform a
stream into another stream, such as [`filter(Predicate)`](#filter(java.util.function.Predicate))), and a
*terminal operation* (which produces a result or side-effect, such
as [`count()`](#count()) or [`forEach(Consumer)`](#forEach(java.util.function.Consumer))).
Streams are lazy; computation on the source data is only performed when the
terminal operation is initiated, and source elements are consumed only
as needed.

A stream implementation is permitted significant latitude in optimizing
the computation of the result. For example, a stream implementation is free
to elide operations (or entire stages) from a stream pipeline -- and
therefore elide invocation of behavioral parameters -- if it can prove that
it would not affect the result of the computation. This means that
side-effects of behavioral parameters may not always be executed and should
not be relied upon, unless otherwise specified (such as by the terminal
operations `forEach` and `forEachOrdered`). (For a specific
example of such an optimization, see the API note documented on the
[`count()`](#count()) operation. For more detail, see the
[side-effects](package-summary.md#SideEffects) section of the
stream package documentation.)

Collections and streams, while bearing some superficial similarities,
have different goals. Collections are primarily concerned with the efficient
management of, and access to, their elements. By contrast, streams do not
provide a means to directly access or manipulate their elements, and are
instead concerned with declaratively describing their source and the
computational operations which will be performed in aggregate on that source.
However, if the provided stream operations do not offer the desired
functionality, the [`BaseStream.iterator()`](BaseStream.md#iterator()) and [`BaseStream.spliterator()`](BaseStream.md#spliterator()) operations
can be used to perform a controlled traversal.

A stream pipeline, like the "widgets" example above, can be viewed as
a *query* on the stream source. Unless the source was explicitly
designed for concurrent modification (such as a [`ConcurrentHashMap`](../concurrent/ConcurrentHashMap.md "class in java.util.concurrent")),
unpredictable or erroneous behavior may result from modifying the stream
source while it is being queried.

Most stream operations accept parameters that describe user-specified
behavior, such as the lambda expression `w -> w.getWeight()` passed to
`mapToInt` in the example above. To preserve correct behavior,
these *behavioral parameters*:

* must be [non-interfering](package-summary.md#NonInterference)
  (they do not modify the stream source); and
* in most cases must be [stateless](package-summary.md#Statelessness)
  (their result should not depend on any state that might change during execution
  of the stream pipeline).

Such parameters are always instances of a
[functional interface](../function/package-summary.md) such
as [`Function`](../function/Function.md "interface in java.util.function"), and are often lambda expressions or
method references. Unless otherwise specified these parameters must be
*non-null*.

A stream should be operated on (invoking an intermediate or terminal stream
operation) only once. This rules out, for example, "forked" streams, where
the same source feeds two or more pipelines, or multiple traversals of the
same stream. A stream implementation may throw [`IllegalStateException`](../../lang/IllegalStateException.md "class in java.lang")
if it detects that the stream is being reused. However, since some stream
operations may return their receiver rather than a new stream object, it may
not be possible to detect reuse in all cases.

Streams have a [`BaseStream.close()`](BaseStream.md#close()) method and implement [`AutoCloseable`](../../lang/AutoCloseable.md "interface in java.lang").
Operating on a stream after it has been closed will throw [`IllegalStateException`](../../lang/IllegalStateException.md "class in java.lang").
Most stream instances do not actually need to be closed after use, as they
are backed by collections, arrays, or generating functions, which require no
special resource management. Generally, only streams whose source is an IO channel,
such as those returned by [`Files.lines(Path)`](../../nio/file/Files.md#lines(java.nio.file.Path)), will require closing. If a
stream does require closing, it must be opened as a resource within a try-with-resources
statement or similar control structure to ensure that it is closed promptly after its
operations have completed.

Stream pipelines may execute either sequentially or in
[parallel](package-summary.md#Parallelism). This
execution mode is a property of the stream. Streams are created
with an initial choice of sequential or parallel execution. (For example,
[`Collection.stream()`](../Collection.md#stream()) creates a sequential stream,
and [`Collection.parallelStream()`](../Collection.md#parallelStream()) creates
a parallel one.) This choice of execution mode may be modified by the
[`BaseStream.sequential()`](BaseStream.md#sequential()) or [`BaseStream.parallel()`](BaseStream.md#parallel()) methods, and may be queried with
the [`BaseStream.isParallel()`](BaseStream.md#isParallel()) method.

Since:
:   1.8

See Also:
:   * [`IntStream`](IntStream.md "interface in java.util.stream")
    * [`LongStream`](LongStream.md "interface in java.util.stream")
    * [`DoubleStream`](DoubleStream.md "interface in java.util.stream")
    * [java.util.stream](package-summary.md)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `Stream.Builder<T>`

  A mutable builder for a `Stream`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `allMatch(Predicate<? super T> predicate)`

  Returns whether all elements of this stream match the provided predicate.

  `boolean`

  `anyMatch(Predicate<? super T> predicate)`

  Returns whether any elements of this stream match the provided
  predicate.

  `static <T> Stream.Builder<T>`

  `builder()`

  Returns a builder for a `Stream`.

  `<R> R`

  `collect(Supplier<R> supplier,
  BiConsumer<R,? super T> accumulator,
  BiConsumer<R,R> combiner)`

  Performs a [mutable
  reduction](package-summary.md#MutableReduction) operation on the elements of this stream.

  `<R,
  A> R`

  `collect(Collector<? super T,A,R> collector)`

  Performs a [mutable
  reduction](package-summary.md#MutableReduction) operation on the elements of this stream using a
  `Collector`.

  `static <T> Stream<T>`

  `concat(Stream<? extends T> a,
  Stream<? extends T> b)`

  Creates a lazily concatenated stream whose elements are all the
  elements of the first stream followed by all the elements of the
  second stream.

  `long`

  `count()`

  Returns the count of elements in this stream.

  `Stream<T>`

  `distinct()`

  Returns a stream consisting of the distinct elements (according to
  [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))) of this stream.

  `default Stream<T>`

  `dropWhile(Predicate<? super T> predicate)`

  Returns, if this stream is ordered, a stream consisting of the remaining
  elements of this stream after dropping the longest prefix of elements
  that match the given predicate.

  `static <T> Stream<T>`

  `empty()`

  Returns an empty sequential `Stream`.

  `Stream<T>`

  `filter(Predicate<? super T> predicate)`

  Returns a stream consisting of the elements of this stream that match
  the given predicate.

  `Optional<T>`

  `findAny()`

  Returns an [`Optional`](../Optional.md "class in java.util") describing some element of the stream, or an
  empty `Optional` if the stream is empty.

  `Optional<T>`

  `findFirst()`

  Returns an [`Optional`](../Optional.md "class in java.util") describing the first element of this stream,
  or an empty `Optional` if the stream is empty.

  `<R> Stream<R>`

  `flatMap(Function<? super T,? extends Stream<? extends R>> mapper)`

  Returns a stream consisting of the results of replacing each element of
  this stream with the contents of a mapped stream produced by applying
  the provided mapping function to each element.

  `DoubleStream`

  `flatMapToDouble(Function<? super T,? extends DoubleStream> mapper)`

  Returns an `DoubleStream` consisting of the results of replacing
  each element of this stream with the contents of a mapped stream produced
  by applying the provided mapping function to each element.

  `IntStream`

  `flatMapToInt(Function<? super T,? extends IntStream> mapper)`

  Returns an `IntStream` consisting of the results of replacing each
  element of this stream with the contents of a mapped stream produced by
  applying the provided mapping function to each element.

  `LongStream`

  `flatMapToLong(Function<? super T,? extends LongStream> mapper)`

  Returns an `LongStream` consisting of the results of replacing each
  element of this stream with the contents of a mapped stream produced by
  applying the provided mapping function to each element.

  `void`

  `forEach(Consumer<? super T> action)`

  Performs an action for each element of this stream.

  `void`

  `forEachOrdered(Consumer<? super T> action)`

  Performs an action for each element of this stream, in the encounter
  order of the stream if the stream has a defined encounter order.

  `static <T> Stream<T>`

  `generate(Supplier<? extends T> s)`

  Returns an infinite sequential unordered stream where each element is
  generated by the provided `Supplier`.

  `static <T> Stream<T>`

  `iterate(T seed,
  Predicate<? super T> hasNext,
  UnaryOperator<T> next)`

  Returns a sequential ordered `Stream` produced by iterative
  application of the given `next` function to an initial element,
  conditioned on satisfying the given `hasNext` predicate.

  `static <T> Stream<T>`

  `iterate(T seed,
  UnaryOperator<T> f)`

  Returns an infinite sequential ordered `Stream` produced by iterative
  application of a function `f` to an initial element `seed`,
  producing a `Stream` consisting of `seed`, `f(seed)`,
  `f(f(seed))`, etc.

  `Stream<T>`

  `limit(long maxSize)`

  Returns a stream consisting of the elements of this stream, truncated
  to be no longer than `maxSize` in length.

  `<R> Stream<R>`

  `map(Function<? super T,? extends R> mapper)`

  Returns a stream consisting of the results of applying the given
  function to the elements of this stream.

  `default <R> Stream<R>`

  `mapMulti(BiConsumer<? super T,? super Consumer<R>> mapper)`

  Returns a stream consisting of the results of replacing each element of
  this stream with multiple elements, specifically zero or more elements.

  `default DoubleStream`

  `mapMultiToDouble(BiConsumer<? super T,? super DoubleConsumer> mapper)`

  Returns a `DoubleStream` consisting of the results of replacing each
  element of this stream with multiple elements, specifically zero or more
  elements.

  `default IntStream`

  `mapMultiToInt(BiConsumer<? super T,? super IntConsumer> mapper)`

  Returns an `IntStream` consisting of the results of replacing each
  element of this stream with multiple elements, specifically zero or more
  elements.

  `default LongStream`

  `mapMultiToLong(BiConsumer<? super T,? super LongConsumer> mapper)`

  Returns a `LongStream` consisting of the results of replacing each
  element of this stream with multiple elements, specifically zero or more
  elements.

  `DoubleStream`

  `mapToDouble(ToDoubleFunction<? super T> mapper)`

  Returns a `DoubleStream` consisting of the results of applying the
  given function to the elements of this stream.

  `IntStream`

  `mapToInt(ToIntFunction<? super T> mapper)`

  Returns an `IntStream` consisting of the results of applying the
  given function to the elements of this stream.

  `LongStream`

  `mapToLong(ToLongFunction<? super T> mapper)`

  Returns a `LongStream` consisting of the results of applying the
  given function to the elements of this stream.

  `Optional<T>`

  `max(Comparator<? super T> comparator)`

  Returns the maximum element of this stream according to the provided
  `Comparator`.

  `Optional<T>`

  `min(Comparator<? super T> comparator)`

  Returns the minimum element of this stream according to the provided
  `Comparator`.

  `boolean`

  `noneMatch(Predicate<? super T> predicate)`

  Returns whether no elements of this stream match the provided predicate.

  `static <T> Stream<T>`

  `of(T t)`

  Returns a sequential `Stream` containing a single element.

  `static <T> Stream<T>`

  `of(T... values)`

  Returns a sequential ordered stream whose elements are the specified values.

  `static <T> Stream<T>`

  `ofNullable(T t)`

  Returns a sequential `Stream` containing a single element, if
  non-null, otherwise returns an empty `Stream`.

  `Stream<T>`

  `peek(Consumer<? super T> action)`

  Returns a stream consisting of the elements of this stream, additionally
  performing the provided action on each element as elements are consumed
  from the resulting stream.

  `Optional<T>`

  `reduce(BinaryOperator<T> accumulator)`

  Performs a [reduction](package-summary.md#Reduction) on the
  elements of this stream, using an
  [associative](package-summary.md#Associativity) accumulation
  function, and returns an `Optional` describing the reduced value,
  if any.

  `T`

  `reduce(T identity,
  BinaryOperator<T> accumulator)`

  Performs a [reduction](package-summary.md#Reduction) on the
  elements of this stream, using the provided identity value and an
  [associative](package-summary.md#Associativity)
  accumulation function, and returns the reduced value.

  `<U> U`

  `reduce(U identity,
  BiFunction<U,? super T,U> accumulator,
  BinaryOperator<U> combiner)`

  Performs a [reduction](package-summary.md#Reduction) on the
  elements of this stream, using the provided identity, accumulation and
  combining functions.

  `Stream<T>`

  `skip(long n)`

  Returns a stream consisting of the remaining elements of this stream
  after discarding the first `n` elements of the stream.

  `Stream<T>`

  `sorted()`

  Returns a stream consisting of the elements of this stream, sorted
  according to natural order.

  `Stream<T>`

  `sorted(Comparator<? super T> comparator)`

  Returns a stream consisting of the elements of this stream, sorted
  according to the provided `Comparator`.

  `default Stream<T>`

  `takeWhile(Predicate<? super T> predicate)`

  Returns, if this stream is ordered, a stream consisting of the longest
  prefix of elements taken from this stream that match the given predicate.

  `Object[]`

  `toArray()`

  Returns an array containing the elements of this stream.

  `<A> A[]`

  `toArray(IntFunction<A[]> generator)`

  Returns an array containing the elements of this stream, using the
  provided `generator` function to allocate the returned array, as
  well as any additional arrays that might be required for a partitioned
  execution or for resizing.

  `default List<T>`

  `toList()`

  Accumulates the elements of this stream into a `List`.

  ### Methods inherited from interface java.util.stream.[BaseStream](BaseStream.md "interface in java.util.stream")

  `close, isParallel, iterator, onClose, parallel, sequential, spliterator, unordered`

* ## Method Details

  + ### filter

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> filter([Predicate](../function/Predicate.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> predicate)

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

    <R> [Stream](Stream.md "interface in java.util.stream")<R> map([Function](../function/Function.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? extends R> mapper)

    Returns a stream consisting of the results of applying the given
    function to the elements of this stream.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Type Parameters:
    :   `R` - The element type of the new stream

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element

    Returns:
    :   the new stream
  + ### mapToInt

    [IntStream](IntStream.md "interface in java.util.stream") mapToInt([ToIntFunction](../function/ToIntFunction.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> mapper)

    Returns an `IntStream` consisting of the results of applying the
    given function to the elements of this stream.

    This is an [intermediate operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element

    Returns:
    :   the new stream
  + ### mapToLong

    [LongStream](LongStream.md "interface in java.util.stream") mapToLong([ToLongFunction](../function/ToLongFunction.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> mapper)

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

    [DoubleStream](DoubleStream.md "interface in java.util.stream") mapToDouble([ToDoubleFunction](../function/ToDoubleFunction.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> mapper)

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

    <R> [Stream](Stream.md "interface in java.util.stream")<R> flatMap([Function](../function/Function.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? extends [Stream](Stream.md "interface in java.util.stream")<? extends R>> mapper)

    Returns a stream consisting of the results of replacing each element of
    this stream with the contents of a mapped stream produced by applying
    the provided mapping function to each element. Each mapped stream is
    [`closed`](BaseStream.md#close()) after its contents
    have been placed into this stream. (If a mapped stream is `null`
    an empty stream is used, instead.)

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Type Parameters:
    :   `R` - The element type of the new stream

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element which produces a stream
        of new values

    Returns:
    :   the new stream

    See Also:
    :   - [`mapMulti(java.util.function.BiConsumer<? super T, ? super java.util.function.Consumer<R>>)`](#mapMulti(java.util.function.BiConsumer))
  + ### flatMapToInt

    [IntStream](IntStream.md "interface in java.util.stream") flatMapToInt([Function](../function/Function.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? extends [IntStream](IntStream.md "interface in java.util.stream")> mapper)

    Returns an `IntStream` consisting of the results of replacing each
    element of this stream with the contents of a mapped stream produced by
    applying the provided mapping function to each element. Each mapped
    stream is [`closed`](BaseStream.md#close()) after its
    contents have been placed into this stream. (If a mapped stream is
    `null` an empty stream is used, instead.)

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element which produces a stream
        of new values

    Returns:
    :   the new stream

    See Also:
    :   - [`flatMap(Function)`](#flatMap(java.util.function.Function))
  + ### flatMapToLong

    [LongStream](LongStream.md "interface in java.util.stream") flatMapToLong([Function](../function/Function.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? extends [LongStream](LongStream.md "interface in java.util.stream")> mapper)

    Returns an `LongStream` consisting of the results of replacing each
    element of this stream with the contents of a mapped stream produced by
    applying the provided mapping function to each element. Each mapped
    stream is [`closed`](BaseStream.md#close()) after its
    contents have been placed into this stream. (If a mapped stream is
    `null` an empty stream is used, instead.)

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element which produces a stream
        of new values

    Returns:
    :   the new stream

    See Also:
    :   - [`flatMap(Function)`](#flatMap(java.util.function.Function))
  + ### flatMapToDouble

    [DoubleStream](DoubleStream.md "interface in java.util.stream") flatMapToDouble([Function](../function/Function.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? extends [DoubleStream](DoubleStream.md "interface in java.util.stream")> mapper)

    Returns an `DoubleStream` consisting of the results of replacing
    each element of this stream with the contents of a mapped stream produced
    by applying the provided mapping function to each element. Each mapped
    stream is [`closed`](BaseStream.md#close()) after its
    contents have placed been into this stream. (If a mapped stream is
    `null` an empty stream is used, instead.)

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function to apply to each element which produces a stream
        of new values

    Returns:
    :   the new stream

    See Also:
    :   - [`flatMap(Function)`](#flatMap(java.util.function.Function))
  + ### mapMulti

    default <R> [Stream](Stream.md "interface in java.util.stream")<R> mapMulti([BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? super [Consumer](../function/Consumer.md "interface in java.util.function")<R>> mapper)

    Returns a stream consisting of the results of replacing each element of
    this stream with multiple elements, specifically zero or more elements.
    Replacement is performed by applying the provided mapping function to each
    element in conjunction with a [consumer](../function/Consumer.md "interface in java.util.function") argument
    that accepts replacement elements. The mapping function calls the consumer
    zero or more times to provide the replacement elements.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    If the [consumer](../function/Consumer.md "interface in java.util.function") argument is used outside the scope of
    its application to the mapping function, the results are undefined.

    Type Parameters:
    :   `R` - The element type of the new stream

    Parameters:
    :   `mapper` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function that generates replacement elements

    Returns:
    :   the new stream

    Since:
    :   16

    See Also:
    :   - [`flatMap`](#flatMap(java.util.function.Function))
  + ### mapMultiToInt

    default [IntStream](IntStream.md "interface in java.util.stream") mapMultiToInt([BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? super [IntConsumer](../function/IntConsumer.md "interface in java.util.function")> mapper)

    Returns an `IntStream` consisting of the results of replacing each
    element of this stream with multiple elements, specifically zero or more
    elements.
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
    :   - [`mapMulti`](#mapMulti(java.util.function.BiConsumer))
  + ### mapMultiToLong

    default [LongStream](LongStream.md "interface in java.util.stream") mapMultiToLong([BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? super [LongConsumer](../function/LongConsumer.md "interface in java.util.function")> mapper)

    Returns a `LongStream` consisting of the results of replacing each
    element of this stream with multiple elements, specifically zero or more
    elements.
    Replacement is performed by applying the provided mapping function to each
    element in conjunction with a [consumer](../function/LongConsumer.md "interface in java.util.function") argument
    that accepts replacement elements. The mapping function calls the consumer
    zero or more times to provide the replacement elements.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    If the [consumer](../function/LongConsumer.md "interface in java.util.function") argument is used outside the scope of
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
    :   - [`mapMulti`](#mapMulti(java.util.function.BiConsumer))
  + ### mapMultiToDouble

    default [DoubleStream](DoubleStream.md "interface in java.util.stream") mapMultiToDouble([BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream"),? super [DoubleConsumer](../function/DoubleConsumer.md "interface in java.util.function")> mapper)

    Returns a `DoubleStream` consisting of the results of replacing each
    element of this stream with multiple elements, specifically zero or more
    elements.
    Replacement is performed by applying the provided mapping function to each
    element in conjunction with a [consumer](../function/DoubleConsumer.md "interface in java.util.function") argument
    that accepts replacement elements. The mapping function calls the consumer
    zero or more times to provide the replacement elements.

    This is an [intermediate
    operation](package-summary.md#StreamOps).

    If the [consumer](../function/DoubleConsumer.md "interface in java.util.function") argument is used outside the scope of
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
    :   - [`mapMulti`](#mapMulti(java.util.function.BiConsumer))
  + ### distinct

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> distinct()

    Returns a stream consisting of the distinct elements (according to
    [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))) of this stream.

    For ordered streams, the selection of distinct elements is stable
    (for duplicated elements, the element appearing first in the encounter
    order is preserved.) For unordered streams, no stability guarantees
    are made.

    This is a [stateful
    intermediate operation](package-summary.md#StreamOps).

    Returns:
    :   the new stream
  + ### sorted

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> sorted()

    Returns a stream consisting of the elements of this stream, sorted
    according to natural order. If the elements of this stream are not
    `Comparable`, a `java.lang.ClassCastException` may be thrown
    when the terminal operation is executed.

    For ordered streams, the sort is stable. For unordered streams, no
    stability guarantees are made.

    This is a [stateful
    intermediate operation](package-summary.md#StreamOps).

    Returns:
    :   the new stream
  + ### sorted

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> sorted([Comparator](../Comparator.md "interface in java.util")<? super [T](Stream.md "type parameter in Stream")> comparator)

    Returns a stream consisting of the elements of this stream, sorted
    according to the provided `Comparator`.

    For ordered streams, the sort is stable. For unordered streams, no
    stability guarantees are made.

    This is a [stateful
    intermediate operation](package-summary.md#StreamOps).

    Parameters:
    :   `comparator` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        `Comparator` to be used to compare stream elements

    Returns:
    :   the new stream
  + ### peek

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> peek([Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> action)

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

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> limit(long maxSize)

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

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> skip(long n)

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

    default [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> takeWhile([Predicate](../function/Predicate.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> predicate)

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

    default [Stream](Stream.md "interface in java.util.stream")<[T](Stream.md "type parameter in Stream")> dropWhile([Predicate](../function/Predicate.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> predicate)

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

    void forEach([Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> action)

    Performs an action for each element of this stream.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    The behavior of this operation is explicitly nondeterministic.
    For parallel stream pipelines, this operation does *not*
    guarantee to respect the encounter order of the stream, as doing so
    would sacrifice the benefit of parallelism. For any given element, the
    action may be performed at whatever time and in whatever thread the
    library chooses. If the action accesses shared state, it is
    responsible for providing the required synchronization.

    Parameters:
    :   `action` - a [non-interfering](package-summary.md#NonInterference) action to perform on the elements
  + ### forEachOrdered

    void forEachOrdered([Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> action)

    Performs an action for each element of this stream, in the encounter
    order of the stream if the stream has a defined encounter order.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    This operation processes the elements one at a time, in encounter
    order if one exists. Performing the action for one element
    [*happens-before*](../concurrent/package-summary.md#MemoryVisibility)
    performing the action for subsequent elements, but for any given element,
    the action may be performed in whatever thread the library chooses.

    Parameters:
    :   `action` - a [non-interfering](package-summary.md#NonInterference) action to perform on the elements

    See Also:
    :   - [`forEach(Consumer)`](#forEach(java.util.function.Consumer))
  + ### toArray

    [Object](../../lang/Object.md "class in java.lang")[] toArray()

    Returns an array containing the elements of this stream.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Returns:
    :   an array, whose [runtime component
        type](../../lang/Class.md#getComponentType()) is `Object`, containing the elements of this stream
  + ### toArray

    <A> A[] toArray([IntFunction](../function/IntFunction.md "interface in java.util.function")<A[]> generator)

    Returns an array containing the elements of this stream, using the
    provided `generator` function to allocate the returned array, as
    well as any additional arrays that might be required for a partitioned
    execution or for resizing.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Type Parameters:
    :   `A` - the component type of the resulting array

    Parameters:
    :   `generator` - a function which produces a new array of the desired
        type and the provided length

    Returns:
    :   an array containing the elements in this stream

    Throws:
    :   `ArrayStoreException` - if the runtime type of any element of this
        stream is not assignable to the [runtime component type](../../lang/Class.md#getComponentType()) of the generated array
  + ### reduce

    [T](Stream.md "type parameter in Stream") reduce([T](Stream.md "type parameter in Stream") identity,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<[T](Stream.md "type parameter in Stream")> accumulator)

    Performs a [reduction](package-summary.md#Reduction) on the
    elements of this stream, using the provided identity value and an
    [associative](package-summary.md#Associativity)
    accumulation function, and returns the reduced value. This is equivalent
    to:

    ```
         T result = identity;
         for (T element : this stream)
             result = accumulator.apply(result, element)
         return result;
    ```

    but is not constrained to execute sequentially.

    The `identity` value must be an identity for the accumulator
    function. This means that for all `t`,
    `accumulator.apply(identity, t)` is equal to `t`.
    The `accumulator` function must be an
    [associative](package-summary.md#Associativity) function.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `identity` - the identity value for the accumulating function
    :   `accumulator` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function for combining two values

    Returns:
    :   the result of the reduction
  + ### reduce

    [Optional](../Optional.md "class in java.util")<[T](Stream.md "type parameter in Stream")> reduce([BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<[T](Stream.md "type parameter in Stream")> accumulator)

    Performs a [reduction](package-summary.md#Reduction) on the
    elements of this stream, using an
    [associative](package-summary.md#Associativity) accumulation
    function, and returns an `Optional` describing the reduced value,
    if any. This is equivalent to:

    ```
         boolean foundAny = false;
         T result = null;
         for (T element : this stream) {
             if (!foundAny) {
                 foundAny = true;
                 result = element;
             }
             else
                 result = accumulator.apply(result, element);
         }
         return foundAny ? Optional.of(result) : Optional.empty();
    ```

    but is not constrained to execute sequentially.

    The `accumulator` function must be an
    [associative](package-summary.md#Associativity) function.

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `accumulator` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function for combining two values

    Returns:
    :   an [`Optional`](../Optional.md "class in java.util") describing the result of the reduction

    Throws:
    :   `NullPointerException` - if the result of the reduction is null

    See Also:
    :   - [`reduce(Object, BinaryOperator)`](#reduce(T,java.util.function.BinaryOperator))
        - [`min(Comparator)`](#min(java.util.Comparator))
        - [`max(Comparator)`](#max(java.util.Comparator))
  + ### reduce

    <U> U reduce(U identity,
    [BiFunction](../function/BiFunction.md "interface in java.util.function")<U,? super [T](Stream.md "type parameter in Stream"),U> accumulator,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<U> combiner)

    Performs a [reduction](package-summary.md#Reduction) on the
    elements of this stream, using the provided identity, accumulation and
    combining functions. This is equivalent to:

    ```
         U result = identity;
         for (T element : this stream)
             result = accumulator.apply(result, element)
         return result;
    ```

    but is not constrained to execute sequentially.

    The `identity` value must be an identity for the combiner
    function. This means that for all `u`, `combiner(identity, u)`
    is equal to `u`. Additionally, the `combiner` function
    must be compatible with the `accumulator` function; for all
    `u` and `t`, the following must hold:

    ```
         combiner.apply(u, accumulator.apply(identity, t)) == accumulator.apply(u, t)
    ```

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Type Parameters:
    :   `U` - The type of the result

    Parameters:
    :   `identity` - the identity value for the combiner function
    :   `accumulator` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function for incorporating an additional element into a result
    :   `combiner` - an [associative](package-summary.md#Associativity),
        [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        function for combining two values, which must be
        compatible with the accumulator function

    Returns:
    :   the result of the reduction

    See Also:
    :   - [`reduce(BinaryOperator)`](#reduce(java.util.function.BinaryOperator))
        - [`reduce(Object, BinaryOperator)`](#reduce(T,java.util.function.BinaryOperator))
  + ### collect

    <R> R collect([Supplier](../function/Supplier.md "interface in java.util.function")<R> supplier,
    [BiConsumer](../function/BiConsumer.md "interface in java.util.function")<R,? super [T](Stream.md "type parameter in Stream")> accumulator,
    [BiConsumer](../function/BiConsumer.md "interface in java.util.function")<R,R> combiner)

    Performs a [mutable
    reduction](package-summary.md#MutableReduction) operation on the elements of this stream. A mutable
    reduction is one in which the reduced value is a mutable result container,
    such as an `ArrayList`, and elements are incorporated by updating
    the state of the result rather than by replacing the result. This
    produces a result equivalent to:

    ```
         R result = supplier.get();
         for (T element : this stream)
             accumulator.accept(result, element);
         return result;
    ```

    Like [`reduce(Object, BinaryOperator)`](#reduce(T,java.util.function.BinaryOperator)), `collect` operations
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
  + ### collect

    <R,
    A> R collect([Collector](Collector.md "interface in java.util.stream")<? super [T](Stream.md "type parameter in Stream"),A,R> collector)

    Performs a [mutable
    reduction](package-summary.md#MutableReduction) operation on the elements of this stream using a
    `Collector`. A `Collector`
    encapsulates the functions used as arguments to
    [`collect(Supplier, BiConsumer, BiConsumer)`](#collect(java.util.function.Supplier,java.util.function.BiConsumer,java.util.function.BiConsumer)), allowing for reuse of
    collection strategies and composition of collect operations such as
    multiple-level grouping or partitioning.

    If the stream is parallel, and the `Collector`
    is [`concurrent`](Collector.Characteristics.md#CONCURRENT), and
    either the stream is unordered or the collector is
    [`unordered`](Collector.Characteristics.md#UNORDERED),
    then a concurrent reduction will be performed (see [`Collector`](Collector.md "interface in java.util.stream") for
    details on concurrent reduction.)

    This is a [terminal
    operation](package-summary.md#StreamOps).

    When executed in parallel, multiple intermediate results may be
    instantiated, populated, and merged so as to maintain isolation of
    mutable data structures. Therefore, even when executed in parallel
    with non-thread-safe data structures (such as `ArrayList`), no
    additional synchronization is needed for a parallel reduction.

    Type Parameters:
    :   `R` - the type of the result
    :   `A` - the intermediate accumulation type of the `Collector`

    Parameters:
    :   `collector` - the `Collector` describing the reduction

    Returns:
    :   the result of the reduction

    See Also:
    :   - [`collect(Supplier, BiConsumer, BiConsumer)`](#collect(java.util.function.Supplier,java.util.function.BiConsumer,java.util.function.BiConsumer))
        - [`Collectors`](Collectors.md "class in java.util.stream")
  + ### toList

    default [List](../List.md "interface in java.util")<[T](Stream.md "type parameter in Stream")> toList()

    Accumulates the elements of this stream into a `List`. The elements in
    the list will be in this stream's encounter order, if one exists. The returned List
    is unmodifiable; calls to any mutator method will always cause
    `UnsupportedOperationException` to be thrown. There are no
    guarantees on the implementation type or serializability of the returned List.

    The returned instance may be [value-based](../../../../java.base/java/lang/doc-files/ValueBased.md).
    Callers should make no assumptions about the identity of the returned instances.
    Identity-sensitive operations on these instances (reference equality (`==`),
    identity hash code, and synchronization) are unreliable and should be avoided.

    This is a [terminal operation](package-summary.md#StreamOps).

    Returns:
    :   a List containing the stream elements

    Since:
    :   16
  + ### min

    [Optional](../Optional.md "class in java.util")<[T](Stream.md "type parameter in Stream")> min([Comparator](../Comparator.md "interface in java.util")<? super [T](Stream.md "type parameter in Stream")> comparator)

    Returns the minimum element of this stream according to the provided
    `Comparator`. This is a special case of a
    [reduction](package-summary.md#Reduction).

    This is a [terminal operation](package-summary.md#StreamOps).

    Parameters:
    :   `comparator` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        `Comparator` to compare elements of this stream

    Returns:
    :   an `Optional` describing the minimum element of this stream,
        or an empty `Optional` if the stream is empty

    Throws:
    :   `NullPointerException` - if the minimum element is null
  + ### max

    [Optional](../Optional.md "class in java.util")<[T](Stream.md "type parameter in Stream")> max([Comparator](../Comparator.md "interface in java.util")<? super [T](Stream.md "type parameter in Stream")> comparator)

    Returns the maximum element of this stream according to the provided
    `Comparator`. This is a special case of a
    [reduction](package-summary.md#Reduction).

    This is a [terminal
    operation](package-summary.md#StreamOps).

    Parameters:
    :   `comparator` - a [non-interfering](package-summary.md#NonInterference),
        [stateless](package-summary.md#Statelessness)
        `Comparator` to compare elements of this stream

    Returns:
    :   an `Optional` describing the maximum element of this stream,
        or an empty `Optional` if the stream is empty

    Throws:
    :   `NullPointerException` - if the maximum element is null
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
  + ### anyMatch

    boolean anyMatch([Predicate](../function/Predicate.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> predicate)

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

    boolean allMatch([Predicate](../function/Predicate.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> predicate)

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

    boolean noneMatch([Predicate](../function/Predicate.md "interface in java.util.function")<? super [T](Stream.md "type parameter in Stream")> predicate)

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

    [Optional](../Optional.md "class in java.util")<[T](Stream.md "type parameter in Stream")> findFirst()

    Returns an [`Optional`](../Optional.md "class in java.util") describing the first element of this stream,
    or an empty `Optional` if the stream is empty. If the stream has
    no encounter order, then any element may be returned.

    This is a [short-circuiting
    terminal operation](package-summary.md#StreamOps).

    Returns:
    :   an `Optional` describing the first element of this stream,
        or an empty `Optional` if the stream is empty

    Throws:
    :   `NullPointerException` - if the element selected is null
  + ### findAny

    [Optional](../Optional.md "class in java.util")<[T](Stream.md "type parameter in Stream")> findAny()

    Returns an [`Optional`](../Optional.md "class in java.util") describing some element of the stream, or an
    empty `Optional` if the stream is empty.

    This is a [short-circuiting
    terminal operation](package-summary.md#StreamOps).

    The behavior of this operation is explicitly nondeterministic; it is
    free to select any element in the stream. This is to allow for maximal
    performance in parallel operations; the cost is that multiple invocations
    on the same source may not return the same result. (If a stable result
    is desired, use [`findFirst()`](#findFirst()) instead.)

    Returns:
    :   an `Optional` describing some element of this stream, or an
        empty `Optional` if the stream is empty

    Throws:
    :   `NullPointerException` - if the element selected is null

    See Also:
    :   - [`findFirst()`](#findFirst())
  + ### builder

    static <T> [Stream.Builder](Stream.Builder.md "interface in java.util.stream")<T> builder()

    Returns a builder for a `Stream`.

    Type Parameters:
    :   `T` - type of elements

    Returns:
    :   a stream builder
  + ### empty

    static <T> [Stream](Stream.md "interface in java.util.stream")<T> empty()

    Returns an empty sequential `Stream`.

    Type Parameters:
    :   `T` - the type of stream elements

    Returns:
    :   an empty sequential stream
  + ### of

    static <T> [Stream](Stream.md "interface in java.util.stream")<T> of(T t)

    Returns a sequential `Stream` containing a single element.

    Type Parameters:
    :   `T` - the type of stream elements

    Parameters:
    :   `t` - the single element

    Returns:
    :   a singleton sequential stream
  + ### ofNullable

    static <T> [Stream](Stream.md "interface in java.util.stream")<T> ofNullable(T t)

    Returns a sequential `Stream` containing a single element, if
    non-null, otherwise returns an empty `Stream`.

    Type Parameters:
    :   `T` - the type of stream elements

    Parameters:
    :   `t` - the single element

    Returns:
    :   a stream with a single element if the specified element
        is non-null, otherwise an empty stream

    Since:
    :   9
  + ### of

    [@SafeVarargs](../../lang/SafeVarargs.md "annotation interface in java.lang")
    static <T> [Stream](Stream.md "interface in java.util.stream")<T> of(T... values)

    Returns a sequential ordered stream whose elements are the specified values.

    Type Parameters:
    :   `T` - the type of stream elements

    Parameters:
    :   `values` - the elements of the new stream

    Returns:
    :   the new stream
  + ### iterate

    static <T> [Stream](Stream.md "interface in java.util.stream")<T> iterate(T seed,
    [UnaryOperator](../function/UnaryOperator.md "interface in java.util.function")<T> f)

    Returns an infinite sequential ordered `Stream` produced by iterative
    application of a function `f` to an initial element `seed`,
    producing a `Stream` consisting of `seed`, `f(seed)`,
    `f(f(seed))`, etc.

    The first element (position `0`) in the `Stream` will be
    the provided `seed`. For `n > 0`, the element at position
    `n`, will be the result of applying the function `f` to the
    element at position `n - 1`.

    The action of applying `f` for one element
    [*happens-before*](../concurrent/package-summary.md#MemoryVisibility)
    the action of applying `f` for subsequent elements. For any given
    element the action may be performed in whatever thread the library
    chooses.

    Type Parameters:
    :   `T` - the type of stream elements

    Parameters:
    :   `seed` - the initial element
    :   `f` - a function to be applied to the previous element to produce
        a new element

    Returns:
    :   a new sequential `Stream`
  + ### iterate

    static <T> [Stream](Stream.md "interface in java.util.stream")<T> iterate(T seed,
    [Predicate](../function/Predicate.md "interface in java.util.function")<? super T> hasNext,
    [UnaryOperator](../function/UnaryOperator.md "interface in java.util.function")<T> next)

    Returns a sequential ordered `Stream` produced by iterative
    application of the given `next` function to an initial element,
    conditioned on satisfying the given `hasNext` predicate. The
    stream terminates as soon as the `hasNext` predicate returns false.

    `Stream.iterate` should produce the same sequence of elements as
    produced by the corresponding for-loop:

    ```
         for (T index=seed; hasNext.test(index); index = next.apply(index)) {
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

    Type Parameters:
    :   `T` - the type of stream elements

    Parameters:
    :   `seed` - the initial element
    :   `hasNext` - a predicate to apply to elements to determine when the
        stream must terminate.
    :   `next` - a function to be applied to the previous element to produce
        a new element

    Returns:
    :   a new sequential `Stream`

    Since:
    :   9
  + ### generate

    static <T> [Stream](Stream.md "interface in java.util.stream")<T> generate([Supplier](../function/Supplier.md "interface in java.util.function")<? extends T> s)

    Returns an infinite sequential unordered stream where each element is
    generated by the provided `Supplier`. This is suitable for
    generating constant streams, streams of random elements, etc.

    Type Parameters:
    :   `T` - the type of stream elements

    Parameters:
    :   `s` - the `Supplier` of generated elements

    Returns:
    :   a new infinite sequential unordered `Stream`
  + ### concat

    static <T> [Stream](Stream.md "interface in java.util.stream")<T> concat([Stream](Stream.md "interface in java.util.stream")<? extends T> a,
    [Stream](Stream.md "interface in java.util.stream")<? extends T> b)

    Creates a lazily concatenated stream whose elements are all the
    elements of the first stream followed by all the elements of the
    second stream. The resulting stream is ordered if both
    of the input streams are ordered, and parallel if either of the input
    streams is parallel. When the resulting stream is closed, the close
    handlers for both input streams are invoked.

    This method operates on the two input streams and binds each stream
    to its source. As a result subsequent modifications to an input stream
    source may not be reflected in the concatenated stream result.

    Type Parameters:
    :   `T` - The type of stream elements

    Parameters:
    :   `a` - the first stream
    :   `b` - the second stream

    Returns:
    :   the concatenation of the two input streams