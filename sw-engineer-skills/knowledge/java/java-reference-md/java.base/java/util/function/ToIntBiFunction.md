Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ToIntBiFunction<T,U>

Type Parameters:
:   `T` - the type of the first argument to the function
:   `U` - the type of the second argument to the function

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ToIntBiFunction<T,U>

Represents a function that accepts two arguments and produces an int-valued
result. This is the `int`-producing primitive specialization for
[`BiFunction`](BiFunction.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsInt(Object, Object)`](#applyAsInt(T,U)).

Since:
:   1.8

See Also:
:   * [`BiFunction`](BiFunction.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `applyAsInt(T t,
  U u)`

  Applies this function to the given arguments.

* ## Method Details

  + ### applyAsInt

    int applyAsInt([T](ToIntBiFunction.md "type parameter in ToIntBiFunction") t,
    [U](ToIntBiFunction.md "type parameter in ToIntBiFunction") u)

    Applies this function to the given arguments.

    Parameters:
    :   `t` - the first function argument
    :   `u` - the second function argument

    Returns:
    :   the function result