Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class Time

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.Date](../../../java.base/java/util/Date.md "class in java.util")

java.sql.Time

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Comparable<Date>`

---

public class Time
extends [Date](../../../java.base/java/util/Date.md "class in java.util")

A thin wrapper around the `java.util.Date` class that allows the JDBC
API to identify this as an SQL `TIME` value. The `Time`
class adds formatting and
parsing operations to support the JDBC escape syntax for time
values.

The date components should be set to the "zero epoch"
value of January 1, 1970 and should not be accessed.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.sql.Time)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Time(int hour,
  int minute,
  int second)`

  Deprecated.

  Use the constructor that takes a milliseconds value
  in place of this constructor

  `Time(long time)`

  Constructs a `Time` object using a milliseconds time value.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDate()`

  Deprecated.

  `int`

  `getDay()`

  Deprecated.

  `int`

  `getMonth()`

  Deprecated.

  `int`

  `getYear()`

  Deprecated.

  `void`

  `setDate(int i)`

  Deprecated.

  `void`

  `setMonth(int i)`

  Deprecated.

  `void`

  `setTime(long time)`

  Sets a `Time` object using a milliseconds time value.

  `void`

  `setYear(int i)`

  Deprecated.

  `Instant`

  `toInstant()`

  This method always throws an UnsupportedOperationException and should
  not be used because SQL `Time` values do not have a date
  component.

  `LocalTime`

  `toLocalTime()`

  Converts this `Time` object to a `LocalTime`.

  `String`

  `toString()`

  Formats a time in JDBC time escape format.

  `static Time`

  `valueOf(String s)`

  Converts a string in JDBC time escape format to a `Time` value.

  `static Time`

  `valueOf(LocalTime time)`

  Obtains an instance of `Time` from a [`LocalTime`](../../../java.base/java/time/LocalTime.md "class in java.time") object
  with the same hour, minute and second time value as the given
  `LocalTime`.

  ### Methods inherited from class java.util.[Date](../../../java.base/java/util/Date.md "class in java.util")

  `after, before, clone, compareTo, equals, from, getHours, getMinutes, getSeconds, getTime, getTimezoneOffset, hashCode, parse, setHours, setMinutes, setSeconds, toGMTString, toLocaleString, UTC`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Time

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public Time(int hour,
    int minute,
    int second)

    Deprecated.

    Use the constructor that takes a milliseconds value
    in place of this constructor

    Constructs a `Time` object initialized with the
    given values for the hour, minute, and second.
    The driver sets the date components to January 1, 1970.
    Any method that attempts to access the date components of a
    `Time` object will throw a
    `java.lang.IllegalArgumentException`.

    The result is undefined if a given argument is out of bounds.

    Parameters:
    :   `hour` - 0 to 23
    :   `minute` - 0 to 59
    :   `second` - 0 to 59
  + ### Time

    public Time(long time)

    Constructs a `Time` object using a milliseconds time value.

    Parameters:
    :   `time` - milliseconds since January 1, 1970, 00:00:00 GMT;
        a negative number is milliseconds before
        January 1, 1970, 00:00:00 GMT
* ## Method Details

  + ### setTime

    public void setTime(long time)

    Sets a `Time` object using a milliseconds time value.

    Overrides:
    :   `setTime` in class `Date`

    Parameters:
    :   `time` - milliseconds since January 1, 1970, 00:00:00 GMT;
        a negative number is milliseconds before
        January 1, 1970, 00:00:00 GMT
  + ### valueOf

    public static [Time](Time.md "class in java.sql") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Converts a string in JDBC time escape format to a `Time` value.

    Parameters:
    :   `s` - time in format "hh:mm:ss"

    Returns:
    :   a corresponding `Time` object
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Formats a time in JDBC time escape format.

    Overrides:
    :   `toString` in class `Date`

    Returns:
    :   a `String` in hh:mm:ss format

    See Also:
    :   - [`Date.toLocaleString()`](../../../java.base/java/util/Date.md#toLocaleString())
        - [`Date.toGMTString()`](../../../java.base/java/util/Date.md#toGMTString())
  + ### getYear

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public int getYear()

    Deprecated.

    This method is deprecated and should not be used because SQL `TIME`
    values do not have a year component.

    Overrides:
    :   `getYear` in class `Date`

    Returns:
    :   the year represented by this date, minus 1900.

    Throws:
    :   `IllegalArgumentException` - if this
        method is invoked

    See Also:
    :   - [`setYear(int)`](#setYear(int))
  + ### getMonth

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public int getMonth()

    Deprecated.

    This method is deprecated and should not be used because SQL `TIME`
    values do not have a month component.

    Overrides:
    :   `getMonth` in class `Date`

    Returns:
    :   the month represented by this date.

    Throws:
    :   `IllegalArgumentException` - if this
        method is invoked

    See Also:
    :   - [`setMonth(int)`](#setMonth(int))
  + ### getDay

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public int getDay()

    Deprecated.

    This method is deprecated and should not be used because SQL `TIME`
    values do not have a day component.

    Overrides:
    :   `getDay` in class `Date`

    Returns:
    :   the day of the week represented by this date.

    Throws:
    :   `IllegalArgumentException` - if this
        method is invoked

    See Also:
    :   - [`Calendar`](../../../java.base/java/util/Calendar.md "class in java.util")
  + ### getDate

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public int getDate()

    Deprecated.

    This method is deprecated and should not be used because SQL `TIME`
    values do not have a date component.

    Overrides:
    :   `getDate` in class `Date`

    Returns:
    :   the day of the month represented by this date.

    Throws:
    :   `IllegalArgumentException` - if this
        method is invoked

    See Also:
    :   - [`setDate(int)`](#setDate(int))
  + ### setYear

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public void setYear(int i)

    Deprecated.

    This method is deprecated and should not be used because SQL `TIME`
    values do not have a year component.

    Overrides:
    :   `setYear` in class `Date`

    Parameters:
    :   `i` - the year value.

    Throws:
    :   `IllegalArgumentException` - if this
        method is invoked

    See Also:
    :   - [`getYear()`](#getYear())
  + ### setMonth

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public void setMonth(int i)

    Deprecated.

    This method is deprecated and should not be used because SQL `TIME`
    values do not have a month component.

    Overrides:
    :   `setMonth` in class `Date`

    Parameters:
    :   `i` - the month value between 0-11.

    Throws:
    :   `IllegalArgumentException` - if this
        method is invoked

    See Also:
    :   - [`getMonth()`](#getMonth())
  + ### setDate

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public void setDate(int i)

    Deprecated.

    This method is deprecated and should not be used because SQL `TIME`
    values do not have a date component.

    Overrides:
    :   `setDate` in class `Date`

    Parameters:
    :   `i` - the day of the month value between 1-31.

    Throws:
    :   `IllegalArgumentException` - if this
        method is invoked

    See Also:
    :   - [`getDate()`](#getDate())
  + ### valueOf

    public static [Time](Time.md "class in java.sql") valueOf([LocalTime](../../../java.base/java/time/LocalTime.md "class in java.time") time)

    Obtains an instance of `Time` from a [`LocalTime`](../../../java.base/java/time/LocalTime.md "class in java.time") object
    with the same hour, minute and second time value as the given
    `LocalTime`. The nanosecond field from `LocalTime` is
    not part of the newly created `Time` object.

    Parameters:
    :   `time` - a `LocalTime` to convert

    Returns:
    :   a `Time` object

    Throws:
    :   `NullPointerException` - if `time` is null

    Since:
    :   1.8
  + ### toLocalTime

    public [LocalTime](../../../java.base/java/time/LocalTime.md "class in java.time") toLocalTime()

    Converts this `Time` object to a `LocalTime`.

    The conversion creates a `LocalTime` that represents the same
    hour, minute, and second time value as this `Time`. The
    nanosecond `LocalTime` field will be set to zero.

    Returns:
    :   a `LocalTime` object representing the same time value

    Since:
    :   1.8
  + ### toInstant

    public [Instant](../../../java.base/java/time/Instant.md "class in java.time") toInstant()

    This method always throws an UnsupportedOperationException and should
    not be used because SQL `Time` values do not have a date
    component.

    Overrides:
    :   `toInstant` in class `Date`

    Returns:
    :   an instant representing the same point on the time-line as
        this `Date` object

    Throws:
    :   `UnsupportedOperationException` - if this method is invoked