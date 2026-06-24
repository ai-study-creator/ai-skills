Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface DoubleUnaryOperator

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface DoubleUnaryOperator

Represents an operation on a single `double`-valued operand that produces
a `double`-valued result. This is the primitive type specialization of
[`UnaryOperator`](UnaryOperator.md "interface in java.util.function") for `double`.

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsDouble(double)`](#applyAsDouble(double)).

Since:
:   1.8

See Also:
:   * [`UnaryOperator`](UnaryOperator.md "interface in java.util.function")

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default DoubleUnaryOperator`

  `andThen(DoubleUnaryOperator after)`

  Returns a composed operator that first applies this operator to
  its input, and then applies the `after` operator to the result.

  `double`

  `applyAsDouble(double operand)`

  Applies this operator to the given operand.

  `default DoubleUnaryOperator`

  `compose(DoubleUnaryOperator before)`

  Returns a composed operator that first applies the `before`
  operator to its input, and then applies this operator to the result.

  `static DoubleUnaryOperator`

  `identity()`

  Returns a unary operator that always returns its input argument.

* ## Method Details

  + ### applyAsDouble

    double applyAsDouble(double operand)

    Applies this operator to the given operand.

    Parameters:
    :   `operand` - the operand

    Returns:
    :   the operator result
  + ### compose

    default [DoubleUnaryOperator](DoubleUnaryOperator.md "interface in java.util.function") compose([DoubleUnaryOperator](DoubleUnaryOperator.md "interface in java.util.function") before)

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
    :   - [`andThen(DoubleUnaryOperator)`](#andThen(java.util.function.DoubleUnaryOperator))
  + ### andThen

    default [DoubleUnaryOperator](DoubleUnaryOperator.md "interface in java.util.function") andThen([DoubleUnaryOperator](DoubleUnaryOperator.md "interface in java.util.function") after)

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
    :   - [`compose(DoubleUnaryOperator)`](#compose(java.util.function.DoubleUnaryOperator))
  + ### identity

    static [DoubleUnaryOperator](DoubleUnaryOperator.md "interface in java.util.function") identity()

    Returns a unary operator that always returns its input argument.

    Returns:
    :   a unary operator that always returns its input argument