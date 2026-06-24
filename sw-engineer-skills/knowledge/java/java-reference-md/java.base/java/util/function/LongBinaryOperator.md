Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface LongBinaryOperator

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface LongBinaryOperator

Represents an operation upon two `long`-valued operands and producing a
`long`-valued result. This is the primitive type specialization of
[`BinaryOperator`](BinaryOperator.md "interface in java.util.function") for `long`.

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsLong(long, long)`](#applyAsLong(long,long)).

Since:
:   1.8

See Also:
:   * [`BinaryOperator`](BinaryOperator.md "interface in java.util.function")
    * [`LongUnaryOperator`](LongUnaryOperator.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `applyAsLong(long left,
  long right)`

  Applies this operator to the given operands.

* ## Method Details

  + ### applyAsLong

    long applyAsLong(long left,
    long right)

    Applies this operator to the given operands.

    Parameters:
    :   `left` - the first operand
    :   `right` - the second operand

    Returns:
    :   the operator result