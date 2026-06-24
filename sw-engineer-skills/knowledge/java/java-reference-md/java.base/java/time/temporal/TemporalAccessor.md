Module [java.base](../../../module-summary.md)

Package [java.time.temporal](package-summary.md)

# Interface TemporalAccessor

All Known Subinterfaces:
:   `ChronoLocalDate`, `ChronoLocalDateTime<D>`, `ChronoZonedDateTime<D>`, `Era`, `Temporal`

All Known Implementing Classes:
:   `DayOfWeek`, `HijrahDate`, `HijrahEra`, `Instant`, `IsoEra`, `JapaneseDate`, `JapaneseEra`, `LocalDate`, `LocalDateTime`, `LocalTime`, `MinguoDate`, `MinguoEra`, `Month`, `MonthDay`, `OffsetDateTime`, `OffsetTime`, `ThaiBuddhistDate`, `ThaiBuddhistEra`, `Year`, `YearMonth`, `ZonedDateTime`, `ZoneOffset`

---

public interface TemporalAccessor

Framework-level interface defining read-only access to a temporal object,
such as a date, time, offset or some combination of these.

This is the base interface type for date, time and offset objects.
It is implemented by those classes that can provide information
as [fields](TemporalField.md "interface in java.time.temporal") or [queries](TemporalQuery.md "interface in java.time.temporal").

Most date and time information can be represented as a number.
These are modeled using `TemporalField` with the number held using
a `long` to handle large values. Year, month and day-of-month are
simple examples of fields, but they also include instant and offsets.
See [`ChronoField`](ChronoField.md "enum class in java.time.temporal") for the standard set of fields.

Two pieces of date/time information cannot be represented by numbers,
the [chronology](../chrono/Chronology.md "interface in java.time.chrono") and the
[time-zone](../ZoneId.md "class in java.time").
These can be accessed via [queries](#query(java.time.temporal.TemporalQuery)) using
the static methods defined on [`TemporalQuery`](TemporalQuery.md "interface in java.time.temporal").

A sub-interface, [`Temporal`](Temporal.md "interface in java.time.temporal"), extends this definition to one that also
supports adjustment and manipulation on more complete temporal objects.

This interface is a framework-level interface that should not be widely
used in application code. Instead, applications should create and pass
around instances of concrete types, such as `LocalDate`.
There are many reasons for this, part of which is that implementations
of this interface may be in calendar systems other than ISO.
See [`ChronoLocalDate`](../chrono/ChronoLocalDate.md "interface in java.time.chrono") for a fuller discussion of the issues.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default int`

  `get(TemporalField field)`

  Gets the value of the specified field as an `int`.

  `long`

  `getLong(TemporalField field)`

  Gets the value of the specified field as a `long`.

  `boolean`

  `isSupported(TemporalField field)`

  Checks if the specified field is supported.

  `default <R> R`

  `query(TemporalQuery<R> query)`

  Queries this date-time.

  `default ValueRange`

  `range(TemporalField field)`

  Gets the range of valid values for the specified field.

* ## Method Details

  + ### isSupported

    boolean isSupported([TemporalField](TemporalField.md "interface in java.time.temporal") field)

    Checks if the specified field is supported.

    This checks if the date-time can be queried for the specified field.
    If false, then calling the [`range`](#range(java.time.temporal.TemporalField)) and [`get`](#get(java.time.temporal.TemporalField))
    methods will throw an exception.

    Parameters:
    :   `field` - the field to check, null returns false

    Returns:
    :   true if this date-time can be queried for the field, false if not
  + ### range

    default [ValueRange](ValueRange.md "class in java.time.temporal") range([TemporalField](TemporalField.md "interface in java.time.temporal") field)

    Gets the range of valid values for the specified field.

    All fields can be expressed as a `long` integer.
    This method returns an object that describes the valid range for that value.
    The value of this temporal object is used to enhance the accuracy of the returned range.
    If the date-time cannot return the range, because the field is unsupported or for
    some other reason, an exception will be thrown.

    Note that the result only describes the minimum and maximum valid values
    and it is important not to read too much into them. For example, there
    could be values within the range that are invalid for the field.

    Parameters:
    :   `field` - the field to query the range for, not null

    Returns:
    :   the range of valid values for the field, not null

    Throws:
    :   `DateTimeException` - if the range for the field cannot be obtained
    :   `UnsupportedTemporalTypeException` - if the field is not supported
  + ### get

    default int get([TemporalField](TemporalField.md "interface in java.time.temporal") field)

    Gets the value of the specified field as an `int`.

    This queries the date-time for the value of the specified field.
    The returned value will always be within the valid range of values for the field.
    If the date-time cannot return the value, because the field is unsupported or for
    some other reason, an exception will be thrown.

    Parameters:
    :   `field` - the field to get, not null

    Returns:
    :   the value for the field, within the valid range of values

    Throws:
    :   `DateTimeException` - if a value for the field cannot be obtained or
        the value is outside the range of valid values for the field
    :   `UnsupportedTemporalTypeException` - if the field is not supported or
        the range of values exceeds an `int`
    :   `ArithmeticException` - if numeric overflow occurs
  + ### getLong

    long getLong([TemporalField](TemporalField.md "interface in java.time.temporal") field)

    Gets the value of the specified field as a `long`.

    This queries the date-time for the value of the specified field.
    The returned value may be outside the valid range of values for the field.
    If the date-time cannot return the value, because the field is unsupported or for
    some other reason, an exception will be thrown.

    Parameters:
    :   `field` - the field to get, not null

    Returns:
    :   the value for the field

    Throws:
    :   `DateTimeException` - if a value for the field cannot be obtained
    :   `UnsupportedTemporalTypeException` - if the field is not supported
    :   `ArithmeticException` - if numeric overflow occurs
  + ### query

    default <R> R query([TemporalQuery](TemporalQuery.md "interface in java.time.temporal")<R> query)

    Queries this date-time.

    This queries this date-time using the specified query strategy object.

    Queries are a key tool for extracting information from date-times.
    They exists to externalize the process of querying, permitting different
    approaches, as per the strategy design pattern.
    Examples might be a query that checks if the date is the day before February 29th
    in a leap year, or calculates the number of days to your next birthday.

    The most common query implementations are method references, such as
    `LocalDate::from` and `ZoneId::from`.
    Additional implementations are provided as static methods on [`TemporalQuery`](TemporalQuery.md "interface in java.time.temporal").

    Type Parameters:
    :   `R` - the type of the result

    Parameters:
    :   `query` - the query to invoke, not null

    Returns:
    :   the query result, null may be returned (defined by the query)

    Throws:
    :   `DateTimeException` - if unable to query
    :   `ArithmeticException` - if numeric overflow occurs