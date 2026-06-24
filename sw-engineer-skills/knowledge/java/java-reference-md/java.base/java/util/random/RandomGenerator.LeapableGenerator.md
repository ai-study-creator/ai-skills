Module [java.base](../../../module-summary.md)

Package [java.util.random](package-summary.md)

# Interface RandomGenerator.LeapableGenerator

All Superinterfaces:
:   `RandomGenerator`, `RandomGenerator.JumpableGenerator`, `RandomGenerator.StreamableGenerator`

All Known Subinterfaces:
:   `RandomGenerator.ArbitrarilyJumpableGenerator`

Enclosing interface:
:   `RandomGenerator`

---

public static interface RandomGenerator.LeapableGenerator
extends [RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random")

This interface is designed to provide a common protocol for objects that
generate sequences of pseudorandom values and can easily not only jump
but also *leap* forward, by a large amount (ex. 2128), to
a very distant point in the state cycle.
Typically one will construct a series of [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random")
objects by iterative leaping from a single original
[`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") object, and then for each such object produce a
subseries of objects by iterative jumping. There is little conceptual
difference between leaping and jumping, but typically a leap will be a
very long jump in the state cycle (perhaps distance 2128 or
so).

Ideally, all [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") objects produced by iterative
leaping and jumping from a single original [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random")
object are statistically independent of one another and individually
uniform. In practice, one must settle for some approximation to
independence and uniformity. In particular, a specific implementation may
assume that each generator in a stream produced by the `leaps`
method is used to produce (by jumping) a number of objects no larger than
264. Implementors are advised to use algorithms whose period
is at least 2191.

Methods are provided to perform a single leap operation and also to
produce a stream of generators produced from the original by iterative
copying and leaping of internal state. The generators produced must
implement the [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") interface but need not also
implement the [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") interface. A typical strategy for
a multithreaded application is to create a single
[`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") object, calls its `leaps` method exactly
once, and then parcel out generators from the resulting stream, one to
each thread. Then the [`jump`](RandomGenerator.JumpableGenerator.md#jump())() method of
each such generator be called to produce a substream of generator
objects.

Objects that implement [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") are typically not
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

  `RandomGenerator.LeapableGenerator`

  `copy()`

  Returns a new generator whose internal state is an exact copy of this
  generator (therefore their future behavior should be identical if
  subjected to the same series of operations).

  `default RandomGenerator.JumpableGenerator`

  `copyAndLeap()`

  Copy this generator, leap this generator forward, then return the
  copy.

  `void`

  `leap()`

  Alter the state of this pseudorandom number generator so as to leap
  forward a large, fixed distance (typically 296 or more)
  within its state cycle.

  `double`

  `leapDistance()`

  Returns the distance by which the
  [`leap`](#leap())() method will leap forward within
  the state cycle of this generator object.

  `default Stream<RandomGenerator.JumpableGenerator>`

  `leaps()`

  Returns an effectively unlimited stream of new pseudorandom number
  generators, each of which implements the [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random")
  interface.

  `default Stream<RandomGenerator.JumpableGenerator>`

  `leaps(long streamSize)`

  Returns a stream producing the given `streamSize` number of new
  pseudorandom number generators, each of which implements the
  [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") interface.

  `static RandomGenerator.LeapableGenerator`

  `of(String name)`

  Returns an instance of [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") that utilizes the
  `name` [algorithm](package-summary.md#algorithms).

  ### Methods inherited from interface java.util.random.[RandomGenerator](RandomGenerator.md "interface in java.util.random")

  `doubles, doubles, doubles, doubles, ints, ints, ints, ints, isDeprecated, longs, longs, longs, longs, nextBoolean, nextBytes, nextDouble, nextDouble, nextDouble, nextExponential, nextFloat, nextFloat, nextFloat, nextGaussian, nextGaussian, nextInt, nextInt, nextInt, nextLong, nextLong, nextLong`

  ### Methods inherited from interface java.util.random.[RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random")

  `copyAndJump, jump, jumpDistance, jumps, jumps, rngs, rngs`

* ## Method Details

  + ### of

    static [RandomGenerator.LeapableGenerator](RandomGenerator.LeapableGenerator.md "interface in java.util.random") of([String](../../lang/String.md "class in java.lang") name)

    Returns an instance of [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random") that utilizes the
    `name` [algorithm](package-summary.md#algorithms).

    Parameters:
    :   `name` - Name of random number generator
        [algorithm](package-summary.md#algorithms)

    Returns:
    :   An instance of [`RandomGenerator.LeapableGenerator`](RandomGenerator.LeapableGenerator.md "interface in java.util.random")

    Throws:
    :   `NullPointerException` - if name is null
    :   `IllegalArgumentException` - if the named algorithm is not found
  + ### copy

    [RandomGenerator.LeapableGenerator](RandomGenerator.LeapableGenerator.md "interface in java.util.random") copy()

    Returns a new generator whose internal state is an exact copy of this
    generator (therefore their future behavior should be identical if
    subjected to the same series of operations).

    Specified by:
    :   `copy` in interface `RandomGenerator.JumpableGenerator`

    Returns:
    :   a new object that is a copy of this generator
  + ### leap

    void leap()

    Alter the state of this pseudorandom number generator so as to leap
    forward a large, fixed distance (typically 296 or more)
    within its state cycle.
  + ### leapDistance

    double leapDistance()

    Returns the distance by which the
    [`leap`](#leap())() method will leap forward within
    the state cycle of this generator object.

    Returns:
    :   the default leap distance (as a `double` value)
  + ### leaps

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random")> leaps()

    Returns an effectively unlimited stream of new pseudorandom number
    generators, each of which implements the [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random")
    interface.

    Returns:
    :   a stream of objects that implement the [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") interface
  + ### leaps

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random")> leaps(long streamSize)

    Returns a stream producing the given `streamSize` number of new
    pseudorandom number generators, each of which implements the
    [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") interface.

    Parameters:
    :   `streamSize` - the number of generators to generate

    Returns:
    :   a stream of objects that implement the [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") interface

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is less than zero
  + ### copyAndLeap

    default [RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random") copyAndLeap()

    Copy this generator, leap this generator forward, then return the
    copy.

    Returns:
    :   a copy of this generator object before the leap occurred