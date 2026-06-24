Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface DoubleFunction<R>

Type Parameters:
:   `R` - the type of the result of the function

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface DoubleFunction<R>

Represents a function that accepts a double-valued argument and produces a
result. This is the `double`-consuming primitive specialization for
[`Function`](Function.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`apply(double)`](#apply(double)).

Since:
:   1.8

See Also:
:   * [`Function`](Function.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `R`

  `apply(double value)`

  Applies this function to the given argument.

* ## Method Details

  + ### apply

    [R](DoubleFunction.md "type parameter in DoubleFunction") apply(double value)

    Applies this function to the given argument.

    Parameters:
    :   `value` - the function argument

    Returns:
    :   the function result