# Hierarchy For Package java.util.stream

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.util.stream.[Collectors](Collectors.md "class in java.util.stream")
  + java.util.stream.[StreamSupport](StreamSupport.md "class in java.util.stream")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../lang/AutoCloseable.md "interface in java.lang")
  + java.util.stream.[BaseStream](BaseStream.md "interface in java.util.stream")<T,S>
    - java.util.stream.[DoubleStream](DoubleStream.md "interface in java.util.stream")
    - java.util.stream.[IntStream](IntStream.md "interface in java.util.stream")
    - java.util.stream.[LongStream](LongStream.md "interface in java.util.stream")
    - java.util.stream.[Stream](Stream.md "interface in java.util.stream")<T>
* java.util.stream.[Collector](Collector.md "interface in java.util.stream")<T,A,R>
* java.util.function.[Consumer](../function/Consumer.md "interface in java.util.function")<T>
  + java.util.stream.[Stream.Builder](Stream.Builder.md "interface in java.util.stream")<T>
* java.util.function.[DoubleConsumer](../function/DoubleConsumer.md "interface in java.util.function")
  + java.util.stream.[DoubleStream.Builder](DoubleStream.Builder.md "interface in java.util.stream")
* java.util.stream.[DoubleStream.DoubleMapMultiConsumer](DoubleStream.DoubleMapMultiConsumer.md "interface in java.util.stream")
* java.util.function.[IntConsumer](../function/IntConsumer.md "interface in java.util.function")
  + java.util.stream.[IntStream.Builder](IntStream.Builder.md "interface in java.util.stream")
* java.util.stream.[IntStream.IntMapMultiConsumer](IntStream.IntMapMultiConsumer.md "interface in java.util.stream")
* java.util.function.[LongConsumer](../function/LongConsumer.md "interface in java.util.function")
  + java.util.stream.[LongStream.Builder](LongStream.Builder.md "interface in java.util.stream")
* java.util.stream.[LongStream.LongMapMultiConsumer](LongStream.LongMapMultiConsumer.md "interface in java.util.stream")

## Enum Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.util.stream.[Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream")