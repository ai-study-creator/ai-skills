Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface Predicate<T>

Type Parameters:
:   `T` - the type of the input to the predicate

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface Predicate<T>

Represents a predicate (boolean-valued function) of one argument.

This is a [functional interface](package-summary.md)
whose functional method is [`test(Object)`](#test(T)).

Since:
:   1.8

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default Predicate<T>`

  `and(Predicate<? super T> other)`

  Returns a composed predicate that represents a short-circuiting logical
  AND of this predicate and another.

  `static <T> Predicate<T>`

  `isEqual(Object targetRef)`

  Returns a predicate that tests if two arguments are equal according
  to [`Objects.equals(Object, Object)`](../Objects.md#equals(java.lang.Object,java.lang.Object)).

  `default Predicate<T>`

  `negate()`

  Returns a predicate that represents the logical negation of this
  predicate.

  `static <T> Predicate<T>`

  `not(Predicate<? super T> target)`

  Returns a predicate that is the negation of the supplied predicate.

  `default Predicate<T>`

  `or(Predicate<? super T> other)`

  Returns a composed predicate that represents a short-circuiting logical
  OR of this predicate and another.

  `boolean`

  `test(T t)`

  Evaluates this predicate on the given argument.

* ## Method Details

  + ### test

    boolean test([T](Predicate.md "type parameter in Predicate") t)

    Evaluates this predicate on the given argument.

    Parameters:
    :   `t` - the input argument

    Returns:
    :   `true` if the input argument matches the predicate,
        otherwise `false`
  + ### and

    default [Predicate](Predicate.md "interface in java.util.function")<[T](Predicate.md "type parameter in Predicate")> and([Predicate](Predicate.md "interface in java.util.function")<? super [T](Predicate.md "type parameter in Predicate")> other)

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

    default [Predicate](Predicate.md "interface in java.util.function")<[T](Predicate.md "type parameter in Predicate")> negate()

    Returns a predicate that represents the logical negation of this
    predicate.

    Returns:
    :   a predicate that represents the logical negation of this
        predicate
  + ### or

    default [Predicate](Predicate.md "interface in java.util.function")<[T](Predicate.md "type parameter in Predicate")> or([Predicate](Predicate.md "interface in java.util.function")<? super [T](Predicate.md "type parameter in Predicate")> other)

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
  + ### isEqual

    static <T> [Predicate](Predicate.md "interface in java.util.function")<T> isEqual([Object](../../lang/Object.md "class in java.lang") targetRef)

    Returns a predicate that tests if two arguments are equal according
    to [`Objects.equals(Object, Object)`](../Objects.md#equals(java.lang.Object,java.lang.Object)).

    Type Parameters:
    :   `T` - the type of arguments to the predicate

    Parameters:
    :   `targetRef` - the object reference with which to compare for equality,
        which may be `null`

    Returns:
    :   a predicate that tests if two arguments are equal according
        to [`Objects.equals(Object, Object)`](../Objects.md#equals(java.lang.Object,java.lang.Object))
  + ### not

    static <T> [Predicate](Predicate.md "interface in java.util.function")<T> not([Predicate](Predicate.md "interface in java.util.function")<? super T> target)

    Returns a predicate that is the negation of the supplied predicate.
    This is accomplished by returning result of the calling
    `target.negate()`.

    Type Parameters:
    :   `T` - the type of arguments to the specified predicate

    Parameters:
    :   `target` - predicate to negate

    Returns:
    :   a predicate that negates the results of the supplied
        predicate

    Throws:
    :   `NullPointerException` - if target is null

    Since:
    :   11