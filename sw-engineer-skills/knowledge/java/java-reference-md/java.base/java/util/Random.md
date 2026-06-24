Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class Random

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.Random

All Implemented Interfaces:
:   `Serializable`, `RandomGenerator`

Direct Known Subclasses:
:   `SecureRandom`, `ThreadLocalRandom`

---

public class Random
extends [Object](../lang/Object.md "class in java.lang")
implements [RandomGenerator](random/RandomGenerator.md "interface in java.util.random"), [Serializable](../io/Serializable.md "interface in java.io")

An instance of this class is used to generate a stream of
pseudorandom numbers; its period is only 248.
The class uses a 48-bit seed, which is
modified using a linear congruential formula. (See Donald E. Knuth,
The Art of Computer Programming, Volume 2, Third
edition: Seminumerical Algorithms, Section 3.2.1.)

If two instances of `Random` are created with the same
seed, and the same sequence of method calls is made for each, they
will generate and return identical sequences of numbers. In order to
guarantee this property, particular algorithms are specified for the
class `Random`. Java implementations must use all the algorithms
shown here for the class `Random`, for the sake of absolute
portability of Java code. However, subclasses of class `Random`
are permitted to use other algorithms, so long as they adhere to the
general contracts for all the methods.

The algorithms implemented by class `Random` use a
`protected` utility method that on each invocation can supply
up to 32 pseudorandomly generated bits.

Many applications will find the method [`Math.random()`](../lang/Math.md#random()) simpler to use.

Instances of `java.util.Random` are threadsafe.
However, the concurrent use of the same `java.util.Random`
instance across threads may encounter contention and consequent
poor performance. Consider instead using
[`ThreadLocalRandom`](concurrent/ThreadLocalRandom.md "class in java.util.concurrent") in multithreaded
designs.

Instances of `java.util.Random` are not cryptographically
secure. Consider instead using [`SecureRandom`](../security/SecureRandom.md "class in java.security") to
get a cryptographically secure pseudo-random number generator for use
by security-sensitive applications.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.Random)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.random.[RandomGenerator](random/RandomGenerator.md "interface in java.util.random")

  `RandomGenerator.ArbitrarilyJumpableGenerator, RandomGenerator.JumpableGenerator, RandomGenerator.LeapableGenerator, RandomGenerator.SplittableGenerator, RandomGenerator.StreamableGenerator`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Random()`

  Creates a new random number generator.

  `Random(long seed)`

  Creates a new random number generator using a single `long` seed.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `DoubleStream`

  `doubles()`

  Returns an effectively unlimited stream of pseudorandom `double` values, each between zero (inclusive) and one
  (exclusive).

  `DoubleStream`

  `doubles(double randomNumberOrigin,
  double randomNumberBound)`

  Returns an effectively unlimited stream of pseudorandom `double` values, each conforming to the given origin (inclusive) and bound
  (exclusive).

  `DoubleStream`

  `doubles(long streamSize)`

  Returns a stream producing the given `streamSize` number of
  pseudorandom `double` values, each between zero
  (inclusive) and one (exclusive).

  `DoubleStream`

  `doubles(long streamSize,
  double randomNumberOrigin,
  double randomNumberBound)`

  Returns a stream producing the given `streamSize` number of
  pseudorandom `double` values, each conforming to the given origin
  (inclusive) and bound (exclusive).

  `static Random`

  `from(RandomGenerator generator)`

  Returns an instance of `Random` that delegates method calls to the [`RandomGenerator`](random/RandomGenerator.md "interface in java.util.random")
  argument.

  `IntStream`

  `ints()`

  Returns an effectively unlimited stream of pseudorandom `int`
  values.

  `IntStream`

  `ints(int randomNumberOrigin,
  int randomNumberBound)`

  Returns an effectively unlimited stream of pseudorandom `int` values, each conforming to the given origin (inclusive) and bound
  (exclusive).

  `IntStream`

  `ints(long streamSize)`

  Returns a stream producing the given `streamSize` number of
  pseudorandom `int` values.

  `IntStream`

  `ints(long streamSize,
  int randomNumberOrigin,
  int randomNumberBound)`

  Returns a stream producing the given `streamSize` number
  of pseudorandom `int` values, each conforming to the given
  origin (inclusive) and bound (exclusive).

  `LongStream`

  `longs()`

  Returns an effectively unlimited stream of pseudorandom `long`
  values.

  `LongStream`

  `longs(long streamSize)`

  Returns a stream producing the given `streamSize` number of
  pseudorandom `long` values.

  `LongStream`

  `longs(long randomNumberOrigin,
  long randomNumberBound)`

  Returns an effectively unlimited stream of pseudorandom `long` values, each conforming to the given origin (inclusive) and bound
  (exclusive).

  `LongStream`

  `longs(long streamSize,
  long randomNumberOrigin,
  long randomNumberBound)`

  Returns a stream producing the given `streamSize` number of
  pseudorandom `long`, each conforming to the given origin
  (inclusive) and bound (exclusive).

  `protected int`

  `next(int bits)`

  Generates the next pseudorandom number.

  `boolean`

  `nextBoolean()`

  Returns the next pseudorandom, uniformly distributed
  `boolean` value from this random number generator's
  sequence.

  `void`

  `nextBytes(byte[] bytes)`

  Generates random bytes and places them into a user-supplied
  byte array.

  `double`

  `nextDouble()`

  Returns the next pseudorandom, uniformly distributed
  `double` value between `0.0` and
  `1.0` from this random number generator's sequence.

  `float`

  `nextFloat()`

  Returns the next pseudorandom, uniformly distributed `float`
  value between `0.0` and `1.0` from this random
  number generator's sequence.

  `double`

  `nextGaussian()`

  Returns the next pseudorandom, Gaussian ("normally") distributed
  `double` value with mean `0.0` and standard
  deviation `1.0` from this random number generator's sequence.

  `int`

  `nextInt()`

  Returns the next pseudorandom, uniformly distributed `int`
  value from this random number generator's sequence.

  `int`

  `nextInt(int bound)`

  Returns a pseudorandom, uniformly distributed `int` value
  between 0 (inclusive) and the specified value (exclusive), drawn from
  this random number generator's sequence.

  `long`

  `nextLong()`

  Returns the next pseudorandom, uniformly distributed `long`
  value from this random number generator's sequence.

  `void`

  `setSeed(long seed)`

  Sets or updates the seed of this random number generator using the
  provided `long` seed value (optional operation).

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.random.[RandomGenerator](random/RandomGenerator.md "interface in java.util.random")

  `isDeprecated, nextDouble, nextDouble, nextExponential, nextFloat, nextFloat, nextGaussian, nextInt, nextLong, nextLong`

* ## Constructor Details

  + ### Random

    public Random()

    Creates a new random number generator. This constructor sets
    the seed of the random number generator to a value very likely
    to be distinct from any other invocation of this constructor.
  + ### Random

    public Random(long seed)

    Creates a new random number generator using a single `long` seed.
    The seed is the initial value of the internal state of the pseudorandom
    number generator which is maintained by method [`next(int)`](#next(int)).

    Parameters:
    :   `seed` - the initial seed

    See Also:
    :   - [`setSeed(long)`](#setSeed(long))
* ## Method Details

  + ### from

    public static [Random](Random.md "class in java.util") from([RandomGenerator](random/RandomGenerator.md "interface in java.util.random") generator)

    Returns an instance of `Random` that delegates method calls to the [`RandomGenerator`](random/RandomGenerator.md "interface in java.util.random")
    argument. If the generator is an instance of `Random`, it is returned. Otherwise, this method
    returns an instance of `Random` that delegates all methods except `setSeed` to the generator.
    The returned instance's `setSeed` method always throws [`UnsupportedOperationException`](../lang/UnsupportedOperationException.md "class in java.lang").
    The returned instance is not serializable.

    Parameters:
    :   `generator` - the `RandomGenerator` calls are delegated to

    Returns:
    :   the delegating `Random` instance

    Throws:
    :   `NullPointerException` - if generator is null

    Since:
    :   19
  + ### setSeed

    public void setSeed(long seed)

    Sets or updates the seed of this random number generator using the
    provided `long` seed value (optional operation).

    Parameters:
    :   `seed` - the seed value

    Throws:
    :   `UnsupportedOperationException` - if the `setSeed`
        operation is not supported by this random number generator
  + ### next

    protected int next(int bits)

    Generates the next pseudorandom number. This method returns an
    `int` value such that, if the argument `bits` is between
    `1` and `32` (inclusive), then that many low-order
    bits of the returned value will be (approximately) independently
    chosen bit values, each of which is (approximately) equally
    likely to be `0` or `1`.

    Parameters:
    :   `bits` - random bits

    Returns:
    :   the next pseudorandom value from this random number
        generator's sequence

    Since:
    :   1.1
  + ### nextBytes

    public void nextBytes(byte[] bytes)

    Generates random bytes and places them into a user-supplied
    byte array. The number of random bytes produced is equal to
    the length of the byte array.

    Specified by:
    :   `nextBytes` in interface `RandomGenerator`

    Parameters:
    :   `bytes` - the byte array to fill with random bytes

    Throws:
    :   `NullPointerException` - if the byte array is null

    Since:
    :   1.1
  + ### nextInt

    public int nextInt()

    Returns the next pseudorandom, uniformly distributed `int`
    value from this random number generator's sequence. The general
    contract of `nextInt` is that one `int` value is
    pseudorandomly generated and returned. All 232 possible
    `int` values are produced with (approximately) equal probability.

    Specified by:
    :   `nextInt` in interface `RandomGenerator`

    Returns:
    :   the next pseudorandom, uniformly distributed `int`
        value from this random number generator's sequence
  + ### nextInt

    public int nextInt(int bound)

    Returns a pseudorandom, uniformly distributed `int` value
    between 0 (inclusive) and the specified value (exclusive), drawn from
    this random number generator's sequence. The general contract of
    `nextInt` is that one `int` value in the specified range
    is pseudorandomly generated and returned. All `bound` possible
    `int` values are produced with (approximately) equal
    probability.

    Specified by:
    :   `nextInt` in interface `RandomGenerator`

    Parameters:
    :   `bound` - the upper bound (exclusive). Must be positive.

    Returns:
    :   the next pseudorandom, uniformly distributed `int`
        value between zero (inclusive) and `bound` (exclusive)
        from this random number generator's sequence

    Throws:
    :   `IllegalArgumentException` - if bound is not positive

    Since:
    :   1.2
  + ### nextLong

    public long nextLong()

    Returns the next pseudorandom, uniformly distributed `long`
    value from this random number generator's sequence. The general
    contract of `nextLong` is that one `long` value is
    pseudorandomly generated and returned.

    Specified by:
    :   `nextLong` in interface `RandomGenerator`

    Returns:
    :   the next pseudorandom, uniformly distributed `long`
        value from this random number generator's sequence
  + ### nextBoolean

    public boolean nextBoolean()

    Returns the next pseudorandom, uniformly distributed
    `boolean` value from this random number generator's
    sequence. The general contract of `nextBoolean` is that one
    `boolean` value is pseudorandomly generated and returned. The
    values `true` and `false` are produced with
    (approximately) equal probability.

    Specified by:
    :   `nextBoolean` in interface `RandomGenerator`

    Returns:
    :   the next pseudorandom, uniformly distributed
        `boolean` value from this random number generator's
        sequence

    Since:
    :   1.2
  + ### nextFloat

    public float nextFloat()

    Returns the next pseudorandom, uniformly distributed `float`
    value between `0.0` and `1.0` from this random
    number generator's sequence.

    The general contract of `nextFloat` is that one
    `float` value, chosen (approximately) uniformly from the
    range `0.0f` (inclusive) to `1.0f` (exclusive), is
    pseudorandomly generated and returned. All 224 possible
    `float` values of the form *m x*2-24,
    where *m* is a positive integer less than 224, are
    produced with (approximately) equal probability.

    Specified by:
    :   `nextFloat` in interface `RandomGenerator`

    Returns:
    :   the next pseudorandom, uniformly distributed `float`
        value between `0.0f` and `1.0f` from this
        random number generator's sequence
  + ### nextDouble

    public double nextDouble()

    Returns the next pseudorandom, uniformly distributed
    `double` value between `0.0` and
    `1.0` from this random number generator's sequence.

    The general contract of `nextDouble` is that one
    `double` value, chosen (approximately) uniformly from the
    range `0.0d` (inclusive) to `1.0d` (exclusive), is
    pseudorandomly generated and returned.

    Specified by:
    :   `nextDouble` in interface `RandomGenerator`

    Returns:
    :   the next pseudorandom, uniformly distributed `double`
        value between `0.0` and `1.0` from this
        random number generator's sequence

    See Also:
    :   - [`Math.random()`](../lang/Math.md#random())
  + ### nextGaussian

    public double nextGaussian()

    Returns the next pseudorandom, Gaussian ("normally") distributed
    `double` value with mean `0.0` and standard
    deviation `1.0` from this random number generator's sequence.

    The general contract of `nextGaussian` is that one
    `double` value, chosen from (approximately) the usual
    normal distribution with mean `0.0` and standard deviation
    `1.0`, is pseudorandomly generated and returned.

    Specified by:
    :   `nextGaussian` in interface `RandomGenerator`

    Returns:
    :   the next pseudorandom, Gaussian ("normally") distributed
        `double` value with mean `0.0` and
        standard deviation `1.0` from this random number
        generator's sequence
  + ### ints

    public [IntStream](stream/IntStream.md "interface in java.util.stream") ints(long streamSize)

    Returns a stream producing the given `streamSize` number of
    pseudorandom `int` values.

    A pseudorandom `int` value is generated as if it's the result of
    calling the method [`nextInt()`](#nextInt()).

    Specified by:
    :   `ints` in interface `RandomGenerator`

    Parameters:
    :   `streamSize` - the number of values to generate

    Returns:
    :   a stream of pseudorandom `int` values

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero

    Since:
    :   1.8
  + ### ints

    public [IntStream](stream/IntStream.md "interface in java.util.stream") ints()

    Returns an effectively unlimited stream of pseudorandom `int`
    values.

    A pseudorandom `int` value is generated as if it's the result of
    calling the method [`nextInt()`](#nextInt()).

    Specified by:
    :   `ints` in interface `RandomGenerator`

    Returns:
    :   a stream of pseudorandom `int` values

    Since:
    :   1.8
  + ### ints

    public [IntStream](stream/IntStream.md "interface in java.util.stream") ints(long streamSize,
    int randomNumberOrigin,
    int randomNumberBound)

    Returns a stream producing the given `streamSize` number
    of pseudorandom `int` values, each conforming to the given
    origin (inclusive) and bound (exclusive).

    A pseudorandom `int` value is generated as if it's the result of
    calling the following method with the origin and bound:

    ```
     int nextInt(int origin, int bound) {
       int n = bound - origin;
       if (n > 0) {
         return nextInt(n) + origin;
       }
       else {  // range not representable as int
         int r;
         do {
           r = nextInt();
         } while (r < origin || r >= bound);
         return r;
       }
     }
    ```

    Specified by:
    :   `ints` in interface `RandomGenerator`

    Parameters:
    :   `streamSize` - the number of values to generate
    :   `randomNumberOrigin` - the origin (inclusive) of each random value
    :   `randomNumberBound` - the bound (exclusive) of each random value

    Returns:
    :   a stream of pseudorandom `int` values,
        each with the given origin (inclusive) and bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`

    Since:
    :   1.8
  + ### ints

    public [IntStream](stream/IntStream.md "interface in java.util.stream") ints(int randomNumberOrigin,
    int randomNumberBound)

    Returns an effectively unlimited stream of pseudorandom `int` values, each conforming to the given origin (inclusive) and bound
    (exclusive).

    A pseudorandom `int` value is generated as if it's the result of
    calling the following method with the origin and bound:

    ```
     int nextInt(int origin, int bound) {
       int n = bound - origin;
       if (n > 0) {
         return nextInt(n) + origin;
       }
       else {  // range not representable as int
         int r;
         do {
           r = nextInt();
         } while (r < origin || r >= bound);
         return r;
       }
     }
    ```

    Specified by:
    :   `ints` in interface `RandomGenerator`

    Parameters:
    :   `randomNumberOrigin` - the origin (inclusive) of each random value
    :   `randomNumberBound` - the bound (exclusive) of each random value

    Returns:
    :   a stream of pseudorandom `int` values,
        each with the given origin (inclusive) and bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`

    Since:
    :   1.8
  + ### longs

    public [LongStream](stream/LongStream.md "interface in java.util.stream") longs(long streamSize)

    Returns a stream producing the given `streamSize` number of
    pseudorandom `long` values.

    A pseudorandom `long` value is generated as if it's the result
    of calling the method [`nextLong()`](#nextLong()).

    Specified by:
    :   `longs` in interface `RandomGenerator`

    Parameters:
    :   `streamSize` - the number of values to generate

    Returns:
    :   a stream of pseudorandom `long` values

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero

    Since:
    :   1.8
  + ### longs

    public [LongStream](stream/LongStream.md "interface in java.util.stream") longs()

    Returns an effectively unlimited stream of pseudorandom `long`
    values.

    A pseudorandom `long` value is generated as if it's the result
    of calling the method [`nextLong()`](#nextLong()).

    Specified by:
    :   `longs` in interface `RandomGenerator`

    Returns:
    :   a stream of pseudorandom `long` values

    Since:
    :   1.8
  + ### longs

    public [LongStream](stream/LongStream.md "interface in java.util.stream") longs(long streamSize,
    long randomNumberOrigin,
    long randomNumberBound)

    Returns a stream producing the given `streamSize` number of
    pseudorandom `long`, each conforming to the given origin
    (inclusive) and bound (exclusive).

    A pseudorandom `long` value is generated as if it's the result
    of calling the following method with the origin and bound:

    ```
     long nextLong(long origin, long bound) {
       long r = nextLong();
       long n = bound - origin, m = n - 1;
       if ((n & m) == 0L)  // power of two
         r = (r & m) + origin;
       else if (n > 0L) {  // reject over-represented candidates
         for (long u = r >>> 1;            // ensure nonnegative
              u + m - (r = u % n) < 0L;    // rejection check
              u = nextLong() >>> 1) // retry
             ;
         r += origin;
       }
       else {              // range not representable as long
         while (r < origin || r >= bound)
           r = nextLong();
       }
       return r;
     }
    ```

    Specified by:
    :   `longs` in interface `RandomGenerator`

    Parameters:
    :   `streamSize` - the number of values to generate
    :   `randomNumberOrigin` - the origin (inclusive) of each random value
    :   `randomNumberBound` - the bound (exclusive) of each random value

    Returns:
    :   a stream of pseudorandom `long` values,
        each with the given origin (inclusive) and bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`

    Since:
    :   1.8
  + ### longs

    public [LongStream](stream/LongStream.md "interface in java.util.stream") longs(long randomNumberOrigin,
    long randomNumberBound)

    Returns an effectively unlimited stream of pseudorandom `long` values, each conforming to the given origin (inclusive) and bound
    (exclusive).

    A pseudorandom `long` value is generated as if it's the result
    of calling the following method with the origin and bound:

    ```
     long nextLong(long origin, long bound) {
       long r = nextLong();
       long n = bound - origin, m = n - 1;
       if ((n & m) == 0L)  // power of two
         r = (r & m) + origin;
       else if (n > 0L) {  // reject over-represented candidates
         for (long u = r >>> 1;            // ensure nonnegative
              u + m - (r = u % n) < 0L;    // rejection check
              u = nextLong() >>> 1) // retry
             ;
         r += origin;
       }
       else {              // range not representable as long
         while (r < origin || r >= bound)
           r = nextLong();
       }
       return r;
     }
    ```

    Specified by:
    :   `longs` in interface `RandomGenerator`

    Parameters:
    :   `randomNumberOrigin` - the origin (inclusive) of each random value
    :   `randomNumberBound` - the bound (exclusive) of each random value

    Returns:
    :   a stream of pseudorandom `long` values,
        each with the given origin (inclusive) and bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`

    Since:
    :   1.8
  + ### doubles

    public [DoubleStream](stream/DoubleStream.md "interface in java.util.stream") doubles(long streamSize)

    Returns a stream producing the given `streamSize` number of
    pseudorandom `double` values, each between zero
    (inclusive) and one (exclusive).

    A pseudorandom `double` value is generated as if it's the result
    of calling the method [`nextDouble()`](#nextDouble()).

    Specified by:
    :   `doubles` in interface `RandomGenerator`

    Parameters:
    :   `streamSize` - the number of values to generate

    Returns:
    :   a stream of `double` values

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is
        less than zero

    Since:
    :   1.8
  + ### doubles

    public [DoubleStream](stream/DoubleStream.md "interface in java.util.stream") doubles()

    Returns an effectively unlimited stream of pseudorandom `double` values, each between zero (inclusive) and one
    (exclusive).

    A pseudorandom `double` value is generated as if it's the result
    of calling the method [`nextDouble()`](#nextDouble()).

    Specified by:
    :   `doubles` in interface `RandomGenerator`

    Returns:
    :   a stream of pseudorandom `double` values

    Since:
    :   1.8
  + ### doubles

    public [DoubleStream](stream/DoubleStream.md "interface in java.util.stream") doubles(long streamSize,
    double randomNumberOrigin,
    double randomNumberBound)

    Returns a stream producing the given `streamSize` number of
    pseudorandom `double` values, each conforming to the given origin
    (inclusive) and bound (exclusive).

    Specified by:
    :   `doubles` in interface `RandomGenerator`

    Parameters:
    :   `streamSize` - the number of values to generate
    :   `randomNumberOrigin` - the origin (inclusive) of each random value
    :   `randomNumberBound` - the bound (exclusive) of each random value

    Returns:
    :   a stream of pseudorandom `double` values,
        each with the given origin (inclusive) and bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `streamSize` is less than zero,
        or `randomNumberOrigin` is not finite,
        or `randomNumberBound` is not finite, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`

    Since:
    :   1.8
  + ### doubles

    public [DoubleStream](stream/DoubleStream.md "interface in java.util.stream") doubles(double randomNumberOrigin,
    double randomNumberBound)

    Returns an effectively unlimited stream of pseudorandom `double` values, each conforming to the given origin (inclusive) and bound
    (exclusive).

    Specified by:
    :   `doubles` in interface `RandomGenerator`

    Parameters:
    :   `randomNumberOrigin` - the origin (inclusive) of each random value
    :   `randomNumberBound` - the bound (exclusive) of each random value

    Returns:
    :   a stream of pseudorandom `double` values,
        each with the given origin (inclusive) and bound (exclusive)

    Throws:
    :   `IllegalArgumentException` - if `randomNumberOrigin` is not finite,
        or `randomNumberBound` is not finite, or `randomNumberOrigin`
        is greater than or equal to `randomNumberBound`

    Since:
    :   1.8