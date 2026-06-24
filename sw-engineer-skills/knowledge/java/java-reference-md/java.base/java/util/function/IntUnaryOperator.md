Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface IntUnaryOperator

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface IntUnaryOperator

Represents an operation on a single `int`-valued operand that produces
an `int`-valued result. This is the primitive type specialization of
[`UnaryOperator`](UnaryOperator.md "interface in java.util.function") for `int`.

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsInt(int)`](#applyAsInt(int)).

Since:
:   1.8

See Also:
:   * [`UnaryOperator`](UnaryOperator.md "interface in java.util.function")

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default IntUnaryOperator`

  `andThen(IntUnaryOperator after)`

  Returns a composed operator that first applies this operator to
  its input, and then applies the `after` operator to the result.

  `int`

  `applyAsInt(int operand)`

  Applies this operator to the given operand.

  `default IntUnaryOperator`

  `compose(IntUnaryOperator before)`

  Returns a composed operator that first applies the `before`
  operator to its input, and then applies this operator to the result.

  `static IntUnaryOperator`

  `identity()`

  Returns a unary operator that always returns its input argument.

* ## Method Details

  + ### applyAsInt

    int applyAsInt(int operand)

    Applies this operator to the given operand.

    Parameters:
    :   `operand` - the operand

    Returns:
    :   the operator result
  + ### compose

    default [IntUnaryOperator](IntUnaryOperator.md "interface in java.util.function") compose([IntUnaryOperator](IntUnaryOperator.md "interface in java.util.function") before)

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
    :   - [`andThen(IntUnaryOperator)`](#andThen(java.util.function.IntUnaryOperator))
  + ### andThen

    default [IntUnaryOperator](IntUnaryOperator.md "interface in java.util.function") andThen([IntUnaryOperator](IntUnaryOperator.md "interface in java.util.function") after)

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
    :   - [`compose(IntUnaryOperator)`](#compose(java.util.function.IntUnaryOperator))
  + ### identity

    static [IntUnaryOperator](IntUnaryOperator.md "interface in java.util.function") identity()

    Returns a unary operator that always returns its input argument.

    Returns:
    :   a unary operator that always returns its input argument