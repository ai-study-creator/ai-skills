Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface IntStream.Builder

All Superinterfaces:
:   `IntConsumer`

Enclosing interface:
:   `IntStream`

---

public static interface IntStream.Builder
extends [IntConsumer](../function/IntConsumer.md "interface in java.util.function")

A mutable builder for an `IntStream`.

A stream builder has a lifecycle, which starts in a building
phase, during which elements can be added, and then transitions to a built
phase, after which elements may not be added. The built phase
begins when the [`build()`](#build()) method is called, which creates an
ordered stream whose elements are the elements that were added to the
stream builder, in the order they were added.

Since:
:   1.8

See Also:
:   * [`IntStream.builder()`](IntStream.md#builder())

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(int t)`

  Adds an element to the stream being built.

  `default IntStream.Builder`

  `add(int t)`

  Adds an element to the stream being built.

  `IntStream`

  `build()`

  Builds the stream, transitioning this builder to the built state.

  ### Methods inherited from interface java.util.function.[IntConsumer](../function/IntConsumer.md "interface in java.util.function")

  `andThen`

* ## Method Details

  + ### accept

    void accept(int t)

    Adds an element to the stream being built.

    Specified by:
    :   `accept` in interface `IntConsumer`

    Parameters:
    :   `t` - the input argument

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned
        to the built state
  + ### add

    default [IntStream.Builder](IntStream.Builder.md "interface in java.util.stream") add(int t)

    Adds an element to the stream being built.

    Parameters:
    :   `t` - the element to add

    Returns:
    :   `this` builder

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned
        to the built state
  + ### build

    [IntStream](IntStream.md "interface in java.util.stream") build()

    Builds the stream, transitioning this builder to the built state.
    An `IllegalStateException` is thrown if there are further
    attempts to operate on the builder after it has entered the built
    state.

    Returns:
    :   the built stream

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned to
        the built state