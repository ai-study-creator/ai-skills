Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface IntToDoubleFunction

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface IntToDoubleFunction

Represents a function that accepts an int-valued argument and produces a
double-valued result. This is the `int`-to-`double` primitive
specialization for [`Function`](Function.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsDouble(int)`](#applyAsDouble(int)).

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

  `applyAsDouble(int value)`

  Applies this function to the given argument.

* ## Method Details

  + ### applyAsDouble

    double applyAsDouble(int value)

    Applies this function to the given argument.

    Parameters:
    :   `value` - the function argument

    Returns:
    :   the function result