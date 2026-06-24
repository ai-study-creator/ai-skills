Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface Consumer<T>

Type Parameters:
:   `T` - the type of the input to the operation

All Known Subinterfaces:
:   `Stream.Builder<T>`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface Consumer<T>

Represents an operation that accepts a single input argument and returns no
result. Unlike most other functional interfaces, `Consumer` is expected
to operate via side-effects.

This is a [functional interface](package-summary.md)
whose functional method is [`accept(Object)`](#accept(T)).

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(T t)`

  Performs this operation on the given argument.

  `default Consumer<T>`

  `andThen(Consumer<? super T> after)`

  Returns a composed `Consumer` that performs, in sequence, this
  operation followed by the `after` operation.

* ## Method Details

  + ### accept

    void accept([T](Consumer.md "type parameter in Consumer") t)

    Performs this operation on the given argument.

    Parameters:
    :   `t` - the input argument
  + ### andThen

    default [Consumer](Consumer.md "interface in java.util.function")<[T](Consumer.md "type parameter in Consumer")> andThen([Consumer](Consumer.md "interface in java.util.function")<? super [T](Consumer.md "type parameter in Consumer")> after)

    Returns a composed `Consumer` that performs, in sequence, this
    operation followed by the `after` operation. If performing either
    operation throws an exception, it is relayed to the caller of the
    composed operation. If performing this operation throws an exception,
    the `after` operation will not be performed.

    Parameters:
    :   `after` - the operation to perform after this operation

    Returns:
    :   a composed `Consumer` that performs in sequence this
        operation followed by the `after` operation

    Throws:
    :   `NullPointerException` - if `after` is null