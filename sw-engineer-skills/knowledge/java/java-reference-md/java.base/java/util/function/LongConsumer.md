Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface LongConsumer

All Known Subinterfaces:
:   `LongStream.Builder`

All Known Implementing Classes:
:   `LongSummaryStatistics`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface LongConsumer

Represents an operation that accepts a single `long`-valued argument and
returns no result. This is the primitive type specialization of
[`Consumer`](Consumer.md "interface in java.util.function") for `long`. Unlike most other functional interfaces,
`LongConsumer` is expected to operate via side-effects.

This is a [functional interface](package-summary.md)
whose functional method is [`accept(long)`](#accept(long)).

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

  `accept(long value)`

  Performs this operation on the given argument.

  `default LongConsumer`

  `andThen(LongConsumer after)`

  Returns a composed `LongConsumer` that performs, in sequence, this
  operation followed by the `after` operation.

* ## Method Details

  + ### accept

    void accept(long value)

    Performs this operation on the given argument.

    Parameters:
    :   `value` - the input argument
  + ### andThen

    default [LongConsumer](LongConsumer.md "interface in java.util.function") andThen([LongConsumer](LongConsumer.md "interface in java.util.function") after)

    Returns a composed `LongConsumer` that performs, in sequence, this
    operation followed by the `after` operation. If performing either
    operation throws an exception, it is relayed to the caller of the
    composed operation. If performing this operation throws an exception,
    the `after` operation will not be performed.

    Parameters:
    :   `after` - the operation to perform after this operation

    Returns:
    :   a composed `LongConsumer` that performs in sequence this
        operation followed by the `after` operation

    Throws:
    :   `NullPointerException` - if `after` is null