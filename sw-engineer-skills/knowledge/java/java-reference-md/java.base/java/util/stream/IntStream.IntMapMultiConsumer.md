Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface IntStream.IntMapMultiConsumer

Enclosing interface:
:   `IntStream`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public static interface IntStream.IntMapMultiConsumer

Represents an operation that accepts an `int`-valued argument
and an IntConsumer, and returns no result. This functional interface is
used by [`IntStream.mapMulti`](IntStream.md#mapMulti(java.util.stream.IntStream.IntMapMultiConsumer))
to replace an int value with zero or more int values.

This is a [functional interface](../function/package-summary.md)
whose functional method is [`accept(int, IntConsumer)`](#accept(int,java.util.function.IntConsumer)).

Since:
:   16

See Also:
:   * [`IntStream.mapMulti(IntMapMultiConsumer)`](IntStream.md#mapMulti(java.util.stream.IntStream.IntMapMultiConsumer))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(int value,
  IntConsumer ic)`

  Replaces the given `value` with zero or more values by feeding the mapped
  values to the `ic` consumer.

* ## Method Details

  + ### accept

    void accept(int value,
    [IntConsumer](../function/IntConsumer.md "interface in java.util.function") ic)

    Replaces the given `value` with zero or more values by feeding the mapped
    values to the `ic` consumer.

    Parameters:
    :   `value` - the int value coming from upstream
    :   `ic` - an `IntConsumer` accepting the mapped values