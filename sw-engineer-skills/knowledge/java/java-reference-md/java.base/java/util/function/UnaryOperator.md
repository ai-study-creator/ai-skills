Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface UnaryOperator<T>

Type Parameters:
:   `T` - the type of the operand and result of the operator

All Superinterfaces:
:   `Function<T,T>`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface UnaryOperator<T>
extends [Function](Function.md "interface in java.util.function")<T,T>

Represents an operation on a single operand that produces a result of the
same type as its operand. This is a specialization of `Function` for
the case where the operand and result are of the same type.

This is a [functional interface](package-summary.md)
whose functional method is [`Function.apply(Object)`](Function.md#apply(T)).

Since:
:   1.8

See Also:
:   * [`Function`](Function.md "interface in java.util.function")

* ## Method Summary

  Static Methods

  Modifier and Type

  Method

  Description

  `static <T> UnaryOperator<T>`

  `identity()`

  Returns a unary operator that always returns its input argument.

  ### Methods inherited from interface java.util.function.[Function](Function.md "interface in java.util.function")

  `andThen, apply, compose`

* ## Method Details

  + ### identity

    static <T> [UnaryOperator](UnaryOperator.md "interface in java.util.function")<T> identity()

    Returns a unary operator that always returns its input argument.

    Type Parameters:
    :   `T` - the type of the input and output of the operator

    Returns:
    :   a unary operator that always returns its input argument