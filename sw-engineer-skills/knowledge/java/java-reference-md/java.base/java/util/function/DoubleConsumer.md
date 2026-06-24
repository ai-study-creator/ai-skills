Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface DoubleConsumer

All Known Subinterfaces:
:   `DoubleStream.Builder`

All Known Implementing Classes:
:   `DoubleSummaryStatistics`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface DoubleConsumer

Represents an operation that accepts a single `double`-valued argument and
returns no result. This is the primitive type specialization of
[`Consumer`](Consumer.md "interface in java.util.function") for `double`. Unlike most other functional interfaces,
`DoubleConsumer` is expected to operate via side-effects.

This is a [functional interface](package-summary.md)
whose functional method is [`accept(double)`](#accept(double)).

Since:
:   1.8

See Also:
:   * [`Consumer`](Consumer.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(double value)`

  Performs this operation on the given argument.

  `default DoubleConsumer`

  `andThen(DoubleConsumer after)`

  Returns a composed `DoubleConsumer` that performs, in sequence, this
  operation followed by the `after` operation.

* ## Method Details

  + ### accept

    void accept(double value)

    Performs this operation on the given argument.

    Parameters:
    :   `value` - the input argument
  + ### andThen

    default [DoubleConsumer](DoubleConsumer.md "interface in java.util.function") andThen([DoubleConsumer](DoubleConsumer.md "interface in java.util.function") after)

    Returns a composed `DoubleConsumer` that performs, in sequence, this
    operation followed by the `after` operation. If performing either
    operation throws an exception, it is relayed to the caller of the
    composed operation. If performing this operation throws an exception,
    the `after` operation will not be performed.

    Parameters:
    :   `after` - the operation to perform after this operation

    Returns:
    :   a composed `DoubleConsumer` that performs in sequence this
        operation followed by the `after` operation

    Throws:
    :   `NullPointerException` - if `after` is null