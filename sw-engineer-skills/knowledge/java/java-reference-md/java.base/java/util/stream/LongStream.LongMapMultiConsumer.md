Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface LongStream.LongMapMultiConsumer

Enclosing interface:
:   `LongStream`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public static interface LongStream.LongMapMultiConsumer

Represents an operation that accepts a `long`-valued argument
and a LongConsumer, and returns no result. This functional interface is
used by [`LongStream.mapMulti`](LongStream.md#mapMulti(java.util.stream.LongStream.LongMapMultiConsumer))
to replace a long value with zero or more long values.

This is a [functional interface](../function/package-summary.md)
whose functional method is [`accept(long, LongConsumer)`](#accept(long,java.util.function.LongConsumer)).

Since:
:   16

See Also:
:   * [`LongStream.mapMulti(LongStream.LongMapMultiConsumer)`](LongStream.md#mapMulti(java.util.stream.LongStream.LongMapMultiConsumer))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(long value,
  LongConsumer lc)`

  Replaces the given `value` with zero or more values by feeding the mapped
  values to the `lc` consumer.

* ## Method Details

  + ### accept

    void accept(long value,
    [LongConsumer](../function/LongConsumer.md "interface in java.util.function") lc)

    Replaces the given `value` with zero or more values by feeding the mapped
    values to the `lc` consumer.

    Parameters:
    :   `value` - the long value coming from upstream
    :   `lc` - a `LongConsumer` accepting the mapped values