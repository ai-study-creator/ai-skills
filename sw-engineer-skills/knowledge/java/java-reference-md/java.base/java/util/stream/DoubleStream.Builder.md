Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface DoubleStream.Builder

All Superinterfaces:
:   `DoubleConsumer`

Enclosing interface:
:   `DoubleStream`

---

public static interface DoubleStream.Builder
extends [DoubleConsumer](../function/DoubleConsumer.md "interface in java.util.function")

A mutable builder for a `DoubleStream`.

A stream builder has a lifecycle, which starts in a building
phase, during which elements can be added, and then transitions to a built
phase, after which elements may not be added. The built phase
begins when the [`build()`](#build()) method is called, which creates an
ordered stream whose elements are the elements that were added to the
stream builder, in the order they were added.

Since:
:   1.8

See Also:
:   * [`DoubleStream.builder()`](DoubleStream.md#builder())

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(double t)`

  Adds an element to the stream being built.

  `default DoubleStream.Builder`

  `add(double t)`

  Adds an element to the stream being built.

  `DoubleStream`

  `build()`

  Builds the stream, transitioning this builder to the built state.

  ### Methods inherited from interface java.util.function.[DoubleConsumer](../function/DoubleConsumer.md "interface in java.util.function")

  `andThen`

* ## Method Details

  + ### accept

    void accept(double t)

    Adds an element to the stream being built.

    Specified by:
    :   `accept` in interface `DoubleConsumer`

    Parameters:
    :   `t` - the input argument

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned
        to the built state
  + ### add

    default [DoubleStream.Builder](DoubleStream.Builder.md "interface in java.util.stream") add(double t)

    Adds an element to the stream being built.

    Parameters:
    :   `t` - the element to add

    Returns:
    :   `this` builder

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned
        to the built state
  + ### build

    [DoubleStream](DoubleStream.md "interface in java.util.stream") build()

    Builds the stream, transitioning this builder to the built state.
    An `IllegalStateException` is thrown if there are further
    attempts to operate on the builder after it has entered the built
    state.

    Returns:
    :   the built stream

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned
        to the built state