Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Class Collectors

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.stream.Collectors

---

public final class Collectors
extends [Object](../../lang/Object.md "class in java.lang")

Implementations of [`Collector`](Collector.md "interface in java.util.stream") that implement various useful reduction
operations, such as accumulating elements into collections, summarizing
elements according to various criteria, etc.

The following are examples of using the predefined collectors to perform
common mutable reduction tasks:

```
 // Accumulate names into a List
 List<String> list = people.stream()
   .map(Person::getName)
   .collect(Collectors.toList());

 // Accumulate names into a TreeSet
 Set<String> set = people.stream()
   .map(Person::getName)
   .collect(Collectors.toCollection(TreeSet::new));

 // Convert elements to strings and concatenate them, separated by commas
 String joined = things.stream()
   .map(Object::toString)
   .collect(Collectors.joining(", "));

 // Compute sum of salaries of employee
 int total = employees.stream()
   .collect(Collectors.summingInt(Employee::getSalary));

 // Group employees by department
 Map<Department, List<Employee>> byDept = employees.stream()
   .collect(Collectors.groupingBy(Employee::getDepartment));

 // Compute sum of salaries by department
 Map<Department, Integer> totalByDept = employees.stream()
   .collect(Collectors.groupingBy(Employee::getDepartment,
                                  Collectors.summingInt(Employee::getSalary)));

 // Partition students into passing and failing
 Map<Boolean, List<Student>> passingFailing = students.stream()
   .collect(Collectors.partitioningBy(s -> s.getGrade() >= PASS_THRESHOLD));
```

Since:
:   1.8

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static <T> Collector<T,?,Double>`

  `averagingDouble(ToDoubleFunction<? super T> mapper)`

  Returns a `Collector` that produces the arithmetic mean of a double-valued
  function applied to the input elements.

  `static <T> Collector<T,?,Double>`

  `averagingInt(ToIntFunction<? super T> mapper)`

  Returns a `Collector` that produces the arithmetic mean of an integer-valued
  function applied to the input elements.

  `static <T> Collector<T,?,Double>`

  `averagingLong(ToLongFunction<? super T> mapper)`

  Returns a `Collector` that produces the arithmetic mean of a long-valued
  function applied to the input elements.

  `static <T,
  A,
  R,
  RR>  
  Collector<T,A,RR>`

  `collectingAndThen(Collector<T,A,R> downstream,
  Function<R,RR> finisher)`

  Adapts a `Collector` to perform an additional finishing
  transformation.

  `static <T> Collector<T,?,Long>`

  `counting()`

  Returns a `Collector` accepting elements of type `T` that
  counts the number of input elements.

  `static <T,
  A,
  R> Collector<T,?,R>`

  `filtering(Predicate<? super T> predicate,
  Collector<? super T,A,R> downstream)`

  Adapts a `Collector` to one accepting elements of the same type
  `T` by applying the predicate to each input element and only
  accumulating if the predicate returns `true`.

  `static <T,
  U,
  A,
  R>  
  Collector<T,?,R>`

  `flatMapping(Function<? super T,? extends Stream<? extends U>> mapper,
  Collector<? super U,A,R> downstream)`

  Adapts a `Collector` accepting elements of type `U` to one
  accepting elements of type `T` by applying a flat mapping function
  to each input element before accumulation.

  `static <T,
  K> Collector<T,?,Map<K,List<T>>>`

  `groupingBy(Function<? super T,? extends K> classifier)`

  Returns a `Collector` implementing a "group by" operation on
  input elements of type `T`, grouping elements according to a
  classification function, and returning the results in a `Map`.

  `static <T,
  K,
  D,
  A,
  M extends Map<K,
  D>>  
  Collector<T,?,M>`

  `groupingBy(Function<? super T,? extends K> classifier,
  Supplier<M> mapFactory,
  Collector<? super T,A,D> downstream)`

  Returns a `Collector` implementing a cascaded "group by" operation
  on input elements of type `T`, grouping elements according to a
  classification function, and then performing a reduction operation on
  the values associated with a given key using the specified downstream
  `Collector`.

  `static <T,
  K,
  A,
  D>  
  Collector<T,?,Map<K,D>>`

  `groupingBy(Function<? super T,? extends K> classifier,
  Collector<? super T,A,D> downstream)`

  Returns a `Collector` implementing a cascaded "group by" operation
  on input elements of type `T`, grouping elements according to a
  classification function, and then performing a reduction operation on
  the values associated with a given key using the specified downstream
  `Collector`.

  `static <T,
  K> Collector<T,?,ConcurrentMap<K,List<T>>>`

  `groupingByConcurrent(Function<? super T,? extends K> classifier)`

  Returns a concurrent `Collector` implementing a "group by"
  operation on input elements of type `T`, grouping elements
  according to a classification function.

  `static <T,
  K,
  A,
  D,
  M extends ConcurrentMap<K,
  D>>  
  Collector<T,?,M>`

  `groupingByConcurrent(Function<? super T,? extends K> classifier,
  Supplier<M> mapFactory,
  Collector<? super T,A,D> downstream)`

  Returns a concurrent `Collector` implementing a cascaded "group by"
  operation on input elements of type `T`, grouping elements
  according to a classification function, and then performing a reduction
  operation on the values associated with a given key using the specified
  downstream `Collector`.

  `static <T,
  K,
  A,
  D>  
  Collector<T,?,ConcurrentMap<K,D>>`

  `groupingByConcurrent(Function<? super T,? extends K> classifier,
  Collector<? super T,A,D> downstream)`

  Returns a concurrent `Collector` implementing a cascaded "group by"
  operation on input elements of type `T`, grouping elements
  according to a classification function, and then performing a reduction
  operation on the values associated with a given key using the specified
  downstream `Collector`.

  `static Collector<CharSequence,?,String>`

  `joining()`

  Returns a `Collector` that concatenates the input elements into a
  `String`, in encounter order.

  `static Collector<CharSequence,?,String>`

  `joining(CharSequence delimiter)`

  Returns a `Collector` that concatenates the input elements,
  separated by the specified delimiter, in encounter order.

  `static Collector<CharSequence,?,String>`

  `joining(CharSequence delimiter,
  CharSequence prefix,
  CharSequence suffix)`

  Returns a `Collector` that concatenates the input elements,
  separated by the specified delimiter, with the specified prefix and
  suffix, in encounter order.

  `static <T,
  U,
  A,
  R>  
  Collector<T,?,R>`

  `mapping(Function<? super T,? extends U> mapper,
  Collector<? super U,A,R> downstream)`

  Adapts a `Collector` accepting elements of type `U` to one
  accepting elements of type `T` by applying a mapping function to
  each input element before accumulation.

  `static <T> Collector<T,?,Optional<T>>`

  `maxBy(Comparator<? super T> comparator)`

  Returns a `Collector` that produces the maximal element according
  to a given `Comparator`, described as an `Optional<T>`.

  `static <T> Collector<T,?,Optional<T>>`

  `minBy(Comparator<? super T> comparator)`

  Returns a `Collector` that produces the minimal element according
  to a given `Comparator`, described as an `Optional<T>`.

  `static <T> Collector<T,?,Map<Boolean,List<T>>>`

  `partitioningBy(Predicate<? super T> predicate)`

  Returns a `Collector` which partitions the input elements according
  to a `Predicate`, and organizes them into a
  `Map<Boolean, List<T>>`.

  `static <T,
  D,
  A> Collector<T,?,Map<Boolean,D>>`

  `partitioningBy(Predicate<? super T> predicate,
  Collector<? super T,A,D> downstream)`

  Returns a `Collector` which partitions the input elements according
  to a `Predicate`, reduces the values in each partition according to
  another `Collector`, and organizes them into a
  `Map<Boolean, D>` whose values are the result of the downstream
  reduction.

  `static <T> Collector<T,?,Optional<T>>`

  `reducing(BinaryOperator<T> op)`

  Returns a `Collector` which performs a reduction of its
  input elements under a specified `BinaryOperator`.

  `static <T> Collector<T,?,T>`

  `reducing(T identity,
  BinaryOperator<T> op)`

  Returns a `Collector` which performs a reduction of its
  input elements under a specified `BinaryOperator` using the
  provided identity.

  `static <T,
  U> Collector<T,?,U>`

  `reducing(U identity,
  Function<? super T,? extends U> mapper,
  BinaryOperator<U> op)`

  Returns a `Collector` which performs a reduction of its
  input elements under a specified mapping function and
  `BinaryOperator`.

  `static <T> Collector<T,?,DoubleSummaryStatistics>`

  `summarizingDouble(ToDoubleFunction<? super T> mapper)`

  Returns a `Collector` which applies an `double`-producing
  mapping function to each input element, and returns summary statistics
  for the resulting values.

  `static <T> Collector<T,?,IntSummaryStatistics>`

  `summarizingInt(ToIntFunction<? super T> mapper)`

  Returns a `Collector` which applies an `int`-producing
  mapping function to each input element, and returns summary statistics
  for the resulting values.

  `static <T> Collector<T,?,LongSummaryStatistics>`

  `summarizingLong(ToLongFunction<? super T> mapper)`

  Returns a `Collector` which applies an `long`-producing
  mapping function to each input element, and returns summary statistics
  for the resulting values.

  `static <T> Collector<T,?,Double>`

  `summingDouble(ToDoubleFunction<? super T> mapper)`

  Returns a `Collector` that produces the sum of a double-valued
  function applied to the input elements.

  `static <T> Collector<T,?,Integer>`

  `summingInt(ToIntFunction<? super T> mapper)`

  Returns a `Collector` that produces the sum of an integer-valued
  function applied to the input elements.

  `static <T> Collector<T,?,Long>`

  `summingLong(ToLongFunction<? super T> mapper)`

  Returns a `Collector` that produces the sum of a long-valued
  function applied to the input elements.

  `static <T,
  R1,
  R2,
  R>  
  Collector<T,?,R>`

  `teeing(Collector<? super T,?,R1> downstream1,
  Collector<? super T,?,R2> downstream2,
  BiFunction<? super R1,? super R2,R> merger)`

  Returns a `Collector` that is a composite of two downstream collectors.

  `static <T,
  C extends Collection<T>>  
  Collector<T,?,C>`

  `toCollection(Supplier<C> collectionFactory)`

  Returns a `Collector` that accumulates the input elements into a
  new `Collection`, in encounter order.

  `static <T,
  K,
  U> Collector<T,?,ConcurrentMap<K,U>>`

  `toConcurrentMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper)`

  Returns a concurrent `Collector` that accumulates elements into a
  `ConcurrentMap` whose keys and values are the result of applying
  the provided mapping functions to the input elements.

  `static <T,
  K,
  U> Collector<T,?,ConcurrentMap<K,U>>`

  `toConcurrentMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper,
  BinaryOperator<U> mergeFunction)`

  Returns a concurrent `Collector` that accumulates elements into a
  `ConcurrentMap` whose keys and values are the result of applying
  the provided mapping functions to the input elements.

  `static <T,
  K,
  U,
  M extends ConcurrentMap<K,
  U>>  
  Collector<T,?,M>`

  `toConcurrentMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper,
  BinaryOperator<U> mergeFunction,
  Supplier<M> mapFactory)`

  Returns a concurrent `Collector` that accumulates elements into a
  `ConcurrentMap` whose keys and values are the result of applying
  the provided mapping functions to the input elements.

  `static <T> Collector<T,?,List<T>>`

  `toList()`

  Returns a `Collector` that accumulates the input elements into a
  new `List`.

  `static <T,
  K,
  U> Collector<T,?,Map<K,U>>`

  `toMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper)`

  Returns a `Collector` that accumulates elements into a
  `Map` whose keys and values are the result of applying the provided
  mapping functions to the input elements.

  `static <T,
  K,
  U> Collector<T,?,Map<K,U>>`

  `toMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper,
  BinaryOperator<U> mergeFunction)`

  Returns a `Collector` that accumulates elements into a
  `Map` whose keys and values are the result of applying the provided
  mapping functions to the input elements.

  `static <T,
  K,
  U,
  M extends Map<K,
  U>>  
  Collector<T,?,M>`

  `toMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper,
  BinaryOperator<U> mergeFunction,
  Supplier<M> mapFactory)`

  Returns a `Collector` that accumulates elements into a
  `Map` whose keys and values are the result of applying the provided
  mapping functions to the input elements.

  `static <T> Collector<T,?,Set<T>>`

  `toSet()`

  Returns a `Collector` that accumulates the input elements into a
  new `Set`.

  `static <T> Collector<T,?,List<T>>`

  `toUnmodifiableList()`

  Returns a `Collector` that accumulates the input elements into an
  [unmodifiable List](../List.md#unmodifiable) in encounter
  order.

  `static <T,
  K,
  U> Collector<T,?,Map<K,U>>`

  `toUnmodifiableMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper)`

  Returns a `Collector` that accumulates the input elements into an
  [unmodifiable Map](../Map.md#unmodifiable),
  whose keys and values are the result of applying the provided
  mapping functions to the input elements.

  `static <T,
  K,
  U> Collector<T,?,Map<K,U>>`

  `toUnmodifiableMap(Function<? super T,? extends K> keyMapper,
  Function<? super T,? extends U> valueMapper,
  BinaryOperator<U> mergeFunction)`

  Returns a `Collector` that accumulates the input elements into an
  [unmodifiable Map](../Map.md#unmodifiable),
  whose keys and values are the result of applying the provided
  mapping functions to the input elements.

  `static <T> Collector<T,?,Set<T>>`

  `toUnmodifiableSet()`

  Returns a `Collector` that accumulates the input elements into an
  [unmodifiable Set](../Set.md#unmodifiable).

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### toCollection

    public static <T,
    C extends [Collection](../Collection.md "interface in java.util")<T>>
    [Collector](Collector.md "interface in java.util.stream")<T,?,C> toCollection([Supplier](../function/Supplier.md "interface in java.util.function")<C> collectionFactory)

    Returns a `Collector` that accumulates the input elements into a
    new `Collection`, in encounter order. The `Collection` is
    created by the provided factory.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `C` - the type of the resulting `Collection`

    Parameters:
    :   `collectionFactory` - a supplier providing a new empty `Collection`
        into which the results will be inserted

    Returns:
    :   a `Collector` which collects all the input elements into a
        `Collection`, in encounter order
  + ### toList

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[List](../List.md "interface in java.util")<T>> toList()

    Returns a `Collector` that accumulates the input elements into a
    new `List`. There are no guarantees on the type, mutability,
    serializability, or thread-safety of the `List` returned; if more
    control over the returned `List` is required, use [`toCollection(Supplier)`](#toCollection(java.util.function.Supplier)).

    Type Parameters:
    :   `T` - the type of the input elements

    Returns:
    :   a `Collector` which collects all the input elements into a
        `List`, in encounter order
  + ### toUnmodifiableList

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[List](../List.md "interface in java.util")<T>> toUnmodifiableList()

    Returns a `Collector` that accumulates the input elements into an
    [unmodifiable List](../List.md#unmodifiable) in encounter
    order. The returned Collector disallows null values and will throw
    `NullPointerException` if it is presented with a null value.

    Type Parameters:
    :   `T` - the type of the input elements

    Returns:
    :   a `Collector` that accumulates the input elements into an
        [unmodifiable List](../List.md#unmodifiable) in encounter order

    Since:
    :   10
  + ### toSet

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Set](../Set.md "interface in java.util")<T>> toSet()

    Returns a `Collector` that accumulates the input elements into a
    new `Set`. There are no guarantees on the type, mutability,
    serializability, or thread-safety of the `Set` returned; if more
    control over the returned `Set` is required, use
    [`toCollection(Supplier)`](#toCollection(java.util.function.Supplier)).

    This is an [`unordered`](Collector.Characteristics.md#UNORDERED)
    Collector.

    Type Parameters:
    :   `T` - the type of the input elements

    Returns:
    :   a `Collector` which collects all the input elements into a
        `Set`
  + ### toUnmodifiableSet

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Set](../Set.md "interface in java.util")<T>> toUnmodifiableSet()

    Returns a `Collector` that accumulates the input elements into an
    [unmodifiable Set](../Set.md#unmodifiable). The returned
    Collector disallows null values and will throw `NullPointerException`
    if it is presented with a null value. If the input contains duplicate elements,
    an arbitrary element of the duplicates is preserved.

    This is an [`unordered`](Collector.Characteristics.md#UNORDERED)
    Collector.

    Type Parameters:
    :   `T` - the type of the input elements

    Returns:
    :   a `Collector` that accumulates the input elements into an
        [unmodifiable Set](../Set.md#unmodifiable)

    Since:
    :   10
  + ### joining

    public static [Collector](Collector.md "interface in java.util.stream")<[CharSequence](../../lang/CharSequence.md "interface in java.lang"),?,[String](../../lang/String.md "class in java.lang")> joining()

    Returns a `Collector` that concatenates the input elements into a
    `String`, in encounter order.

    Returns:
    :   a `Collector` that concatenates the input elements into a
        `String`, in encounter order
  + ### joining

    public static [Collector](Collector.md "interface in java.util.stream")<[CharSequence](../../lang/CharSequence.md "interface in java.lang"),?,[String](../../lang/String.md "class in java.lang")> joining([CharSequence](../../lang/CharSequence.md "interface in java.lang") delimiter)

    Returns a `Collector` that concatenates the input elements,
    separated by the specified delimiter, in encounter order.

    Parameters:
    :   `delimiter` - the delimiter to be used between each element

    Returns:
    :   A `Collector` which concatenates CharSequence elements,
        separated by the specified delimiter, in encounter order
  + ### joining

    public static [Collector](Collector.md "interface in java.util.stream")<[CharSequence](../../lang/CharSequence.md "interface in java.lang"),?,[String](../../lang/String.md "class in java.lang")> joining([CharSequence](../../lang/CharSequence.md "interface in java.lang") delimiter,
    [CharSequence](../../lang/CharSequence.md "interface in java.lang") prefix,
    [CharSequence](../../lang/CharSequence.md "interface in java.lang") suffix)

    Returns a `Collector` that concatenates the input elements,
    separated by the specified delimiter, with the specified prefix and
    suffix, in encounter order.

    Parameters:
    :   `delimiter` - the delimiter to be used between each element
    :   `prefix` - the sequence of characters to be used at the beginning
        of the joined result
    :   `suffix` - the sequence of characters to be used at the end
        of the joined result

    Returns:
    :   A `Collector` which concatenates CharSequence elements,
        separated by the specified delimiter, in encounter order
  + ### mapping

    public static <T,
    U,
    A,
    R> [Collector](Collector.md "interface in java.util.stream")<T,?,R> mapping([Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> mapper,
    [Collector](Collector.md "interface in java.util.stream")<? super U,A,R> downstream)

    Adapts a `Collector` accepting elements of type `U` to one
    accepting elements of type `T` by applying a mapping function to
    each input element before accumulation.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `U` - type of elements accepted by downstream collector
    :   `A` - intermediate accumulation type of the downstream collector
    :   `R` - result type of collector

    Parameters:
    :   `mapper` - a function to be applied to the input elements
    :   `downstream` - a collector which will accept mapped values

    Returns:
    :   a collector which applies the mapping function to the input
        elements and provides the mapped results to the downstream collector
  + ### flatMapping

    public static <T,
    U,
    A,
    R> [Collector](Collector.md "interface in java.util.stream")<T,?,R> flatMapping([Function](../function/Function.md "interface in java.util.function")<? super T,? extends [Stream](Stream.md "interface in java.util.stream")<? extends U>> mapper,
    [Collector](Collector.md "interface in java.util.stream")<? super U,A,R> downstream)

    Adapts a `Collector` accepting elements of type `U` to one
    accepting elements of type `T` by applying a flat mapping function
    to each input element before accumulation. The flat mapping function
    maps an input element to a [`stream`](Stream.md "interface in java.util.stream") covering zero or more
    output elements that are then accumulated downstream. Each mapped stream
    is [`closed`](BaseStream.md#close()) after its contents
    have been placed downstream. (If a mapped stream is `null`
    an empty stream is used, instead.)

    Type Parameters:
    :   `T` - the type of the input elements
    :   `U` - type of elements accepted by downstream collector
    :   `A` - intermediate accumulation type of the downstream collector
    :   `R` - result type of collector

    Parameters:
    :   `mapper` - a function to be applied to the input elements, which
        returns a stream of results
    :   `downstream` - a collector which will receive the elements of the
        stream returned by mapper

    Returns:
    :   a collector which applies the mapping function to the input
        elements and provides the flat mapped results to the downstream collector

    Since:
    :   9
  + ### filtering

    public static <T,
    A,
    R> [Collector](Collector.md "interface in java.util.stream")<T,?,R> filtering([Predicate](../function/Predicate.md "interface in java.util.function")<? super T> predicate,
    [Collector](Collector.md "interface in java.util.stream")<? super T,A,R> downstream)

    Adapts a `Collector` to one accepting elements of the same type
    `T` by applying the predicate to each input element and only
    accumulating if the predicate returns `true`.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `A` - intermediate accumulation type of the downstream collector
    :   `R` - result type of collector

    Parameters:
    :   `predicate` - a predicate to be applied to the input elements
    :   `downstream` - a collector which will accept values that match the
        predicate

    Returns:
    :   a collector which applies the predicate to the input elements
        and provides matching elements to the downstream collector

    Since:
    :   9
  + ### collectingAndThen

    public static <T,
    A,
    R,
    RR> [Collector](Collector.md "interface in java.util.stream")<T,A,RR> collectingAndThen([Collector](Collector.md "interface in java.util.stream")<T,A,R> downstream,
    [Function](../function/Function.md "interface in java.util.function")<R,RR> finisher)

    Adapts a `Collector` to perform an additional finishing
    transformation. For example, one could adapt the [`toList()`](#toList())
    collector to always produce an immutable list with:

    ```
     List<String> list = people.stream().collect(
       collectingAndThen(toList(),
                         Collections::unmodifiableList));
    ```

    Type Parameters:
    :   `T` - the type of the input elements
    :   `A` - intermediate accumulation type of the downstream collector
    :   `R` - result type of the downstream collector
    :   `RR` - result type of the resulting collector

    Parameters:
    :   `downstream` - a collector
    :   `finisher` - a function to be applied to the final result of the downstream collector

    Returns:
    :   a collector which performs the action of the downstream collector,
        followed by an additional finishing step
  + ### counting

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Long](../../lang/Long.md "class in java.lang")> counting()

    Returns a `Collector` accepting elements of type `T` that
    counts the number of input elements. If no elements are present, the
    result is 0.

    Type Parameters:
    :   `T` - the type of the input elements

    Returns:
    :   a `Collector` that counts the input elements
  + ### minBy

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Optional](../Optional.md "class in java.util")<T>> minBy([Comparator](../Comparator.md "interface in java.util")<? super T> comparator)

    Returns a `Collector` that produces the minimal element according
    to a given `Comparator`, described as an `Optional<T>`.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `comparator` - a `Comparator` for comparing elements

    Returns:
    :   a `Collector` that produces the minimal value
  + ### maxBy

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Optional](../Optional.md "class in java.util")<T>> maxBy([Comparator](../Comparator.md "interface in java.util")<? super T> comparator)

    Returns a `Collector` that produces the maximal element according
    to a given `Comparator`, described as an `Optional<T>`.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `comparator` - a `Comparator` for comparing elements

    Returns:
    :   a `Collector` that produces the maximal value
  + ### summingInt

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Integer](../../lang/Integer.md "class in java.lang")> summingInt([ToIntFunction](../function/ToIntFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` that produces the sum of an integer-valued
    function applied to the input elements. If no elements are present,
    the result is 0.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a function extracting the property to be summed

    Returns:
    :   a `Collector` that produces the sum of a derived property
  + ### summingLong

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Long](../../lang/Long.md "class in java.lang")> summingLong([ToLongFunction](../function/ToLongFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` that produces the sum of a long-valued
    function applied to the input elements. If no elements are present,
    the result is 0.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a function extracting the property to be summed

    Returns:
    :   a `Collector` that produces the sum of a derived property
  + ### summingDouble

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Double](../../lang/Double.md "class in java.lang")> summingDouble([ToDoubleFunction](../function/ToDoubleFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` that produces the sum of a double-valued
    function applied to the input elements. If no elements are present,
    the result is 0.

    The sum returned can vary depending upon the order in which
    values are recorded, due to accumulated rounding error in
    addition of values of differing magnitudes. Values sorted by increasing
    absolute magnitude tend to yield more accurate results. If any recorded
    value is a `NaN` or the sum is at any point a `NaN` then the
    sum will be `NaN`.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a function extracting the property to be summed

    Returns:
    :   a `Collector` that produces the sum of a derived property
  + ### averagingInt

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Double](../../lang/Double.md "class in java.lang")> averagingInt([ToIntFunction](../function/ToIntFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` that produces the arithmetic mean of an integer-valued
    function applied to the input elements. If no elements are present,
    the result is 0.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a function extracting the property to be averaged

    Returns:
    :   a `Collector` that produces the arithmetic mean of a
        derived property
  + ### averagingLong

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Double](../../lang/Double.md "class in java.lang")> averagingLong([ToLongFunction](../function/ToLongFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` that produces the arithmetic mean of a long-valued
    function applied to the input elements. If no elements are present,
    the result is 0.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a function extracting the property to be averaged

    Returns:
    :   a `Collector` that produces the arithmetic mean of a
        derived property
  + ### averagingDouble

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Double](../../lang/Double.md "class in java.lang")> averagingDouble([ToDoubleFunction](../function/ToDoubleFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` that produces the arithmetic mean of a double-valued
    function applied to the input elements. If no elements are present,
    the result is 0.

    The average returned can vary depending upon the order in which
    values are recorded, due to accumulated rounding error in
    addition of values of differing magnitudes. Values sorted by increasing
    absolute magnitude tend to yield more accurate results. If any recorded
    value is a `NaN` or the sum is at any point a `NaN` then the
    average will be `NaN`.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a function extracting the property to be averaged

    Returns:
    :   a `Collector` that produces the arithmetic mean of a
        derived property
  + ### reducing

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,T> reducing(T identity,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<T> op)

    Returns a `Collector` which performs a reduction of its
    input elements under a specified `BinaryOperator` using the
    provided identity.

    Type Parameters:
    :   `T` - element type for the input and output of the reduction

    Parameters:
    :   `identity` - the identity value for the reduction (also, the value
        that is returned when there are no input elements)
    :   `op` - a `BinaryOperator<T>` used to reduce the input elements

    Returns:
    :   a `Collector` which implements the reduction operation

    See Also:
    :   - [`reducing(BinaryOperator)`](#reducing(java.util.function.BinaryOperator))
        - [`reducing(Object, Function, BinaryOperator)`](#reducing(U,java.util.function.Function,java.util.function.BinaryOperator))
  + ### reducing

    public static <T> [Collector](Collector.md "interface in java.util.stream")<T,?,[Optional](../Optional.md "class in java.util")<T>> reducing([BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<T> op)

    Returns a `Collector` which performs a reduction of its
    input elements under a specified `BinaryOperator`. The result
    is described as an `Optional<T>`.

    Type Parameters:
    :   `T` - element type for the input and output of the reduction

    Parameters:
    :   `op` - a `BinaryOperator<T>` used to reduce the input elements

    Returns:
    :   a `Collector` which implements the reduction operation

    See Also:
    :   - [`reducing(Object, BinaryOperator)`](#reducing(T,java.util.function.BinaryOperator))
        - [`reducing(Object, Function, BinaryOperator)`](#reducing(U,java.util.function.Function,java.util.function.BinaryOperator))
  + ### reducing

    public static <T,
    U> [Collector](Collector.md "interface in java.util.stream")<T,?,U> reducing(U identity,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> mapper,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<U> op)

    Returns a `Collector` which performs a reduction of its
    input elements under a specified mapping function and
    `BinaryOperator`. This is a generalization of
    [`reducing(Object, BinaryOperator)`](#reducing(T,java.util.function.BinaryOperator)) which allows a transformation
    of the elements before reduction.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `U` - the type of the mapped values

    Parameters:
    :   `identity` - the identity value for the reduction (also, the value
        that is returned when there are no input elements)
    :   `mapper` - a mapping function to apply to each input value
    :   `op` - a `BinaryOperator<U>` used to reduce the mapped values

    Returns:
    :   a `Collector` implementing the map-reduce operation

    See Also:
    :   - [`reducing(Object, BinaryOperator)`](#reducing(T,java.util.function.BinaryOperator))
        - [`reducing(BinaryOperator)`](#reducing(java.util.function.BinaryOperator))
  + ### groupingBy

    public static <T,
    K> [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<K,[List](../List.md "interface in java.util")<T>>> groupingBy([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> classifier)

    Returns a `Collector` implementing a "group by" operation on
    input elements of type `T`, grouping elements according to a
    classification function, and returning the results in a `Map`.

    The classification function maps elements to some key type `K`.
    The collector produces a `Map<K, List<T>>` whose keys are the
    values resulting from applying the classification function to the input
    elements, and whose corresponding values are `List`s containing the
    input elements which map to the associated key under the classification
    function.

    There are no guarantees on the type, mutability, serializability, or
    thread-safety of the `Map` or `List` objects returned.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the type of the keys

    Parameters:
    :   `classifier` - the classifier function mapping input elements to keys

    Returns:
    :   a `Collector` implementing the group-by operation

    See Also:
    :   - [`groupingBy(Function, Collector)`](#groupingBy(java.util.function.Function,java.util.stream.Collector))
        - [`groupingBy(Function, Supplier, Collector)`](#groupingBy(java.util.function.Function,java.util.function.Supplier,java.util.stream.Collector))
        - [`groupingByConcurrent(Function)`](#groupingByConcurrent(java.util.function.Function))
  + ### groupingBy

    public static <T,
    K,
    A,
    D> [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<K,D>> groupingBy([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> classifier,
    [Collector](Collector.md "interface in java.util.stream")<? super T,A,D> downstream)

    Returns a `Collector` implementing a cascaded "group by" operation
    on input elements of type `T`, grouping elements according to a
    classification function, and then performing a reduction operation on
    the values associated with a given key using the specified downstream
    `Collector`.

    The classification function maps elements to some key type `K`.
    The downstream collector operates on elements of type `T` and
    produces a result of type `D`. The resulting collector produces a
    `Map<K, D>`.

    There are no guarantees on the type, mutability,
    serializability, or thread-safety of the `Map` returned.

    For example, to compute the set of last names of people in each city:

    ```
     Map<City, Set<String>> namesByCity
       = people.stream().collect(
         groupingBy(Person::getCity,
                    mapping(Person::getLastName,
                            toSet())));
    ```

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the type of the keys
    :   `A` - the intermediate accumulation type of the downstream collector
    :   `D` - the result type of the downstream reduction

    Parameters:
    :   `classifier` - a classifier function mapping input elements to keys
    :   `downstream` - a `Collector` implementing the downstream reduction

    Returns:
    :   a `Collector` implementing the cascaded group-by operation

    See Also:
    :   - [`groupingBy(Function)`](#groupingBy(java.util.function.Function))
        - [`groupingBy(Function, Supplier, Collector)`](#groupingBy(java.util.function.Function,java.util.function.Supplier,java.util.stream.Collector))
        - [`groupingByConcurrent(Function, Collector)`](#groupingByConcurrent(java.util.function.Function,java.util.stream.Collector))
  + ### groupingBy

    public static <T,
    K,
    D,
    A,
    M extends [Map](../Map.md "interface in java.util")<K,
    D>>
    [Collector](Collector.md "interface in java.util.stream")<T,?,M> groupingBy([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> classifier,
    [Supplier](../function/Supplier.md "interface in java.util.function")<M> mapFactory,
    [Collector](Collector.md "interface in java.util.stream")<? super T,A,D> downstream)

    Returns a `Collector` implementing a cascaded "group by" operation
    on input elements of type `T`, grouping elements according to a
    classification function, and then performing a reduction operation on
    the values associated with a given key using the specified downstream
    `Collector`. The `Map` produced by the Collector is created
    with the supplied factory function.

    The classification function maps elements to some key type `K`.
    The downstream collector operates on elements of type `T` and
    produces a result of type `D`. The resulting collector produces a
    `Map<K, D>`.

    For example, to compute the set of last names of people in each city,
    where the city names are sorted:

    ```
     Map<City, Set<String>> namesByCity
       = people.stream().collect(
         groupingBy(Person::getCity,
                    TreeMap::new,
                    mapping(Person::getLastName,
                            toSet())));
    ```

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the type of the keys
    :   `D` - the result type of the downstream reduction
    :   `A` - the intermediate accumulation type of the downstream collector
    :   `M` - the type of the resulting `Map`

    Parameters:
    :   `classifier` - a classifier function mapping input elements to keys
    :   `mapFactory` - a supplier providing a new empty `Map`
        into which the results will be inserted
    :   `downstream` - a `Collector` implementing the downstream reduction

    Returns:
    :   a `Collector` implementing the cascaded group-by operation

    See Also:
    :   - [`groupingBy(Function, Collector)`](#groupingBy(java.util.function.Function,java.util.stream.Collector))
        - [`groupingBy(Function)`](#groupingBy(java.util.function.Function))
        - [`groupingByConcurrent(Function, Supplier, Collector)`](#groupingByConcurrent(java.util.function.Function,java.util.function.Supplier,java.util.stream.Collector))
  + ### groupingByConcurrent

    public static <T,
    K>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[ConcurrentMap](../concurrent/ConcurrentMap.md "interface in java.util.concurrent")<K,[List](../List.md "interface in java.util")<T>>> groupingByConcurrent([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> classifier)

    Returns a concurrent `Collector` implementing a "group by"
    operation on input elements of type `T`, grouping elements
    according to a classification function.

    This is a [`concurrent`](Collector.Characteristics.md#CONCURRENT) and
    [`unordered`](Collector.Characteristics.md#UNORDERED) Collector.

    The classification function maps elements to some key type `K`.
    The collector produces a `ConcurrentMap<K, List<T>>` whose keys are the
    values resulting from applying the classification function to the input
    elements, and whose corresponding values are `List`s containing the
    input elements which map to the associated key under the classification
    function.

    There are no guarantees on the type, mutability, or serializability
    of the `ConcurrentMap` or `List` objects returned, or of the
    thread-safety of the `List` objects returned.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the type of the keys

    Parameters:
    :   `classifier` - a classifier function mapping input elements to keys

    Returns:
    :   a concurrent, unordered `Collector` implementing the group-by operation

    See Also:
    :   - [`groupingBy(Function)`](#groupingBy(java.util.function.Function))
        - [`groupingByConcurrent(Function, Collector)`](#groupingByConcurrent(java.util.function.Function,java.util.stream.Collector))
        - [`groupingByConcurrent(Function, Supplier, Collector)`](#groupingByConcurrent(java.util.function.Function,java.util.function.Supplier,java.util.stream.Collector))
  + ### groupingByConcurrent

    public static <T,
    K,
    A,
    D>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[ConcurrentMap](../concurrent/ConcurrentMap.md "interface in java.util.concurrent")<K,D>> groupingByConcurrent([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> classifier,
    [Collector](Collector.md "interface in java.util.stream")<? super T,A,D> downstream)

    Returns a concurrent `Collector` implementing a cascaded "group by"
    operation on input elements of type `T`, grouping elements
    according to a classification function, and then performing a reduction
    operation on the values associated with a given key using the specified
    downstream `Collector`.

    This is a [`concurrent`](Collector.Characteristics.md#CONCURRENT) and
    [`unordered`](Collector.Characteristics.md#UNORDERED) Collector.

    The classification function maps elements to some key type `K`.
    The downstream collector operates on elements of type `T` and
    produces a result of type `D`. The resulting collector produces a
    `ConcurrentMap<K, D>`.

    There are no guarantees on the type, mutability, or serializability
    of the `ConcurrentMap` returned.

    For example, to compute the set of last names of people in each city,
    where the city names are sorted:

    ```
     ConcurrentMap<City, Set<String>> namesByCity
       = people.stream().collect(
         groupingByConcurrent(Person::getCity,
                              mapping(Person::getLastName,
                                      toSet())));
    ```

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the type of the keys
    :   `A` - the intermediate accumulation type of the downstream collector
    :   `D` - the result type of the downstream reduction

    Parameters:
    :   `classifier` - a classifier function mapping input elements to keys
    :   `downstream` - a `Collector` implementing the downstream reduction

    Returns:
    :   a concurrent, unordered `Collector` implementing the cascaded group-by operation

    See Also:
    :   - [`groupingBy(Function, Collector)`](#groupingBy(java.util.function.Function,java.util.stream.Collector))
        - [`groupingByConcurrent(Function)`](#groupingByConcurrent(java.util.function.Function))
        - [`groupingByConcurrent(Function, Supplier, Collector)`](#groupingByConcurrent(java.util.function.Function,java.util.function.Supplier,java.util.stream.Collector))
  + ### groupingByConcurrent

    public static <T,
    K,
    A,
    D,
    M extends [ConcurrentMap](../concurrent/ConcurrentMap.md "interface in java.util.concurrent")<K,
    D>>
    [Collector](Collector.md "interface in java.util.stream")<T,?,M> groupingByConcurrent([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> classifier,
    [Supplier](../function/Supplier.md "interface in java.util.function")<M> mapFactory,
    [Collector](Collector.md "interface in java.util.stream")<? super T,A,D> downstream)

    Returns a concurrent `Collector` implementing a cascaded "group by"
    operation on input elements of type `T`, grouping elements
    according to a classification function, and then performing a reduction
    operation on the values associated with a given key using the specified
    downstream `Collector`. The `ConcurrentMap` produced by the
    Collector is created with the supplied factory function.

    This is a [`concurrent`](Collector.Characteristics.md#CONCURRENT) and
    [`unordered`](Collector.Characteristics.md#UNORDERED) Collector.

    The classification function maps elements to some key type `K`.
    The downstream collector operates on elements of type `T` and
    produces a result of type `D`. The resulting collector produces a
    `ConcurrentMap<K, D>`.

    For example, to compute the set of last names of people in each city,
    where the city names are sorted:

    ```
     ConcurrentMap<City, Set<String>> namesByCity
       = people.stream().collect(
         groupingByConcurrent(Person::getCity,
                              ConcurrentSkipListMap::new,
                              mapping(Person::getLastName,
                                      toSet())));
    ```

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the type of the keys
    :   `A` - the intermediate accumulation type of the downstream collector
    :   `D` - the result type of the downstream reduction
    :   `M` - the type of the resulting `ConcurrentMap`

    Parameters:
    :   `classifier` - a classifier function mapping input elements to keys
    :   `mapFactory` - a supplier providing a new empty `ConcurrentMap`
        into which the results will be inserted
    :   `downstream` - a `Collector` implementing the downstream reduction

    Returns:
    :   a concurrent, unordered `Collector` implementing the cascaded group-by operation

    See Also:
    :   - [`groupingByConcurrent(Function)`](#groupingByConcurrent(java.util.function.Function))
        - [`groupingByConcurrent(Function, Collector)`](#groupingByConcurrent(java.util.function.Function,java.util.stream.Collector))
        - [`groupingBy(Function, Supplier, Collector)`](#groupingBy(java.util.function.Function,java.util.function.Supplier,java.util.stream.Collector))
  + ### partitioningBy

    public static <T>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<[Boolean](../../lang/Boolean.md "class in java.lang"),[List](../List.md "interface in java.util")<T>>> partitioningBy([Predicate](../function/Predicate.md "interface in java.util.function")<? super T> predicate)

    Returns a `Collector` which partitions the input elements according
    to a `Predicate`, and organizes them into a
    `Map<Boolean, List<T>>`.
    The returned `Map` always contains mappings for both
    `false` and `true` keys.
    There are no guarantees on the type, mutability,
    serializability, or thread-safety of the `Map` or `List`
    returned.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `predicate` - a predicate used for classifying input elements

    Returns:
    :   a `Collector` implementing the partitioning operation

    See Also:
    :   - [`partitioningBy(Predicate, Collector)`](#partitioningBy(java.util.function.Predicate,java.util.stream.Collector))
  + ### partitioningBy

    public static <T,
    D,
    A>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<[Boolean](../../lang/Boolean.md "class in java.lang"),D>> partitioningBy([Predicate](../function/Predicate.md "interface in java.util.function")<? super T> predicate,
    [Collector](Collector.md "interface in java.util.stream")<? super T,A,D> downstream)

    Returns a `Collector` which partitions the input elements according
    to a `Predicate`, reduces the values in each partition according to
    another `Collector`, and organizes them into a
    `Map<Boolean, D>` whose values are the result of the downstream
    reduction.

    The returned `Map` always contains mappings for both
    `false` and `true` keys.
    There are no guarantees on the type, mutability,
    serializability, or thread-safety of the `Map` returned.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `D` - the result type of the downstream reduction
    :   `A` - the intermediate accumulation type of the downstream collector

    Parameters:
    :   `predicate` - a predicate used for classifying input elements
    :   `downstream` - a `Collector` implementing the downstream
        reduction

    Returns:
    :   a `Collector` implementing the cascaded partitioning
        operation

    See Also:
    :   - [`partitioningBy(Predicate)`](#partitioningBy(java.util.function.Predicate))
  + ### toMap

    public static <T,
    K,
    U> [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<K,U>> toMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper)

    Returns a `Collector` that accumulates elements into a
    `Map` whose keys and values are the result of applying the provided
    mapping functions to the input elements.

    If the mapped keys contain duplicates (according to
    [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))), an `IllegalStateException` is
    thrown when the collection operation is performed. If the mapped keys
    might have duplicates, use [`toMap(Function, Function, BinaryOperator)`](#toMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
    instead.

    There are no guarantees on the type, mutability, serializability,
    or thread-safety of the `Map` returned.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function

    Parameters:
    :   `keyMapper` - a mapping function to produce keys
    :   `valueMapper` - a mapping function to produce values

    Returns:
    :   a `Collector` which collects elements into a `Map`
        whose keys and values are the result of applying mapping functions to
        the input elements

    See Also:
    :   - [`toMap(Function, Function, BinaryOperator)`](#toMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
        - [`toMap(Function, Function, BinaryOperator, Supplier)`](#toMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator,java.util.function.Supplier))
        - [`toConcurrentMap(Function, Function)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function))
  + ### toUnmodifiableMap

    public static <T,
    K,
    U> [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<K,U>> toUnmodifiableMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper)

    Returns a `Collector` that accumulates the input elements into an
    [unmodifiable Map](../Map.md#unmodifiable),
    whose keys and values are the result of applying the provided
    mapping functions to the input elements.

    If the mapped keys contain duplicates (according to
    [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))), an `IllegalStateException` is
    thrown when the collection operation is performed. If the mapped keys
    might have duplicates, use [`toUnmodifiableMap(Function, Function, BinaryOperator)`](#toUnmodifiableMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
    to handle merging of the values.

    The returned Collector disallows null keys and values. If either mapping function
    returns null, `NullPointerException` will be thrown.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function

    Parameters:
    :   `keyMapper` - a mapping function to produce keys, must be non-null
    :   `valueMapper` - a mapping function to produce values, must be non-null

    Returns:
    :   a `Collector` that accumulates the input elements into an
        [unmodifiable Map](../Map.md#unmodifiable), whose keys and values
        are the result of applying the provided mapping functions to the input elements

    Throws:
    :   `NullPointerException` - if either keyMapper or valueMapper is null

    Since:
    :   10

    See Also:
    :   - [`toUnmodifiableMap(Function, Function, BinaryOperator)`](#toUnmodifiableMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
  + ### toMap

    public static <T,
    K,
    U> [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<K,U>> toMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<U> mergeFunction)

    Returns a `Collector` that accumulates elements into a
    `Map` whose keys and values are the result of applying the provided
    mapping functions to the input elements.

    If the mapped
    keys contain duplicates (according to [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))),
    the value mapping function is applied to each equal element, and the
    results are merged using the provided merging function.

    There are no guarantees on the type, mutability, serializability,
    or thread-safety of the `Map` returned.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function

    Parameters:
    :   `keyMapper` - a mapping function to produce keys
    :   `valueMapper` - a mapping function to produce values
    :   `mergeFunction` - a merge function, used to resolve collisions between
        values associated with the same key, as supplied
        to [`Map.merge(Object, Object, BiFunction)`](../Map.md#merge(K,V,java.util.function.BiFunction))

    Returns:
    :   a `Collector` which collects elements into a `Map`
        whose keys are the result of applying a key mapping function to the input
        elements, and whose values are the result of applying a value mapping
        function to all input elements equal to the key and combining them
        using the merge function

    See Also:
    :   - [`toMap(Function, Function)`](#toMap(java.util.function.Function,java.util.function.Function))
        - [`toMap(Function, Function, BinaryOperator, Supplier)`](#toMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator,java.util.function.Supplier))
        - [`toConcurrentMap(Function, Function, BinaryOperator)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
  + ### toUnmodifiableMap

    public static <T,
    K,
    U> [Collector](Collector.md "interface in java.util.stream")<T,?,[Map](../Map.md "interface in java.util")<K,U>> toUnmodifiableMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<U> mergeFunction)

    Returns a `Collector` that accumulates the input elements into an
    [unmodifiable Map](../Map.md#unmodifiable),
    whose keys and values are the result of applying the provided
    mapping functions to the input elements.

    If the mapped
    keys contain duplicates (according to [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))),
    the value mapping function is applied to each equal element, and the
    results are merged using the provided merging function.

    The returned Collector disallows null keys and values. If either mapping function
    returns null, `NullPointerException` will be thrown.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function

    Parameters:
    :   `keyMapper` - a mapping function to produce keys, must be non-null
    :   `valueMapper` - a mapping function to produce values, must be non-null
    :   `mergeFunction` - a merge function, used to resolve collisions between
        values associated with the same key, as supplied
        to [`Map.merge(Object, Object, BiFunction)`](../Map.md#merge(K,V,java.util.function.BiFunction)),
        must be non-null

    Returns:
    :   a `Collector` that accumulates the input elements into an
        [unmodifiable Map](../Map.md#unmodifiable), whose keys and values
        are the result of applying the provided mapping functions to the input elements

    Throws:
    :   `NullPointerException` - if the keyMapper, valueMapper, or mergeFunction is null

    Since:
    :   10

    See Also:
    :   - [`toUnmodifiableMap(Function, Function)`](#toUnmodifiableMap(java.util.function.Function,java.util.function.Function))
  + ### toMap

    public static <T,
    K,
    U,
    M extends [Map](../Map.md "interface in java.util")<K,
    U>>
    [Collector](Collector.md "interface in java.util.stream")<T,?,M> toMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<U> mergeFunction,
    [Supplier](../function/Supplier.md "interface in java.util.function")<M> mapFactory)

    Returns a `Collector` that accumulates elements into a
    `Map` whose keys and values are the result of applying the provided
    mapping functions to the input elements.

    If the mapped
    keys contain duplicates (according to [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))),
    the value mapping function is applied to each equal element, and the
    results are merged using the provided merging function. The `Map`
    is created by a provided supplier function.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function
    :   `M` - the type of the resulting `Map`

    Parameters:
    :   `keyMapper` - a mapping function to produce keys
    :   `valueMapper` - a mapping function to produce values
    :   `mergeFunction` - a merge function, used to resolve collisions between
        values associated with the same key, as supplied
        to [`Map.merge(Object, Object, BiFunction)`](../Map.md#merge(K,V,java.util.function.BiFunction))
    :   `mapFactory` - a supplier providing a new empty `Map`
        into which the results will be inserted

    Returns:
    :   a `Collector` which collects elements into a `Map`
        whose keys are the result of applying a key mapping function to the input
        elements, and whose values are the result of applying a value mapping
        function to all input elements equal to the key and combining them
        using the merge function

    See Also:
    :   - [`toMap(Function, Function)`](#toMap(java.util.function.Function,java.util.function.Function))
        - [`toMap(Function, Function, BinaryOperator)`](#toMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
        - [`toConcurrentMap(Function, Function, BinaryOperator, Supplier)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator,java.util.function.Supplier))
  + ### toConcurrentMap

    public static <T,
    K,
    U>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[ConcurrentMap](../concurrent/ConcurrentMap.md "interface in java.util.concurrent")<K,U>> toConcurrentMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper)

    Returns a concurrent `Collector` that accumulates elements into a
    `ConcurrentMap` whose keys and values are the result of applying
    the provided mapping functions to the input elements.

    If the mapped keys contain duplicates (according to
    [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))), an `IllegalStateException` is
    thrown when the collection operation is performed. If the mapped keys
    may have duplicates, use
    [`toConcurrentMap(Function, Function, BinaryOperator)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator)) instead.

    There are no guarantees on the type, mutability, or serializability
    of the `ConcurrentMap` returned.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function

    Parameters:
    :   `keyMapper` - the mapping function to produce keys
    :   `valueMapper` - the mapping function to produce values

    Returns:
    :   a concurrent, unordered `Collector` which collects elements into a
        `ConcurrentMap` whose keys are the result of applying a key mapping
        function to the input elements, and whose values are the result of
        applying a value mapping function to the input elements

    See Also:
    :   - [`toMap(Function, Function)`](#toMap(java.util.function.Function,java.util.function.Function))
        - [`toConcurrentMap(Function, Function, BinaryOperator)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
        - [`toConcurrentMap(Function, Function, BinaryOperator, Supplier)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator,java.util.function.Supplier))
  + ### toConcurrentMap

    public static <T,
    K,
    U>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[ConcurrentMap](../concurrent/ConcurrentMap.md "interface in java.util.concurrent")<K,U>> toConcurrentMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<U> mergeFunction)

    Returns a concurrent `Collector` that accumulates elements into a
    `ConcurrentMap` whose keys and values are the result of applying
    the provided mapping functions to the input elements.

    If the mapped keys contain duplicates (according to [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))),
    the value mapping function is applied to each equal element, and the
    results are merged using the provided merging function.

    There are no guarantees on the type, mutability, or serializability
    of the `ConcurrentMap` returned.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function

    Parameters:
    :   `keyMapper` - a mapping function to produce keys
    :   `valueMapper` - a mapping function to produce values
    :   `mergeFunction` - a merge function, used to resolve collisions between
        values associated with the same key, as supplied
        to [`Map.merge(Object, Object, BiFunction)`](../Map.md#merge(K,V,java.util.function.BiFunction))

    Returns:
    :   a concurrent, unordered `Collector` which collects elements into a
        `ConcurrentMap` whose keys are the result of applying a key mapping
        function to the input elements, and whose values are the result of
        applying a value mapping function to all input elements equal to the key
        and combining them using the merge function

    See Also:
    :   - [`toConcurrentMap(Function, Function)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function))
        - [`toConcurrentMap(Function, Function, BinaryOperator, Supplier)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator,java.util.function.Supplier))
        - [`toMap(Function, Function, BinaryOperator)`](#toMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
  + ### toConcurrentMap

    public static <T,
    K,
    U,
    M extends [ConcurrentMap](../concurrent/ConcurrentMap.md "interface in java.util.concurrent")<K,
    U>>
    [Collector](Collector.md "interface in java.util.stream")<T,?,M> toConcurrentMap([Function](../function/Function.md "interface in java.util.function")<? super T,? extends K> keyMapper,
    [Function](../function/Function.md "interface in java.util.function")<? super T,? extends U> valueMapper,
    [BinaryOperator](../function/BinaryOperator.md "interface in java.util.function")<U> mergeFunction,
    [Supplier](../function/Supplier.md "interface in java.util.function")<M> mapFactory)

    Returns a concurrent `Collector` that accumulates elements into a
    `ConcurrentMap` whose keys and values are the result of applying
    the provided mapping functions to the input elements.

    If the mapped keys contain duplicates (according to [`Object.equals(Object)`](../../lang/Object.md#equals(java.lang.Object))),
    the value mapping function is applied to each equal element, and the
    results are merged using the provided merging function. The
    `ConcurrentMap` is created by a provided supplier function.

    This is a [`concurrent`](Collector.Characteristics.md#CONCURRENT) and
    [`unordered`](Collector.Characteristics.md#UNORDERED) Collector.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `K` - the output type of the key mapping function
    :   `U` - the output type of the value mapping function
    :   `M` - the type of the resulting `ConcurrentMap`

    Parameters:
    :   `keyMapper` - a mapping function to produce keys
    :   `valueMapper` - a mapping function to produce values
    :   `mergeFunction` - a merge function, used to resolve collisions between
        values associated with the same key, as supplied
        to [`Map.merge(Object, Object, BiFunction)`](../Map.md#merge(K,V,java.util.function.BiFunction))
    :   `mapFactory` - a supplier providing a new empty `ConcurrentMap`
        into which the results will be inserted

    Returns:
    :   a concurrent, unordered `Collector` which collects elements into a
        `ConcurrentMap` whose keys are the result of applying a key mapping
        function to the input elements, and whose values are the result of
        applying a value mapping function to all input elements equal to the key
        and combining them using the merge function

    See Also:
    :   - [`toConcurrentMap(Function, Function)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function))
        - [`toConcurrentMap(Function, Function, BinaryOperator)`](#toConcurrentMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator))
        - [`toMap(Function, Function, BinaryOperator, Supplier)`](#toMap(java.util.function.Function,java.util.function.Function,java.util.function.BinaryOperator,java.util.function.Supplier))
  + ### summarizingInt

    public static <T>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[IntSummaryStatistics](../IntSummaryStatistics.md "class in java.util")> summarizingInt([ToIntFunction](../function/ToIntFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` which applies an `int`-producing
    mapping function to each input element, and returns summary statistics
    for the resulting values.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a mapping function to apply to each element

    Returns:
    :   a `Collector` implementing the summary-statistics reduction

    See Also:
    :   - [`summarizingDouble(ToDoubleFunction)`](#summarizingDouble(java.util.function.ToDoubleFunction))
        - [`summarizingLong(ToLongFunction)`](#summarizingLong(java.util.function.ToLongFunction))
  + ### summarizingLong

    public static <T>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[LongSummaryStatistics](../LongSummaryStatistics.md "class in java.util")> summarizingLong([ToLongFunction](../function/ToLongFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` which applies an `long`-producing
    mapping function to each input element, and returns summary statistics
    for the resulting values.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - the mapping function to apply to each element

    Returns:
    :   a `Collector` implementing the summary-statistics reduction

    See Also:
    :   - [`summarizingDouble(ToDoubleFunction)`](#summarizingDouble(java.util.function.ToDoubleFunction))
        - [`summarizingInt(ToIntFunction)`](#summarizingInt(java.util.function.ToIntFunction))
  + ### summarizingDouble

    public static <T>
    [Collector](Collector.md "interface in java.util.stream")<T,?,[DoubleSummaryStatistics](../DoubleSummaryStatistics.md "class in java.util")> summarizingDouble([ToDoubleFunction](../function/ToDoubleFunction.md "interface in java.util.function")<? super T> mapper)

    Returns a `Collector` which applies an `double`-producing
    mapping function to each input element, and returns summary statistics
    for the resulting values.

    Type Parameters:
    :   `T` - the type of the input elements

    Parameters:
    :   `mapper` - a mapping function to apply to each element

    Returns:
    :   a `Collector` implementing the summary-statistics reduction

    See Also:
    :   - [`summarizingLong(ToLongFunction)`](#summarizingLong(java.util.function.ToLongFunction))
        - [`summarizingInt(ToIntFunction)`](#summarizingInt(java.util.function.ToIntFunction))
  + ### teeing

    public static <T,
    R1,
    R2,
    R> [Collector](Collector.md "interface in java.util.stream")<T,?,R> teeing([Collector](Collector.md "interface in java.util.stream")<? super T,?,R1> downstream1,
    [Collector](Collector.md "interface in java.util.stream")<? super T,?,R2> downstream2,
    [BiFunction](../function/BiFunction.md "interface in java.util.function")<? super R1,? super R2,R> merger)

    Returns a `Collector` that is a composite of two downstream collectors.
    Every element passed to the resulting collector is processed by both downstream
    collectors, then their results are merged using the specified merge function
    into the final result.

    The resulting collector functions do the following:
    - supplier: creates a result container that contains result containers
      obtained by calling each collector's supplier- accumulator: calls each collector's accumulator with its result container
        and the input element- combiner: calls each collector's combiner with two result containers- finisher: calls each collector's finisher with its result container,
            then calls the supplied merger and returns its result.

    The resulting collector is [`Collector.Characteristics.UNORDERED`](Collector.Characteristics.md#UNORDERED) if both downstream
    collectors are unordered and [`Collector.Characteristics.CONCURRENT`](Collector.Characteristics.md#CONCURRENT) if both downstream
    collectors are concurrent.

    Type Parameters:
    :   `T` - the type of the input elements
    :   `R1` - the result type of the first collector
    :   `R2` - the result type of the second collector
    :   `R` - the final result type

    Parameters:
    :   `downstream1` - the first downstream collector
    :   `downstream2` - the second downstream collector
    :   `merger` - the function which merges two results into the single one

    Returns:
    :   a `Collector` which aggregates the results of two supplied collectors.

    Since:
    :   12