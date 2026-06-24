Module [java.base](../../../module-summary.md)

Package [java.time.temporal](package-summary.md)

# Interface TemporalAmount

All Known Subinterfaces:
:   `ChronoPeriod`

All Known Implementing Classes:
:   `Duration`, `Period`

---

public interface TemporalAmount

Framework-level interface defining an amount of time, such as
"6 hours", "8 days" or "2 years and 3 months".

This is the base interface type for amounts of time.
An amount is distinct from a date or time-of-day in that it is not tied
to any specific point on the time-line.

The amount can be thought of as a `Map` of [`TemporalUnit`](TemporalUnit.md "interface in java.time.temporal") to
`long`, exposed via [`getUnits()`](#getUnits()) and [`get(TemporalUnit)`](#get(java.time.temporal.TemporalUnit)).
A simple case might have a single unit-value pair, such as "6 hours".
A more complex case may have multiple unit-value pairs, such as
"7 years, 3 months and 5 days".

There are two common implementations.
[`Period`](../Period.md "class in java.time") is a date-based implementation, storing years, months and days.
[`Duration`](../Duration.md "class in java.time") is a time-based implementation, storing seconds and nanoseconds,
but providing some access using other duration based units such as minutes,
hours and fixed 24-hour days.

This interface is a framework-level interface that should not be widely
used in application code. Instead, applications should create and pass
around instances of concrete types, such as `Period` and `Duration`.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Temporal`

  `addTo(Temporal temporal)`

  Adds to the specified temporal object.

  `long`

  `get(TemporalUnit unit)`

  Returns the value of the requested unit.

  `List<TemporalUnit>`

  `getUnits()`

  Returns the list of units uniquely defining the value of this TemporalAmount.

  `Temporal`

  `subtractFrom(Temporal temporal)`

  Subtracts this object from the specified temporal object.

* ## Method Details

  + ### get

    long get([TemporalUnit](TemporalUnit.md "interface in java.time.temporal") unit)

    Returns the value of the requested unit.
    The units returned from [`getUnits()`](#getUnits()) uniquely define the
    value of the `TemporalAmount`. A value must be returned
    for each unit listed in `getUnits`.

    Parameters:
    :   `unit` - the `TemporalUnit` for which to return the value

    Returns:
    :   the long value of the unit

    Throws:
    :   `DateTimeException` - if a value for the unit cannot be obtained
    :   `UnsupportedTemporalTypeException` - if the `unit` is not supported
  + ### getUnits

    [List](../../util/List.md "interface in java.util")<[TemporalUnit](TemporalUnit.md "interface in java.time.temporal")> getUnits()

    Returns the list of units uniquely defining the value of this TemporalAmount.
    The list of `TemporalUnits` is defined by the implementation class.
    The list is a snapshot of the units at the time `getUnits`
    is called and is not mutable.
    The units are ordered from longest duration to the shortest duration
    of the unit.

    Returns:
    :   the List of `TemporalUnits`; not null
  + ### addTo

    [Temporal](Temporal.md "interface in java.time.temporal") addTo([Temporal](Temporal.md "interface in java.time.temporal") temporal)

    Adds to the specified temporal object.

    Adds the amount to the specified temporal object using the logic
    encapsulated in the implementing class.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`Temporal.plus(TemporalAmount)`](Temporal.md#plus(java.time.temporal.TemporalAmount)):

    ```
       // These two lines are equivalent, but the second approach is recommended
       dateTime = amount.addTo(dateTime);
       dateTime = dateTime.plus(adder);
    ```

    It is recommended to use the second approach, `plus(TemporalAmount)`,
    as it is a lot clearer to read in code.

    Parameters:
    :   `temporal` - the temporal object to add the amount to, not null

    Returns:
    :   an object of the same observable type with the addition made, not null

    Throws:
    :   `DateTimeException` - if unable to add
    :   `ArithmeticException` - if numeric overflow occurs
  + ### subtractFrom

    [Temporal](Temporal.md "interface in java.time.temporal") subtractFrom([Temporal](Temporal.md "interface in java.time.temporal") temporal)

    Subtracts this object from the specified temporal object.

    Subtracts the amount from the specified temporal object using the logic
    encapsulated in the implementing class.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`Temporal.minus(TemporalAmount)`](Temporal.md#minus(java.time.temporal.TemporalAmount)):

    ```
       // these two lines are equivalent, but the second approach is recommended
       dateTime = amount.subtractFrom(dateTime);
       dateTime = dateTime.minus(amount);
    ```

    It is recommended to use the second approach, `minus(TemporalAmount)`,
    as it is a lot clearer to read in code.

    Parameters:
    :   `temporal` - the temporal object to subtract the amount from, not null

    Returns:
    :   an object of the same observable type with the subtraction made, not null

    Throws:
    :   `DateTimeException` - if unable to subtract
    :   `ArithmeticException` - if numeric overflow occurs