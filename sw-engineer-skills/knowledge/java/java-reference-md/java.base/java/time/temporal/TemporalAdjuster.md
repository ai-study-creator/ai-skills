Module [java.base](../../../module-summary.md)

Package [java.time.temporal](package-summary.md)

# Interface TemporalAdjuster

All Known Subinterfaces:
:   `ChronoLocalDate`, `ChronoLocalDateTime<D>`, `Era`

All Known Implementing Classes:
:   `DayOfWeek`, `HijrahDate`, `HijrahEra`, `Instant`, `IsoEra`, `JapaneseDate`, `JapaneseEra`, `LocalDate`, `LocalDateTime`, `LocalTime`, `MinguoDate`, `MinguoEra`, `Month`, `MonthDay`, `OffsetDateTime`, `OffsetTime`, `ThaiBuddhistDate`, `ThaiBuddhistEra`, `Year`, `YearMonth`, `ZoneOffset`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface TemporalAdjuster

Strategy for adjusting a temporal object.

Adjusters are a key tool for modifying temporal objects.
They exist to externalize the process of adjustment, permitting different
approaches, as per the strategy design pattern.
Examples might be an adjuster that sets the date avoiding weekends, or one that
sets the date to the last day of the month.

There are two equivalent ways of using a `TemporalAdjuster`.
The first is to invoke the method on this interface directly.
The second is to use [`Temporal.with(TemporalAdjuster)`](Temporal.md#with(java.time.temporal.TemporalAdjuster)):

```
   // these two lines are equivalent, but the second approach is recommended
   temporal = thisAdjuster.adjustInto(temporal);
   temporal = temporal.with(thisAdjuster);
```

It is recommended to use the second approach, `with(TemporalAdjuster)`,
as it is a lot clearer to read in code.

The [`TemporalAdjusters`](TemporalAdjusters.md "class in java.time.temporal") class contains a standard set of adjusters,
available as static methods.
These include:

* finding the first or last day of the month* finding the first day of next month* finding the first or last day of the year* finding the first day of next year* finding the first or last day-of-week within a month, such as "first Wednesday in June"* finding the next or previous day-of-week, such as "next Thursday"

Since:
:   1.8

See Also:
:   * [`TemporalAdjusters`](TemporalAdjusters.md "class in java.time.temporal")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Temporal`

  `adjustInto(Temporal temporal)`

  Adjusts the specified temporal object.

* ## Method Details

  + ### adjustInto

    [Temporal](Temporal.md "interface in java.time.temporal") adjustInto([Temporal](Temporal.md "interface in java.time.temporal") temporal)

    Adjusts the specified temporal object.

    This adjusts the specified temporal object using the logic
    encapsulated in the implementing class.
    Examples might be an adjuster that sets the date avoiding weekends, or one that
    sets the date to the last day of the month.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`Temporal.with(TemporalAdjuster)`](Temporal.md#with(java.time.temporal.TemporalAdjuster)):

    ```
       // these two lines are equivalent, but the second approach is recommended
       temporal = thisAdjuster.adjustInto(temporal);
       temporal = temporal.with(thisAdjuster);
    ```

    It is recommended to use the second approach, `with(TemporalAdjuster)`,
    as it is a lot clearer to read in code.

    Parameters:
    :   `temporal` - the temporal object to adjust, not null

    Returns:
    :   an object of the same observable type with the adjustment made, not null

    Throws:
    :   `DateTimeException` - if unable to make the adjustment
    :   `ArithmeticException` - if numeric overflow occurs