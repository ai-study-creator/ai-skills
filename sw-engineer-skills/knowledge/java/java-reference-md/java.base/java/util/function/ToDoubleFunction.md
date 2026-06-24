Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ToDoubleFunction<T>

Type Parameters:
:   `T` - the type of the input to the function

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ToDoubleFunction<T>

Represents a function that produces a double-valued result. This is the
`double`-producing primitive specialization for [`Function`](Function.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsDouble(Object)`](#applyAsDouble(T)).

Since:
:   1.8

See Also:
:   * [`Function`](Function.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `double`

  `applyAsDouble(T value)`

  Applies this function to the given argument.

* ## Method Details

  + ### applyAsDouble

    double applyAsDouble([T](ToDoubleFunction.md "type parameter in ToDoubleFunction") value)

    Applies this function to the given argument.

    Parameters:
    :   `value` - the function argument

    Returns:
    :   the function result