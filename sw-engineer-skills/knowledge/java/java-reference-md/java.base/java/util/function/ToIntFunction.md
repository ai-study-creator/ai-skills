Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ToIntFunction<T>

Type Parameters:
:   `T` - the type of the input to the function

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ToIntFunction<T>

Represents a function that produces an int-valued result. This is the
`int`-producing primitive specialization for [`Function`](Function.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsInt(Object)`](#applyAsInt(T)).

Since:
:   1.8

See Also:
:   * [`Function`](Function.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `applyAsInt(T value)`

  Applies this function to the given argument.

* ## Method Details

  + ### applyAsInt

    int applyAsInt([T](ToIntFunction.md "type parameter in ToIntFunction") value)

    Applies this function to the given argument.

    Parameters:
    :   `value` - the function argument

    Returns:
    :   the function result