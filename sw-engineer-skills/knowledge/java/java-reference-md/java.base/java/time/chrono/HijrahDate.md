Module [java.base](../../../module-summary.md)

Package [java.time.chrono](package-summary.md)

# Class HijrahDate

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.time.chrono.HijrahDate

All Implemented Interfaces:
:   `Serializable`, `Comparable<ChronoLocalDate>`, `ChronoLocalDate`, `Temporal`, `TemporalAccessor`, `TemporalAdjuster`

---

public final class HijrahDate
extends [Object](../../lang/Object.md "class in java.lang")
implements [ChronoLocalDate](ChronoLocalDate.md "interface in java.time.chrono"), [Serializable](../../io/Serializable.md "interface in java.io")

A date in the Hijrah calendar system.

This date operates using one of several variants of the
[Hijrah calendar](HijrahChronology.md "class in java.time.chrono").

The Hijrah calendar has a different total of days in a year than
Gregorian calendar, and the length of each month is based on the period
of a complete revolution of the moon around the earth
(as between successive new moons).
Refer to the [`HijrahChronology`](HijrahChronology.md "class in java.time.chrono") for details of supported variants.

Each HijrahDate is created bound to a particular HijrahChronology,
The same chronology is propagated to each HijrahDate computed from the date.
To use a different Hijrah variant, its HijrahChronology can be used
to create new HijrahDate instances.
Alternatively, the [`withVariant(java.time.chrono.HijrahChronology)`](#withVariant(java.time.chrono.HijrahChronology)) method can be used to convert
to a new HijrahChronology.

This is a [value-based](../../../../java.base/java/lang/doc-files/ValueBased.md)
class; programmers should treat instances that are
[equal](#equals(java.lang.Object)) as interchangeable and should not
use instances for synchronization, or unpredictable behavior may
occur. For example, in a future release, synchronization may fail.
The `equals` method should be used for comparisons.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.time.chrono.HijrahDate)

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final ChronoLocalDateTime<HijrahDate>`

  `atTime(LocalTime localTime)`

  Combines this date with a time to create a `ChronoLocalDateTime`.

  `boolean`

  `equals(Object obj)`

  Compares this date to another date, including the chronology.

  `static HijrahDate`

  `from(TemporalAccessor temporal)`

  Obtains a `HijrahDate` of the Islamic Umm Al-Qura calendar from a temporal object.

  `HijrahChronology`

  `getChronology()`

  Gets the chronology of this date, which is the Hijrah calendar system.

  `HijrahEra`

  `getEra()`

  Gets the era applicable at this date.

  `long`

  `getLong(TemporalField field)`

  Gets the value of the specified field as a `long`.

  `int`

  `hashCode()`

  A hash code for this date.

  `boolean`

  `isLeapYear()`

  Checks if the year is a leap year, according to the Hijrah calendar system rules.

  `int`

  `lengthOfMonth()`

  Returns the length of the month represented by this date.

  `int`

  `lengthOfYear()`

  Returns the length of the year represented by this date.

  `HijrahDate`

  `minus(long amountToSubtract,
  TemporalUnit unit)`

  Returns an object of the same type as this object with the specified period subtracted.

  `HijrahDate`

  `minus(TemporalAmount amount)`

  Returns an object of the same type as this object with an amount subtracted.

  `static HijrahDate`

  `now()`

  Obtains the current `HijrahDate` of the Islamic Umm Al-Qura calendar
  in the default time-zone.

  `static HijrahDate`

  `now(Clock clock)`

  Obtains the current `HijrahDate` of the Islamic Umm Al-Qura calendar
  from the specified clock.

  `static HijrahDate`

  `now(ZoneId zone)`

  Obtains the current `HijrahDate` of the Islamic Umm Al-Qura calendar
  in the specified time-zone.

  `static HijrahDate`

  `of(int prolepticYear,
  int month,
  int dayOfMonth)`

  Obtains a `HijrahDate` of the Islamic Umm Al-Qura calendar
  from the proleptic-year, month-of-year and day-of-month fields.

  `HijrahDate`

  `plus(long amountToAdd,
  TemporalUnit unit)`

  Returns an object of the same type as this object with the specified period added.

  `HijrahDate`

  `plus(TemporalAmount amount)`

  Returns an object of the same type as this object with an amount added.

  `ValueRange`

  `range(TemporalField field)`

  Gets the range of valid values for the specified field.

  `long`

  `toEpochDay()`

  Converts this date to the Epoch Day.

  `String`

  `toString()`

  Returns a string representation of the object.

  `ChronoPeriod`

  `until(ChronoLocalDate endDate)`

  Calculates the period between this date and another date as a `ChronoPeriod`.

  `long`

  `until(Temporal endExclusive,
  TemporalUnit unit)`

  Calculates the amount of time until another date in terms of the specified unit.

  `HijrahDate`

  `with(TemporalAdjuster adjuster)`

  Returns an adjusted object of the same type as this object with the adjustment made.

  `HijrahDate`

  `with(TemporalField field,
  long newValue)`

  Returns an object of the same type as this object with the specified field altered.

  `HijrahDate`

  `withVariant(HijrahChronology chronology)`

  Returns a `HijrahDate` with the Chronology requested.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.time.chrono.[ChronoLocalDate](ChronoLocalDate.md "interface in java.time.chrono")

  `adjustInto, compareTo, format, isAfter, isBefore, isEqual, isSupported, isSupported, query, toString, until`

  ### Methods inherited from interface java.time.temporal.[TemporalAccessor](../temporal/TemporalAccessor.md "interface in java.time.temporal")

  `get`

* ## Method Details

  + ### now

    public static [HijrahDate](HijrahDate.md "class in java.time.chrono") now()

    Obtains the current `HijrahDate` of the Islamic Umm Al-Qura calendar
    in the default time-zone.

    This will query the [`system clock`](../Clock.md#systemDefaultZone()) in the default
    time-zone to obtain the current date.

    Using this method will prevent the ability to use an alternate clock for testing
    because the clock is hard-coded.

    Returns:
    :   the current date using the system clock and default time-zone, not null
  + ### now

    public static [HijrahDate](HijrahDate.md "class in java.time.chrono") now([ZoneId](../ZoneId.md "class in java.time") zone)

    Obtains the current `HijrahDate` of the Islamic Umm Al-Qura calendar
    in the specified time-zone.

    This will query the [`system clock`](../Clock.md#system(java.time.ZoneId)) to obtain the current date.
    Specifying the time-zone avoids dependence on the default time-zone.

    Using this method will prevent the ability to use an alternate clock for testing
    because the clock is hard-coded.

    Parameters:
    :   `zone` - the zone ID to use, not null

    Returns:
    :   the current date using the system clock, not null
  + ### now

    public static [HijrahDate](HijrahDate.md "class in java.time.chrono") now([Clock](../Clock.md "class in java.time") clock)

    Obtains the current `HijrahDate` of the Islamic Umm Al-Qura calendar
    from the specified clock.

    This will query the specified clock to obtain the current date - today.
    Using this method allows the use of an alternate clock for testing.
    The alternate clock may be introduced using [dependency injection](../Clock.md "class in java.time").

    Parameters:
    :   `clock` - the clock to use, not null

    Returns:
    :   the current date, not null

    Throws:
    :   `DateTimeException` - if the current date cannot be obtained
  + ### of

    public static [HijrahDate](HijrahDate.md "class in java.time.chrono") of(int prolepticYear,
    int month,
    int dayOfMonth)

    Obtains a `HijrahDate` of the Islamic Umm Al-Qura calendar
    from the proleptic-year, month-of-year and day-of-month fields.

    This returns a `HijrahDate` with the specified fields.
    The day must be valid for the year and month, otherwise an exception will be thrown.

    Parameters:
    :   `prolepticYear` - the Hijrah proleptic-year
    :   `month` - the Hijrah month-of-year, from 1 to 12
    :   `dayOfMonth` - the Hijrah day-of-month, from 1 to 30

    Returns:
    :   the date in Hijrah calendar system, not null

    Throws:
    :   `DateTimeException` - if the value of any field is out of range,
        or if the day-of-month is invalid for the month-year
  + ### from

    public static [HijrahDate](HijrahDate.md "class in java.time.chrono") from([TemporalAccessor](../temporal/TemporalAccessor.md "interface in java.time.temporal") temporal)

    Obtains a `HijrahDate` of the Islamic Umm Al-Qura calendar from a temporal object.

    This obtains a date in the Hijrah calendar system based on the specified temporal.
    A `TemporalAccessor` represents an arbitrary set of date and time information,
    which this factory converts to an instance of `HijrahDate`.

    The conversion typically uses the [`EPOCH_DAY`](../temporal/ChronoField.md#EPOCH_DAY)
    field, which is standardized across calendar systems.

    This method matches the signature of the functional interface [`TemporalQuery`](../temporal/TemporalQuery.md "interface in java.time.temporal")
    allowing it to be used as a query via method reference, `HijrahDate::from`.

    Parameters:
    :   `temporal` - the temporal object to convert, not null

    Returns:
    :   the date in Hijrah calendar system, not null

    Throws:
    :   `DateTimeException` - if unable to convert to a `HijrahDate`
  + ### getChronology

    public [HijrahChronology](HijrahChronology.md "class in java.time.chrono") getChronology()

    Gets the chronology of this date, which is the Hijrah calendar system.

    The `Chronology` represents the calendar system in use.
    The era and other fields in [`ChronoField`](../temporal/ChronoField.md "enum class in java.time.temporal") are defined by the chronology.

    Specified by:
    :   `getChronology` in interface `ChronoLocalDate`

    Returns:
    :   the Hijrah chronology, not null
  + ### getEra

    public [HijrahEra](HijrahEra.md "enum class in java.time.chrono") getEra()

    Gets the era applicable at this date.

    The Hijrah calendar system has one era, 'AH',
    defined by [`HijrahEra`](HijrahEra.md "enum class in java.time.chrono").

    Specified by:
    :   `getEra` in interface `ChronoLocalDate`

    Returns:
    :   the era applicable at this date, not null
  + ### lengthOfMonth

    public int lengthOfMonth()

    Returns the length of the month represented by this date.

    This returns the length of the month in days.
    Month lengths in the Hijrah calendar system vary between 29 and 30 days.

    Specified by:
    :   `lengthOfMonth` in interface `ChronoLocalDate`

    Returns:
    :   the length of the month in days
  + ### lengthOfYear

    public int lengthOfYear()

    Returns the length of the year represented by this date.

    This returns the length of the year in days.
    A Hijrah calendar system year is typically shorter than
    that of the ISO calendar system.

    Specified by:
    :   `lengthOfYear` in interface `ChronoLocalDate`

    Returns:
    :   the length of the year in days
  + ### range

    public [ValueRange](../temporal/ValueRange.md "class in java.time.temporal") range([TemporalField](../temporal/TemporalField.md "interface in java.time.temporal") field)

    Description copied from interface: `TemporalAccessor`

    Gets the range of valid values for the specified field.

    All fields can be expressed as a `long` integer.
    This method returns an object that describes the valid range for that value.
    The value of this temporal object is used to enhance the accuracy of the returned range.
    If the date-time cannot return the range, because the field is unsupported or for
    some other reason, an exception will be thrown.

    Note that the result only describes the minimum and maximum valid values
    and it is important not to read too much into them. For example, there
    could be values within the range that are invalid for the field.

    Specified by:
    :   `range` in interface `TemporalAccessor`

    Parameters:
    :   `field` - the field to query the range for, not null

    Returns:
    :   the range of valid values for the field, not null
  + ### getLong

    public long getLong([TemporalField](../temporal/TemporalField.md "interface in java.time.temporal") field)

    Description copied from interface: `TemporalAccessor`

    Gets the value of the specified field as a `long`.

    This queries the date-time for the value of the specified field.
    The returned value may be outside the valid range of values for the field.
    If the date-time cannot return the value, because the field is unsupported or for
    some other reason, an exception will be thrown.

    Specified by:
    :   `getLong` in interface `TemporalAccessor`

    Parameters:
    :   `field` - the field to get, not null

    Returns:
    :   the value for the field
  + ### with

    public [HijrahDate](HijrahDate.md "class in java.time.chrono") with([TemporalField](../temporal/TemporalField.md "interface in java.time.temporal") field,
    long newValue)

    Description copied from interface: `ChronoLocalDate`

    Returns an object of the same type as this object with the specified field altered.

    This returns a new object based on this one with the value for the specified field changed.
    For example, on a `LocalDate`, this could be used to set the year, month or day-of-month.
    The returned object will have the same observable type as this object.

    In some cases, changing a field is not fully defined. For example, if the target object is
    a date representing the 31st January, then changing the month to February would be unclear.
    In cases like this, the field is responsible for resolving the result. Typically it will choose
    the previous valid date, which would be the last valid day of February in this example.

    Specified by:
    :   `with` in interface `ChronoLocalDate`

    Specified by:
    :   `with` in interface `Temporal`

    Parameters:
    :   `field` - the field to set in the result, not null
    :   `newValue` - the new value of the field in the result

    Returns:
    :   an object of the same type with the specified field set, not null
  + ### with

    public [HijrahDate](HijrahDate.md "class in java.time.chrono") with([TemporalAdjuster](../temporal/TemporalAdjuster.md "interface in java.time.temporal") adjuster)

    Returns an adjusted object of the same type as this object with the adjustment made.

    This adjusts this date-time according to the rules of the specified adjuster.
    A simple adjuster might simply set the one of the fields, such as the year field.
    A more complex adjuster might set the date to the last day of the month.
    A selection of common adjustments is provided in
    [`TemporalAdjusters`](../temporal/TemporalAdjusters.md "class in java.time.temporal").
    These include finding the "last day of the month" and "next Wednesday".
    The adjuster is responsible for handling special cases, such as the varying
    lengths of month and leap years.

    Some example code indicating how and why this method is used:

    ```
      date = date.with(Month.JULY);        // most key classes implement TemporalAdjuster
      date = date.with(lastDayOfMonth());  // static import from Adjusters
      date = date.with(next(WEDNESDAY));   // static import from Adjusters and DayOfWeek
    ```

    Specified by:
    :   `with` in interface `ChronoLocalDate`

    Specified by:
    :   `with` in interface `Temporal`

    Parameters:
    :   `adjuster` - the adjuster to use, not null

    Returns:
    :   an object of the same type with the specified adjustment made, not null

    Throws:
    :   `DateTimeException` - if unable to make the adjustment.
        For example, if the adjuster requires an ISO chronology
    :   `ArithmeticException` - if numeric overflow occurs
  + ### withVariant

    public [HijrahDate](HijrahDate.md "class in java.time.chrono") withVariant([HijrahChronology](HijrahChronology.md "class in java.time.chrono") chronology)

    Returns a `HijrahDate` with the Chronology requested.

    The year, month, and day are checked against the new requested
    HijrahChronology. If the chronology has a shorter month length
    for the month, the day is reduced to be the last day of the month.

    Parameters:
    :   `chronology` - the new HijrahChonology, non-null

    Returns:
    :   a HijrahDate with the requested HijrahChronology, non-null
  + ### plus

    public [HijrahDate](HijrahDate.md "class in java.time.chrono") plus([TemporalAmount](../temporal/TemporalAmount.md "interface in java.time.temporal") amount)

    Returns an object of the same type as this object with an amount added.

    This adjusts this temporal, adding according to the rules of the specified amount.
    The amount is typically a [`Period`](../Period.md "class in java.time") but may be any other type implementing
    the [`TemporalAmount`](../temporal/TemporalAmount.md "interface in java.time.temporal") interface, such as [`Duration`](../Duration.md "class in java.time").

    Some example code indicating how and why this method is used:

    ```
      date = date.plus(period);                // add a Period instance
      date = date.plus(duration);              // add a Duration instance
      date = date.plus(workingDays(6));        // example user-written workingDays method
    ```

    Note that calling `plus` followed by `minus` is not guaranteed to
    return the same date-time.

    Specified by:
    :   `plus` in interface `ChronoLocalDate`

    Specified by:
    :   `plus` in interface `Temporal`

    Parameters:
    :   `amount` - the amount to add, not null

    Returns:
    :   an object of the same type with the specified adjustment made, not null

    Throws:
    :   `DateTimeException` - if the addition cannot be made
    :   `ArithmeticException` - if numeric overflow occurs
  + ### minus

    public [HijrahDate](HijrahDate.md "class in java.time.chrono") minus([TemporalAmount](../temporal/TemporalAmount.md "interface in java.time.temporal") amount)

    Returns an object of the same type as this object with an amount subtracted.

    This adjusts this temporal, subtracting according to the rules of the specified amount.
    The amount is typically a [`Period`](../Period.md "class in java.time") but may be any other type implementing
    the [`TemporalAmount`](../temporal/TemporalAmount.md "interface in java.time.temporal") interface, such as [`Duration`](../Duration.md "class in java.time").

    Some example code indicating how and why this method is used:

    ```
      date = date.minus(period);               // subtract a Period instance
      date = date.minus(duration);             // subtract a Duration instance
      date = date.minus(workingDays(6));       // example user-written workingDays method
    ```

    Note that calling `plus` followed by `minus` is not guaranteed to
    return the same date-time.

    Specified by:
    :   `minus` in interface `ChronoLocalDate`

    Specified by:
    :   `minus` in interface `Temporal`

    Parameters:
    :   `amount` - the amount to subtract, not null

    Returns:
    :   an object of the same type with the specified adjustment made, not null

    Throws:
    :   `DateTimeException` - if the subtraction cannot be made
    :   `ArithmeticException` - if numeric overflow occurs
  + ### toEpochDay

    public long toEpochDay()

    Description copied from interface: `ChronoLocalDate`

    Converts this date to the Epoch Day.

    The [`Epoch Day count`](../temporal/ChronoField.md#EPOCH_DAY) is a simple
    incrementing count of days where day 0 is 1970-01-01 (ISO).
    This definition is the same for all chronologies, enabling conversion.

    This default implementation queries the `EPOCH_DAY` field.

    Specified by:
    :   `toEpochDay` in interface `ChronoLocalDate`

    Returns:
    :   the Epoch Day equivalent to this date
  + ### isLeapYear

    public boolean isLeapYear()

    Checks if the year is a leap year, according to the Hijrah calendar system rules.

    Specified by:
    :   `isLeapYear` in interface `ChronoLocalDate`

    Returns:
    :   true if this date is in a leap year
  + ### plus

    public [HijrahDate](HijrahDate.md "class in java.time.chrono") plus(long amountToAdd,
    [TemporalUnit](../temporal/TemporalUnit.md "interface in java.time.temporal") unit)

    Description copied from interface: `ChronoLocalDate`

    Returns an object of the same type as this object with the specified period added.

    This method returns a new object based on this one with the specified period added.
    For example, on a `LocalDate`, this could be used to add a number of years, months or days.
    The returned object will have the same observable type as this object.

    In some cases, changing a field is not fully defined. For example, if the target object is
    a date representing the 31st January, then adding one month would be unclear.
    In cases like this, the field is responsible for resolving the result. Typically it will choose
    the previous valid date, which would be the last valid day of February in this example.

    Specified by:
    :   `plus` in interface `ChronoLocalDate`

    Specified by:
    :   `plus` in interface `Temporal`

    Parameters:
    :   `amountToAdd` - the amount of the specified unit to add, may be negative
    :   `unit` - the unit of the amount to add, not null

    Returns:
    :   an object of the same type with the specified period added, not null
  + ### minus

    public [HijrahDate](HijrahDate.md "class in java.time.chrono") minus(long amountToSubtract,
    [TemporalUnit](../temporal/TemporalUnit.md "interface in java.time.temporal") unit)

    Description copied from interface: `ChronoLocalDate`

    Returns an object of the same type as this object with the specified period subtracted.

    This method returns a new object based on this one with the specified period subtracted.
    For example, on a `LocalDate`, this could be used to subtract a number of years, months or days.
    The returned object will have the same observable type as this object.

    In some cases, changing a field is not fully defined. For example, if the target object is
    a date representing the 31st March, then subtracting one month would be unclear.
    In cases like this, the field is responsible for resolving the result. Typically it will choose
    the previous valid date, which would be the last valid day of February in this example.

    Specified by:
    :   `minus` in interface `ChronoLocalDate`

    Specified by:
    :   `minus` in interface `Temporal`

    Parameters:
    :   `amountToSubtract` - the amount of the specified unit to subtract, may be negative
    :   `unit` - the unit of the amount to subtract, not null

    Returns:
    :   an object of the same type with the specified period subtracted, not null
  + ### atTime

    public final [ChronoLocalDateTime](ChronoLocalDateTime.md "interface in java.time.chrono")<[HijrahDate](HijrahDate.md "class in java.time.chrono")> atTime([LocalTime](../LocalTime.md "class in java.time") localTime)

    Description copied from interface: `ChronoLocalDate`

    Combines this date with a time to create a `ChronoLocalDateTime`.

    This returns a `ChronoLocalDateTime` formed from this date at the specified time.
    All possible combinations of date and time are valid.

    Specified by:
    :   `atTime` in interface `ChronoLocalDate`

    Parameters:
    :   `localTime` - the local time to use, not null

    Returns:
    :   the local date-time formed from this date and the specified time, not null
  + ### until

    public [ChronoPeriod](ChronoPeriod.md "interface in java.time.chrono") until([ChronoLocalDate](ChronoLocalDate.md "interface in java.time.chrono") endDate)

    Description copied from interface: `ChronoLocalDate`

    Calculates the period between this date and another date as a `ChronoPeriod`.

    This calculates the period between two dates. All supplied chronologies
    calculate the period using years, months and days, however the
    `ChronoPeriod` API allows the period to be represented using other units.

    The start and end points are `this` and the specified date.
    The result will be negative if the end is before the start.
    The negative sign will be the same in each of year, month and day.

    The calculation is performed using the chronology of this date.
    If necessary, the input date will be converted to match.

    This instance is immutable and unaffected by this method call.

    Specified by:
    :   `until` in interface `ChronoLocalDate`

    Parameters:
    :   `endDate` - the end date, exclusive, which may be in any chronology, not null

    Returns:
    :   the period between this date and the end date, not null
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") obj)

    Compares this date to another date, including the chronology.

    Compares this `HijrahDate` with another ensuring that the date is the same.

    Only objects of type `HijrahDate` are compared, other types return false.
    To compare the dates of two `TemporalAccessor` instances, including dates
    in two different chronologies, use [`ChronoField.EPOCH_DAY`](../temporal/ChronoField.md#EPOCH_DAY) as a comparator.

    Specified by:
    :   `equals` in interface `ChronoLocalDate`

    Parameters:
    :   `obj` - the object to check, null returns false

    Returns:
    :   true if this is equal to the other date and the Chronologies are equal

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    A hash code for this date.

    Specified by:
    :   `hashCode` in interface `ChronoLocalDate`

    Returns:
    :   a suitable hash code based only on the Chronology and the date

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### until

    public long until([Temporal](../temporal/Temporal.md "interface in java.time.temporal") endExclusive,
    [TemporalUnit](../temporal/TemporalUnit.md "interface in java.time.temporal") unit)

    Description copied from interface: `ChronoLocalDate`

    Calculates the amount of time until another date in terms of the specified unit.

    This calculates the amount of time between two `ChronoLocalDate`
    objects in terms of a single `TemporalUnit`.
    The start and end points are `this` and the specified date.
    The result will be negative if the end is before the start.
    The `Temporal` passed to this method is converted to a
    `ChronoLocalDate` using [`Chronology.date(TemporalAccessor)`](Chronology.md#date(java.time.temporal.TemporalAccessor)).
    The calculation returns a whole number, representing the number of
    complete units between the two dates.
    For example, the amount in days between two dates can be calculated
    using `startDate.until(endDate, DAYS)`.

    There are two equivalent ways of using this method.
    The first is to invoke this method.
    The second is to use [`TemporalUnit.between(Temporal, Temporal)`](../temporal/TemporalUnit.md#between(java.time.temporal.Temporal,java.time.temporal.Temporal)):

    ```
       // these two lines are equivalent
       amount = start.until(end, MONTHS);
       amount = MONTHS.between(start, end);
    ```

    The choice should be made based on which makes the code more readable.

    The calculation is implemented in this method for [`ChronoUnit`](../temporal/ChronoUnit.md "enum class in java.time.temporal").
    The units `DAYS`, `WEEKS`, `MONTHS`, `YEARS`,
    `DECADES`, `CENTURIES`, `MILLENNIA` and `ERAS`
    should be supported by all implementations.
    Other `ChronoUnit` values will throw an exception.

    If the unit is not a `ChronoUnit`, then the result of this method
    is obtained by invoking `TemporalUnit.between(Temporal, Temporal)`
    passing `this` as the first argument and the converted input temporal as
    the second argument.

    This instance is immutable and unaffected by this method call.

    Specified by:
    :   `until` in interface `ChronoLocalDate`

    Specified by:
    :   `until` in interface `Temporal`

    Parameters:
    :   `endExclusive` - the end date, exclusive, which is converted to a
        `ChronoLocalDate` in the same chronology, not null
    :   `unit` - the unit to measure the amount in, not null

    Returns:
    :   the amount of time between this date and the end date
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Specified by:
    :   `toString` in interface `ChronoLocalDate`

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.