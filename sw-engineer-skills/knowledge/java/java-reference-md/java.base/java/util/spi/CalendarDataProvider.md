Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Class CalendarDataProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

java.util.spi.CalendarDataProvider

---

public abstract class CalendarDataProvider
extends [LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that provide locale-dependent [`Calendar`](../Calendar.md "class in java.util") parameters.

Since:
:   1.8

See Also:
:   * [`CalendarNameProvider`](CalendarNameProvider.md "class in java.util.spi")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CalendarDataProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract int`

  `getFirstDayOfWeek(Locale locale)`

  Returns the first day of a week in the given `locale`.

  `abstract int`

  `getMinimalDaysInFirstWeek(Locale locale)`

  Returns the minimal number of days required in the first week of a
  year.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CalendarDataProvider

    protected CalendarDataProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getFirstDayOfWeek

    public abstract int getFirstDayOfWeek([Locale](../Locale.md "class in java.util") locale)

    Returns the first day of a week in the given `locale`. This
    information is required by [`Calendar`](../Calendar.md "class in java.util") to support operations on the
    week-related calendar fields.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   the first day of a week; one of [`Calendar.SUNDAY`](../Calendar.md#SUNDAY) ..
        [`Calendar.SATURDAY`](../Calendar.md#SATURDAY),
        or 0 if the value isn't available for the `locale`

    Throws:
    :   `NullPointerException` - if `locale` is `null`.

    See Also:
    :   - [`Calendar.getFirstDayOfWeek()`](../Calendar.md#getFirstDayOfWeek())
        - [First Week](../Calendar.md#first_week)
  + ### getMinimalDaysInFirstWeek

    public abstract int getMinimalDaysInFirstWeek([Locale](../Locale.md "class in java.util") locale)

    Returns the minimal number of days required in the first week of a
    year. This information is required by [`Calendar`](../Calendar.md "class in java.util") to determine the
    first week of a year. Refer to the description of  [how `Calendar` determines
    the first week](../Calendar.md#first_week).

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   the minimal number of days of the first week,
        or 0 if the value isn't available for the `locale`

    Throws:
    :   `NullPointerException` - if `locale` is `null`.

    See Also:
    :   - [`Calendar.getMinimalDaysInFirstWeek()`](../Calendar.md#getMinimalDaysInFirstWeek())