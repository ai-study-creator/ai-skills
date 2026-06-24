Module [java.base](../../../module-summary.md)

Package [java.util.random](package-summary.md)

# Interface RandomGenerator

All Known Subinterfaces:
:   `RandomGenerator.ArbitrarilyJumpableGenerator`, `RandomGenerator.JumpableGenerator`, `RandomGenerator.LeapableGenerator`, `RandomGenerator.SplittableGenerator`, `RandomGenerator.StreamableGenerator`

All Known Implementing Classes:
:   `Random`, `SecureRandom`, `SplittableRandom`, `ThreadLocalRandom`

---

public interface RandomGenerator

The [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface is designed to provide a common
protocol for objects that generate random or (more typically) pseudorandom
sequences of numbers (or Boolean values). Such a sequence may be obtained by
either repeatedly invoking a method that returns a single pseudorandomly
chosen value, or by invoking a method that returns a stream of
pseudorandomly chosen values.

Ideally, given an implicitly or explicitly specified range of values,
each value would be chosen independently and uniformly from that range. In
practice, one may have to settle for some approximation to independence and
uniformity.

In the case of `int`, `long`, and `boolean` values, if
there is no explicit specification of range, then the range includes all
possible values of the type. In the case of `float` and `double`
values, first a value is always chosen uniformly from the set of
2*w* values between 0.0 (inclusive) and 1.0 (exclusive),
where *w* is [`Float.PRECISION`](../../lang/Float.md#PRECISION) for `float` values
and [`Double.PRECISION`](../../lang/Double.md#PRECISION) for `double`
values, such that adjacent values differ by 2−*w*
(notice that this set is a *subset* of the set of
*all representable floating-point values* between 0.0 (inclusive) and 1.0 (exclusive));
then if an explicit range was specified, then the chosen number is
computationally scaled and translated so as to appear to have been chosen
approximately uniformly from that explicit range.

Each method that returns a stream produces a stream of values each of
which is chosen in the same manner as for a method that returns a single
pseudorandomly chosen value. For example, if `r` implements
[`RandomGenerator`](RandomGenerator.md "interface in java.util.random"), then the method call `r.ints(100)` returns a
stream of 100 `int` values. These are not necessarily the exact same
values that would have been returned if instead `r.nextInt()` had been
called 100 times; all that is guaranteed is that each value in the stream is
chosen in a similar pseudorandom manner from the same range.

Every object that implements the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface by
using a pseudorandom algorithm is assumed to contain a finite amount of
state. Using such an object to generate a pseudorandomly chosen value alters
its state by computing a new state as a function of the current state,
without reference to any information other than the current state. The number
of distinct possible states of such an object is called its *period*.
(Some implementations of the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface may be truly
random rather than pseudorandom, for example relying on the statistical
behavior of a physical object to derive chosen values. Such implementations
do not have a fixed period.)

As a rule, objects that implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface
need not be thread-safe. It is recommended that multithreaded applications
use either [`ThreadLocalRandom`](../concurrent/ThreadLocalRandom.md "class in java.util.concurrent") or (preferably) pseudorandom number
generators that implement the [`RandomGenerator.SplittableGenerator`](RandomGenerator.SplittableGenerator.md "interface in java.util.random") or
[`RandomGenerator.JumpableGenerator`](RandomGenerator.JumpableGenerator.md "interface in java.util.random") interface.

Objects that implement [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") are typically not
cryptographically secure. Consider instead using [`SecureRandom`](../../security/SecureRandom.md "class in java.security") to get
a cryptographically secure pseudorandom number generator for use by
security-sensitive applications. Note, however, that [`SecureRandom`](../../security/SecureRandom.md "class in java.security")
does implement the [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface, so that instances of
[`SecureRandom`](../../security/SecureRandom.md "class in java.security") may be used interchangeably with other types of
pseudorandom generators in applications that do not require a secure
generator.

Unless explicit stated otherwise, the use of null for any method argument
will cause a NullPointerException.

Since:
:   17

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `RandomGenerator.ArbitrarilyJumpableGenerator`

  This interface is designed to provide a common protocol for objects that
  generate sequences of pseudorandom values and can easily *jump*
  forward, by an arbitrary amount, to a distant point in the state cycle.

  `static interface`

  `RandomGenerator.JumpableGenerator`

  This interface is designed to provide a common protocol for objects that
  generate pseudorandom values and can easily *jump* forward, by a
  moderate amount (ex.

  `static interface`

  `RandomGenerator.LeapableGenerator`

  This interface is designed to provide a common protocol for objects that
  generate sequences of pseudorandom values and can easily not only jump
  but also *leap* forward, by a large amount (ex.

  `static interface`

  `RandomGenerator.SplittableGenerator`

  This interface is designed to provide a common protocol for objects that
  generate sequences of pseudorandom values and can be *split* into
  two objects (the original one and a new one) each of which obey that same
  protocol (and therefore can be recursively split indefinitely).

  `static interface`

  `RandomGenerator.StreamableGenerator`

  The [`RandomGenerator.StreamableGenerator`](RandomGenerator.StreamableGenerator.md "interface in java.util.random") interface augments the
  [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") interface to provide methods that return streams
  of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") objects.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default DoubleStream`

  `doubles()`

  Returns an effectively unlimited stream of pseudorandomly chosen
  `double` values.

  `default DoubleStream`

  `doubles(double randomNumberOrigin,
  double randomNumberBound)`

  Returns an effectively unlimited stream of pseudorandomly chosen
  `double` values, where each value is between the specified origin
  (inclusive) and the specified bound (exclusive).

  `default DoubleStream`

  `doubles(long streamSize)`

  Returns a stream producing the given `streamSize` number of
  pseudorandomly chosen `double` values.

  `default DoubleStream`

  `doubles(long streamSize,
  double randomNumberOrigin,
  double randomNumberBound)`

  Returns a stream producing the given `streamSize` number of
  pseudorandomly chosen `double` values, where each value is
  between the specified origin (inclusive) and the specified bound
  (exclusive).

  `static RandomGenerator`

  `getDefault()`

  Returns a [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") meeting the minimal requirement
  of having an [algorithm](package-summary.md#algorithms)
  whose state bits are greater than or equal 64.

  `default IntStream`

  `ints()`

  Returns an effectively unlimited stream of pseudorandomly chosen
  `int` values.

  `default IntStream`

  `ints(int randomNumberOrigin,
  int randomNumberBound)`

  Returns an effectively unlimited stream of pseudorandomly chosen
  `int` values, where each value is between the specified origin
  (inclusive) and the specified bound (exclusive).

  `default IntStream`

  `ints(long streamSize)`

  Returns a stream producing the given `streamSize` number of
  pseudorandomly chosen `int` values.

  `default IntStream`

  `ints(long streamSize,
  int randomNumberOrigin,
  int randomNumberBound)`

  Returns a stream producing the given `streamSize` number of
  pseudorandomly chosen `int` values, where each value is between
  the specified origin (inclusive) and the specified bound (exclusive).

  `default boolean`

  `isDeprecated()`

  Return true if the implementation of RandomGenerator (algorithm) has been
  marked for deprecation.

  `default LongStream`

  `longs()`

  Returns an effectively unlimited stream of pseudorandomly chosen
  `long` values.

  `default LongStream`

  `longs(long streamSize)`

  Returns a stream producing the given `streamSize` number of
  pseudorandomly chosen `long` values.

  `default LongStream`

  `longs(long randomNumberOrigin,
  long randomNumberBound)`

  Returns an effectively unlimited stream of pseudorandomly chosen
  `long` values, where each value is between the specified origin
  (inclusive) and the specified bound (exclusive).

  `default LongStream`

  `longs(long streamSize,
  long randomNumberOrigin,
  long randomNumberBound)`

  Returns a stream producing the given `streamSize` number of
  pseudorandomly chosen `long` values, where each value is between
  the specified origin (inclusive) and the specified bound (exclusive).

  `default boolean`

  `nextBoolean()`

  Returns a pseudorandomly chosen `boolean` value.

  `default void`

  `nextBytes(byte[] bytes)`

  Fills a user-supplied byte array with generated byte values
  pseudorandomly chosen uniformly from the range of values between -128
  (inclusive) and 127 (inclusive).

  `default double`

  `nextDouble()`

  Returns a pseudorandom `double` value between zero (inclusive) and
  one (exclusive).

  `default double`

  `nextDouble(double bound)`

  Returns a pseudorandomly chosen `double` value between zero
  (inclusive) and the specified bound (exclusive).

  `default double`

  `nextDouble(double origin,
  double bound)`

  Returns a pseudorandomly chosen `double` value between the
  specified origin (inclusive) and the specified bound (exclusive).

  `default double`

  `nextExponential()`

  Returns a nonnegative `double` value pseudorandomly chosen from
  an exponential distribution whose mean is 1.

  `default float`

  `nextFloat()`

  Returns a pseudorandom `float` value between zero (inclusive) and
  one (exclusive).

  `default float`

  `nextFloat(float bound)`

  Returns a pseudorandomly chosen `float` value between zero
  (inclusive) and the specified bound (exclusive).

  `default float`

  `nextFloat(float origin,
  float bound)`

  Returns a pseudorandomly chosen `float` value between the
  specified origin (inclusive) and the specified bound (exclusive).

  `default double`

  `nextGaussian()`

  Returns a `double` value pseudorandomly chosen from a Gaussian
  (normal) distribution whose mean is 0 and whose standard deviation is 1.

  `default double`

  `nextGaussian(double mean,
  double stddev)`

  Returns a `double` value pseudorandomly chosen from a Gaussian
  (normal) distribution with a mean and standard deviation specified by the
  arguments.

  `default int`

  `nextInt()`

  Returns a pseudorandomly chosen `int` value.

  `default int`

  `nextInt(int bound)`

  Returns a pseudorandomly chosen `int` value between zero
  (inclusive) and the specified bound (exclusive).

  `default int`

  `nextInt(int origin,
  int bound)`

  Returns a pseudorandomly chosen `int` value between the specified
  origin (inclusive) and the specified bound (exclusive).

  `long`

  `nextLong()`

  Returns a pseudorandomly chosen `long` value.

  `default long`

  `nextLong(long bound)`

  Returns a pseudorandomly chosen `long` value between zero
  (inclusive) and the specified bound (exclusive).

  `default long`

  `nextLong(long origin,
  long bound)`

  Returns a pseudorandomly chosen `long` value between the
  specified origin (inclusive) and the specified bound (exclusive).

  `static RandomGenerator`

  `of(String name)`

  Returns an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") that utilizes the
  `name` [algorithm](package-summary.md#algorithms).

* ## Method Details

  + ### of

    static [RandomGenerator](RandomGenerator.md "interface in java.util.random") of([String](../../lang/String.md "class in java.lang") name)

    Returns an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") that utilizes the
    `name` [algorithm](package-summary.md#algorithms).

    Parameters:
    :   `name` - Name of random number generator
        [algorithm](package-summary.md#algorithms)

    Returns:
    :   An instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random")

    Throws:
    :   `NullPointerException` - if name is null
    :   `IllegalArgumentException` - if the named algorithm is not found
  + ### getDefault

    static [RandomGenerator](RandomGenerator.md "interface in java.util.random") getDefault()

    Returns a [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") meeting the minimal requirement
    of having an [algorithm](package-summary.md#algorithms)
    whose state bits are greater than or equal 64.

    Returns:
    :   a [`RandomGenerator`](RandomGenerator.md "interface in java.util.random")
  + ### isDeprecated

    default boolean isDeprecated()

    Return true if the implementation of RandomGenerator (algorithm) has been
    marked for deprecation.

    Returns:
    :   true if the implementation of RandomGenerator (algorithm) has been
        marked for deprecation
  + ### doubles

    default [DoubleStream](../stream/DoubleStream.md "interface in java.util.stream") doubles()

    Returns an effectively unlimited stream of pseudorandomly chosen
    `double` values.

    Returns:
    :   a stream of pseudorandomly chosen `double` values
  + ### doubles

    default [DoubleStream](../stream/DoubleStream.md "interface in java.util.stream") doubles(double randomNumberOrigin,
    double randomNumberBound)

    Returns an effectively unlimited stream of pseudorandomly chosen
    `double` values, where each value is between the specified origin
    (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `randomNumberOrigin` - the least value that can be produced
    :   `randomNumberBound` - the upper bound (exclusive) for each value produced

    Returns:
    :   a stream of pseudorandomly chosen `double` values, each between
        the specified origin (inclusive) and the specified bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `randomNumberOrigin` is not finite,
        or `randomNumberBound` is not finite, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`
  + ### doubles

    default [DoubleStream](../stream/DoubleStream.md "interface in java.util.stream") doubles(long streamSize)

    Returns a stream producing the given `streamSize` number of
    pseudorandomly chosen `double` values.

    Parameters:
    :   `streamSize` - the number of values to generate

    Returns:
    :   a stream of pseudorandomly chosen `double` values

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero
  + ### doubles

    default [DoubleStream](../stream/DoubleStream.md "interface in java.util.stream") doubles(long streamSize,
    double randomNumberOrigin,
    double randomNumberBound)

    Returns a stream producing the given `streamSize` number of
    pseudorandomly chosen `double` values, where each value is
    between the specified origin (inclusive) and the specified bound
    (exclusive).

    Parameters:
    :   `streamSize` - the number of values to generate
    :   `randomNumberOrigin` - the least value that can be produced
    :   `randomNumberBound` - the upper bound (exclusive) for each value produced

    Returns:
    :   a stream of pseudorandomly chosen `double` values, each between
        the specified origin (inclusive) and the specified bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is less than zero,
        or `randomNumberOrigin` is not finite,
        or `randomNumberBound` is not finite, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`
  + ### ints

    default [IntStream](../stream/IntStream.md "interface in java.util.stream") ints()

    Returns an effectively unlimited stream of pseudorandomly chosen
    `int` values.

    Returns:
    :   a stream of pseudorandomly chosen `int` values
  + ### ints

    default [IntStream](../stream/IntStream.md "interface in java.util.stream") ints(int randomNumberOrigin,
    int randomNumberBound)

    Returns an effectively unlimited stream of pseudorandomly chosen
    `int` values, where each value is between the specified origin
    (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `randomNumberOrigin` - the least value that can be produced
    :   `randomNumberBound` - the upper bound (exclusive) for each value produced

    Returns:
    :   a stream of pseudorandomly chosen `int` values, each between
        the specified origin (inclusive) and the specified bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`
  + ### ints

    default [IntStream](../stream/IntStream.md "interface in java.util.stream") ints(long streamSize)

    Returns a stream producing the given `streamSize` number of
    pseudorandomly chosen `int` values.

    Parameters:
    :   `streamSize` - the number of values to generate

    Returns:
    :   a stream of pseudorandomly chosen `int` values

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero
  + ### ints

    default [IntStream](../stream/IntStream.md "interface in java.util.stream") ints(long streamSize,
    int randomNumberOrigin,
    int randomNumberBound)

    Returns a stream producing the given `streamSize` number of
    pseudorandomly chosen `int` values, where each value is between
    the specified origin (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `streamSize` - the number of values to generate
    :   `randomNumberOrigin` - the least value that can be produced
    :   `randomNumberBound` - the upper bound (exclusive) for each value produced

    Returns:
    :   a stream of pseudorandomly chosen `int` values, each between
        the specified origin (inclusive) and the specified bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`
  + ### longs

    default [LongStream](../stream/LongStream.md "interface in java.util.stream") longs()

    Returns an effectively unlimited stream of pseudorandomly chosen
    `long` values.

    Returns:
    :   a stream of pseudorandomly chosen `long` values
  + ### longs

    default [LongStream](../stream/LongStream.md "interface in java.util.stream") longs(long randomNumberOrigin,
    long randomNumberBound)

    Returns an effectively unlimited stream of pseudorandomly chosen
    `long` values, where each value is between the specified origin
    (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `randomNumberOrigin` - the least value that can be produced
    :   `randomNumberBound` - the upper bound (exclusive) for each value produced

    Returns:
    :   a stream of pseudorandomly chosen `long` values, each between
        the specified origin (inclusive) and the specified bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`
  + ### longs

    default [LongStream](../stream/LongStream.md "interface in java.util.stream") longs(long streamSize)

    Returns a stream producing the given `streamSize` number of
    pseudorandomly chosen `long` values.

    Parameters:
    :   `streamSize` - the number of values to generate

    Returns:
    :   a stream of pseudorandomly chosen `long` values

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero
  + ### longs

    default [LongStream](../stream/LongStream.md "interface in java.util.stream") longs(long streamSize,
    long randomNumberOrigin,
    long randomNumberBound)

    Returns a stream producing the given `streamSize` number of
    pseudorandomly chosen `long` values, where each value is between
    the specified origin (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `streamSize` - the number of values to generate
    :   `randomNumberOrigin` - the least value that can be produced
    :   `randomNumberBound` - the upper bound (exclusive) for each value produced

    Returns:
    :   a stream of pseudorandomly chosen `long` values, each between
        the specified origin (inclusive) and the specified bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`
  + ### nextBoolean

    default boolean nextBoolean()

    Returns a pseudorandomly chosen `boolean` value.

    The default implementation tests the high-order bit (sign bit) of a
    value produced by [`nextInt`](#nextInt())(), on the
    grounds that some algorithms for pseudorandom number generation produce
    values whose high-order bits have better statistical quality than the
    low-order bits.

    Returns:
    :   a pseudorandomly chosen `boolean` value
  + ### nextBytes

    default void nextBytes(byte[] bytes)

    Fills a user-supplied byte array with generated byte values
    pseudorandomly chosen uniformly from the range of values between -128
    (inclusive) and 127 (inclusive).

    Parameters:
    :   `bytes` - the byte array to fill with pseudorandom bytes

    Throws:
    :   `NullPointerException` - if bytes is null
  + ### nextFloat

    default float nextFloat()

    Returns a pseudorandom `float` value between zero (inclusive) and
    one (exclusive).

    Returns:
    :   a pseudorandom `float` value between zero (inclusive) and one (exclusive)
  + ### nextFloat

    default float nextFloat(float bound)

    Returns a pseudorandomly chosen `float` value between zero
    (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `bound` - the upper bound (exclusive) for the returned value.
        Must be positive and finite

    Returns:
    :   a pseudorandomly chosen `float` value between
        zero (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `bound` is not
        both positive and finite
  + ### nextFloat

    default float nextFloat(float origin,
    float bound)

    Returns a pseudorandomly chosen `float` value between the
    specified origin (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `origin` - the least value that can be returned
    :   `bound` - the upper bound (exclusive)

    Returns:
    :   a pseudorandomly chosen `float` value between the
        origin (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `origin` is not finite,
        or `bound` is not finite, or `origin`
        is greater than or equal to `bound`
  + ### nextDouble

    default double nextDouble()

    Returns a pseudorandom `double` value between zero (inclusive) and
    one (exclusive).

    Returns:
    :   a pseudorandom `double` value between zero (inclusive)
        and one (exclusive)
  + ### nextDouble

    default double nextDouble(double bound)

    Returns a pseudorandomly chosen `double` value between zero
    (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `bound` - the upper bound (exclusive) for the returned value.
        Must be positive and finite

    Returns:
    :   a pseudorandomly chosen `double` value between
        zero (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `bound` is not
        both positive and finite
  + ### nextDouble

    default double nextDouble(double origin,
    double bound)

    Returns a pseudorandomly chosen `double` value between the
    specified origin (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `origin` - the least value that can be returned
    :   `bound` - the upper bound (exclusive) for the returned value

    Returns:
    :   a pseudorandomly chosen `double` value between the
        origin (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `origin` is not finite,
        or `bound` is not finite, or `origin`
        is greater than or equal to `bound`
  + ### nextInt

    default int nextInt()

    Returns a pseudorandomly chosen `int` value.

    Returns:
    :   a pseudorandomly chosen `int` value
  + ### nextInt

    default int nextInt(int bound)

    Returns a pseudorandomly chosen `int` value between zero
    (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `bound` - the upper bound (exclusive) for the returned value.
        Must be positive.

    Returns:
    :   a pseudorandomly chosen `int` value between
        zero (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `bound` is not positive
  + ### nextInt

    default int nextInt(int origin,
    int bound)

    Returns a pseudorandomly chosen `int` value between the specified
    origin (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `origin` - the least value that can be returned
    :   `bound` - the upper bound (exclusive) for the returned value

    Returns:
    :   a pseudorandomly chosen `int` value between the
        origin (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `origin` is greater than
        or equal to `bound`
  + ### nextLong

    long nextLong()

    Returns a pseudorandomly chosen `long` value.

    Returns:
    :   a pseudorandomly chosen `long` value
  + ### nextLong

    default long nextLong(long bound)

    Returns a pseudorandomly chosen `long` value between zero
    (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `bound` - the upper bound (exclusive) for the returned value.
        Must be positive.

    Returns:
    :   a pseudorandomly chosen `long` value between
        zero (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `bound` is not positive
  + ### nextLong

    default long nextLong(long origin,
    long bound)

    Returns a pseudorandomly chosen `long` value between the
    specified origin (inclusive) and the specified bound (exclusive).

    Parameters:
    :   `origin` - the least value that can be returned
    :   `bound` - the upper bound (exclusive) for the returned value

    Returns:
    :   a pseudorandomly chosen `long` value between the
        origin (inclusive) and the bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `origin` is greater than
        or equal to `bound`
  + ### nextGaussian

    default double nextGaussian()

    Returns a `double` value pseudorandomly chosen from a Gaussian
    (normal) distribution whose mean is 0 and whose standard deviation is 1.

    Returns:
    :   a `double` value pseudorandomly chosen from a
        Gaussian distribution
  + ### nextGaussian

    default double nextGaussian(double mean,
    double stddev)

    Returns a `double` value pseudorandomly chosen from a Gaussian
    (normal) distribution with a mean and standard deviation specified by the
    arguments.

    Parameters:
    :   `mean` - the mean of the Gaussian distribution to be drawn from
    :   `stddev` - the standard deviation (square root of the variance)
        of the Gaussian distribution to be drawn from

    Returns:
    :   a `double` value pseudorandomly chosen from the
        specified Gaussian distribution

    Throws:
    :   `IllegalArgumentException` - if `stddev` is negative
  + ### nextExponential

    default double nextExponential()

    Returns a nonnegative `double` value pseudorandomly chosen from
    an exponential distribution whose mean is 1.

    Returns:
    :   a nonnegative `double` value pseudorandomly chosen from an
        exponential distribution