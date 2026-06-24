Module [java.base](../../../module-summary.md)

Package [java.util.random](package-summary.md)

# Interface RandomGenerator.StreamableGenerator

All Superinterfaces:
:   `RandomGenerator`

All Known Subinterfaces:
:   `RandomGenerator.ArbitrarilyJumpableGenerator`, `RandomGenerator.JumpableGenerator`, `RandomGenerator.LeapableGenerator`, `RandomGenerator.SplittableGenerator`

All Known Implementing Classes:
:   `SplittableRandom`

Enclosing interface:
:   `RandomGenerator`

---

public static interface RandomGenerator.StreamableGenerator
extends [RandomGenerator](RandomGenerator.md "interface in java.util.random")

The [`RandomGenerator.StreamableGenerator`](RandomGenerator.StreamableGenerator.md "interface in java.util.random") interface augments the
[`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface to provide methods that return streams
of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") objects. Ideally, such a stream of objects
would have the property that the behavior of each object is statistically
independent of all the others. In practice, one may have to settle for
some approximation to this property.

A generator that implements interface [`RandomGenerator.SplittableGenerator`](RandomGenerator.SplittableGenerator.md "interface in java.util.random") may
choose to use its [`splits`](RandomGenerator.SplittableGenerator.md#splits())() method to
implement the [`rngs`](#rngs())() method required by this
interface.

A generator that implements interface [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") may
choose to use its [`jumps`](RandomGenerator.JumpableGenerator.md#jumps())() method to implement the
[`rngs`](#rngs())() method required by this interface.

A generator that implements interface [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") may
choose to use its [`leaps`](RandomGenerator.LeapableGenerator.md#leaps())() method to
implement the [`rngs`](#rngs())() method required by this
interface.

Objects that implement [`RandomGenerator.StreamableGenerator`](RandomGenerator.StreamableGenerator.md "interface in java.util.random") are typically not
cryptographically secure. Consider instead using [`SecureRandom`](../../security/SecureRandom.md "class in java.security") to
get a cryptographically secure pseudo-random number generator for use by
security-sensitive applications.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.random.[RandomGenerator](RandomGenerator.md "interface in java.util.random")

  `RandomGenerator.ArbitrarilyJumpableGenerator, RandomGenerator.JumpableGenerator, RandomGenerator.LeapableGenerator, RandomGenerator.SplittableGenerator, RandomGenerator.StreamableGenerator`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `static RandomGenerator.StreamableGenerator`

  `of(String name)`

  Returns an instance of [`RandomGenerator.StreamableGenerator`](RandomGenerator.StreamableGenerator.md "interface in java.util.random") that utilizes the
  `name` [algorithm](package-summary.md#algorithms).

  `Stream<RandomGenerator>`

  `rngs()`

  Returns an effectively unlimited stream of objects, each of which
  implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface.

  `default Stream<RandomGenerator>`

  `rngs(long streamSize)`

  Returns an effectively unlimited stream of objects, each of which
  implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface.

  ### Methods inherited from interface java.util.random.[RandomGenerator](RandomGenerator.md "interface in java.util.random")

  `doubles, doubles, doubles, doubles, ints, ints, ints, ints, isDeprecated, longs, longs, longs, longs, nextBoolean, nextBytes, nextDouble, nextDouble, nextDouble, nextExponential, nextFloat, nextFloat, nextFloat, nextGaussian, nextGaussian, nextInt, nextInt, nextInt, nextLong, nextLong, nextLong`

* ## Method Details

  + ### of

    static [RandomGenerator.StreamableGenerator](RandomGenerator.StreamableGenerator.md "interface in java.util.random") of([String](../../lang/String.md "class in java.lang") name)

    Returns an instance of [`RandomGenerator.StreamableGenerator`](RandomGenerator.StreamableGenerator.md "interface in java.util.random") that utilizes the
    `name` [algorithm](package-summary.md#algorithms).

    Parameters:
    :   `name` - Name of random number generator
        [algorithm](package-summary.md#algorithms)

    Returns:
    :   An instance of [`RandomGenerator.StreamableGenerator`](RandomGenerator.StreamableGenerator.md "interface in java.util.random")

    Throws:
    :   `NullPointerException` - if name is null
    :   `IllegalArgumentException` - if the named algorithm is not found
  + ### rngs

    [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")> rngs()

    Returns an effectively unlimited stream of objects, each of which
    implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface. Ideally the
    generators in the stream will appear to be statistically independent.
    The new generators are of the same
    [algorithm](package-summary.md#algorithms) as this generator.

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface
  + ### rngs

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")> rngs(long streamSize)

    Returns an effectively unlimited stream of objects, each of which
    implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface. Ideally the
    generators in the stream will appear to be statistically independent.
    The new generators are of the same
    [algorithm](package-summary.md#algorithms) as this generator.

    Parameters:
    :   `streamSize` - the number of generators to generate

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero