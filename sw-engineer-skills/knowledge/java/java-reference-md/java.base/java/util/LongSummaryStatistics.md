Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class LongSummaryStatistics

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.LongSummaryStatistics

All Implemented Interfaces:
:   `IntConsumer`, `LongConsumer`

---

public class LongSummaryStatistics
extends [Object](../lang/Object.md "class in java.lang")
implements [LongConsumer](function/LongConsumer.md "interface in java.util.function"), [IntConsumer](function/IntConsumer.md "interface in java.util.function")

A state object for collecting statistics such as count, min, max, sum, and
average.

This class is designed to work with (though does not require)
[streams](stream/package-summary.md). For example, you can compute
summary statistics on a stream of longs with:

```
 LongSummaryStatistics stats = longStream.collect(LongSummaryStatistics::new,
                                                  LongSummaryStatistics::accept,
                                                  LongSummaryStatistics::combine);
```

`LongSummaryStatistics` can be used as a
[reduction](stream/Stream.md#collect(java.util.stream.Collector))
target for a [stream](stream/Stream.md "interface in java.util.stream"). For example:

```
 LongSummaryStatistics stats = people.stream()
                                     .collect(Collectors.summarizingLong(Person::getAge));
```

This computes, in a single pass, the count of people, as well as the minimum,
maximum, sum, and average of their ages.

Since:
:   1.8

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LongSummaryStatistics()`

  Constructs an empty instance with zero count, zero sum,
  `Long.MAX_VALUE` min, `Long.MIN_VALUE` max and zero
  average.

  `LongSummaryStatistics(long count,
  long min,
  long max,
  long sum)`

  Constructs a non-empty instance with the specified `count`,
  `min`, `max`, and `sum`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(int value)`

  Records a new `int` value into the summary information.

  `void`

  `accept(long value)`

  Records a new `long` value into the summary information.

  `void`

  `combine(LongSummaryStatistics other)`

  Combines the state of another `LongSummaryStatistics` into this
  one.

  `final double`

  `getAverage()`

  Returns the arithmetic mean of values recorded, or zero if no values have been
  recorded.

  `final long`

  `getCount()`

  Returns the count of values recorded.

  `final long`

  `getMax()`

  Returns the maximum value recorded, or `Long.MIN_VALUE` if no
  values have been recorded

  `final long`

  `getMin()`

  Returns the minimum value recorded, or `Long.MAX_VALUE` if no
  values have been recorded.

  `final long`

  `getSum()`

  Returns the sum of values recorded, or zero if no values have been
  recorded.

  `String`

  `toString()`

  Returns a non-empty string representation of this object suitable for
  debugging.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.function.[IntConsumer](function/IntConsumer.md "interface in java.util.function")

  `andThen`

  ### Methods inherited from interface java.util.function.[LongConsumer](function/LongConsumer.md "interface in java.util.function")

  `andThen`

* ## Constructor Details

  + ### LongSummaryStatistics

    public LongSummaryStatistics()

    Constructs an empty instance with zero count, zero sum,
    `Long.MAX_VALUE` min, `Long.MIN_VALUE` max and zero
    average.
  + ### LongSummaryStatistics

    public LongSummaryStatistics(long count,
    long min,
    long max,
    long sum)
    throws [IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

    Constructs a non-empty instance with the specified `count`,
    `min`, `max`, and `sum`.

    If `count` is zero then the remaining arguments are ignored and
    an empty instance is constructed.

    If the arguments are inconsistent then an `IllegalArgumentException`
    is thrown. The necessary consistent argument conditions are:
    - `count >= 0`
    - `min <= max`

    Parameters:
    :   `count` - the count of values
    :   `min` - the minimum value
    :   `max` - the maximum value
    :   `sum` - the sum of all values

    Throws:
    :   `IllegalArgumentException` - if the arguments are inconsistent

    Since:
    :   10
* ## Method Details

  + ### accept

    public void accept(int value)

    Records a new `int` value into the summary information.

    Specified by:
    :   `accept` in interface `IntConsumer`

    Parameters:
    :   `value` - the input value
  + ### accept

    public void accept(long value)

    Records a new `long` value into the summary information.

    Specified by:
    :   `accept` in interface `LongConsumer`

    Parameters:
    :   `value` - the input value
  + ### combine

    public void combine([LongSummaryStatistics](LongSummaryStatistics.md "class in java.util") other)

    Combines the state of another `LongSummaryStatistics` into this
    one.

    Parameters:
    :   `other` - another `LongSummaryStatistics`

    Throws:
    :   `NullPointerException` - if `other` is null
  + ### getCount

    public final long getCount()

    Returns the count of values recorded.

    Returns:
    :   the count of values
  + ### getSum

    public final long getSum()

    Returns the sum of values recorded, or zero if no values have been
    recorded.

    Returns:
    :   the sum of values, or zero if none
  + ### getMin

    public final long getMin()

    Returns the minimum value recorded, or `Long.MAX_VALUE` if no
    values have been recorded.

    Returns:
    :   the minimum value, or `Long.MAX_VALUE` if none
  + ### getMax

    public final long getMax()

    Returns the maximum value recorded, or `Long.MIN_VALUE` if no
    values have been recorded

    Returns:
    :   the maximum value, or `Long.MIN_VALUE` if none
  + ### getAverage

    public final double getAverage()

    Returns the arithmetic mean of values recorded, or zero if no values have been
    recorded.

    Returns:
    :   The arithmetic mean of values, or zero if none
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a non-empty string representation of this object suitable for
    debugging. The exact presentation format is unspecified and may vary
    between implementations and versions.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.