Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class Calendar.Builder

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.Calendar.Builder

Enclosing class:
:   `Calendar`

---

public static class Calendar.Builder
extends [Object](../lang/Object.md "class in java.lang")

`Calendar.Builder` is used for creating a `Calendar` from
various date-time parameters.

There are two ways to set a `Calendar` to a date-time value. One
is to set the instant parameter to a millisecond offset from the [Epoch](Calendar.md#Epoch). The other is to set individual
field parameters, such as [`YEAR`](Calendar.md#YEAR), to their desired
values. These two ways can't be mixed. Trying to set both the instant and
individual fields will cause an [`IllegalStateException`](../lang/IllegalStateException.md "class in java.lang") to be
thrown. However, it is permitted to override previous values of the
instant or field parameters.

If no enough field parameters are given for determining date and/or
time, calendar specific default values are used when building a
`Calendar`. For example, if the [`YEAR`](Calendar.md#YEAR) value
isn't given for the Gregorian calendar, 1970 will be used. If there are
any conflicts among field parameters, the  [resolution rules](Calendar.md#resolution) are applied.
Therefore, the order of field setting matters.

In addition to the date-time parameters,
the [locale](#setLocale(java.util.Locale)),
[time zone](#setTimeZone(java.util.TimeZone)),
[week definition](#setWeekDefinition(int,int)), and
[leniency mode](#setLenient(boolean)) parameters can be set.

**Examples**

The following are sample usages. Sample code assumes that the
`Calendar` constants are statically imported.

The following code produces a `Calendar` with date 2012-12-31
(Gregorian) because Monday is the first day of a week with the  [ISO 8601
compatible week parameters](GregorianCalendar.md#iso8601_compatible_setting).

```
   Calendar cal = new Calendar.Builder().setCalendarType("iso8601")
                        .setWeekDate(2013, 1, MONDAY).build();
```

The following code produces a Japanese `Calendar` with date
1989-01-08 (Gregorian), assuming that the default [`ERA`](Calendar.md#ERA)
is *Heisei* that started on that day.

```
   Calendar cal = new Calendar.Builder().setCalendarType("japanese")
                        .setFields(YEAR, 1, DAY_OF_YEAR, 1).build();
```

Since:
:   1.8

See Also:
:   * [`Calendar.getInstance(TimeZone, Locale)`](Calendar.md#getInstance(java.util.TimeZone,java.util.Locale))
    * [`Calendar.fields`](Calendar.md#fields)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Builder()`

  Constructs a `Calendar.Builder`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Calendar`

  `build()`

  Returns a `Calendar` built from the parameters set by the
  setter methods.

  `Calendar.Builder`

  `set(int field,
  int value)`

  Sets the `field` parameter to the given `value`.

  `Calendar.Builder`

  `setCalendarType(String type)`

  Sets the calendar type parameter to the given `type`.

  `Calendar.Builder`

  `setDate(int year,
  int month,
  int dayOfMonth)`

  Sets the date field parameters to the values given by `year`,
  `month`, and `dayOfMonth`.

  `Calendar.Builder`

  `setFields(int... fieldValuePairs)`

  Sets field parameters to their values given by
  `fieldValuePairs` that are pairs of a field and its value.

  `Calendar.Builder`

  `setInstant(long instant)`

  Sets the instant parameter to the given `instant` value that is
  a millisecond offset from [the
  Epoch](Calendar.md#Epoch).

  `Calendar.Builder`

  `setInstant(Date instant)`

  Sets the instant parameter to the `instant` value given by a
  [`Date`](Date.md "class in java.util").

  `Calendar.Builder`

  `setLenient(boolean lenient)`

  Sets the lenient mode parameter to the value given by `lenient`.

  `Calendar.Builder`

  `setLocale(Locale locale)`

  Sets the locale parameter to the given `locale`.

  `Calendar.Builder`

  `setTimeOfDay(int hourOfDay,
  int minute,
  int second)`

  Sets the time of day field parameters to the values given by
  `hourOfDay`, `minute`, and `second`.

  `Calendar.Builder`

  `setTimeOfDay(int hourOfDay,
  int minute,
  int second,
  int millis)`

  Sets the time of day field parameters to the values given by
  `hourOfDay`, `minute`, `second`, and
  `millis`.

  `Calendar.Builder`

  `setTimeZone(TimeZone zone)`

  Sets the time zone parameter to the given `zone`.

  `Calendar.Builder`

  `setWeekDate(int weekYear,
  int weekOfYear,
  int dayOfWeek)`

  Sets the week-based date parameters to the values with the given
  date specifiers - week year, week of year, and day of week.

  `Calendar.Builder`

  `setWeekDefinition(int firstDayOfWeek,
  int minimalDaysInFirstWeek)`

  Sets the week definition parameters to the values given by
  `firstDayOfWeek` and `minimalDaysInFirstWeek` that are
  used to determine the [first
  week](Calendar.md#first_week) of a year.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Builder

    public Builder()

    Constructs a `Calendar.Builder`.
* ## Method Details

  + ### setInstant

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setInstant(long instant)

    Sets the instant parameter to the given `instant` value that is
    a millisecond offset from [the
    Epoch](Calendar.md#Epoch).

    Parameters:
    :   `instant` - a millisecond offset from the Epoch

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `IllegalStateException` - if any of the field parameters have
        already been set

    See Also:
    :   - [`Calendar.setTime(Date)`](Calendar.md#setTime(java.util.Date))
        - [`Calendar.setTimeInMillis(long)`](Calendar.md#setTimeInMillis(long))
        - [`Calendar.time`](Calendar.md#time)
  + ### setInstant

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setInstant([Date](Date.md "class in java.util") instant)

    Sets the instant parameter to the `instant` value given by a
    [`Date`](Date.md "class in java.util"). This method is equivalent to a call to
    [`setInstant(instant.getTime())`](#setInstant(long)).

    Parameters:
    :   `instant` - a `Date` representing a millisecond offset from
        the Epoch

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `NullPointerException` - if `instant` is `null`
    :   `IllegalStateException` - if any of the field parameters have
        already been set

    See Also:
    :   - [`Calendar.setTime(Date)`](Calendar.md#setTime(java.util.Date))
        - [`Calendar.setTimeInMillis(long)`](Calendar.md#setTimeInMillis(long))
        - [`Calendar.time`](Calendar.md#time)
  + ### set

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") set(int field,
    int value)

    Sets the `field` parameter to the given `value`.
    `field` is an index to the [`Calendar.fields`](Calendar.md#fields), such as
    [`DAY_OF_MONTH`](Calendar.md#DAY_OF_MONTH). Field value validation is
    not performed in this method. Any out of range values are either
    normalized in lenient mode or detected as an invalid value in
    non-lenient mode when building a `Calendar`.

    Parameters:
    :   `field` - an index to the `Calendar` fields
    :   `value` - the field value

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `IllegalArgumentException` - if `field` is invalid
    :   `IllegalStateException` - if the instant value has already been set,
        or if fields have been set too many
        (approximately [`Integer.MAX_VALUE`](../lang/Integer.md#MAX_VALUE)) times.

    See Also:
    :   - [`Calendar.set(int, int)`](Calendar.md#set(int,int))
  + ### setFields

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setFields(int... fieldValuePairs)

    Sets field parameters to their values given by
    `fieldValuePairs` that are pairs of a field and its value.
    For example,

    ```
       setFields(Calendar.YEAR, 2013,
                 Calendar.MONTH, Calendar.DECEMBER,
                 Calendar.DAY_OF_MONTH, 23);
    ```

    is equivalent to the sequence of the following
    [`set`](#set(int,int)) calls:

    ```
       set(Calendar.YEAR, 2013)
       .set(Calendar.MONTH, Calendar.DECEMBER)
       .set(Calendar.DAY_OF_MONTH, 23);
    ```

    Parameters:
    :   `fieldValuePairs` - field-value pairs

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `NullPointerException` - if `fieldValuePairs` is `null`
    :   `IllegalArgumentException` - if any of fields are invalid,
        or if `fieldValuePairs.length` is an odd number.
    :   `IllegalStateException` - if the instant value has been set,
        or if fields have been set too many (approximately
        [`Integer.MAX_VALUE`](../lang/Integer.md#MAX_VALUE)) times.
  + ### setDate

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setDate(int year,
    int month,
    int dayOfMonth)

    Sets the date field parameters to the values given by `year`,
    `month`, and `dayOfMonth`. This method is equivalent to
    a call to:

    ```
       setFields(Calendar.YEAR, year,
                 Calendar.MONTH, month,
                 Calendar.DAY_OF_MONTH, dayOfMonth);
    ```

    Parameters:
    :   `year` - the [`YEAR`](Calendar.md#YEAR) value
    :   `month` - the [`MONTH`](Calendar.md#MONTH) value
        (the month numbering is *0-based*).
    :   `dayOfMonth` - the [`DAY_OF_MONTH`](Calendar.md#DAY_OF_MONTH) value

    Returns:
    :   this `Calendar.Builder`
  + ### setTimeOfDay

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setTimeOfDay(int hourOfDay,
    int minute,
    int second)

    Sets the time of day field parameters to the values given by
    `hourOfDay`, `minute`, and `second`. This method is
    equivalent to a call to:

    ```
       setTimeOfDay(hourOfDay, minute, second, 0);
    ```

    Parameters:
    :   `hourOfDay` - the [`HOUR_OF_DAY`](Calendar.md#HOUR_OF_DAY) value
        (24-hour clock)
    :   `minute` - the [`MINUTE`](Calendar.md#MINUTE) value
    :   `second` - the [`SECOND`](Calendar.md#SECOND) value

    Returns:
    :   this `Calendar.Builder`
  + ### setTimeOfDay

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setTimeOfDay(int hourOfDay,
    int minute,
    int second,
    int millis)

    Sets the time of day field parameters to the values given by
    `hourOfDay`, `minute`, `second`, and
    `millis`. This method is equivalent to a call to:

    ```
       setFields(Calendar.HOUR_OF_DAY, hourOfDay,
                 Calendar.MINUTE, minute,
                 Calendar.SECOND, second,
                 Calendar.MILLISECOND, millis);
    ```

    Parameters:
    :   `hourOfDay` - the [`HOUR_OF_DAY`](Calendar.md#HOUR_OF_DAY) value
        (24-hour clock)
    :   `minute` - the [`MINUTE`](Calendar.md#MINUTE) value
    :   `second` - the [`SECOND`](Calendar.md#SECOND) value
    :   `millis` - the [`MILLISECOND`](Calendar.md#MILLISECOND) value

    Returns:
    :   this `Calendar.Builder`
  + ### setWeekDate

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setWeekDate(int weekYear,
    int weekOfYear,
    int dayOfWeek)

    Sets the week-based date parameters to the values with the given
    date specifiers - week year, week of year, and day of week.

    If the specified calendar doesn't support week dates, the
    [`build`](#build()) method will throw an [`IllegalArgumentException`](../lang/IllegalArgumentException.md "class in java.lang").

    Parameters:
    :   `weekYear` - the week year
    :   `weekOfYear` - the week number based on `weekYear`
    :   `dayOfWeek` - the day of week value: one of the constants
        for the [`DAY_OF_WEEK`](Calendar.md#DAY_OF_WEEK) field:
        [`SUNDAY`](Calendar.md#SUNDAY), ..., [`SATURDAY`](Calendar.md#SATURDAY).

    Returns:
    :   this `Calendar.Builder`

    See Also:
    :   - [`Calendar.setWeekDate(int, int, int)`](Calendar.md#setWeekDate(int,int,int))
        - [`Calendar.isWeekDateSupported()`](Calendar.md#isWeekDateSupported())
  + ### setTimeZone

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setTimeZone([TimeZone](TimeZone.md "class in java.util") zone)

    Sets the time zone parameter to the given `zone`. If no time
    zone parameter is given to this `Calendar.Builder`, the
    [default
    `TimeZone`](TimeZone.md#getDefault()) will be used in the [`build`](#build())
    method.

    Parameters:
    :   `zone` - the [`TimeZone`](TimeZone.md "class in java.util")

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `NullPointerException` - if `zone` is `null`

    See Also:
    :   - [`Calendar.setTimeZone(TimeZone)`](Calendar.md#setTimeZone(java.util.TimeZone))
  + ### setLenient

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setLenient(boolean lenient)

    Sets the lenient mode parameter to the value given by `lenient`.
    If no lenient parameter is given to this `Calendar.Builder`,
    lenient mode will be used in the [`build`](#build()) method.

    Parameters:
    :   `lenient` - `true` for lenient mode;
        `false` for non-lenient mode

    Returns:
    :   this `Calendar.Builder`

    See Also:
    :   - [`Calendar.setLenient(boolean)`](Calendar.md#setLenient(boolean))
  + ### setCalendarType

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setCalendarType([String](../lang/String.md "class in java.lang") type)

    Sets the calendar type parameter to the given `type`. The
    calendar type given by this method has precedence over any explicit
    or implicit calendar type given by the
    [locale](#setLocale(java.util.Locale)).

    In addition to the available calendar types returned by the
    [`Calendar.getAvailableCalendarTypes`](Calendar.md#getAvailableCalendarTypes())
    method, `"gregorian"` and `"iso8601"` as aliases of
    `"gregory"` can be used with this method.

    Parameters:
    :   `type` - the calendar type

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `NullPointerException` - if `type` is `null`
    :   `IllegalArgumentException` - if `type` is unknown
    :   `IllegalStateException` - if another calendar type has already been set

    See Also:
    :   - [`Calendar.getCalendarType()`](Calendar.md#getCalendarType())
        - [`Calendar.getAvailableCalendarTypes()`](Calendar.md#getAvailableCalendarTypes())
  + ### setLocale

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setLocale([Locale](Locale.md "class in java.util") locale)

    Sets the locale parameter to the given `locale`. If no locale
    is given to this `Calendar.Builder`, the [default `Locale`](Locale.md#getDefault(java.util.Locale.Category))
    for [`Locale.Category.FORMAT`](Locale.Category.md#FORMAT) will be used.

    If no calendar type is explicitly given by a call to the
    [`setCalendarType`](#setCalendarType(java.lang.String)) method,
    the `Locale` value is used to determine what type of
    `Calendar` to be built.

    If no week definition parameters are explicitly given by a call to
    the [`setWeekDefinition`](#setWeekDefinition(int,int)) method, the
    `Locale`'s default values are used.

    Parameters:
    :   `locale` - the [`Locale`](Locale.md "class in java.util")

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `NullPointerException` - if `locale` is `null`

    See Also:
    :   - [`Calendar.getInstance(Locale)`](Calendar.md#getInstance(java.util.Locale))
  + ### setWeekDefinition

    public [Calendar.Builder](Calendar.Builder.md "class in java.util") setWeekDefinition(int firstDayOfWeek,
    int minimalDaysInFirstWeek)

    Sets the week definition parameters to the values given by
    `firstDayOfWeek` and `minimalDaysInFirstWeek` that are
    used to determine the [first
    week](Calendar.md#first_week) of a year. The parameters given by this method have
    precedence over the default values given by the
    [locale](#setLocale(java.util.Locale)).

    Parameters:
    :   `firstDayOfWeek` - the first day of a week; one of
        [`Calendar.SUNDAY`](Calendar.md#SUNDAY) to [`Calendar.SATURDAY`](Calendar.md#SATURDAY)
    :   `minimalDaysInFirstWeek` - the minimal number of days in the first
        week (1..7)

    Returns:
    :   this `Calendar.Builder`

    Throws:
    :   `IllegalArgumentException` - if `firstDayOfWeek` or
        `minimalDaysInFirstWeek` is invalid

    See Also:
    :   - [`Calendar.getFirstDayOfWeek()`](Calendar.md#getFirstDayOfWeek())
        - [`Calendar.getMinimalDaysInFirstWeek()`](Calendar.md#getMinimalDaysInFirstWeek())
  + ### build

    public [Calendar](Calendar.md "class in java.util") build()

    Returns a `Calendar` built from the parameters set by the
    setter methods. The calendar type given by the [`setCalendarType`](#setCalendarType(java.lang.String)) method or the [locale](#setLocale(java.util.Locale)) is
    used to determine what `Calendar` to be created. If no explicit
    calendar type is given, the locale's default calendar is created.

    If the calendar type is `"iso8601"`, the
    [Gregorian change date](GregorianCalendar.md#setGregorianChange(java.util.Date))
    of a [`GregorianCalendar`](GregorianCalendar.md "class in java.util") is set to `Date(Long.MIN_VALUE)`
    to be the *proleptic* Gregorian calendar. Its week definition
    parameters are also set to be [compatible
    with the ISO 8601 standard](GregorianCalendar.md#iso8601_compatible_setting). Note that the
    [`getCalendarType`](GregorianCalendar.md#getCalendarType()) method of
    a `GregorianCalendar` created with `"iso8601"` returns
    `"gregory"`.

    The default values are used for locale and time zone if these
    parameters haven't been given explicitly.

    If the locale contains the time zone with "tz"
    [Unicode extension](Locale.md#def_locale_extension),
    and time zone hasn't been given explicitly, time zone in the locale
    is used.

    Any out of range field values are either normalized in lenient
    mode or detected as an invalid value in non-lenient mode.

    Returns:
    :   a `Calendar` built with parameters of this `Calendar.Builder`

    Throws:
    :   `IllegalArgumentException` - if the calendar type is unknown, or
        if any invalid field values are given in non-lenient mode, or
        if a week date is given for the calendar type that doesn't
        support week dates.

    See Also:
    :   - [`Calendar.getInstance(TimeZone, Locale)`](Calendar.md#getInstance(java.util.TimeZone,java.util.Locale))
        - [`Locale.getDefault(Locale.Category)`](Locale.md#getDefault(java.util.Locale.Category))
        - [`TimeZone.getDefault()`](TimeZone.md#getDefault())