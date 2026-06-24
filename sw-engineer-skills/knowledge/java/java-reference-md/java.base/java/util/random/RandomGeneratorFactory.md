Module [java.base](../../../module-summary.md)

Package [java.util.random](package-summary.md)

# Class RandomGeneratorFactory<T extends [RandomGenerator](RandomGenerator.md "interface in java.util.random")>

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.random.RandomGeneratorFactory<T>

Type Parameters:
:   `T` - type of created random generator

---

public final class RandomGeneratorFactory<T extends [RandomGenerator](RandomGenerator.md "interface in java.util.random")>
extends [Object](../../lang/Object.md "class in java.lang")

This is a factory class for generating multiple random number generators
of a specific [algorithm](package-summary.md#algorithms).
[`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") also provides
methods for selecting random number generator algorithms.
A specific [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") can be located by using the
[`of(String)`](#of(java.lang.String)) method, where the argument string
is the name of the [algorithm](package-summary.md#algorithms)
required. The method
[`all()`](#all()) produces a non-empty [`Stream`](../stream/Stream.md "interface in java.util.stream") of all available
[`RandomGeneratorFactorys`](RandomGeneratorFactory.md "class in java.util.random") that can be searched
to locate a [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") suitable to the task.
There are three methods for constructing a RandomGenerator instance,
depending on the type of initial seed required.
[`create(long)`](#create(long)) is used for long
seed construction,
[`create(byte[])`](#create(byte%5B%5D)) is used for byte[]
seed construction, and
[`create()`](#create()) is used for random seed
construction. Example;

Copy![Copy snippet](../../../../copy.svg)

```
   RandomGeneratorFactory<RandomGenerator> factory = RandomGeneratorFactory.of("Random");

    for (int i = 0; i < 10; i++) {
        new Thread(() -> {
            RandomGenerator random = factory.create(100L);
            System.out.println(random.nextDouble());
        }).start();
    }
```

RandomGeneratorFactory also provides methods describing the attributes (or properties)
of a generator and can be used to select random number generator
[algorithms](package-summary.md#algorithms).
These methods are typically used in
conjunction with [`all()`](#all()). In this example, the code
locates the [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") that produces
[`RandomGenerators`](RandomGenerator.md "interface in java.util.random")
with the highest number of state bits.

Copy![Copy snippet](../../../../copy.svg)

```
    RandomGeneratorFactory<RandomGenerator> best = RandomGeneratorFactory.all()
        .filter(rgf -> !rgf.name().equals("SecureRandom")) // SecureRandom has MAX_VALUE stateBits.
        .sorted(Comparator.comparingInt(RandomGeneratorFactory<RandomGenerator>::stateBits).reversed())
        .findFirst()
        .orElse(RandomGeneratorFactory.of("Random"));
    System.out.println(best.name() + " in " + best.group() + " was selected");

    RandomGenerator rng = best.create();
    System.out.println(rng.nextLong());
```

Since:
:   17

See Also:
:   * [`java.util.random`](package-summary.md)

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Stream<RandomGeneratorFactory<RandomGenerator>>`

  `all()`

  Returns a non-empty stream of available [`RandomGeneratorFactory(s)`](RandomGeneratorFactory.md "class in java.util.random").

  `T`

  `create()`

  Create an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") based on
  [algorithm](package-summary.md#algorithms) chosen.

  `T`

  `create(byte[] seed)`

  Create an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") based on
  [algorithm](package-summary.md#algorithms) chosen
  providing a starting byte[] seed.

  `T`

  `create(long seed)`

  Create an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") based on
  [algorithm](package-summary.md#algorithms) chosen
  providing a starting long seed.

  `int`

  `equidistribution()`

  Returns the equidistribution of the [algorithm](package-summary.md#algorithms).

  `static RandomGeneratorFactory<RandomGenerator>`

  `getDefault()`

  Returns a [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") meeting the minimal requirement
  of having an algorithm whose state bits are greater than or equal 64.

  `String`

  `group()`

  Return the group name of the [algorithm](package-summary.md#algorithms)
  used by the random number generator.

  `boolean`

  `isArbitrarilyJumpable()`

  Return true if random generator can jump an arbitrarily specified distant
  point in the state cycle.

  `boolean`

  `isDeprecated()`

  Return true if the implementation of RandomGenerator (algorithm) has been
  marked for deprecation.

  `boolean`

  `isHardware()`

  Return true if random generator uses a hardware device (HRNG) to produce
  entropic input.

  `boolean`

  `isJumpable()`

  Return true if random generator can jump a specified distant point in
  the state cycle.

  `boolean`

  `isLeapable()`

  Return true if random generator is jumpable and can leap to a very distant
  point in the state cycle.

  `boolean`

  `isSplittable()`

  Return true if random generator can be cloned into a separate object with
  the same properties but positioned further in the state cycle.

  `boolean`

  `isStatistical()`

  Return true if random generator is computed using an arithmetic
  [algorithm](package-summary.md#algorithms)
  and is statistically deterministic.

  `boolean`

  `isStochastic()`

  Return true if random generator is computed using external or entropic
  sources as inputs.

  `boolean`

  `isStreamable()`

  Return true if random generator can be used to create
  [`Streams`](../stream/Stream.md "interface in java.util.stream") of random numbers.

  `String`

  `name()`

  Return the name of the [algorithm](package-summary.md#algorithms)
  used by the random number generator.

  `static <T extends RandomGenerator>  
  RandomGeneratorFactory<T>`

  `of(String name)`

  Returns a [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") that can produce instances of
  [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") that utilize the `name`
  [algorithm](package-summary.md#algorithms).

  `BigInteger`

  `period()`

  Return the period of the [algorithm](package-summary.md#algorithms)
  used by the random number generator.

  `int`

  `stateBits()`

  Returns number of bits used by the [algorithm](package-summary.md#algorithms)
  to maintain state of seed.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### of

    public static <T extends [RandomGenerator](RandomGenerator.md "interface in java.util.random")>
    [RandomGeneratorFactory](RandomGeneratorFactory.md "class in java.util.random")<T> of([String](../../lang/String.md "class in java.lang") name)

    Returns a [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") that can produce instances of
    [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") that utilize the `name`
    [algorithm](package-summary.md#algorithms).

    Type Parameters:
    :   `T` - Sub-interface of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") to produce

    Parameters:
    :   `name` - Name of random number generator
        [algorithm](package-summary.md#algorithms)

    Returns:
    :   [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random")

    Throws:
    :   `NullPointerException` - if name is null
    :   `IllegalArgumentException` - if the named algorithm is not found
  + ### getDefault

    public static [RandomGeneratorFactory](RandomGeneratorFactory.md "class in java.util.random")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")> getDefault()

    Returns a [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random") meeting the minimal requirement
    of having an algorithm whose state bits are greater than or equal 64.

    Returns:
    :   a [`RandomGeneratorFactory`](RandomGeneratorFactory.md "class in java.util.random")
  + ### all

    public static [Stream](../stream/Stream.md "interface in java.util.stream")<[RandomGeneratorFactory](RandomGeneratorFactory.md "class in java.util.random")<[RandomGenerator](RandomGenerator.md "interface in java.util.random")>> all()

    Returns a non-empty stream of available [`RandomGeneratorFactory(s)`](RandomGeneratorFactory.md "class in java.util.random").
    RandomGenerators that are marked as deprecated are not included in the result.

    Returns:
    :   a non-empty stream of all available [`RandomGeneratorFactory(s)`](RandomGeneratorFactory.md "class in java.util.random").
  + ### name

    public [String](../../lang/String.md "class in java.lang") name()

    Return the name of the [algorithm](package-summary.md#algorithms)
    used by the random number generator.

    Returns:
    :   Name of the [algorithm](package-summary.md#algorithms).
  + ### group

    public [String](../../lang/String.md "class in java.lang") group()

    Return the group name of the [algorithm](package-summary.md#algorithms)
    used by the random number generator.

    Returns:
    :   Group name of the [algorithm](package-summary.md#algorithms).
  + ### stateBits

    public int stateBits()

    Returns number of bits used by the [algorithm](package-summary.md#algorithms)
    to maintain state of seed.

    Returns:
    :   number of bits used by the [algorithm](package-summary.md#algorithms)
        to maintain state of seed.
  + ### equidistribution

    public int equidistribution()

    Returns the equidistribution of the [algorithm](package-summary.md#algorithms).

    Returns:
    :   the equidistribution of the [algorithm](package-summary.md#algorithms).
  + ### period

    public [BigInteger](../../math/BigInteger.md "class in java.math") period()

    Return the period of the [algorithm](package-summary.md#algorithms)
    used by the random number generator.
    Returns BigInteger.ZERO if period is not determinable.

    Returns:
    :   BigInteger period.
  + ### isStatistical

    public boolean isStatistical()

    Return true if random generator is computed using an arithmetic
    [algorithm](package-summary.md#algorithms)
    and is statistically deterministic.

    Returns:
    :   true if random generator is statistical.
  + ### isStochastic

    public boolean isStochastic()

    Return true if random generator is computed using external or entropic
    sources as inputs.

    Returns:
    :   true if random generator is stochastic.
  + ### isHardware

    public boolean isHardware()

    Return true if random generator uses a hardware device (HRNG) to produce
    entropic input.

    Returns:
    :   true if random generator is generated by hardware.
  + ### isArbitrarilyJumpable

    public boolean isArbitrarilyJumpable()

    Return true if random generator can jump an arbitrarily specified distant
    point in the state cycle.

    Returns:
    :   true if random generator is arbitrarily jumpable.
  + ### isJumpable

    public boolean isJumpable()

    Return true if random generator can jump a specified distant point in
    the state cycle.

    Returns:
    :   true if random generator is jumpable.
  + ### isLeapable

    public boolean isLeapable()

    Return true if random generator is jumpable and can leap to a very distant
    point in the state cycle.

    Returns:
    :   true if random generator is leapable.
  + ### isSplittable

    public boolean isSplittable()

    Return true if random generator can be cloned into a separate object with
    the same properties but positioned further in the state cycle.

    Returns:
    :   true if random generator is splittable.
  + ### isStreamable

    public boolean isStreamable()

    Return true if random generator can be used to create
    [`Streams`](../stream/Stream.md "interface in java.util.stream") of random numbers.

    Returns:
    :   true if random generator is streamable.
  + ### isDeprecated

    public boolean isDeprecated()

    Return true if the implementation of RandomGenerator (algorithm) has been
    marked for deprecation.

    Returns:
    :   true if the implementation of RandomGenerator (algorithm) has been
        marked for deprecation
  + ### create

    public [T](RandomGeneratorFactory.md "type parameter in RandomGeneratorFactory") create()

    Create an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") based on
    [algorithm](package-summary.md#algorithms) chosen.

    Returns:
    :   new in instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random").
  + ### create

    public [T](RandomGeneratorFactory.md "type parameter in RandomGeneratorFactory") create(long seed)

    Create an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") based on
    [algorithm](package-summary.md#algorithms) chosen
    providing a starting long seed. If long seed is not supported by an
    algorithm then the no argument form of create is used.

    Parameters:
    :   `seed` - long random seed value.

    Returns:
    :   new in instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random").
  + ### create

    public [T](RandomGeneratorFactory.md "type parameter in RandomGeneratorFactory") create(byte[] seed)

    Create an instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random") based on
    [algorithm](package-summary.md#algorithms) chosen
    providing a starting byte[] seed. If byte[] seed is not supported by an
    [algorithm](package-summary.md#algorithms) then the no
    argument form of create is used.

    Parameters:
    :   `seed` - byte array random seed value.

    Returns:
    :   new in instance of [`RandomGenerator`](RandomGenerator.md "interface in java.util.random").

    Throws:
    :   `NullPointerException` - if seed is null.