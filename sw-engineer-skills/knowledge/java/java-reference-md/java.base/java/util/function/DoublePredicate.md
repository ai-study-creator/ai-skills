Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface DoublePredicate

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface DoublePredicate

Represents a predicate (boolean-valued function) of one `double`-valued
argument. This is the `double`-consuming primitive type specialization
of [`Predicate`](Predicate.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`test(double)`](#test(double)).

Since:
:   1.8

See Also:
:   * [`Predicate`](Predicate.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default DoublePredicate`

  `and(DoublePredicate other)`

  Returns a composed predicate that represents a short-circuiting logical
  AND of this predicate and another.

  `default DoublePredicate`

  `negate()`

  Returns a predicate that represents the logical negation of this
  predicate.

  `default DoublePredicate`

  `or(DoublePredicate other)`

  Returns a composed predicate that represents a short-circuiting logical
  OR of this predicate and another.

  `boolean`

  `test(double value)`

  Evaluates this predicate on the given argument.

* ## Method Details

  + ### test

    boolean test(double value)

    Evaluates this predicate on the given argument.

    Parameters:
    :   `value` - the input argument

    Returns:
    :   `true` if the input argument matches the predicate,
        otherwise `false`
  + ### and

    default [DoublePredicate](DoublePredicate.md "interface in java.util.function") and([DoublePredicate](DoublePredicate.md "interface in java.util.function") other)

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

    default [DoublePredicate](DoublePredicate.md "interface in java.util.function") negate()

    Returns a predicate that represents the logical negation of this
    predicate.

    Returns:
    :   a predicate that represents the logical negation of this
        predicate
  + ### or

    default [DoublePredicate](DoublePredicate.md "interface in java.util.function") or([DoublePredicate](DoublePredicate.md "interface in java.util.function") other)

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