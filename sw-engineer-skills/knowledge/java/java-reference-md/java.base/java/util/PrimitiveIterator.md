Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface PrimitiveIterator<T,T\_CONS>

Type Parameters:
:   `T` - the type of elements returned by this PrimitiveIterator. The
    type must be a wrapper type for a primitive type, such as
    `Integer` for the primitive `int` type.
:   `T_CONS` - the type of primitive consumer. The type must be a
    primitive specialization of [`Consumer`](function/Consumer.md "interface in java.util.function") for
    `T`, such as [`IntConsumer`](function/IntConsumer.md "interface in java.util.function") for
    `Integer`.

All Superinterfaces:
:   `Iterator<T>`

All Known Subinterfaces:
:   `PrimitiveIterator.OfDouble`, `PrimitiveIterator.OfInt`, `PrimitiveIterator.OfLong`

---

public interface PrimitiveIterator<T,T\_CONS>
extends [Iterator](Iterator.md "interface in java.util")<T>

A base type for primitive specializations of `Iterator`. Specialized
subtypes are provided for [`int`](PrimitiveIterator.OfInt.md "interface in java.util"), [`long`](PrimitiveIterator.OfLong.md "interface in java.util"), and
[`double`](PrimitiveIterator.OfDouble.md "interface in java.util") values.

The specialized subtype default implementations of [`Iterator.next()`](Iterator.md#next())
and [`Iterator.forEachRemaining(java.util.function.Consumer)`](Iterator.md#forEachRemaining(java.util.function.Consumer)) box
primitive values to instances of their corresponding wrapper class. Such
boxing may offset any advantages gained when using the primitive
specializations. To avoid boxing, the corresponding primitive-based methods
should be used. For example, [`PrimitiveIterator.OfInt.nextInt()`](PrimitiveIterator.OfInt.md#nextInt()) and
[`PrimitiveIterator.OfInt.forEachRemaining(java.util.function.IntConsumer)`](PrimitiveIterator.OfInt.md#forEachRemaining(java.util.function.IntConsumer))
should be used in preference to [`PrimitiveIterator.OfInt.next()`](PrimitiveIterator.OfInt.md#next()) and
[`PrimitiveIterator.OfInt.forEachRemaining(java.util.function.Consumer)`](PrimitiveIterator.OfInt.md#forEachRemaining(java.util.function.Consumer)).

Iteration of primitive values using boxing-based methods
[`next()`](Iterator.md#next()) and
[`forEachRemaining()`](Iterator.md#forEachRemaining(java.util.function.Consumer)),
does not affect the order in which the values, transformed to boxed values,
are encountered.

Since:
:   1.8

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `PrimitiveIterator.OfDouble`

  An Iterator specialized for `double` values.

  `static interface`

  `PrimitiveIterator.OfInt`

  An Iterator specialized for `int` values.

  `static interface`

  `PrimitiveIterator.OfLong`

  An Iterator specialized for `long` values.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `forEachRemaining(T_CONS action)`

  Performs the given action for each remaining element until all elements
  have been processed or the action throws an exception.

  ### Methods inherited from interface java.util.[Iterator](Iterator.md "interface in java.util")

  `forEachRemaining, hasNext, next, remove`

* ## Method Details

  + ### forEachRemaining

    void forEachRemaining([T\_CONS](PrimitiveIterator.md "type parameter in PrimitiveIterator") action)

    Performs the given action for each remaining element until all elements
    have been processed or the action throws an exception. Actions are
    performed in the order of iteration, if that order is specified.
    Exceptions thrown by the action are relayed to the caller.

    The behavior of an iterator is unspecified if the action modifies the
    source of elements in any way (even by calling the [`remove`](Iterator.md#remove())
    method or other mutator methods of `Iterator` subtypes),
    unless an overriding class has specified a concurrent modification policy.

    Subsequent behavior of an iterator is unspecified if the action throws an
    exception.

    Parameters:
    :   `action` - The action to be performed for each element

    Throws:
    :   `NullPointerException` - if the specified action is null