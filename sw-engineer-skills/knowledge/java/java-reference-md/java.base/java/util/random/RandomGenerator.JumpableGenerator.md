Module [java.base](../../../module-summary.md)

Package [java.util.random](package-summary.md)

# Interface RandomGenerator.JumpableGenerator

All Superinterfaces:
:   `RandomGenerator`, `RandomGenerator.StreamableGenerator`

All Known Subinterfaces:
:   `RandomGenerator.ArbitrarilyJumpableGenerator`, `RandomGenerator.LeapableGenerator`

Enclosing interface:
:   `RandomGenerator`

---

public static interface RandomGenerator.JumpableGenerator
extends [RandomGenerator.StreamableGenerator](RandomGenerator.StreamableGenerator.md "interface in java.util.random")

This interface is designed to provide a common protocol for objects that
generate pseudorandom values and can easily *jump* forward, by a
moderate amount (ex. 264) to a distant point in the state cycle.

Ideally, all [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") objects produced by iterative
jumping from a single original [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") object are
statistically independent of one another and individually uniform. In
practice, one must settle for some approximation to independence and
uniformity. In particular, a specific implementation may assume that each
generator in a stream produced by the
[`jump()`](#jump()) method is used to produce a number
of values no larger than either 264 or the square root of its
period. Implementors are advised to use algorithms whose period is at
least 2127.

Methods are provided to perform a single jump operation and also to
produce a stream of generators produced from the original by iterative
copying and jumping of internal state. A typical strategy for a
multithreaded application is to create a single [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random")
object, calls its [`jump`](#jump())() method exactly
once, and then parcel out generators from the resulting stream, one to
each thread. It is generally not a good idea to call
[`jump`](#jump())() on a generator that was itself
produced by the [`jump`](#jump())() method, because the
result may be a generator identical to another generator already produce
by that call to the [`jump`](#jump())() method. For
this reason, the return type of the [`jumps`](#jumps())()
method is `Stream<RandomGenerator>` rather than
`Stream<RandomGenerator.JumpableGenerator>`, even though the actual generator
objects in that stream likely do also implement the
[`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") interface.

Objects that implement [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") are typically not
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

  `RandomGenerator.JumpableGenerator`

  `copy()`

  Returns a new generator whose internal state is an exact copy of this
  generator (therefore their future behavior should be identical if
  subjected to the same series of operations).

  `default RandomGenerator`

  `copyAndJump()`

  Copy this generator, jump this generator forward, then return the
  copy.

  `void`

  `jump()`

  Alter the state of this pseudorandom number generator so as to jump
  forward a large, fixed distance (typically 264 or more)
  within its state cycle.

  `double`

  `jumpDistance()`

  Returns the distance by which the
  [`jump`](#jump())() method will jump forward within
  the state cycle of this generator object.

  `default Stream<RandomGenerator>`

  `jumps()`

  Returns an effectively unlimited stream of new pseudorandom number
  generators, each of which implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random")
  interface.

  `default Stream<RandomGenerator>`

  `jumps(long streamSize)`

  Returns a stream producing the given `streamSize` number of new
  pseudorandom number generators, each of which implements the
  [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface.

  `static RandomGenerator.JumpableGenerator`

  `of(String name)`

  Returns an instance of [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") that utilizes the
  `name` [algorithm](package-summary.md#algorithms).

  `default Stream<RandomGenerator>`

  `rngs()`

  Returns an effectively unlimited stream of new pseudorandom number
  generators, each of which implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random")
  interface.

  `default Stream<RandomGenerator>`

  `rngs(long streamSize)`

  Returns a stream producing the given `streamSize` number of new
  pseudorandom number generators, each of which implements the
  [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface.

  ### Methods inherited from interface java.util.random.[RandomGenerator](RandomGenerator.md "interface in java.util.random")

  `doubles, doubles, doubles, doubles, ints, ints, ints, ints, isDeprecated, longs, longs, longs, longs, nextBoolean, nextBytes, nextDouble, nextDouble, nextDouble, nextExponential, nextFloat, nextFloat, nextFloat, nextGaussian, nextGaussian, nextInt, nextInt, nextInt, nextLong, nextLong, nextLong`

* ## Method Details

  + ### of

    static [RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random") of([String](../../lang/String.md "class in java.lang") name)

    Returns an instance of [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") that utilizes the
    `name` [algorithm](package-summary.md#algorithms).

    Parameters:
    :   `name` - Name of random number generator
        [algorithm](package-summary.md#algorithms)

    Returns:
    :   An instance of [`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random")

    Throws:
    :   `NullPointerException` - if name is null
    :   `IllegalArgumentException` - if the named algorithm is not found
  + ### copy

    [RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random") copy()

    Returns a new generator whose internal state is an exact copy of this
    generator (therefore their future behavior should be identical if
    subjected to the same series of operations).

    Returns:
    :   a new object that is a copy of this generator
  + ### jump

    void jump()

    Alter the state of this pseudorandom number generator so as to jump
    forward a large, fixed distance (typically 264 or more)
    within its state cycle.
  + ### jumpDistance

    double jumpDistance()

    Returns the distance by which the
    [`jump`](#jump())() method will jump forward within
    the state cycle of this generator object.

    Returns:
    :   the default jump distance (as a `double` value)
  + ### jumps

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")> jumps()

    Returns an effectively unlimited stream of new pseudorandom number
    generators, each of which implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random")
    interface.

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface
  + ### jumps

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")> jumps(long streamSize)

    Returns a stream producing the given `streamSize` number of new
    pseudorandom number generators, each of which implements the
    [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface.

    Parameters:
    :   `streamSize` - the number of generators to generate

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is less than zero
  + ### rngs

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")> rngs()

    Returns an effectively unlimited stream of new pseudorandom number
    generators, each of which implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random")
    interface. Ideally the generators in the stream will appear to be
    statistically independent.

    Specified by:
    :   `rngs` in interface `RandomGenerator.StreamableGenerator`

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface
  + ### rngs

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")> rngs(long streamSize)

    Returns a stream producing the given `streamSize` number of new
    pseudorandom number generators, each of which implements the
    [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface. Ideally the generators in the
    stream will appear to be statistically independent.

    Specified by:
    :   `rngs` in interface `RandomGenerator.StreamableGenerator`

    Parameters:
    :   `streamSize` - the number of generators to generate

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is less than zero
  + ### copyAndJump

    default [RandomGenerator](RandomGenerator.md "interface in java.util.random") copyAndJump()

    Copy this generator, jump this generator forward, then return the
    copy.

    Returns:
    :   a copy of this generator object before the jump occurred