Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class IntSummaryStatistics

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.IntSummaryStatistics

All Implemented Interfaces:
:   `IntConsumer`

---

public class IntSummaryStatistics
extends [Object](../lang/Object.md "class in java.lang")
implements [IntConsumer](function/IntConsumer.md "interface in java.util.function")

A state object for collecting statistics such as count, min, max, sum, and
average.

This class is designed to work with (though does not require)
[streams](stream/package-summary.md). For example, you can compute
summary statistics on a stream of ints with:

```
 IntSummaryStatistics stats = intStream.collect(IntSummaryStatistics::new,
                                                IntSummaryStatistics::accept,
                                                IntSummaryStatistics::combine);
```

`IntSummaryStatistics` can be used as a
[reduction](stream/Stream.md#collect(java.util.stream.Collector))
target for a [stream](stream/Stream.md "interface in java.util.stream"). For example:

```
 IntSummaryStatistics stats = people.stream()
                                    .collect(Collectors.summarizingInt(Person::getDependents));
```

This computes, in a single pass, the count of people, as well as the minimum,
maximum, sum, and average of their number of dependents.

Since:
:   1.8

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IntSummaryStatistics()`

  Constructs an empty instance with zero count, zero sum,
  `Integer.MAX_VALUE` min, `Integer.MIN_VALUE` max and zero
  average.

  `IntSummaryStatistics(long count,
  int min,
  int max,
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

  Records a new value into the summary information

  `void`

  `combine(IntSummaryStatistics other)`

  Combines the state of another `IntSummaryStatistics` into this one.

  `final double`

  `getAverage()`

  Returns the arithmetic mean of values recorded, or zero if no values have been
  recorded.

  `final long`

  `getCount()`

  Returns the count of values recorded.

  `final int`

  `getMax()`

  Returns the maximum value recorded, or `Integer.MIN_VALUE` if no
  values have been recorded.

  `final int`

  `getMin()`

  Returns the minimum value recorded, or `Integer.MAX_VALUE` if no
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

* ## Constructor Details

  + ### IntSummaryStatistics

    public IntSummaryStatistics()

    Constructs an empty instance with zero count, zero sum,
    `Integer.MAX_VALUE` min, `Integer.MIN_VALUE` max and zero
    average.
  + ### IntSummaryStatistics

    public IntSummaryStatistics(long count,
    int min,
    int max,
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

    Records a new value into the summary information

    Specified by:
    :   `accept` in interface `IntConsumer`

    Parameters:
    :   `value` - the input value
  + ### combine

    public void combine([IntSummaryStatistics](IntSummaryStatistics.md "class in java.util") other)

    Combines the state of another `IntSummaryStatistics` into this one.

    Parameters:
    :   `other` - another `IntSummaryStatistics`

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

    public final int getMin()

    Returns the minimum value recorded, or `Integer.MAX_VALUE` if no
    values have been recorded.

    Returns:
    :   the minimum value, or `Integer.MAX_VALUE` if none
  + ### getMax

    public final int getMax()

    Returns the maximum value recorded, or `Integer.MIN_VALUE` if no
    values have been recorded.

    Returns:
    :   the maximum value, or `Integer.MIN_VALUE` if none
  + ### getAverage

    public final double getAverage()

    Returns the arithmetic mean of values recorded, or zero if no values have been
    recorded.

    Returns:
    :   the arithmetic mean of values, or zero if none
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a non-empty string representation of this object suitable for
    debugging. The exact presentation format is unspecified and may vary
    between implementations and versions.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.