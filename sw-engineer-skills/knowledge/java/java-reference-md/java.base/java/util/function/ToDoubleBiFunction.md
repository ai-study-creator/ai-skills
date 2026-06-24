Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface ToDoubleBiFunction<T,U>

Type Parameters:
:   `T` - the type of the first argument to the function
:   `U` - the type of the second argument to the function

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface ToDoubleBiFunction<T,U>

Represents a function that accepts two arguments and produces a double-valued
result. This is the `double`-producing primitive specialization for
[`BiFunction`](BiFunction.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`applyAsDouble(Object, Object)`](#applyAsDouble(T,U)).

Since:
:   1.8

See Also:
:   * [`BiFunction`](BiFunction.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `double`

  `applyAsDouble(T t,
  U u)`

  Applies this function to the given arguments.

* ## Method Details

  + ### applyAsDouble

    double applyAsDouble([T](ToDoubleBiFunction.md "type parameter in ToDoubleBiFunction") t,
    [U](ToDoubleBiFunction.md "type parameter in ToDoubleBiFunction") u)

    Applies this function to the given arguments.

    Parameters:
    :   `t` - the first function argument
    :   `u` - the second function argument

    Returns:
    :   the function result