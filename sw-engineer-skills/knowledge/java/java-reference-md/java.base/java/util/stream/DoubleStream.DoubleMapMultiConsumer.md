Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface DoubleStream.DoubleMapMultiConsumer

Enclosing interface:
:   `DoubleStream`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public static interface DoubleStream.DoubleMapMultiConsumer

Represents an operation that accepts a `double`-valued argument
and a DoubleConsumer, and returns no result. This functional interface is
used by [`DoubleStream.mapMulti`](DoubleStream.md#mapMulti(java.util.stream.DoubleStream.DoubleMapMultiConsumer))
to replace a double value with zero or more double values.

This is a [functional interface](../function/package-summary.md)
whose functional method is [`accept(double, DoubleConsumer)`](#accept(double,java.util.function.DoubleConsumer)).

Since:
:   16

See Also:
:   * [`DoubleStream.mapMulti(DoubleMapMultiConsumer)`](DoubleStream.md#mapMulti(java.util.stream.DoubleStream.DoubleMapMultiConsumer))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(double value,
  DoubleConsumer dc)`

  Replaces the given `value` with zero or more values by feeding the mapped
  values to the `dc` consumer.

* ## Method Details

  + ### accept

    void accept(double value,
    [DoubleConsumer](../function/DoubleConsumer.md "interface in java.util.function") dc)

    Replaces the given `value` with zero or more values by feeding the mapped
    values to the `dc` consumer.

    Parameters:
    :   `value` - the double value coming from upstream
    :   `dc` - a `DoubleConsumer` accepting the mapped values