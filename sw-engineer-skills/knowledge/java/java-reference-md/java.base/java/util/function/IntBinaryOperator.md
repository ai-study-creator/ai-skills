Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface IntBinaryOperator

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface IntBinaryOperator

Represents an operation upon two `int`-valued operands and producing an
`int`-valued result. This is the primitive type specialization of
[`BinaryOperator`](BinaryOperator.md "interface in java.util.function") for `int`.

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsInt(int, int)`](#applyAsInt(int,int)).

Since:
:   1.8

See Also:
:   * [`BinaryOperator`](BinaryOperator.md "interface in java.util.function")
    * [`IntUnaryOperator`](IntUnaryOperator.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `applyAsInt(int left,
  int right)`

  Applies this operator to the given operands.

* ## Method Details

  + ### applyAsInt

    int applyAsInt(int left,
    int right)

    Applies this operator to the given operands.

    Parameters:
    :   `left` - the first operand
    :   `right` - the second operand

    Returns:
    :   the operator result