Module [java.base](../../../module-summary.md)

Package [java.time.temporal](package-summary.md)

# Class IsoFields

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.time.temporal.IsoFields

---

public final class IsoFields
extends [Object](../../lang/Object.md "class in java.lang")

Fields and units specific to the ISO-8601 calendar system,
including quarter-of-year and week-based-year.

This class defines fields and units that are specific to the ISO calendar system.

## Quarter of year

The ISO-8601 standard is based on the standard civic 12 month year.
This is commonly divided into four quarters, often abbreviated as Q1, Q2, Q3 and Q4.

January, February and March are in Q1.
April, May and June are in Q2.
July, August and September are in Q3.
October, November and December are in Q4.

The complete date is expressed using three fields:

* [`DAY_OF_QUARTER`](#DAY_OF_QUARTER) - the day within the quarter, from 1 to 90, 91 or 92* [`QUARTER_OF_YEAR`](#QUARTER_OF_YEAR) - the quarter within the year, from 1 to 4* [`YEAR`](ChronoField.md#YEAR) - the standard ISO year

## Week based years

The ISO-8601 standard was originally intended as a data interchange format,
defining a string format for dates and times. However, it also defines an
alternate way of expressing the date, based on the concept of week-based-year.

The date is expressed using three fields:

* [`DAY_OF_WEEK`](ChronoField.md#DAY_OF_WEEK) - the standard field defining the
  day-of-week from Monday (1) to Sunday (7)* [`WEEK_OF_WEEK_BASED_YEAR`](#WEEK_OF_WEEK_BASED_YEAR) - the week within the week-based-year* [`WEEK_BASED_YEAR`](#WEEK_BASED_YEAR) - the week-based-year

The week-based-year itself is defined relative to the standard ISO proleptic year.
It differs from the standard year in that it always starts on a Monday.

The first week of a week-based-year is the first Monday-based week of the standard
ISO year that has at least 4 days in the new year.

* If January 1st is Monday then week 1 starts on January 1st* If January 1st is Tuesday then week 1 starts on December 31st of the previous standard year* If January 1st is Wednesday then week 1 starts on December 30th of the previous standard year* If January 1st is Thursday then week 1 starts on December 29th of the previous standard year* If January 1st is Friday then week 1 starts on January 4th* If January 1st is Saturday then week 1 starts on January 3rd* If January 1st is Sunday then week 1 starts on January 2nd

There are 52 weeks in most week-based years, however on occasion there are 53 weeks.

For example:

Examples of Week based Years

| Date | Day-of-week | Field values |
| --- | --- | --- |
| 2008-12-28 | Sunday | Week 52 of week-based-year 2008 |
| 2008-12-29 | Monday | Week 1 of week-based-year 2009 |
| 2008-12-31 | Wednesday | Week 1 of week-based-year 2009 |
| 2009-01-01 | Thursday | Week 1 of week-based-year 2009 |
| 2009-01-04 | Sunday | Week 1 of week-based-year 2009 |
| 2009-01-05 | Monday | Week 2 of week-based-year 2009 |

Since:
:   1.8

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final TemporalField`

  `DAY_OF_QUARTER`

  The field that represents the day-of-quarter.

  `static final TemporalField`

  `QUARTER_OF_YEAR`

  The field that represents the quarter-of-year.

  `static final TemporalUnit`

  `QUARTER_YEARS`

  Unit that represents the concept of a quarter-year.

  `static final TemporalField`

  `WEEK_BASED_YEAR`

  The field that represents the week-based-year.

  `static final TemporalUnit`

  `WEEK_BASED_YEARS`

  The unit that represents week-based-years for the purpose of addition and subtraction.

  `static final TemporalField`

  `WEEK_OF_WEEK_BASED_YEAR`

  The field that represents the week-of-week-based-year.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DAY\_OF\_QUARTER

    public static final [TemporalField](TemporalField.md "interface in java.time.temporal") DAY\_OF\_QUARTER

    The field that represents the day-of-quarter.

    This field allows the day-of-quarter value to be queried and set.
    The day-of-quarter has values from 1 to 90 in Q1 of a standard year, from 1 to 91
    in Q1 of a leap year, from 1 to 91 in Q2 and from 1 to 92 in Q3 and Q4.

    The day-of-quarter can only be calculated if the day-of-year, month-of-year and year
    are available.

    When setting this field, the value is allowed to be partially lenient, taking any
    value from 1 to 92. If the quarter has less than 92 days, then day 92, and
    potentially day 91, is in the following quarter.

    In the resolving phase of parsing, a date can be created from a year,
    quarter-of-year and day-of-quarter.

    In [strict mode](../format/ResolverStyle.md#STRICT), all three fields are
    validated against their range of valid values. The day-of-quarter field
    is validated from 1 to 90, 91 or 92 depending on the year and quarter.

    In [smart mode](../format/ResolverStyle.md#SMART), all three fields are
    validated against their range of valid values. The day-of-quarter field is
    validated between 1 and 92, ignoring the actual range based on the year and quarter.
    If the day-of-quarter exceeds the actual range by one day, then the resulting date
    is one day later. If the day-of-quarter exceeds the actual range by two days,
    then the resulting date is two days later.

    In [lenient mode](../format/ResolverStyle.md#LENIENT), only the year is validated
    against the range of valid values. The resulting date is calculated equivalent to
    the following three stage approach. First, create a date on the first of January
    in the requested year. Then take the quarter-of-year, subtract one, and add the
    amount in quarters to the date. Finally, take the day-of-quarter, subtract one,
    and add the amount in days to the date.

    This unit is an immutable and thread-safe singleton.
  + ### QUARTER\_OF\_YEAR

    public static final [TemporalField](TemporalField.md "interface in java.time.temporal") QUARTER\_OF\_YEAR

    The field that represents the quarter-of-year.

    This field allows the quarter-of-year value to be queried and set.
    The quarter-of-year has values from 1 to 4.

    The quarter-of-year can only be calculated if the month-of-year is available.

    In the resolving phase of parsing, a date can be created from a year,
    quarter-of-year and day-of-quarter.
    See [`DAY_OF_QUARTER`](#DAY_OF_QUARTER) for details.

    This unit is an immutable and thread-safe singleton.
  + ### WEEK\_OF\_WEEK\_BASED\_YEAR

    public static final [TemporalField](TemporalField.md "interface in java.time.temporal") WEEK\_OF\_WEEK\_BASED\_YEAR

    The field that represents the week-of-week-based-year.

    This field allows the week of the week-based-year value to be queried and set.
    The week-of-week-based-year has values from 1 to 52, or 53 if the
    week-based-year has 53 weeks.

    In the resolving phase of parsing, a date can be created from a
    week-based-year, week-of-week-based-year and day-of-week.

    In [strict mode](../format/ResolverStyle.md#STRICT), all three fields are
    validated against their range of valid values. The week-of-week-based-year
    field is validated from 1 to 52 or 53 depending on the week-based-year.

    In [smart mode](../format/ResolverStyle.md#SMART), all three fields are
    validated against their range of valid values. The week-of-week-based-year
    field is validated between 1 and 53, ignoring the week-based-year.
    If the week-of-week-based-year is 53, but the week-based-year only has
    52 weeks, then the resulting date is in week 1 of the following week-based-year.

    In [lenient mode](../format/ResolverStyle.md#LENIENT), only the week-based-year
    is validated against the range of valid values. If the day-of-week is outside
    the range 1 to 7, then the resulting date is adjusted by a suitable number of
    weeks to reduce the day-of-week to the range 1 to 7. If the week-of-week-based-year
    value is outside the range 1 to 52, then any excess weeks are added or subtracted
    from the resulting date.

    This unit is an immutable and thread-safe singleton.
  + ### WEEK\_BASED\_YEAR

    public static final [TemporalField](TemporalField.md "interface in java.time.temporal") WEEK\_BASED\_YEAR

    The field that represents the week-based-year.

    This field allows the week-based-year value to be queried and set.

    The field has a range that matches [`LocalDate.MAX`](../LocalDate.md#MAX) and [`LocalDate.MIN`](../LocalDate.md#MIN).

    In the resolving phase of parsing, a date can be created from a
    week-based-year, week-of-week-based-year and day-of-week.
    See [`WEEK_OF_WEEK_BASED_YEAR`](#WEEK_OF_WEEK_BASED_YEAR) for details.

    This unit is an immutable and thread-safe singleton.
  + ### WEEK\_BASED\_YEARS

    public static final [TemporalUnit](TemporalUnit.md "interface in java.time.temporal") WEEK\_BASED\_YEARS

    The unit that represents week-based-years for the purpose of addition and subtraction.

    This allows a number of week-based-years to be added to, or subtracted from, a date.
    The unit is equal to either 52 or 53 weeks.
    The estimated duration of a week-based-year is the same as that of a standard ISO
    year at `365.2425 Days`.

    The rules for addition add the number of week-based-years to the existing value
    for the week-based-year field. If the resulting week-based-year only has 52 weeks,
    then the date will be in week 1 of the following week-based-year.

    This unit is an immutable and thread-safe singleton.
  + ### QUARTER\_YEARS

    public static final [TemporalUnit](TemporalUnit.md "interface in java.time.temporal") QUARTER\_YEARS

    Unit that represents the concept of a quarter-year.
    For the ISO calendar system, it is equal to 3 months.
    The estimated duration of a quarter-year is one quarter of `365.2425 Days`.

    This unit is an immutable and thread-safe singleton.