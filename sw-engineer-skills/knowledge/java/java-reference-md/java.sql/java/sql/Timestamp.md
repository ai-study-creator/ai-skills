Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class Timestamp

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.Date](../../../java.base/java/util/Date.md "class in java.util")

java.sql.Timestamp

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Comparable<Date>`

---

public class Timestamp
extends [Date](../../../java.base/java/util/Date.md "class in java.util")

A thin wrapper around `java.util.Date` that allows
the JDBC API to identify this as an SQL `TIMESTAMP` value.
It adds the ability
to hold the SQL `TIMESTAMP` fractional seconds value, by allowing
the specification of fractional seconds to a precision of nanoseconds.
A Timestamp also provides formatting and
parsing operations to support the JDBC escape syntax for timestamp values.

The precision of a Timestamp object is calculated to be either:

* `19` , which is the number of characters in yyyy-mm-dd hh:mm:ss* `20 + s` , which is the number
    of characters in the yyyy-mm-dd hh:mm:ss.[fff...] and `s` represents the scale of the given Timestamp,
    its fractional seconds precision.

**Note:** This type is a composite of a `java.util.Date` and a
separate nanoseconds value. Only integral seconds are stored in the
`java.util.Date` component. The fractional seconds - the nanos - are
separate. The `Timestamp.equals(Object)` method never returns
`true` when passed an object
that isn't an instance of `java.sql.Timestamp`,
because the nanos component of a date is unknown.
As a result, the `Timestamp.equals(Object)`
method is not symmetric with respect to the
`java.util.Date.equals(Object)`
method. Also, the `hashCode` method uses the underlying
`java.util.Date`
implementation and therefore does not include nanos in its computation.

Due to the differences between the `Timestamp` class
and the `java.util.Date`
class mentioned above, it is recommended that code not view
`Timestamp` values generically as an instance of
`java.util.Date`. The
inheritance relationship between `Timestamp`
and `java.util.Date` really
denotes implementation inheritance, and not type inheritance.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.sql.Timestamp)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Timestamp(int year,
  int month,
  int date,
  int hour,
  int minute,
  int second,
  int nano)`

  Deprecated.

  instead use the constructor `Timestamp(long millis)`

  `Timestamp(long time)`

  Constructs a `Timestamp` object
  using a milliseconds time value.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `after(Timestamp ts)`

  Indicates whether this `Timestamp` object is
  later than the given `Timestamp` object.

  `boolean`

  `before(Timestamp ts)`

  Indicates whether this `Timestamp` object is
  earlier than the given `Timestamp` object.

  `int`

  `compareTo(Timestamp ts)`

  Compares this `Timestamp` object to the given
  `Timestamp` object.

  `int`

  `compareTo(Date o)`

  Compares this `Timestamp` object to the given
  `Date` object.

  `boolean`

  `equals(Object ts)`

  Tests to see if this `Timestamp` object is
  equal to the given object.

  `boolean`

  `equals(Timestamp ts)`

  Tests to see if this `Timestamp` object is
  equal to the given `Timestamp` object.

  `static Timestamp`

  `from(Instant instant)`

  Obtains an instance of `Timestamp` from an [`Instant`](../../../java.base/java/time/Instant.md "class in java.time") object.

  `int`

  `getNanos()`

  Gets this `Timestamp` object's `nanos` value.

  `long`

  `getTime()`

  Returns the number of milliseconds since January 1, 1970, 00:00:00 GMT
  represented by this `Timestamp` object.

  `int`

  `hashCode()`

  Returns a hash code value for this object.

  `void`

  `setNanos(int n)`

  Sets this `Timestamp` object's `nanos` field
  to the given value.

  `void`

  `setTime(long time)`

  Sets this `Timestamp` object to represent a point in time that is
  `time` milliseconds after January 1, 1970 00:00:00 GMT.

  `Instant`

  `toInstant()`

  Converts this `Timestamp` object to an `Instant`.

  `LocalDateTime`

  `toLocalDateTime()`

  Converts this `Timestamp` object to a `LocalDateTime`.

  `String`

  `toString()`

  Formats a timestamp in JDBC timestamp escape format.

  `static Timestamp`

  `valueOf(String s)`

  Converts a `String` object in JDBC timestamp escape format to a
  `Timestamp` value.

  `static Timestamp`

  `valueOf(LocalDateTime dateTime)`

  Obtains an instance of `Timestamp` from a `LocalDateTime`
  object, with the same year, month, day of month, hours, minutes,
  seconds and nanos date-time value as the provided `LocalDateTime`.

  ### Methods inherited from class java.util.[Date](../../../java.base/java/util/Date.md "class in java.util")

  `after, before, clone, getDate, getDay, getHours, getMinutes, getMonth, getSeconds, getTimezoneOffset, getYear, parse, setDate, setHours, setMinutes, setMonth, setSeconds, setYear, toGMTString, toLocaleString, UTC`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Timestamp

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public Timestamp(int year,
    int month,
    int date,
    int hour,
    int minute,
    int second,
    int nano)

    Deprecated.

    instead use the constructor `Timestamp(long millis)`

    Constructs a `Timestamp` object initialized
    with the given values.

    Parameters:
    :   `year` - the year minus 1900
    :   `month` - 0 to 11
    :   `date` - 1 to 31
    :   `hour` - 0 to 23
    :   `minute` - 0 to 59
    :   `second` - 0 to 59
    :   `nano` - 0 to 999,999,999

    Throws:
    :   `IllegalArgumentException` - if the nano argument is out of bounds
  + ### Timestamp

    public Timestamp(long time)

    Constructs a `Timestamp` object
    using a milliseconds time value. The
    integral seconds are stored in the underlying date value; the
    fractional seconds are stored in the `nanos` field of
    the `Timestamp` object.

    Parameters:
    :   `time` - milliseconds since January 1, 1970, 00:00:00 GMT.
        A negative number is the number of milliseconds before
        January 1, 1970, 00:00:00 GMT.

    See Also:
    :   - [`Calendar`](../../../java.base/java/util/Calendar.md "class in java.util")
* ## Method Details

  + ### setTime

    public void setTime(long time)

    Sets this `Timestamp` object to represent a point in time that is
    `time` milliseconds after January 1, 1970 00:00:00 GMT.

    Overrides:
    :   `setTime` in class `Date`

    Parameters:
    :   `time` - the number of milliseconds.

    See Also:
    :   - [`getTime()`](#getTime())
        - [`Timestamp(long time)`](#%3Cinit%3E(long))
        - [`Calendar`](../../../java.base/java/util/Calendar.md "class in java.util")
  + ### getTime

    public long getTime()

    Returns the number of milliseconds since January 1, 1970, 00:00:00 GMT
    represented by this `Timestamp` object.

    Overrides:
    :   `getTime` in class `Date`

    Returns:
    :   the number of milliseconds since January 1, 1970, 00:00:00 GMT
        represented by this date.

    See Also:
    :   - [`setTime(long)`](#setTime(long))
  + ### valueOf

    public static [Timestamp](Timestamp.md "class in java.sql") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Converts a `String` object in JDBC timestamp escape format to a
    `Timestamp` value.

    Parameters:
    :   `s` - timestamp in format `yyyy-[m]m-[d]d hh:mm:ss[.f...]`. The
        fractional seconds may be omitted. The leading zero for `mm`
        and `dd` may also be omitted.

    Returns:
    :   corresponding `Timestamp` value

    Throws:
    :   `IllegalArgumentException` - if the given argument
        does not have the format `yyyy-[m]m-[d]d hh:mm:ss[.f...]`
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Formats a timestamp in JDBC timestamp escape format.
    `yyyy-mm-dd hh:mm:ss.fffffffff`,
    where `fffffffff` indicates nanoseconds.

    Overrides:
    :   `toString` in class `Date`

    Returns:
    :   a `String` object in
        `yyyy-mm-dd hh:mm:ss.fffffffff` format

    See Also:
    :   - [`Date.toLocaleString()`](../../../java.base/java/util/Date.md#toLocaleString())
        - [`Date.toGMTString()`](../../../java.base/java/util/Date.md#toGMTString())
  + ### getNanos

    public int getNanos()

    Gets this `Timestamp` object's `nanos` value.

    Returns:
    :   this `Timestamp` object's fractional seconds component

    See Also:
    :   - [`setNanos(int)`](#setNanos(int))
  + ### setNanos

    public void setNanos(int n)

    Sets this `Timestamp` object's `nanos` field
    to the given value.

    Parameters:
    :   `n` - the new fractional seconds component

    Throws:
    :   `IllegalArgumentException` - if the given argument
        is greater than 999999999 or less than 0

    See Also:
    :   - [`getNanos()`](#getNanos())
  + ### equals

    public boolean equals([Timestamp](Timestamp.md "class in java.sql") ts)

    Tests to see if this `Timestamp` object is
    equal to the given `Timestamp` object.

    Parameters:
    :   `ts` - the `Timestamp` value to compare with

    Returns:
    :   `true` if the given `Timestamp`
        object is equal to this `Timestamp` object;
        `false` otherwise
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") ts)

    Tests to see if this `Timestamp` object is
    equal to the given object.
    This version of the method `equals` has been added
    to fix the incorrect
    signature of `Timestamp.equals(Timestamp)` and to preserve backward
    compatibility with existing class files.
    Note: This method is not symmetric with respect to the
    `equals(Object)` method in the base class.

    Overrides:
    :   `equals` in class `Date`

    Parameters:
    :   `ts` - the `Object` value to compare with

    Returns:
    :   `true` if the given `Object` is an instance
        of a `Timestamp` that
        is equal to this `Timestamp` object;
        `false` otherwise

    See Also:
    :   - [`Date.getTime()`](../../../java.base/java/util/Date.md#getTime())
  + ### before

    public boolean before([Timestamp](Timestamp.md "class in java.sql") ts)

    Indicates whether this `Timestamp` object is
    earlier than the given `Timestamp` object.

    Parameters:
    :   `ts` - the `Timestamp` value to compare with

    Returns:
    :   `true` if this `Timestamp` object is earlier;
        `false` otherwise
  + ### after

    public boolean after([Timestamp](Timestamp.md "class in java.sql") ts)

    Indicates whether this `Timestamp` object is
    later than the given `Timestamp` object.

    Parameters:
    :   `ts` - the `Timestamp` value to compare with

    Returns:
    :   `true` if this `Timestamp` object is later;
        `false` otherwise
  + ### compareTo

    public int compareTo([Timestamp](Timestamp.md "class in java.sql") ts)

    Compares this `Timestamp` object to the given
    `Timestamp` object.

    Parameters:
    :   `ts` - the `Timestamp` object to be compared to
        this `Timestamp` object

    Returns:
    :   the value `0` if the two `Timestamp`
        objects are equal; a value less than `0` if this
        `Timestamp` object is before the given argument;
        and a value greater than `0` if this
        `Timestamp` object is after the given argument.

    Since:
    :   1.4
  + ### compareTo

    public int compareTo([Date](../../../java.base/java/util/Date.md "class in java.util") o)

    Compares this `Timestamp` object to the given
    `Date` object.

    Specified by:
    :   `compareTo` in interface `Comparable<Date>`

    Overrides:
    :   `compareTo` in class `Date`

    Parameters:
    :   `o` - the `Date` to be compared to
        this `Timestamp` object

    Returns:
    :   the value `0` if this `Timestamp` object
        and the given object are equal; a value less than `0`
        if this `Timestamp` object is before the given argument;
        and a value greater than `0` if this
        `Timestamp` object is after the given argument.

    Since:
    :   1.5
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this object. The result is the
    exclusive OR of the two halves of the primitive `long`
    value returned by the [`Date.getTime()`](../../../java.base/java/util/Date.md#getTime())
    method. That is, the hash code is the value of the expression:
    > ```
    >  (int)(this.getTime()^(this.getTime() >>> 32))
    > ```

    The `hashCode` method uses the underlying `java.util.Date`
    implementation and therefore does not include nanos in its computation.

    Overrides:
    :   `hashCode` in class `Date`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### valueOf

    public static [Timestamp](Timestamp.md "class in java.sql") valueOf([LocalDateTime](../../../java.base/java/time/LocalDateTime.md "class in java.time") dateTime)

    Obtains an instance of `Timestamp` from a `LocalDateTime`
    object, with the same year, month, day of month, hours, minutes,
    seconds and nanos date-time value as the provided `LocalDateTime`.

    The provided `LocalDateTime` is interpreted as the local
    date-time in the local time zone.

    Parameters:
    :   `dateTime` - a `LocalDateTime` to convert

    Returns:
    :   a `Timestamp` object

    Throws:
    :   `NullPointerException` - if `dateTime` is null.

    Since:
    :   1.8
  + ### toLocalDateTime

    public [LocalDateTime](../../../java.base/java/time/LocalDateTime.md "class in java.time") toLocalDateTime()

    Converts this `Timestamp` object to a `LocalDateTime`.

    The conversion creates a `LocalDateTime` that represents the
    same year, month, day of month, hours, minutes, seconds and nanos
    date-time value as this `Timestamp` in the local time zone.

    Returns:
    :   a `LocalDateTime` object representing the same date-time value

    Since:
    :   1.8
  + ### from

    public static [Timestamp](Timestamp.md "class in java.sql") from([Instant](../../../java.base/java/time/Instant.md "class in java.time") instant)

    Obtains an instance of `Timestamp` from an [`Instant`](../../../java.base/java/time/Instant.md "class in java.time") object.

    `Instant` can store points on the time-line further in the future
    and further in the past than `Date`. In this scenario, this method
    will throw an exception.

    Parameters:
    :   `instant` - the instant to convert

    Returns:
    :   an `Timestamp` representing the same point on the time-line as
        the provided instant

    Throws:
    :   `NullPointerException` - if `instant` is null.
    :   `IllegalArgumentException` - if the instant is too large to
        represent as a `Timestamp`

    Since:
    :   1.8
  + ### toInstant

    public [Instant](../../../java.base/java/time/Instant.md "class in java.time") toInstant()

    Converts this `Timestamp` object to an `Instant`.

    The conversion creates an `Instant` that represents the same
    point on the time-line as this `Timestamp`.

    Overrides:
    :   `toInstant` in class `Date`

    Returns:
    :   an instant representing the same point on the time-line

    Since:
    :   1.8