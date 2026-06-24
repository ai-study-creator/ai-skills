Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class DateFormat

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.text.Format](Format.md "class in java.text")

java.text.DateFormat

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `SimpleDateFormat`

---

public abstract class DateFormat
extends [Format](Format.md "class in java.text")

`DateFormat` is an abstract class for date/time formatting subclasses which
formats and parses dates or time in a language-independent manner.
The date/time formatting subclass, such as [`SimpleDateFormat`](SimpleDateFormat.md "class in java.text"), allows for
formatting (i.e., date → text), parsing (text → date), and
normalization. The date is represented as a `Date` object or
as the milliseconds since January 1, 1970, 00:00:00 GMT.

`DateFormat` provides many class methods for obtaining default date/time
formatters based on the default or a given locale and a number of formatting
styles. The formatting styles include [`FULL`](#FULL), [`LONG`](#LONG), [`MEDIUM`](#MEDIUM), and [`SHORT`](#SHORT). More
detail and examples of using these styles are provided in the method
descriptions.

`DateFormat` helps you to format and parse dates for any locale.
Your code can be completely independent of the locale conventions for
months, days of the week, or even the calendar format: lunar vs. solar.

To format a date for the current Locale, use one of the
static factory methods:
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> myString = DateFormat.getDateInstance().format(myDate);
> ```

If you are formatting multiple dates, it is
more efficient to get the format and use it multiple times so that
the system doesn't have to fetch the information about the local
language and country conventions multiple times.
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> DateFormat df = DateFormat.getDateInstance();
> for (int i = 0; i < myDate.length; ++i) {
>     output.println(df.format(myDate[i]) + "; ");
> }
> ```

To format a date for a different Locale, specify it in the
call to [`getDateInstance()`](#getDateInstance(int,java.util.Locale)).
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> DateFormat df = DateFormat.getDateInstance(DateFormat.LONG, Locale.FRANCE);
> ```

If the specified locale contains "ca" (calendar), "rg" (region override),
and/or "tz" (timezone) [Unicode
extensions](../util/Locale.md#def_locale_extension), the calendar, the country and/or the time zone for formatting
are overridden. If both "ca" and "rg" are specified, the calendar from the "ca"
extension supersedes the implicit one from the "rg" extension.

You can use a DateFormat to parse also.
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> myDate = df.parse(myString);
> ```

Use `getDateInstance` to get the normal date format for that country.
There are other static factory methods available.
Use `getTimeInstance` to get the time format for that country.
Use `getDateTimeInstance` to get a date and time format. You can pass in
different options to these factory methods to control the length of the
result; from [`SHORT`](#SHORT) to [`MEDIUM`](#MEDIUM) to [`LONG`](#LONG) to [`FULL`](#FULL). The exact result depends
on the locale, but generally:

* [`SHORT`](#SHORT) is completely numeric, such as `12.13.52` or `3:30pm`* [`MEDIUM`](#MEDIUM) is longer, such as `Jan 12, 1952`* [`LONG`](#LONG) is longer, such as `January 12, 1952` or `3:30:32pm`* [`FULL`](#FULL) is pretty completely specified, such as
        `Tuesday, April 12, 1952 AD or 3:30:42pm PST`.

You can also set the time zone on the format if you wish.
If you want even more control over the format or parsing,
(or want to give your users more control),
you can try casting the `DateFormat` you get from the factory methods
to a [`SimpleDateFormat`](SimpleDateFormat.md "class in java.text"). This will work for the majority
of countries; just remember to put it in a `try` block in case you
encounter an unusual one.

You can also use forms of the parse and format methods with
[`ParsePosition`](ParsePosition.md "class in java.text") and [`FieldPosition`](FieldPosition.md "class in java.text") to
allow you to

* progressively parse through pieces of a string.* align any particular field, or find out where it is for selection
    on the screen.

## Synchronization

Date formats are not synchronized.
It is recommended to create separate format instances for each thread.
If multiple threads access a format concurrently, it must be synchronized
externally.

Since:
:   1.1

See Also:
:   * [`Format`](Format.md "class in java.text")
    * [`NumberFormat`](NumberFormat.md "class in java.text")
    * [`SimpleDateFormat`](SimpleDateFormat.md "class in java.text")
    * [`Calendar`](../util/Calendar.md "class in java.util")
    * [`GregorianCalendar`](../util/GregorianCalendar.md "class in java.util")
    * [`TimeZone`](../util/TimeZone.md "class in java.util")
    * [`DateTimeFormatter`](../time/format/DateTimeFormatter.md "class in java.time.format")
    * [Serialized Form](../../../serialized-form.md#java.text.DateFormat)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `DateFormat.Field`

  Defines constants that are used as attribute keys in the
  `AttributedCharacterIterator` returned
  from `DateFormat.formatToCharacterIterator` and as
  field identifiers in `FieldPosition`.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `AM_PM_FIELD`

  Useful constant for AM\_PM field alignment.

  `protected Calendar`

  `calendar`

  The [`Calendar`](../util/Calendar.md "class in java.util") instance used for calculating the date-time fields
  and the instant of time.

  `static final int`

  `DATE_FIELD`

  Useful constant for DATE field alignment.

  `static final int`

  `DAY_OF_WEEK_FIELD`

  Useful constant for DAY\_OF\_WEEK field alignment.

  `static final int`

  `DAY_OF_WEEK_IN_MONTH_FIELD`

  Useful constant for DAY\_OF\_WEEK\_IN\_MONTH field alignment.

  `static final int`

  `DAY_OF_YEAR_FIELD`

  Useful constant for DAY\_OF\_YEAR field alignment.

  `static final int`

  `DEFAULT`

  Constant for default style pattern.

  `static final int`

  `ERA_FIELD`

  Useful constant for ERA field alignment.

  `static final int`

  `FULL`

  Constant for full style pattern.

  `static final int`

  `HOUR_OF_DAY0_FIELD`

  Useful constant for zero-based HOUR\_OF\_DAY field alignment.

  `static final int`

  `HOUR_OF_DAY1_FIELD`

  Useful constant for one-based HOUR\_OF\_DAY field alignment.

  `static final int`

  `HOUR0_FIELD`

  Useful constant for zero-based HOUR field alignment.

  `static final int`

  `HOUR1_FIELD`

  Useful constant for one-based HOUR field alignment.

  `static final int`

  `LONG`

  Constant for long style pattern.

  `static final int`

  `MEDIUM`

  Constant for medium style pattern.

  `static final int`

  `MILLISECOND_FIELD`

  Useful constant for MILLISECOND field alignment.

  `static final int`

  `MINUTE_FIELD`

  Useful constant for MINUTE field alignment.

  `static final int`

  `MONTH_FIELD`

  Useful constant for MONTH field alignment.

  `protected NumberFormat`

  `numberFormat`

  The number formatter that `DateFormat` uses to format numbers
  in dates and times.

  `static final int`

  `SECOND_FIELD`

  Useful constant for SECOND field alignment.

  `static final int`

  `SHORT`

  Constant for short style pattern.

  `static final int`

  `TIMEZONE_FIELD`

  Useful constant for TIMEZONE field alignment.

  `static final int`

  `WEEK_OF_MONTH_FIELD`

  Useful constant for WEEK\_OF\_MONTH field alignment.

  `static final int`

  `WEEK_OF_YEAR_FIELD`

  Useful constant for WEEK\_OF\_YEAR field alignment.

  `static final int`

  `YEAR_FIELD`

  Useful constant for YEAR field alignment.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DateFormat()`

  Create a new date format.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Overrides Cloneable

  `boolean`

  `equals(Object obj)`

  Overrides equals

  `final StringBuffer`

  `format(Object obj,
  StringBuffer toAppendTo,
  FieldPosition fieldPosition)`

  Formats the given `Object` into a date-time string.

  `final String`

  `format(Date date)`

  Formats a [`Date`](../util/Date.md "class in java.util") into a date-time string.

  `abstract StringBuffer`

  `format(Date date,
  StringBuffer toAppendTo,
  FieldPosition fieldPosition)`

  Formats a [`Date`](../util/Date.md "class in java.util") into a date-time string.

  `static Locale[]`

  `getAvailableLocales()`

  Returns an array of all locales for which the
  `get*Instance` methods of this class can return
  localized instances.

  `Calendar`

  `getCalendar()`

  Gets the calendar associated with this date/time formatter.

  `static final DateFormat`

  `getDateInstance()`

  Gets the date formatter with the default formatting style
  for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static final DateFormat`

  `getDateInstance(int style)`

  Gets the date formatter with the given formatting style
  for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static final DateFormat`

  `getDateInstance(int style,
  Locale aLocale)`

  Gets the date formatter with the given formatting style
  for the given locale.

  `static final DateFormat`

  `getDateTimeInstance()`

  Gets the date/time formatter with the default formatting style
  for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static final DateFormat`

  `getDateTimeInstance(int dateStyle,
  int timeStyle)`

  Gets the date/time formatter with the given date and time
  formatting styles for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static final DateFormat`

  `getDateTimeInstance(int dateStyle,
  int timeStyle,
  Locale aLocale)`

  Gets the date/time formatter with the given formatting styles
  for the given locale.

  `static final DateFormat`

  `getInstance()`

  Get a default date/time formatter that uses the SHORT style for both the
  date and the time.

  `NumberFormat`

  `getNumberFormat()`

  Gets the number formatter which this date/time formatter uses to
  format and parse a time.

  `static final DateFormat`

  `getTimeInstance()`

  Gets the time formatter with the default formatting style
  for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static final DateFormat`

  `getTimeInstance(int style)`

  Gets the time formatter with the given formatting style
  for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static final DateFormat`

  `getTimeInstance(int style,
  Locale aLocale)`

  Gets the time formatter with the given formatting style
  for the given locale.

  `TimeZone`

  `getTimeZone()`

  Gets the time zone.

  `int`

  `hashCode()`

  Overrides hashCode

  `boolean`

  `isLenient()`

  Tell whether date/time parsing is to be lenient.

  `Date`

  `parse(String source)`

  Parses text from the beginning of the given string to produce a date.

  `abstract Date`

  `parse(String source,
  ParsePosition pos)`

  Parse a date/time string according to the given parse position.

  `Object`

  `parseObject(String source,
  ParsePosition pos)`

  Parses text from a string to produce a `Date`.

  `void`

  `setCalendar(Calendar newCalendar)`

  Set the calendar to be used by this date format.

  `void`

  `setLenient(boolean lenient)`

  Specify whether or not date/time parsing is to be lenient.

  `void`

  `setNumberFormat(NumberFormat newNumberFormat)`

  Allows you to set the number formatter.

  `void`

  `setTimeZone(TimeZone zone)`

  Sets the time zone for the calendar of this `DateFormat` object.

  ### Methods inherited from class java.text.[Format](Format.md "class in java.text")

  `format, formatToCharacterIterator, parseObject`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### calendar

    protected [Calendar](../util/Calendar.md "class in java.util") calendar

    The [`Calendar`](../util/Calendar.md "class in java.util") instance used for calculating the date-time fields
    and the instant of time. This field is used for both formatting and
    parsing.

    Subclasses should initialize this field to a [`Calendar`](../util/Calendar.md "class in java.util")
    appropriate for the [`Locale`](../util/Locale.md "class in java.util") associated with this
    `DateFormat`.
  + ### numberFormat

    protected [NumberFormat](NumberFormat.md "class in java.text") numberFormat

    The number formatter that `DateFormat` uses to format numbers
    in dates and times. Subclasses should initialize this to a number format
    appropriate for the locale associated with this `DateFormat`.
  + ### ERA\_FIELD

    public static final int ERA\_FIELD

    Useful constant for ERA field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.ERA_FIELD)
  + ### YEAR\_FIELD

    public static final int YEAR\_FIELD

    Useful constant for YEAR field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.YEAR_FIELD)
  + ### MONTH\_FIELD

    public static final int MONTH\_FIELD

    Useful constant for MONTH field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.MONTH_FIELD)
  + ### DATE\_FIELD

    public static final int DATE\_FIELD

    Useful constant for DATE field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.DATE_FIELD)
  + ### HOUR\_OF\_DAY1\_FIELD

    public static final int HOUR\_OF\_DAY1\_FIELD

    Useful constant for one-based HOUR\_OF\_DAY field alignment.
    Used in FieldPosition of date/time formatting.
    HOUR\_OF\_DAY1\_FIELD is used for the one-based 24-hour clock.
    For example, 23:59 + 01:00 results in 24:59.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.HOUR_OF_DAY1_FIELD)
  + ### HOUR\_OF\_DAY0\_FIELD

    public static final int HOUR\_OF\_DAY0\_FIELD

    Useful constant for zero-based HOUR\_OF\_DAY field alignment.
    Used in FieldPosition of date/time formatting.
    HOUR\_OF\_DAY0\_FIELD is used for the zero-based 24-hour clock.
    For example, 23:59 + 01:00 results in 00:59.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.HOUR_OF_DAY0_FIELD)
  + ### MINUTE\_FIELD

    public static final int MINUTE\_FIELD

    Useful constant for MINUTE field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.MINUTE_FIELD)
  + ### SECOND\_FIELD

    public static final int SECOND\_FIELD

    Useful constant for SECOND field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.SECOND_FIELD)
  + ### MILLISECOND\_FIELD

    public static final int MILLISECOND\_FIELD

    Useful constant for MILLISECOND field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.MILLISECOND_FIELD)
  + ### DAY\_OF\_WEEK\_FIELD

    public static final int DAY\_OF\_WEEK\_FIELD

    Useful constant for DAY\_OF\_WEEK field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.DAY_OF_WEEK_FIELD)
  + ### DAY\_OF\_YEAR\_FIELD

    public static final int DAY\_OF\_YEAR\_FIELD

    Useful constant for DAY\_OF\_YEAR field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.DAY_OF_YEAR_FIELD)
  + ### DAY\_OF\_WEEK\_IN\_MONTH\_FIELD

    public static final int DAY\_OF\_WEEK\_IN\_MONTH\_FIELD

    Useful constant for DAY\_OF\_WEEK\_IN\_MONTH field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.DAY_OF_WEEK_IN_MONTH_FIELD)
  + ### WEEK\_OF\_YEAR\_FIELD

    public static final int WEEK\_OF\_YEAR\_FIELD

    Useful constant for WEEK\_OF\_YEAR field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.WEEK_OF_YEAR_FIELD)
  + ### WEEK\_OF\_MONTH\_FIELD

    public static final int WEEK\_OF\_MONTH\_FIELD

    Useful constant for WEEK\_OF\_MONTH field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.WEEK_OF_MONTH_FIELD)
  + ### AM\_PM\_FIELD

    public static final int AM\_PM\_FIELD

    Useful constant for AM\_PM field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.AM_PM_FIELD)
  + ### HOUR1\_FIELD

    public static final int HOUR1\_FIELD

    Useful constant for one-based HOUR field alignment.
    Used in FieldPosition of date/time formatting.
    HOUR1\_FIELD is used for the one-based 12-hour clock.
    For example, 11:30 PM + 1 hour results in 12:30 AM.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.HOUR1_FIELD)
  + ### HOUR0\_FIELD

    public static final int HOUR0\_FIELD

    Useful constant for zero-based HOUR field alignment.
    Used in FieldPosition of date/time formatting.
    HOUR0\_FIELD is used for the zero-based 12-hour clock.
    For example, 11:30 PM + 1 hour results in 00:30 AM.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.HOUR0_FIELD)
  + ### TIMEZONE\_FIELD

    public static final int TIMEZONE\_FIELD

    Useful constant for TIMEZONE field alignment.
    Used in FieldPosition of date/time formatting.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.TIMEZONE_FIELD)
  + ### FULL

    public static final int FULL

    Constant for full style pattern.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.FULL)
  + ### LONG

    public static final int LONG

    Constant for long style pattern.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.LONG)
  + ### MEDIUM

    public static final int MEDIUM

    Constant for medium style pattern.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.MEDIUM)
  + ### SHORT

    public static final int SHORT

    Constant for short style pattern.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.SHORT)
  + ### DEFAULT

    public static final int DEFAULT

    Constant for default style pattern. Its value is MEDIUM.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.DateFormat.DEFAULT)
* ## Constructor Details

  + ### DateFormat

    protected DateFormat()

    Create a new date format.
* ## Method Details

  + ### format

    public final [StringBuffer](../lang/StringBuffer.md "class in java.lang") format([Object](../lang/Object.md "class in java.lang") obj,
    [StringBuffer](../lang/StringBuffer.md "class in java.lang") toAppendTo,
    [FieldPosition](FieldPosition.md "class in java.text") fieldPosition)

    Formats the given `Object` into a date-time string. The formatted
    string is appended to the given `StringBuffer`.

    Specified by:
    :   `format` in class `Format`

    Parameters:
    :   `obj` - Must be a `Date` or a `Number` representing a
        millisecond offset from the [Epoch](../util/Calendar.md#Epoch).
    :   `toAppendTo` - The string buffer for the returning date-time string.
    :   `fieldPosition` - keeps track on the position of the field within
        the returned string. For example, given a date-time text
        `"1996.07.10 AD at 15:08:56 PDT"`, if the given `fieldPosition`
        is [`YEAR_FIELD`](#YEAR_FIELD), the begin index and end index of
        `fieldPosition` will be set to 0 and 4, respectively.
        Notice that if the same date-time field appears more than once in a
        pattern, the `fieldPosition` will be set for the first occurrence
        of that date-time field. For instance, formatting a `Date` to the
        date-time string `"1 PM PDT (Pacific Daylight Time)"` using the
        pattern `"h a z (zzzz)"` and the alignment field
        [`TIMEZONE_FIELD`](#TIMEZONE_FIELD), the begin index and end index of
        `fieldPosition` will be set to 5 and 8, respectively, for the
        first occurrence of the timezone pattern character `'z'`.

    Returns:
    :   the string buffer passed in as `toAppendTo`,
        with formatted text appended.

    Throws:
    :   `IllegalArgumentException` - if the `Format` cannot format
        the given `obj`.

    See Also:
    :   - [`Format`](Format.md "class in java.text")
  + ### format

    public abstract [StringBuffer](../lang/StringBuffer.md "class in java.lang") format([Date](../util/Date.md "class in java.util") date,
    [StringBuffer](../lang/StringBuffer.md "class in java.lang") toAppendTo,
    [FieldPosition](FieldPosition.md "class in java.text") fieldPosition)

    Formats a [`Date`](../util/Date.md "class in java.util") into a date-time string. The formatted
    string is appended to the given `StringBuffer`.

    Parameters:
    :   `date` - a Date to be formatted into a date-time string.
    :   `toAppendTo` - the string buffer for the returning date-time string.
    :   `fieldPosition` - keeps track on the position of the field within
        the returned string. For example, given a date-time text
        `"1996.07.10 AD at 15:08:56 PDT"`, if the given `fieldPosition`
        is [`YEAR_FIELD`](#YEAR_FIELD), the begin index and end index of
        `fieldPosition` will be set to 0 and 4, respectively.
        Notice that if the same date-time field appears more than once in a
        pattern, the `fieldPosition` will be set for the first occurrence
        of that date-time field. For instance, formatting a `Date` to the
        date-time string `"1 PM PDT (Pacific Daylight Time)"` using the
        pattern `"h a z (zzzz)"` and the alignment field
        [`TIMEZONE_FIELD`](#TIMEZONE_FIELD), the begin index and end index of
        `fieldPosition` will be set to 5 and 8, respectively, for the
        first occurrence of the timezone pattern character `'z'`.

    Returns:
    :   the string buffer passed in as `toAppendTo`, with formatted
        text appended.
  + ### format

    public final [String](../lang/String.md "class in java.lang") format([Date](../util/Date.md "class in java.util") date)

    Formats a [`Date`](../util/Date.md "class in java.util") into a date-time string.

    Parameters:
    :   `date` - the time value to be formatted into a date-time string.

    Returns:
    :   the formatted date-time string.
  + ### parse

    public [Date](../util/Date.md "class in java.util") parse([String](../lang/String.md "class in java.lang") source)
    throws [ParseException](ParseException.md "class in java.text")

    Parses text from the beginning of the given string to produce a date.
    The method may not use the entire text of the given string.

    See the [`parse(String, ParsePosition)`](#parse(java.lang.String,java.text.ParsePosition)) method for more information
    on date parsing.

    Parameters:
    :   `source` - A `String` whose beginning should be parsed.

    Returns:
    :   A `Date` parsed from the string.

    Throws:
    :   `ParseException` - if the beginning of the specified string
        cannot be parsed.
  + ### parse

    public abstract [Date](../util/Date.md "class in java.util") parse([String](../lang/String.md "class in java.lang") source,
    [ParsePosition](ParsePosition.md "class in java.text") pos)

    Parse a date/time string according to the given parse position. For
    example, a time text `"07/10/96 4:5 PM, PDT"` will be parsed into a `Date`
    that is equivalent to `Date(837039900000L)`.

    By default, parsing is lenient: If the input is not in the form used
    by this object's format method but can still be parsed as a date, then
    the parse succeeds. Clients may insist on strict adherence to the
    format by calling [`setLenient(false)`](#setLenient(boolean)).

    This parsing operation uses the [`calendar`](#calendar) to produce
    a `Date`. As a result, the `calendar`'s date-time
    fields and the `TimeZone` value may have been
    overwritten, depending on subclass implementations. Any `TimeZone` value that has previously been set by a call to
    [`setTimeZone`](#setTimeZone(java.util.TimeZone)) may need
    to be restored for further operations.

    Parameters:
    :   `source` - The date/time string to be parsed
    :   `pos` - On input, the position at which to start parsing; on
        output, the position at which parsing terminated, or the
        start position if the parse failed.

    Returns:
    :   A `Date`, or `null` if the input could not be parsed
  + ### parseObject

    public [Object](../lang/Object.md "class in java.lang") parseObject([String](../lang/String.md "class in java.lang") source,
    [ParsePosition](ParsePosition.md "class in java.text") pos)

    Parses text from a string to produce a `Date`.

    The method attempts to parse text starting at the index given by
    `pos`.
    If parsing succeeds, then the index of `pos` is updated
    to the index after the last character used (parsing does not necessarily
    use all characters up to the end of the string), and the parsed
    date is returned. The updated `pos` can be used to
    indicate the starting point for the next call to this method.
    If an error occurs, then the index of `pos` is not
    changed, the error index of `pos` is set to the index of
    the character where the error occurred, and null is returned.

    See the [`parse(String, ParsePosition)`](#parse(java.lang.String,java.text.ParsePosition)) method for more information
    on date parsing.

    Specified by:
    :   `parseObject` in class `Format`

    Parameters:
    :   `source` - A `String`, part of which should be parsed.
    :   `pos` - A `ParsePosition` object with index and error
        index information as described above.

    Returns:
    :   A `Date` parsed from the string. In case of
        error, returns null.

    Throws:
    :   `NullPointerException` - if `source` or `pos` is null.
  + ### getTimeInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getTimeInstance()

    Gets the time formatter with the default formatting style
    for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getTimeInstance(DEFAULT,
    Locale.getDefault(Locale.Category.FORMAT))`](#getTimeInstance(int,java.util.Locale)).

    Returns:
    :   a time formatter.

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getTimeInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getTimeInstance(int style)

    Gets the time formatter with the given formatting style
    for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getTimeInstance(style,
    Locale.getDefault(Locale.Category.FORMAT))`](#getTimeInstance(int,java.util.Locale)).

    Parameters:
    :   `style` - the given formatting style. For example,
        SHORT for "h:mm a" in the US locale.

    Returns:
    :   a time formatter.

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getTimeInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getTimeInstance(int style,
    [Locale](../util/Locale.md "class in java.util") aLocale)

    Gets the time formatter with the given formatting style
    for the given locale.

    Parameters:
    :   `style` - the given formatting style. For example,
        SHORT for "h:mm a" in the US locale.
    :   `aLocale` - the given locale.

    Returns:
    :   a time formatter.
  + ### getDateInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getDateInstance()

    Gets the date formatter with the default formatting style
    for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getDateInstance(DEFAULT,
    Locale.getDefault(Locale.Category.FORMAT))`](#getDateInstance(int,java.util.Locale)).

    Returns:
    :   a date formatter.

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getDateInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getDateInstance(int style)

    Gets the date formatter with the given formatting style
    for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getDateInstance(style,
    Locale.getDefault(Locale.Category.FORMAT))`](#getDateInstance(int,java.util.Locale)).

    Parameters:
    :   `style` - the given formatting style. For example,
        SHORT for "M/d/yy" in the US locale.

    Returns:
    :   a date formatter.

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getDateInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getDateInstance(int style,
    [Locale](../util/Locale.md "class in java.util") aLocale)

    Gets the date formatter with the given formatting style
    for the given locale.

    Parameters:
    :   `style` - the given formatting style. For example,
        SHORT for "M/d/yy" in the US locale.
    :   `aLocale` - the given locale.

    Returns:
    :   a date formatter.
  + ### getDateTimeInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getDateTimeInstance()

    Gets the date/time formatter with the default formatting style
    for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getDateTimeInstance(DEFAULT,
    DEFAULT, Locale.getDefault(Locale.Category.FORMAT))`](#getDateTimeInstance(int,int,java.util.Locale)).

    Returns:
    :   a date/time formatter.

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getDateTimeInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getDateTimeInstance(int dateStyle,
    int timeStyle)

    Gets the date/time formatter with the given date and time
    formatting styles for the default [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getDateTimeInstance(dateStyle,
    timeStyle, Locale.getDefault(Locale.Category.FORMAT))`](#getDateTimeInstance(int,int,java.util.Locale)).

    Parameters:
    :   `dateStyle` - the given date formatting style. For example,
        SHORT for "M/d/yy" in the US locale.
    :   `timeStyle` - the given time formatting style. For example,
        SHORT for "h:mm a" in the US locale.

    Returns:
    :   a date/time formatter.

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getDateTimeInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getDateTimeInstance(int dateStyle,
    int timeStyle,
    [Locale](../util/Locale.md "class in java.util") aLocale)

    Gets the date/time formatter with the given formatting styles
    for the given locale.

    Parameters:
    :   `dateStyle` - the given date formatting style.
    :   `timeStyle` - the given time formatting style.
    :   `aLocale` - the given locale.

    Returns:
    :   a date/time formatter.
  + ### getInstance

    public static final [DateFormat](DateFormat.md "class in java.text") getInstance()

    Get a default date/time formatter that uses the SHORT style for both the
    date and the time.

    Returns:
    :   a date/time formatter
  + ### getAvailableLocales

    public static [Locale](../util/Locale.md "class in java.util")[] getAvailableLocales()

    Returns an array of all locales for which the
    `get*Instance` methods of this class can return
    localized instances.
    The returned array represents the union of locales supported by the Java
    runtime and by installed
    [`DateFormatProvider`](spi/DateFormatProvider.md "class in java.text.spi") implementations.
    At a minimum, the returned array must contain a `Locale` instance equal to
    [`Locale.ROOT`](../util/Locale.md#ROOT) and a `Locale` instance equal to
    [`Locale.US`](../util/Locale.md#US).

    Returns:
    :   An array of locales for which localized
        `DateFormat` instances are available.
  + ### setCalendar

    public void setCalendar([Calendar](../util/Calendar.md "class in java.util") newCalendar)

    Set the calendar to be used by this date format. Initially, the default
    calendar for the specified or default locale is used.

    Any [`TimeZone`](../util/TimeZone.md "class in java.util") and [leniency](#isLenient()) values that have previously been set are
    overwritten by `newCalendar`'s values.

    Parameters:
    :   `newCalendar` - the new `Calendar` to be used by the date format
  + ### getCalendar

    public [Calendar](../util/Calendar.md "class in java.util") getCalendar()

    Gets the calendar associated with this date/time formatter.

    Returns:
    :   the calendar associated with this date/time formatter.
  + ### setNumberFormat

    public void setNumberFormat([NumberFormat](NumberFormat.md "class in java.text") newNumberFormat)

    Allows you to set the number formatter.

    Parameters:
    :   `newNumberFormat` - the given new NumberFormat.
  + ### getNumberFormat

    public [NumberFormat](NumberFormat.md "class in java.text") getNumberFormat()

    Gets the number formatter which this date/time formatter uses to
    format and parse a time.

    Returns:
    :   the number formatter which this date/time formatter uses.
  + ### setTimeZone

    public void setTimeZone([TimeZone](../util/TimeZone.md "class in java.util") zone)

    Sets the time zone for the calendar of this `DateFormat` object.
    This method is equivalent to the following call.
    > Copy![Copy snippet](../../../copy.svg)
    >
    > ```
    > getCalendar().setTimeZone(zone);
    > ```

    The `TimeZone` set by this method is overwritten by a
    [`setCalendar`](#setCalendar(java.util.Calendar)) call.

    The `TimeZone` set by this method may be overwritten as
    a result of a call to the parse method.

    Parameters:
    :   `zone` - the given new time zone.
  + ### getTimeZone

    public [TimeZone](../util/TimeZone.md "class in java.util") getTimeZone()

    Gets the time zone.
    This method is equivalent to the following call.
    > Copy![Copy snippet](../../../copy.svg)
    >
    > ```
    > getCalendar().getTimeZone();
    > ```

    Returns:
    :   the time zone associated with the calendar of DateFormat.
  + ### setLenient

    public void setLenient(boolean lenient)

    Specify whether or not date/time parsing is to be lenient. With
    lenient parsing, the parser may use heuristics to interpret inputs that
    do not precisely match this object's format. With strict parsing,
    inputs must match this object's format.

    This method is equivalent to the following call.
    > Copy![Copy snippet](../../../copy.svg)
    >
    > ```
    > getCalendar().setLenient(lenient);
    > ```

    This leniency value is overwritten by a call to [`setCalendar()`](#setCalendar(java.util.Calendar)).

    Parameters:
    :   `lenient` - when `true`, parsing is lenient

    See Also:
    :   - [`Calendar.setLenient(boolean)`](../util/Calendar.md#setLenient(boolean))
  + ### isLenient

    public boolean isLenient()

    Tell whether date/time parsing is to be lenient.
    This method is equivalent to the following call.
    > Copy![Copy snippet](../../../copy.svg)
    >
    > ```
    > getCalendar().isLenient();
    > ```

    Returns:
    :   `true` if the [`calendar`](#calendar) is lenient;
        `false` otherwise.

    See Also:
    :   - [`Calendar.isLenient()`](../util/Calendar.md#isLenient())
  + ### hashCode

    public int hashCode()

    Overrides hashCode

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Overrides equals

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()

    Overrides Cloneable

    Overrides:
    :   `clone` in class `Format`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")