Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class DoubleSummaryStatistics

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.DoubleSummaryStatistics

All Implemented Interfaces:
:   `DoubleConsumer`

---

public class DoubleSummaryStatistics
extends [Object](../lang/Object.md "class in java.lang")
implements [DoubleConsumer](function/DoubleConsumer.md "interface in java.util.function")

A state object for collecting statistics such as count, min, max, sum, and
average.

This class is designed to work with (though does not require)
[streams](stream/package-summary.md). For example, you can compute
summary statistics on a stream of doubles with:

```
 DoubleSummaryStatistics stats = doubleStream.collect(DoubleSummaryStatistics::new,
                                                      DoubleSummaryStatistics::accept,
                                                      DoubleSummaryStatistics::combine);
```

`DoubleSummaryStatistics` can be used as a
[reduction](stream/Stream.md#collect(java.util.stream.Collector))
target for a [stream](stream/Stream.md "interface in java.util.stream"). For example:

```
 DoubleSummaryStatistics stats = people.stream()
     .collect(Collectors.summarizingDouble(Person::getWeight));
```

This computes, in a single pass, the count of people, as well as the minimum,
maximum, sum, and average of their weights.

Since:
:   1.8

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DoubleSummaryStatistics()`

  Constructs an empty instance with zero count, zero sum,
  `Double.POSITIVE_INFINITY` min, `Double.NEGATIVE_INFINITY`
  max and zero average.

  `DoubleSummaryStatistics(long count,
  double min,
  double max,
  double sum)`

  Constructs a non-empty instance with the specified `count`,
  `min`, `max`, and `sum`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `accept(double value)`

  Records another value into the summary information.

  `void`

  `combine(DoubleSummaryStatistics other)`

  Combines the state of another `DoubleSummaryStatistics` into this
  one.

  `final double`

  `getAverage()`

  Returns the arithmetic mean of values recorded, or zero if no
  values have been recorded.

  `final long`

  `getCount()`

  Return the count of values recorded.

  `final double`

  `getMax()`

  Returns the maximum recorded value, `Double.NaN` if any recorded
  value was NaN or `Double.NEGATIVE_INFINITY` if no values were
  recorded.

  `final double`

  `getMin()`

  Returns the minimum recorded value, `Double.NaN` if any recorded
  value was NaN or `Double.POSITIVE_INFINITY` if no values were
  recorded.

  `final double`

  `getSum()`

  Returns the sum of values recorded, or zero if no values have been
  recorded.

  `String`

  `toString()`

  Returns a non-empty string representation of this object suitable for
  debugging.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.function.[DoubleConsumer](function/DoubleConsumer.md "interface in java.util.function")

  `andThen`

* ## Constructor Details

  + ### DoubleSummaryStatistics

    public DoubleSummaryStatistics()

    Constructs an empty instance with zero count, zero sum,
    `Double.POSITIVE_INFINITY` min, `Double.NEGATIVE_INFINITY`
    max and zero average.
  + ### DoubleSummaryStatistics

    public DoubleSummaryStatistics(long count,
    double min,
    double max,
    double sum)
    throws [IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

    Constructs a non-empty instance with the specified `count`,
    `min`, `max`, and `sum`.

    If `count` is zero then the remaining arguments are ignored and
    an empty instance is constructed.

    If the arguments are inconsistent then an `IllegalArgumentException`
    is thrown. The necessary consistent argument conditions are:
    - `count >= 0`
    - `(min <= max && !isNaN(sum)) || (isNaN(min) && isNaN(max) && isNaN(sum))`

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

    public void accept(double value)

    Records another value into the summary information.

    Specified by:
    :   `accept` in interface `DoubleConsumer`

    Parameters:
    :   `value` - the input value
  + ### combine

    public void combine([DoubleSummaryStatistics](DoubleSummaryStatistics.md "class in java.util") other)

    Combines the state of another `DoubleSummaryStatistics` into this
    one.

    Parameters:
    :   `other` - another `DoubleSummaryStatistics`

    Throws:
    :   `NullPointerException` - if `other` is null
  + ### getCount

    public final long getCount()

    Return the count of values recorded.

    Returns:
    :   the count of values
  + ### getSum

    public final double getSum()

    Returns the sum of values recorded, or zero if no values have been
    recorded.

    The value of a floating-point sum is a function both of the
    input values as well as the order of addition operations. The
    order of addition operations of this method is intentionally
    not defined to allow for implementation flexibility to improve
    the speed and accuracy of the computed result.
    In particular, this method may be implemented using compensated
    summation or other technique to reduce the error bound in the
    numerical sum compared to a simple summation of `double`
    values.
    Because of the unspecified order of operations and the
    possibility of using differing summation schemes, the output of
    this method may vary on the same input values.

    Various conditions can result in a non-finite sum being
    computed. This can occur even if the all the recorded values
    being summed are finite. If any recorded value is non-finite,
    the sum will be non-finite:
    - If any recorded value is a NaN, then the final sum will be
      NaN.- If the recorded values contain one or more infinities, the
        sum will be infinite or NaN.
        * If the recorded values contain infinities of opposite sign,
          the sum will be NaN.* If the recorded values contain infinities of one sign and
            an intermediate sum overflows to an infinity of the opposite
            sign, the sum may be NaN.It is possible for intermediate sums of finite values to
    overflow into opposite-signed infinities; if that occurs, the
    final sum will be NaN even if the recorded values are all
    finite.
    If all the recorded values are zero, the sign of zero is
    *not* guaranteed to be preserved in the final sum.

    Returns:
    :   the sum of values, or zero if none
  + ### getMin

    public final double getMin()

    Returns the minimum recorded value, `Double.NaN` if any recorded
    value was NaN or `Double.POSITIVE_INFINITY` if no values were
    recorded. Unlike the numerical comparison operators, this method
    considers negative zero to be strictly smaller than positive zero.

    Returns:
    :   the minimum recorded value, `Double.NaN` if any recorded
        value was NaN or `Double.POSITIVE_INFINITY` if no values were
        recorded
  + ### getMax

    public final double getMax()

    Returns the maximum recorded value, `Double.NaN` if any recorded
    value was NaN or `Double.NEGATIVE_INFINITY` if no values were
    recorded. Unlike the numerical comparison operators, this method
    considers negative zero to be strictly smaller than positive zero.

    Returns:
    :   the maximum recorded value, `Double.NaN` if any recorded
        value was NaN or `Double.NEGATIVE_INFINITY` if no values were
        recorded
  + ### getAverage

    public final double getAverage()

    Returns the arithmetic mean of values recorded, or zero if no
    values have been recorded.

    The computed average can vary numerically and have the
    special case behavior as computing the sum; see [`getSum()`](#getSum())
    for details.

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