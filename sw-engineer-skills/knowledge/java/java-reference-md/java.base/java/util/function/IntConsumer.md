Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface IntConsumer

All Known Subinterfaces:
:   `IntStream.Builder`

All Known Implementing Classes:
:   `IntSummaryStatistics`, `LongSummaryStatistics`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface IntConsumer

Represents an operation that accepts a single `int`-valued argument and
returns no result. This is the primitive type specialization of
[`Consumer`](Consumer.md "interface in java.util.function") for `int`. Unlike most other functional interfaces,
`IntConsumer` is expected to operate via side-effects.

This is a [functional interface](package-summary.md)
whose functional method is [`accept(int)`](#accept(int)).

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

  `accept(int value)`

  Performs this operation on the given argument.

  `default IntConsumer`

  `andThen(IntConsumer after)`

  Returns a composed `IntConsumer` that performs, in sequence, this
  operation followed by the `after` operation.

* ## Method Details

  + ### accept

    void accept(int value)

    Performs this operation on the given argument.

    Parameters:
    :   `value` - the input argument
  + ### andThen

    default [IntConsumer](IntConsumer.md "interface in java.util.function") andThen([IntConsumer](IntConsumer.md "interface in java.util.function") after)

    Returns a composed `IntConsumer` that performs, in sequence, this
    operation followed by the `after` operation. If performing either
    operation throws an exception, it is relayed to the caller of the
    composed operation. If performing this operation throws an exception,
    the `after` operation will not be performed.

    Parameters:
    :   `after` - the operation to perform after this operation

    Returns:
    :   a composed `IntConsumer` that performs in sequence this
        operation followed by the `after` operation

    Throws:
    :   `NullPointerException` - if `after` is null