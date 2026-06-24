Module [java.base](../../../module-summary.md)

# Package java.time.chrono

---

package java.time.chrono

Generic API for calendar systems other than the default ISO.

The main API is based around the calendar system defined in ISO-8601.
However, there are other calendar systems, and this package provides basic support for them.
The alternate calendars are provided in the [`java.time.chrono`](package-summary.md) package.

A calendar system is defined by the [`Chronology`](Chronology.md "interface in java.time.chrono") interface,
while a date in a calendar system is defined by the [`ChronoLocalDate`](ChronoLocalDate.md "interface in java.time.chrono") interface.

It is intended that applications use the main API whenever possible, including code to read and write
from a persistent data store, such as a database, and to send dates and times across a network.
The "chrono" classes are then used at the user interface level to deal with localized input/output.
See [`ChronoLocalDate`](ChronoLocalDate.md "interface in java.time.chrono")
for a full discussion of the issues.

Using non-ISO calendar systems in an application introduces significant extra complexity.
Ensure that the warnings and recommendations in `ChronoLocalDate` have been read before
working with the "chrono" interfaces.

The supported calendar systems includes:

* [`Hijrah calendar`](HijrahChronology.md "class in java.time.chrono")
* [`Japanese calendar`](JapaneseChronology.md "class in java.time.chrono")
* [`Minguo calendar`](MinguoChronology.md "class in java.time.chrono")
* [`Thai Buddhist calendar`](ThaiBuddhistChronology.md "class in java.time.chrono")

## Example

This example lists today's date for all of the available calendars.

```
   // Enumerate the list of available calendars and print today's date for each.
       Set<Chronology> chronos = Chronology.getAvailableChronologies();
       for (Chronology chrono : chronos) {
           ChronoLocalDate date = chrono.dateNow();
           System.out.printf("   %20s: %s%n", chrono.getId(), date.toString());
       }
```

This example creates and uses a date in a named non-ISO calendar system.

```
   // Print the Thai Buddhist date
       ChronoLocalDate now1 = Chronology.of("ThaiBuddhist").dateNow();
       int day = now1.get(ChronoField.DAY_OF_MONTH);
       int dow = now1.get(ChronoField.DAY_OF_WEEK);
       int month = now1.get(ChronoField.MONTH_OF_YEAR);
       int year = now1.get(ChronoField.YEAR);
       System.out.printf("  Today is %s %s %d-%s-%d%n", now1.getChronology().getId(),
                 dow, day, month, year);
   // Print today's date and the last day of the year for the Thai Buddhist Calendar.
       ChronoLocalDate first = now1
                 .with(ChronoField.DAY_OF_MONTH, 1)
                 .with(ChronoField.MONTH_OF_YEAR, 1);
       ChronoLocalDate last = first
                 .plus(1, ChronoUnit.YEARS)
                 .minus(1, ChronoUnit.DAYS);
       System.out.printf("  %s: 1st of year: %s; end of year: %s%n", last.getChronology().getId(),
                 first, last);
```

This example creates and uses a date in a specific ThaiBuddhist calendar system.

```
   // Print the Thai Buddhist date
       ThaiBuddhistDate now1 = ThaiBuddhistDate.now();
       int day = now1.get(ChronoField.DAY_OF_MONTH);
       int dow = now1.get(ChronoField.DAY_OF_WEEK);
       int month = now1.get(ChronoField.MONTH_OF_YEAR);
       int year = now1.get(ChronoField.YEAR);
       System.out.printf("  Today is %s %s %d-%s-%d%n", now1.getChronology().getId(),
                 dow, day, month, year);

   // Print today's date and the last day of the year for the Thai Buddhist Calendar.
       ThaiBuddhistDate first = now1
                 .with(ChronoField.DAY_OF_MONTH, 1)
                 .with(ChronoField.MONTH_OF_YEAR, 1);
       ThaiBuddhistDate last = first
                 .plus(1, ChronoUnit.YEARS)
                 .minus(1, ChronoUnit.DAYS);
       System.out.printf("  %s: 1st of year: %s; end of year: %s%n", last.getChronology().getId(),
                 first, last);
```

## Package specification

Unless otherwise noted, passing a null argument to a constructor or method in any class or interface
in this package will cause a [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") to be thrown.
The Javadoc "@param" definition is used to summarise the null-behavior.
The "@throws [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang")" is not explicitly documented in each method.

All calculations should check for numeric overflow and throw either an [`ArithmeticException`](../../lang/ArithmeticException.md "class in java.lang")
or a [`DateTimeException`](../DateTimeException.md "class in java.time").

Since:
:   1.8

* Related Packages

  Package

  Description

  [java.time](../package-summary.md)

  The main API for dates, times, instants, and durations.

  [java.time.format](../format/package-summary.md)

  Provides classes to print and parse dates and times.

  [java.time.temporal](../temporal/package-summary.md)

  Access to date and time using fields and units, and date time adjusters.

  [java.time.zone](../zone/package-summary.md)

  Support for time-zones and their rules.
* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [AbstractChronology](AbstractChronology.md "class in java.time.chrono")

  An abstract implementation of a calendar system, used to organize and identify dates.

  [ChronoLocalDate](ChronoLocalDate.md "interface in java.time.chrono")

  A date without time-of-day or time-zone in an arbitrary chronology, intended
  for advanced globalization use cases.

  [ChronoLocalDateTime](ChronoLocalDateTime.md "interface in java.time.chrono")<D extends [ChronoLocalDate](ChronoLocalDate.md "interface in java.time.chrono")>

  A date-time without a time-zone in an arbitrary chronology, intended
  for advanced globalization use cases.

  [Chronology](Chronology.md "interface in java.time.chrono")

  A calendar system, used to organize and identify dates.

  [ChronoPeriod](ChronoPeriod.md "interface in java.time.chrono")

  A date-based amount of time, such as '3 years, 4 months and 5 days' in an
  arbitrary chronology, intended for advanced globalization use cases.

  [ChronoZonedDateTime](ChronoZonedDateTime.md "interface in java.time.chrono")<D extends [ChronoLocalDate](ChronoLocalDate.md "interface in java.time.chrono")>

  A date-time with a time-zone in an arbitrary chronology,
  intended for advanced globalization use cases.

  [Era](Era.md "interface in java.time.chrono")

  An era of the time-line.

  [HijrahChronology](HijrahChronology.md "class in java.time.chrono")

  The Hijrah calendar is a lunar calendar supporting Islamic calendars.

  [HijrahDate](HijrahDate.md "class in java.time.chrono")

  A date in the Hijrah calendar system.

  [HijrahEra](HijrahEra.md "enum class in java.time.chrono")

  An era in the Hijrah calendar system.

  [IsoChronology](IsoChronology.md "class in java.time.chrono")

  The ISO calendar system.

  [IsoEra](IsoEra.md "enum class in java.time.chrono")

  An era in the ISO calendar system.

  [JapaneseChronology](JapaneseChronology.md "class in java.time.chrono")

  The Japanese Imperial calendar system.

  [JapaneseDate](JapaneseDate.md "class in java.time.chrono")

  A date in the Japanese Imperial calendar system.

  [JapaneseEra](JapaneseEra.md "class in java.time.chrono")

  An era in the Japanese Imperial calendar system.

  [MinguoChronology](MinguoChronology.md "class in java.time.chrono")

  The Minguo calendar system.

  [MinguoDate](MinguoDate.md "class in java.time.chrono")

  A date in the Minguo calendar system.

  [MinguoEra](MinguoEra.md "enum class in java.time.chrono")

  An era in the Minguo calendar system.

  [ThaiBuddhistChronology](ThaiBuddhistChronology.md "class in java.time.chrono")

  The Thai Buddhist calendar system.

  [ThaiBuddhistDate](ThaiBuddhistDate.md "class in java.time.chrono")

  A date in the Thai Buddhist calendar system.

  [ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono")

  An era in the Thai Buddhist calendar system.