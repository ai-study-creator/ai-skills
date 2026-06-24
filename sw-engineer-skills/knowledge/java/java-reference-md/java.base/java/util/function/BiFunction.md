Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface BiFunction<T,U,R>

Type Parameters:
:   `T` - the type of the first argument to the function
:   `U` - the type of the second argument to the function
:   `R` - the type of the result of the function

All Known Subinterfaces:
:   `BinaryOperator<T>`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface BiFunction<T,U,R>

Represents a function that accepts two arguments and produces a result.
This is the two-arity specialization of [`Function`](Function.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`apply(Object, Object)`](#apply(T,U)).

Since:
:   1.8

See Also:
:   * [`Function`](Function.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default <V> BiFunction<T,U,V>`

  `andThen(Function<? super R,? extends V> after)`

  Returns a composed function that first applies this function to
  its input, and then applies the `after` function to the result.

  `R`

  `apply(T t,
  U u)`

  Applies this function to the given arguments.

* ## Method Details

  + ### apply

    [R](BiFunction.md "type parameter in BiFunction") apply([T](BiFunction.md "type parameter in BiFunction") t,
    [U](BiFunction.md "type parameter in BiFunction") u)

    Applies this function to the given arguments.

    Parameters:
    :   `t` - the first function argument
    :   `u` - the second function argument

    Returns:
    :   the function result
  + ### andThen

    default <V> [BiFunction](BiFunction.md "interface in java.util.function")<[T](BiFunction.md "type parameter in BiFunction"),[U](BiFunction.md "type parameter in BiFunction"),V> andThen([Function](Function.md "interface in java.util.function")<? super [R](BiFunction.md "type parameter in BiFunction"),? extends V> after)

    Returns a composed function that first applies this function to
    its input, and then applies the `after` function to the result.
    If evaluation of either function throws an exception, it is relayed to
    the caller of the composed function.

    Type Parameters:
    :   `V` - the type of output of the `after` function, and of the
        composed function

    Parameters:
    :   `after` - the function to apply after this function is applied

    Returns:
    :   a composed function that first applies this function and then
        applies the `after` function

    Throws:
    :   `NullPointerException` - if after is null