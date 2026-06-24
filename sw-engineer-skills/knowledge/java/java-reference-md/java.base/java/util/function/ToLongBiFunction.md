Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ToLongBiFunction<T,U>

Type Parameters:
:   `T` - the type of the first argument to the function
:   `U` - the type of the second argument to the function

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ToLongBiFunction<T,U>

Represents a function that accepts two arguments and produces a long-valued
result. This is the `long`-producing primitive specialization for
[`BiFunction`](BiFunction.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsLong(Object, Object)`](#applyAsLong(T,U)).

Since:
:   1.8

See Also:
:   * [`BiFunction`](BiFunction.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `applyAsLong(T t,
  U u)`

  Applies this function to the given arguments.

* ## Method Details

  + ### applyAsLong

    long applyAsLong([T](ToLongBiFunction.md "type parameter in ToLongBiFunction") t,
    [U](ToLongBiFunction.md "type parameter in ToLongBiFunction") u)

    Applies this function to the given arguments.

    Parameters:
    :   `t` - the first function argument
    :   `u` - the second function argument

    Returns:
    :   the function result