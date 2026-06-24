Module [java.base](../../../module-summary.md)

Package [java.util.function](package-summary.md)

# Interface LongPredicate

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface LongPredicate

Represents a predicate (boolean-valued function) of one `long`-valued
argument. This is the `long`-consuming primitive type specialization of
[`Predicate`](Predicate.md "interface in java.util.function").

This is a [functional interface](package-summary.md)
whose functional method is [`test(long)`](#test(long)).

Since:
:   1.8

See Also:
:   * [`Predicate`](Predicate.md "interface in java.util.function")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default LongPredicate`

  `and(LongPredicate other)`

  Returns a composed predicate that represents a short-circuiting logical
  AND of this predicate and another.

  `default LongPredicate`

  `negate()`

  Returns a predicate that represents the logical negation of this
  predicate.

  `default LongPredicate`

  `or(LongPredicate other)`

  Returns a composed predicate that represents a short-circuiting logical
  OR of this predicate and another.

  `boolean`

  `test(long value)`

  Evaluates this predicate on the given argument.

* ## Method Details

  + ### test

    boolean test(long value)

    Evaluates this predicate on the given argument.

    Parameters:
    :   `value` - the input argument

    Returns:
    :   `true` if the input argument matches the predicate,
        otherwise `false`
  + ### and

    default [LongPredicate](LongPredicate.md "interface in java.util.function") and([LongPredicate](LongPredicate.md "interface in java.util.function") other)

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

    default [LongPredicate](LongPredicate.md "interface in java.util.function") negate()

    Returns a predicate that represents the logical negation of this
    predicate.

    Returns:
    :   a predicate that represents the logical negation of this
        predicate
  + ### or

    default [LongPredicate](LongPredicate.md "interface in java.util.function") or([LongPredicate](LongPredicate.md "interface in java.util.function") other)

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