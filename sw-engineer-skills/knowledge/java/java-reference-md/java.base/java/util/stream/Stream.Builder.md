Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Interface Stream.Builder<T>

Type Parameters:
:   `T` - the type of stream elements

All Superinterfaces:
:   `Consumer<T>`

Enclosing interface:
:   `Stream<T>`

---

public static interface Stream.Builder<T>
extends [Consumer](../function/Consumer.md "interface in java.util.function")<T>

A mutable builder for a `Stream`. This allows the creation of a
`Stream` by generating elements individually and adding them to the
`Builder` (without the copying overhead that comes from using
an `ArrayList` as a temporary buffer.)

A stream builder has a lifecycle, which starts in a building
phase, during which elements can be added, and then transitions to a built
phase, after which elements may not be added. The built phase begins
when the [`build()`](#build()) method is called, which creates an ordered
`Stream` whose elements are the elements that were added to the stream
builder, in the order they were added.

Since:
:   1.8

See Also:
:   * [`Stream.builder()`](Stream.md#builder())

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(T t)`

  Adds an element to the stream being built.

  `default Stream.Builder<T>`

  `add(T t)`

  Adds an element to the stream being built.

  `Stream<T>`

  `build()`

  Builds the stream, transitioning this builder to the built state.

  ### Methods inherited from interface java.util.function.[Consumer](../function/Consumer.md "interface in java.util.function")

  `andThen`

* ## Method Details

  + ### accept

    void accept([T](Stream.Builder.md "type parameter in Stream.Builder") t)

    Adds an element to the stream being built.

    Specified by:
    :   `accept` in interface `Consumer<T>`

    Parameters:
    :   `t` - the input argument

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned to
        the built state
  + ### add

    default [Stream.Builder](Stream.Builder.md "interface in java.util.stream")<[T](Stream.Builder.md "type parameter in Stream.Builder")> add([T](Stream.Builder.md "type parameter in Stream.Builder") t)

    Adds an element to the stream being built.

    Parameters:
    :   `t` - the element to add

    Returns:
    :   `this` builder

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned to
        the built state
  + ### build

    [Stream](Stream.md "interface in java.util.stream")<[T](Stream.Builder.md "type parameter in Stream.Builder")> build()

    Builds the stream, transitioning this builder to the built state.
    An `IllegalStateException` is thrown if there are further attempts
    to operate on the builder after it has entered the built state.

    Returns:
    :   the built stream

    Throws:
    :   `IllegalStateException` - if the builder has already transitioned to
        the built state