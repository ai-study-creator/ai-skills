Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Class CalendarNameProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

java.util.spi.CalendarNameProvider

---

public abstract class CalendarNameProvider
extends [LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that provide localized string
representations (display names) of `Calendar` field values.

**Calendar Types**

Calendar types are used to specify calendar systems for which the [`getDisplayName`](#getDisplayName(java.lang.String,int,int,int,java.util.Locale)) and [`getDisplayNames`](#getDisplayNames(java.lang.String,int,int,java.util.Locale)) methods provide
calendar field value names. See [`Calendar.getCalendarType()`](../Calendar.md#getCalendarType()) for details.

**Calendar Fields**

Calendar fields are specified with the constants defined in [`Calendar`](../Calendar.md "class in java.util"). The following are calendar-common fields and their values to be
supported for each calendar system.

Field values

| Field | Value | Description |
| --- | --- | --- |
| [`Calendar.MONTH`](../Calendar.md#MONTH) | [`Calendar.JANUARY`](../Calendar.md#JANUARY) to [`Calendar.UNDECIMBER`](../Calendar.md#UNDECIMBER) | Month numbering is 0-based (e.g., 0 - January, ..., 11 - December). Some calendar systems have 13 months. Month names need to be supported in both the formatting and stand-alone forms if required by the supported locales. If there's no distinction in the two forms, the same names should be returned in both of the forms. |
| [`Calendar.DAY_OF_WEEK`](../Calendar.md#DAY_OF_WEEK) | [`Calendar.SUNDAY`](../Calendar.md#SUNDAY) to [`Calendar.SATURDAY`](../Calendar.md#SATURDAY) | Day-of-week numbering is 1-based starting from Sunday (i.e., 1 - Sunday, ..., 7 - Saturday). |
| [`Calendar.AM_PM`](../Calendar.md#AM_PM) | [`Calendar.AM`](../Calendar.md#AM) to [`Calendar.PM`](../Calendar.md#PM) | 0 - AM, 1 - PM |

The following are calendar-specific fields and their values to be supported.

Calendar type and field values

| Calendar Type | Field | Value | Description |
| --- | --- | --- | --- |
| `"gregory"` | [`Calendar.ERA`](../Calendar.md#ERA) | 0 | [`GregorianCalendar.BC`](../GregorianCalendar.md#BC) (BCE) |
| 1 | [`GregorianCalendar.AD`](../GregorianCalendar.md#AD) (CE) |
| `"buddhist"` | [`Calendar.ERA`](../Calendar.md#ERA) | 0 | BC (BCE) |
| 1 | B.E. (Buddhist Era) |
| `"japanese"` | [`Calendar.ERA`](../Calendar.md#ERA) | 0 | Seireki (Before Meiji) |
| 1 | Meiji |
| 2 | Taisho |
| 3 | Showa |
| 4 | Heisei |
| 5 | Reiwa |
| [`Calendar.YEAR`](../Calendar.md#YEAR) | 1 | the first year in each era. It should be returned when a long style ([`Calendar.LONG_FORMAT`](../Calendar.md#LONG_FORMAT) or [`Calendar.LONG_STANDALONE`](../Calendar.md#LONG_STANDALONE)) is specified. See also the [Year representation in `SimpleDateFormat`](../../text/SimpleDateFormat.md#year). |
| `"roc"` | [`Calendar.ERA`](../Calendar.md#ERA) | 0 | Before R.O.C. |
| 1 | R.O.C. |
| `"islamic"` | [`Calendar.ERA`](../Calendar.md#ERA) | 0 | Before AH |
| 1 | Anno Hijrah (AH) |

Calendar field value names for `"gregory"` must be consistent with
the date-time symbols provided by [`DateFormatSymbolsProvider`](../../text/spi/DateFormatSymbolsProvider.md "class in java.text.spi").

Time zone names are supported by [`TimeZoneNameProvider`](TimeZoneNameProvider.md "class in java.util.spi").

Since:
:   1.8

See Also:
:   * [`CalendarDataProvider`](CalendarDataProvider.md "class in java.util.spi")
    * [`Locale.getUnicodeLocaleType(String)`](../Locale.md#getUnicodeLocaleType(java.lang.String))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CalendarNameProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getDisplayName(String calendarType,
  int field,
  int value,
  int style,
  Locale locale)`

  Returns the string representation (display name) of the calendar
  `field value` in the given `style` and
  `locale`.

  `abstract Map<String,Integer>`

  `getDisplayNames(String calendarType,
  int field,
  int style,
  Locale locale)`

  Returns a `Map` containing all string representations (display
  names) of the `Calendar` `field` in the given `style`
  and `locale` and their corresponding field values.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CalendarNameProvider

    protected CalendarNameProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getDisplayName

    public abstract [String](../../lang/String.md "class in java.lang") getDisplayName([String](../../lang/String.md "class in java.lang") calendarType,
    int field,
    int value,
    int style,
    [Locale](../Locale.md "class in java.util") locale)

    Returns the string representation (display name) of the calendar
    `field value` in the given `style` and
    `locale`. If no string representation is
    applicable, `null` is returned.

    `field` is a `Calendar` field index, such as [`Calendar.MONTH`](../Calendar.md#MONTH). The time zone fields, [`Calendar.ZONE_OFFSET`](../Calendar.md#ZONE_OFFSET) and
    [`Calendar.DST_OFFSET`](../Calendar.md#DST_OFFSET), are *not* supported by this
    method. `null` must be returned if any time zone fields are
    specified.

    `value` is the numeric representation of the `field` value.
    For example, if `field` is [`Calendar.DAY_OF_WEEK`](../Calendar.md#DAY_OF_WEEK), the valid
    values are [`Calendar.SUNDAY`](../Calendar.md#SUNDAY) to [`Calendar.SATURDAY`](../Calendar.md#SATURDAY)
    (inclusive).

    `style` gives the style of the string representation. It is one
    of [`Calendar.SHORT_FORMAT`](../Calendar.md#SHORT_FORMAT) ([`SHORT`](../Calendar.md#SHORT)),
    [`Calendar.SHORT_STANDALONE`](../Calendar.md#SHORT_STANDALONE), [`Calendar.LONG_FORMAT`](../Calendar.md#LONG_FORMAT)
    ([`LONG`](../Calendar.md#LONG)), [`Calendar.LONG_STANDALONE`](../Calendar.md#LONG_STANDALONE),
    [`Calendar.NARROW_FORMAT`](../Calendar.md#NARROW_FORMAT), or [`Calendar.NARROW_STANDALONE`](../Calendar.md#NARROW_STANDALONE).

    For example, the following call will return `"Sunday"`.

    ```
     getDisplayName("gregory", Calendar.DAY_OF_WEEK, Calendar.SUNDAY,
                    Calendar.LONG_STANDALONE, Locale.ENGLISH);
    ```

    Parameters:
    :   `calendarType` - the calendar type. (Any calendar type given by `locale`
        is ignored.)
    :   `field` - the `Calendar` field index,
        such as [`Calendar.DAY_OF_WEEK`](../Calendar.md#DAY_OF_WEEK)
    :   `value` - the value of the `Calendar field`,
        such as [`Calendar.MONDAY`](../Calendar.md#MONDAY)
    :   `style` - the string representation style: one of [`Calendar.SHORT_FORMAT`](../Calendar.md#SHORT_FORMAT) ([`SHORT`](../Calendar.md#SHORT)),
        [`Calendar.SHORT_STANDALONE`](../Calendar.md#SHORT_STANDALONE), [`Calendar.LONG_FORMAT`](../Calendar.md#LONG_FORMAT) ([`LONG`](../Calendar.md#LONG)),
        [`Calendar.LONG_STANDALONE`](../Calendar.md#LONG_STANDALONE),
        [`Calendar.NARROW_FORMAT`](../Calendar.md#NARROW_FORMAT),
        or [`Calendar.NARROW_STANDALONE`](../Calendar.md#NARROW_STANDALONE)
    :   `locale` - the desired locale

    Returns:
    :   the string representation of the `field value`, or `null` if the string representation is not applicable or
        the given calendar type is unknown

    Throws:
    :   `IllegalArgumentException` - if `field` or `style` is invalid
    :   `NullPointerException` - if `locale` is `null`

    See Also:
    :   - [`TimeZoneNameProvider`](TimeZoneNameProvider.md "class in java.util.spi")
        - [`Calendar.get(int)`](../Calendar.md#get(int))
        - [`Calendar.getDisplayName(int, int, Locale)`](../Calendar.md#getDisplayName(int,int,java.util.Locale))
  + ### getDisplayNames

    public abstract [Map](../Map.md "interface in java.util")<[String](../../lang/String.md "class in java.lang"),[Integer](../../lang/Integer.md "class in java.lang")> getDisplayNames([String](../../lang/String.md "class in java.lang") calendarType,
    int field,
    int style,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a `Map` containing all string representations (display
    names) of the `Calendar` `field` in the given `style`
    and `locale` and their corresponding field values.

    `field` is a `Calendar` field index, such as [`Calendar.MONTH`](../Calendar.md#MONTH). The time zone fields, [`Calendar.ZONE_OFFSET`](../Calendar.md#ZONE_OFFSET) and
    [`Calendar.DST_OFFSET`](../Calendar.md#DST_OFFSET), are *not* supported by this
    method. `null` must be returned if any time zone fields are specified.

    `style` gives the style of the string representation. It must be
    one of [`Calendar.ALL_STYLES`](../Calendar.md#ALL_STYLES), [`Calendar.SHORT_FORMAT`](../Calendar.md#SHORT_FORMAT) ([`SHORT`](../Calendar.md#SHORT)), [`Calendar.SHORT_STANDALONE`](../Calendar.md#SHORT_STANDALONE), [`Calendar.LONG_FORMAT`](../Calendar.md#LONG_FORMAT) ([`LONG`](../Calendar.md#LONG)), [`Calendar.LONG_STANDALONE`](../Calendar.md#LONG_STANDALONE), [`Calendar.NARROW_FORMAT`](../Calendar.md#NARROW_FORMAT), or
    [`Calendar.NARROW_STANDALONE`](../Calendar.md#NARROW_STANDALONE). Note that narrow names may
    not be unique due to use of single characters, such as "S" for Sunday
    and Saturday, and that no narrow names are included in that case.

    For example, the following call will return a `Map` containing
    `"January"` to [`Calendar.JANUARY`](../Calendar.md#JANUARY), `"Jan"` to [`Calendar.JANUARY`](../Calendar.md#JANUARY), `"February"` to [`Calendar.FEBRUARY`](../Calendar.md#FEBRUARY),
    `"Feb"` to [`Calendar.FEBRUARY`](../Calendar.md#FEBRUARY), and so on.

    ```
     getDisplayNames("gregory", Calendar.MONTH, Calendar.ALL_STYLES, Locale.ENGLISH);
    ```

    Parameters:
    :   `calendarType` - the calendar type. (Any calendar type given by `locale`
        is ignored.)
    :   `field` - the calendar field for which the display names are returned
    :   `style` - the style applied to the display names; one of
        [`Calendar.ALL_STYLES`](../Calendar.md#ALL_STYLES), [`Calendar.SHORT_FORMAT`](../Calendar.md#SHORT_FORMAT)
        ([`SHORT`](../Calendar.md#SHORT)), [`Calendar.SHORT_STANDALONE`](../Calendar.md#SHORT_STANDALONE), [`Calendar.LONG_FORMAT`](../Calendar.md#LONG_FORMAT)
        ([`LONG`](../Calendar.md#LONG)), [`Calendar.LONG_STANDALONE`](../Calendar.md#LONG_STANDALONE),
        [`Calendar.NARROW_FORMAT`](../Calendar.md#NARROW_FORMAT),
        or [`Calendar.NARROW_STANDALONE`](../Calendar.md#NARROW_STANDALONE)
    :   `locale` - the desired locale

    Returns:
    :   a `Map` containing all display names of `field` in
        `style` and `locale` and their `field` values,
        or `null` if no display names are defined for `field`

    Throws:
    :   `NullPointerException` - if `locale` is `null`

    See Also:
    :   - [`Calendar.getDisplayNames(int, int, Locale)`](../Calendar.md#getDisplayNames(int,int,java.util.Locale))