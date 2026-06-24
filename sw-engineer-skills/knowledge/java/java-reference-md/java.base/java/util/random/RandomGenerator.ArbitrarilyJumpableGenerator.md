Module [java.base](../../../module-summary.md)

Package [java.util.random](package-summary.md)

# Interface RandomGenerator.ArbitrarilyJumpableGenerator

All Superinterfaces:
:   `RandomGenerator`, `RandomGenerator.JumpableGenerator`, `RandomGenerator.LeapableGenerator`, `RandomGenerator.StreamableGenerator`

Enclosing interface:
:   `RandomGenerator`

---

public static interface RandomGenerator.ArbitrarilyJumpableGenerator
extends [RandomGenerator.LeapableGenerator](RandomGenerator.LeapableGenerator.md "interface in java.util.random")

This interface is designed to provide a common protocol for objects that
generate sequences of pseudorandom values and can easily *jump*
forward, by an arbitrary amount, to a distant point in the state cycle.

Ideally, all [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") objects produced by
iterative jumping from a single original
[`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") object are statistically independent
of one another and individually uniform, provided that they do not
traverse overlapping portions of the state cycle. In practice, one must
settle for some approximation to independence and uniformity. In
particular, a specific implementation may assume that each generator in a
stream produced by the [`jump`](RandomGenerator.JumpableGenerator.md#jump())() method is
used to produce a number of values no larger than the jump distance
specified. Implementors are advised to use algorithms whose period is at
least 2127.

For many applications, it suffices to jump forward by a power of two
or some small multiple of a power of two, but this power of two may not
be representable as a `long` value. To avoid the use of
[`BigInteger`](../../math/BigInteger.md "class in java.math") values as jump distances, `double` values are
used instead.

Methods are provided to perform a single jump operation and also to
produce a stream of generators produced from the original by iterative
copying and jumping of internal state. A typical strategy for a
multithreaded application is to create a single
[`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") object, call its
[`jump`](RandomGenerator.JumpableGenerator.md#jump())() method exactly once, and then
parcel out generators from the resulting stream, one to each thread.
However, each generator produced also has type
[`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random"); with care, different jump distances
can be used to traverse the entire state cycle in various ways.

Objects that implement [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") are
typically not cryptographically secure. Consider instead using
[`SecureRandom`](../../security/SecureRandom.md "class in java.security") to get a cryptographically secure pseudo-random
number generator for use by security-sensitive applications.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.random.[RandomGenerator](RandomGenerator.md "interface in java.util.random")

  `RandomGenerator.ArbitrarilyJumpableGenerator, RandomGenerator.JumpableGenerator, RandomGenerator.LeapableGenerator, RandomGenerator.SplittableGenerator, RandomGenerator.StreamableGenerator`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `RandomGenerator.ArbitrarilyJumpableGenerator`

  `copy()`

  Returns a new generator whose internal state is an exact copy of this
  generator (therefore their future behavior should be identical if
  subjected to the same series of operations).

  `default RandomGenerator.ArbitrarilyJumpableGenerator`

  `copyAndJump(double distance)`

  Copy this generator, jump this generator forward, then return the
  copy.

  `default void`

  `jump()`

  Alter the state of this pseudorandom number generator so as to jump
  forward a large, fixed distance (typically 264 or more)
  within its state cycle.

  `void`

  `jump(double distance)`

  Alter the state of this pseudorandom number generator so as to jump
  forward a specified distance within its state cycle.

  `void`

  `jumpPowerOfTwo(int logDistance)`

  Alter the state of this pseudorandom number generator so as to jump
  forward a distance equal to 2`logDistance` within
  its state cycle.

  `default Stream<RandomGenerator.ArbitrarilyJumpableGenerator>`

  `jumps(double distance)`

  Returns an effectively unlimited stream of new pseudorandom number
  generators, each of which implements the
  [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") interface, produced by jumping
  copies of this generator by different integer multiples of the
  specified jump distance.

  `default Stream<RandomGenerator.ArbitrarilyJumpableGenerator>`

  `jumps(long streamSize,
  double distance)`

  Returns a stream producing the given `streamSize` number of new
  pseudorandom number generators, each of which implements the
  [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") interface, produced by jumping
  copies of this generator by different integer multiples of the
  specified jump distance.

  `default void`

  `leap()`

  Alter the state of this pseudorandom number generator so as to jump
  forward a very large, fixed distance (typically 2128 or
  more) within its state cycle.

  `static RandomGenerator.ArbitrarilyJumpableGenerator`

  `of(String name)`

  Returns an instance of [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") that
  utilizes the `name` [algorithm](package-summary.md#algorithms).

  ### Methods inherited from interface java.util.random.[RandomGenerator](RandomGenerator.md "interface in java.util.random")

  `doubles, doubles, doubles, doubles, ints, ints, ints, ints, isDeprecated, longs, longs, longs, longs, nextBoolean, nextBytes, nextDouble, nextDouble, nextDouble, nextExponential, nextFloat, nextFloat, nextFloat, nextGaussian, nextGaussian, nextInt, nextInt, nextInt, nextLong, nextLong, nextLong`

  ### Methods inherited from interface java.util.random.[RandomGenerator.JumpableGenerator](RandomGenerator.JumpableGenerator.md "interface in java.util.random")

  `copyAndJump, jumpDistance, jumps, jumps, rngs, rngs`

  ### Methods inherited from interface java.util.random.[RandomGenerator.LeapableGenerator](RandomGenerator.LeapableGenerator.md "interface in java.util.random")

  `copyAndLeap, leapDistance, leaps, leaps`

* ## Method Details

  + ### of

    static [RandomGenerator.ArbitrarilyJumpableGenerator](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") of([String](../../lang/String.md "class in java.lang") name)

    Returns an instance of [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") that
    utilizes the `name` [algorithm](package-summary.md#algorithms).

    Parameters:
    :   `name` - Name of random number generator
        [algorithm](package-summary.md#algorithms)

    Returns:
    :   An instance of [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random")

    Throws:
    :   `NullPointerException` - if name is null
    :   `IllegalArgumentException` - if the named algorithm is not found
  + ### copy

    [RandomGenerator.ArbitrarilyJumpableGenerator](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") copy()

    Returns a new generator whose internal state is an exact copy of this
    generator (therefore their future behavior should be identical if
    subjected to the same series of operations).

    Specified by:
    :   `copy` in interface `RandomGenerator.JumpableGenerator`

    Specified by:
    :   `copy` in interface `RandomGenerator.LeapableGenerator`

    Returns:
    :   a new object that is a copy of this generator
  + ### jumpPowerOfTwo

    void jumpPowerOfTwo(int logDistance)

    Alter the state of this pseudorandom number generator so as to jump
    forward a distance equal to 2`logDistance` within
    its state cycle.

    Parameters:
    :   `logDistance` - the base-2 logarithm of the distance to jump forward within the state
        cycle

    Throws:
    :   `IllegalArgumentException` - if `logDistance` is
        2`logDistance` is
        greater than the period of this generator
  + ### jump

    void jump(double distance)

    Alter the state of this pseudorandom number generator so as to jump
    forward a specified distance within its state cycle.

    Parameters:
    :   `distance` - the distance to jump forward within the state cycle

    Throws:
    :   `IllegalArgumentException` - if `distance` is not greater than
        or equal to 0.0, or is greater than the
        period of this generator
  + ### jump

    default void jump()

    Alter the state of this pseudorandom number generator so as to jump
    forward a large, fixed distance (typically 264 or more)
    within its state cycle. The distance used is that returned by method
    [`jumpDistance`](RandomGenerator.JumpableGenerator.md#jumpDistance())().

    Specified by:
    :   `jump` in interface `RandomGenerator.JumpableGenerator`
  + ### jumps

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator.ArbitrarilyJumpableGenerator](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random")> jumps(double distance)

    Returns an effectively unlimited stream of new pseudorandom number
    generators, each of which implements the
    [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") interface, produced by jumping
    copies of this generator by different integer multiples of the
    specified jump distance.

    Parameters:
    :   `distance` - a distance to jump forward within the state cycle

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface

    Throws:
    :   `IllegalArgumentException` - if `distance` is not greater than
        or equal to 0.0, or is greater than the
        period of this generator
  + ### jumps

    default [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGenerator.ArbitrarilyJumpableGenerator](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random")> jumps(long streamSize,
    double distance)

    Returns a stream producing the given `streamSize` number of new
    pseudorandom number generators, each of which implements the
    [`RandomGenerator.ArbitrarilyJumpableGenerator`](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") interface, produced by jumping
    copies of this generator by different integer multiples of the
    specified jump distance.

    Parameters:
    :   `streamSize` - the number of generators to generate
    :   `distance` - a distance to jump forward within the state cycle

    Returns:
    :   a stream of objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is less than zero or if
        `distance` is not greater than
        or equal to 0.0, or is greater than the
        period of this generator
  + ### leap

    default void leap()

    Alter the state of this pseudorandom number generator so as to jump
    forward a very large, fixed distance (typically 2128 or
    more) within its state cycle. The distance used is that returned by
    method
    [`leapDistance`](RandomGenerator.LeapableGenerator.md#leapDistance())().

    Specified by:
    :   `leap` in interface `RandomGenerator.LeapableGenerator`
  + ### copyAndJump

    default [RandomGenerator.ArbitrarilyJumpableGenerator](RandomGenerator.ArbitrarilyJumpableGenerator.md "interface in java.util.random") copyAndJump(double distance)

    Copy this generator, jump this generator forward, then return the
    copy.

    Parameters:
    :   `distance` - a distance to jump forward within the state cycle

    Returns:
    :   a copy of this generator object before the jump occurred

    Throws:
    :   `IllegalArgumentException` - if `distance` is not greater than
        or equal to 0.0, or is greater than the
        period of this generator