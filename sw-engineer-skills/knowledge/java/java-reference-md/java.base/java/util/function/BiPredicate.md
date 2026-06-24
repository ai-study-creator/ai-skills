Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface BiPredicate<T,U>

Type Parameters:
:   `T` - the type of the first argument to the predicate
:   `U` - the type of the second argument the predicate

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface BiPredicate<T,U>

Represents a predicate (boolean-valued function) of two arguments. This is
the two-arity specialization of [`Predicate`](Predicate.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`test(Object, Object)`](#test(T,U)).

Since:
:   1.8

See Also:
:   * [`Predicate`](Predicate.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default BiPredicate<T,U>`

  `and(BiPredicate<? super T,? super U> other)`

  Returns a composed predicate that represents a short-circuiting logical
  AND of this predicate and another.

  `default BiPredicate<T,U>`

  `negate()`

  Returns a predicate that represents the logical negation of this
  predicate.

  `default BiPredicate<T,U>`

  `or(BiPredicate<? super T,? super U> other)`

  Returns a composed predicate that represents a short-circuiting logical
  OR of this predicate and another.

  `boolean`

  `test(T t,
  U u)`

  Evaluates this predicate on the given arguments.

* ## Method Details

  + ### test

    boolean test([T](BiPredicate.md "type parameter in BiPredicate") t,
    [U](BiPredicate.md "type parameter in BiPredicate") u)

    Evaluates this predicate on the given arguments.

    Parameters:
    :   `t` - the first input argument
    :   `u` - the second input argument

    Returns:
    :   `true` if the input arguments match the predicate,
        otherwise `false`
  + ### and

    default [BiPredicate](BiPredicate.md "interface in java.util.function")<[T](BiPredicate.md "type parameter in BiPredicate"),[U](BiPredicate.md "type parameter in BiPredicate")> and([BiPredicate](BiPredicate.md "interface in java.util.function")<? super [T](BiPredicate.md "type parameter in BiPredicate"),? super [U](BiPredicate.md "type parameter in BiPredicate")> other)

    Returns a composed predicate that represents a short-circuiting logical
    AND of this predicate and another. When evaluating the composed
    predicate, if this predicate is `false`, then the `other`
    predicate is not evaluated.

    Any exceptions thrown during evaluation of either predicate are relayed
    to the caller; if evaluation of this predicate throws an exception, the
    `other` predicate will not be evaluated.

    Parameters:
    :   `other` - a predicate that will be logically-ANDed with this
        predicate

    Returns:
    :   a composed predicate that represents the short-circuiting logical
        AND of this predicate and the `other` predicate

    Throws:
    :   `NullPointerException` - if other is null
  + ### negate

    default [BiPredicate](BiPredicate.md "interface in java.util.function")<[T](BiPredicate.md "type parameter in BiPredicate"),[U](BiPredicate.md "type parameter in BiPredicate")> negate()

    Returns a predicate that represents the logical negation of this
    predicate.

    Returns:
    :   a predicate that represents the logical negation of this
        predicate
  + ### or

    default [BiPredicate](BiPredicate.md "interface in java.util.function")<[T](BiPredicate.md "type parameter in BiPredicate"),[U](BiPredicate.md "type parameter in BiPredicate")> or([BiPredicate](BiPredicate.md "interface in java.util.function")<? super [T](BiPredicate.md "type parameter in BiPredicate"),? super [U](BiPredicate.md "type parameter in BiPredicate")> other)

    Returns a composed predicate that represents a short-circuiting logical
    OR of this predicate and another. When evaluating the composed
    predicate, if this predicate is `true`, then the `other`
    predicate is not evaluated.

    Any exceptions thrown during evaluation of either predicate are relayed
    to the caller; if evaluation of this predicate throws an exception, the
    `other` predicate will not be evaluated.

    Parameters:
    :   `other` - a predicate that will be logically-ORed with this
        predicate

    Returns:
    :   a composed predicate that represents the short-circuiting logical
        OR of this predicate and the `other` predicate

    Throws:
    :   `NullPointerException` - if other is null