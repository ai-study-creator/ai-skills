Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface LongUnaryOperator

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface LongUnaryOperator

Represents an operation on a single `long`-valued operand that produces
a `long`-valued result. This is the primitive type specialization of
[`UnaryOperator`](UnaryOperator.md "interface in java.util.function") for `long`.

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsLong(long)`](#applyAsLong(long)).

Since:
:   1.8

See Also:
:   * [`UnaryOperator`](UnaryOperator.md "interface in java.util.function")

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default LongUnaryOperator`

  `andThen(LongUnaryOperator after)`

  Returns a composed operator that first applies this operator to
  its input, and then applies the `after` operator to the result.

  `long`

  `applyAsLong(long operand)`

  Applies this operator to the given operand.

  `default LongUnaryOperator`

  `compose(LongUnaryOperator before)`

  Returns a composed operator that first applies the `before`
  operator to its input, and then applies this operator to the result.

  `static LongUnaryOperator`

  `identity()`

  Returns a unary operator that always returns its input argument.

* ## Method Details

  + ### applyAsLong

    long applyAsLong(long operand)

    Applies this operator to the given operand.

    Parameters:
    :   `operand` - the operand

    Returns:
    :   the operator result
  + ### compose

    default [LongUnaryOperator](LongUnaryOperator.md "interface in java.util.function") compose([LongUnaryOperator](LongUnaryOperator.md "interface in java.util.function") before)

    Returns a composed operator that first applies the `before`
    operator to its input, and then applies this operator to the result.
    If evaluation of either operator throws an exception, it is relayed to
    the caller of the composed operator.

    Parameters:
    :   `before` - the operator to apply before this operator is applied

    Returns:
    :   a composed operator that first applies the `before`
        operator and then applies this operator

    Throws:
    :   `NullPointerException` - if before is null

    See Also:
    :   - [`andThen(LongUnaryOperator)`](#andThen(java.util.function.LongUnaryOperator))
  + ### andThen

    default [LongUnaryOperator](LongUnaryOperator.md "interface in java.util.function") andThen([LongUnaryOperator](LongUnaryOperator.md "interface in java.util.function") after)

    Returns a composed operator that first applies this operator to
    its input, and then applies the `after` operator to the result.
    If evaluation of either operator throws an exception, it is relayed to
    the caller of the composed operator.

    Parameters:
    :   `after` - the operator to apply after this operator is applied

    Returns:
    :   a composed operator that first applies this operator and then
        applies the `after` operator

    Throws:
    :   `NullPointerException` - if after is null

    See Also:
    :   - [`compose(LongUnaryOperator)`](#compose(java.util.function.LongUnaryOperator))
  + ### identity

    static [LongUnaryOperator](LongUnaryOperator.md "interface in java.util.function") identity()

    Returns a unary operator that always returns its input argument.

    Returns:
    :   a unary operator that always returns its input argument