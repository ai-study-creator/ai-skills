Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class DateFormatSymbols

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.DateFormatSymbols

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class DateFormatSymbols
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io"), [Cloneable](../lang/Cloneable.md "interface in java.lang")

`DateFormatSymbols` is a public class for encapsulating
localizable date-time formatting data, such as the names of the
months, the names of the days of the week, and the time zone data.
`SimpleDateFormat` uses
`DateFormatSymbols` to encapsulate this information.

Typically you shouldn't use `DateFormatSymbols` directly.
Rather, you are encouraged to create a date-time formatter with the
`DateFormat` class's factory methods: `getTimeInstance`,
`getDateInstance`, or `getDateTimeInstance`.
These methods automatically create a `DateFormatSymbols` for
the formatter so that you don't have to. After the
formatter is created, you may modify its format pattern using the
`setPattern` method. For more information about
creating formatters using `DateFormat`'s factory methods,
see [`DateFormat`](DateFormat.md "class in java.text").

If you decide to create a date-time formatter with a specific
format pattern for a specific locale, you can do so with:
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> new SimpleDateFormat(aPattern, DateFormatSymbols.getInstance(aLocale));
> ```

If the locale contains "rg" (region override)
[Unicode extension](../util/Locale.md#def_locale_extension),
the symbols are overridden for the designated region.

`DateFormatSymbols` objects are cloneable. When you obtain
a `DateFormatSymbols` object, feel free to modify the
date-time formatting data. For instance, you can replace the localized
date-time format pattern characters with the ones that you feel easy
to remember. Or you can change the representative cities
to your favorite ones.

New `DateFormatSymbols` subclasses may be added to support
`SimpleDateFormat` for date-time formatting for additional locales.

Since:
:   1.1

See Also:
:   * [`DateFormat`](DateFormat.md "class in java.text")
    * [`SimpleDateFormat`](SimpleDateFormat.md "class in java.text")
    * [`SimpleTimeZone`](../util/SimpleTimeZone.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.text.DateFormatSymbols)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DateFormatSymbols()`

  Construct a DateFormatSymbols object by loading format data from
  resources for the default [`FORMAT`](../util/Locale.Category.md#FORMAT)
  locale.

  `DateFormatSymbols(Locale locale)`

  Construct a DateFormatSymbols object by loading format data from
  resources for the given locale.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Overrides Cloneable

  `boolean`

  `equals(Object obj)`

  Override equals

  `String[]`

  `getAmPmStrings()`

  Gets ampm strings.

  `static Locale[]`

  `getAvailableLocales()`

  Returns an array of all locales for which the
  `getInstance` methods of this class can return
  localized instances.

  `String[]`

  `getEras()`

  Gets era strings.

  `static final DateFormatSymbols`

  `getInstance()`

  Gets the `DateFormatSymbols` instance for the default
  locale.

  `static final DateFormatSymbols`

  `getInstance(Locale locale)`

  Gets the `DateFormatSymbols` instance for the specified
  locale.

  `String`

  `getLocalPatternChars()`

  Gets localized date-time pattern characters.

  `String[]`

  `getMonths()`

  Gets month strings.

  `String[]`

  `getShortMonths()`

  Gets short month strings.

  `String[]`

  `getShortWeekdays()`

  Gets short weekday strings.

  `String[]`

  `getWeekdays()`

  Gets weekday strings.

  `String[][]`

  `getZoneStrings()`

  Gets time zone strings.

  `int`

  `hashCode()`

  Override hashCode.

  `void`

  `setAmPmStrings(String[] newAmpms)`

  Sets ampm strings.

  `void`

  `setEras(String[] newEras)`

  Sets era strings.

  `void`

  `setLocalPatternChars(String newLocalPatternChars)`

  Sets localized date-time pattern characters.

  `void`

  `setMonths(String[] newMonths)`

  Sets month strings.

  `void`

  `setShortMonths(String[] newShortMonths)`

  Sets short month strings.

  `void`

  `setShortWeekdays(String[] newShortWeekdays)`

  Sets short weekday strings.

  `void`

  `setWeekdays(String[] newWeekdays)`

  Sets weekday strings.

  `void`

  `setZoneStrings(String[][] newZoneStrings)`

  Sets time zone strings.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DateFormatSymbols

    public DateFormatSymbols()

    Construct a DateFormatSymbols object by loading format data from
    resources for the default [`FORMAT`](../util/Locale.Category.md#FORMAT)
    locale. This constructor can only
    construct instances for the locales supported by the Java
    runtime environment, not for those supported by installed
    [`DateFormatSymbolsProvider`](spi/DateFormatSymbolsProvider.md "class in java.text.spi")
    implementations. For full locale coverage, use the
    [`getInstance`](#getInstance(java.util.Locale)) method.

    This is equivalent to calling
    [`DateFormatSymbols(Locale.getDefault(Locale.Category.FORMAT))`](#%3Cinit%3E(java.util.Locale)).

    Throws:
    :   `MissingResourceException` - if the resources for the default locale cannot be
        found or cannot be loaded.

    See Also:
    :   - [`getInstance()`](#getInstance())
        - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### DateFormatSymbols

    public DateFormatSymbols([Locale](../util/Locale.md "class in java.util") locale)

    Construct a DateFormatSymbols object by loading format data from
    resources for the given locale. This constructor can only
    construct instances for the locales supported by the Java
    runtime environment, not for those supported by installed
    [`DateFormatSymbolsProvider`](spi/DateFormatSymbolsProvider.md "class in java.text.spi")
    implementations. For full locale coverage, use the
    [`getInstance`](#getInstance(java.util.Locale)) method.

    Parameters:
    :   `locale` - the desired locale

    Throws:
    :   `MissingResourceException` - if the resources for the specified locale cannot be
        found or cannot be loaded.

    See Also:
    :   - [`getInstance(Locale)`](#getInstance(java.util.Locale))
* ## Method Details

  + ### getAvailableLocales

    public static [Locale](../util/Locale.md "class in java.util")[] getAvailableLocales()

    Returns an array of all locales for which the
    `getInstance` methods of this class can return
    localized instances.
    The returned array represents the union of locales supported by the
    Java runtime and by installed
    [`DateFormatSymbolsProvider`](spi/DateFormatSymbolsProvider.md "class in java.text.spi")
    implementations. At a minimum, the returned array must contain a
    `Locale` instance equal to [`Locale.ROOT`](../util/Locale.md#ROOT) and
    a `Locale` instance equal to [`Locale.US`](../util/Locale.md#US).

    Returns:
    :   An array of locales for which localized
        `DateFormatSymbols` instances are available.

    Since:
    :   1.6
  + ### getInstance

    public static final [DateFormatSymbols](DateFormatSymbols.md "class in java.text") getInstance()

    Gets the `DateFormatSymbols` instance for the default
    locale. This method provides access to `DateFormatSymbols`
    instances for locales supported by the Java runtime itself as well
    as for those supported by installed
    [`DateFormatSymbolsProvider`](spi/DateFormatSymbolsProvider.md "class in java.text.spi")
    implementations.

    This is equivalent to calling [`getInstance(Locale.getDefault(Locale.Category.FORMAT))`](#getInstance(java.util.Locale)).

    Returns:
    :   a `DateFormatSymbols` instance.

    Since:
    :   1.6

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getInstance

    public static final [DateFormatSymbols](DateFormatSymbols.md "class in java.text") getInstance([Locale](../util/Locale.md "class in java.util") locale)

    Gets the `DateFormatSymbols` instance for the specified
    locale. This method provides access to `DateFormatSymbols`
    instances for locales supported by the Java runtime itself as well
    as for those supported by installed
    [`DateFormatSymbolsProvider`](spi/DateFormatSymbolsProvider.md "class in java.text.spi")
    implementations.

    Parameters:
    :   `locale` - the given locale.

    Returns:
    :   a `DateFormatSymbols` instance.

    Throws:
    :   `NullPointerException` - if `locale` is null

    Since:
    :   1.6
  + ### getEras

    public [String](../lang/String.md "class in java.lang")[] getEras()

    Gets era strings. For example: "AD" and "BC".

    Returns:
    :   the era strings.
  + ### setEras

    public void setEras([String](../lang/String.md "class in java.lang")[] newEras)

    Sets era strings. For example: "AD" and "BC".

    Parameters:
    :   `newEras` - the new era strings.
  + ### getMonths

    public [String](../lang/String.md "class in java.lang")[] getMonths()

    Gets month strings. For example: "January", "February", etc.
    An array with either 12 or 13 elements will be returned depending
    on whether or not [`Calendar.UNDECIMBER`](../util/Calendar.md#UNDECIMBER)
    is supported. Use
    [`Calendar.JANUARY`](../util/Calendar.md#JANUARY),
    [`Calendar.FEBRUARY`](../util/Calendar.md#FEBRUARY),
    etc. to index the result array.

    If the language requires different forms for formatting and
    stand-alone usages, this method returns month names in the
    formatting form. For example, the preferred month name for
    January in the Czech language is *ledna* in the
    formatting form, while it is *leden* in the stand-alone
    form. This method returns `"ledna"` in this case. Refer
    to the [Calendar Elements in the Unicode Locale Data Markup Language
    (LDML) specification](http://unicode.org/reports/tr35/#Calendar_Elements) for more details.

    Returns:
    :   the month strings.

    External Specifications
    :   - [Unicode Locale Data Markup Language (LDML)](https://www.unicode.org/reports/tr35)
  + ### setMonths

    public void setMonths([String](../lang/String.md "class in java.lang")[] newMonths)

    Sets month strings. For example: "January", "February", etc.

    Parameters:
    :   `newMonths` - the new month strings. The array should
        be indexed by [`Calendar.JANUARY`](../util/Calendar.md#JANUARY),
        [`Calendar.FEBRUARY`](../util/Calendar.md#FEBRUARY), etc.
  + ### getShortMonths

    public [String](../lang/String.md "class in java.lang")[] getShortMonths()

    Gets short month strings. For example: "Jan", "Feb", etc.
    An array with either 12 or 13 elements will be returned depending
    on whether or not [`Calendar.UNDECIMBER`](../util/Calendar.md#UNDECIMBER)
    is supported. Use
    [`Calendar.JANUARY`](../util/Calendar.md#JANUARY),
    [`Calendar.FEBRUARY`](../util/Calendar.md#FEBRUARY),
    etc. to index the result array.

    If the language requires different forms for formatting and
    stand-alone usages, this method returns short month names in
    the formatting form. For example, the preferred abbreviation
    for January in the Catalan language is *de gen.* in the
    formatting form, while it is *gen.* in the stand-alone
    form. This method returns `"de gen."` in this case. Refer
    to the [Calendar Elements in the Unicode Locale Data Markup Language
    (LDML) specification](http://unicode.org/reports/tr35/#Calendar_Elements) for more details.

    Returns:
    :   the short month strings.

    External Specifications
    :   - [Unicode Locale Data Markup Language (LDML)](https://www.unicode.org/reports/tr35)
  + ### setShortMonths

    public void setShortMonths([String](../lang/String.md "class in java.lang")[] newShortMonths)

    Sets short month strings. For example: "Jan", "Feb", etc.

    Parameters:
    :   `newShortMonths` - the new short month strings. The array should
        be indexed by [`Calendar.JANUARY`](../util/Calendar.md#JANUARY),
        [`Calendar.FEBRUARY`](../util/Calendar.md#FEBRUARY), etc.
  + ### getWeekdays

    public [String](../lang/String.md "class in java.lang")[] getWeekdays()

    Gets weekday strings. For example: "Sunday", "Monday", etc.

    Returns:
    :   the weekday strings. Use
        [`Calendar.SUNDAY`](../util/Calendar.md#SUNDAY),
        [`Calendar.MONDAY`](../util/Calendar.md#MONDAY), etc. to index
        the result array.
  + ### setWeekdays

    public void setWeekdays([String](../lang/String.md "class in java.lang")[] newWeekdays)

    Sets weekday strings. For example: "Sunday", "Monday", etc.

    Parameters:
    :   `newWeekdays` - the new weekday strings. The array should
        be indexed by [`Calendar.SUNDAY`](../util/Calendar.md#SUNDAY),
        [`Calendar.MONDAY`](../util/Calendar.md#MONDAY), etc.
  + ### getShortWeekdays

    public [String](../lang/String.md "class in java.lang")[] getShortWeekdays()

    Gets short weekday strings. For example: "Sun", "Mon", etc.

    Returns:
    :   the short weekday strings. Use
        [`Calendar.SUNDAY`](../util/Calendar.md#SUNDAY),
        [`Calendar.MONDAY`](../util/Calendar.md#MONDAY), etc. to index
        the result array.
  + ### setShortWeekdays

    public void setShortWeekdays([String](../lang/String.md "class in java.lang")[] newShortWeekdays)

    Sets short weekday strings. For example: "Sun", "Mon", etc.

    Parameters:
    :   `newShortWeekdays` - the new short weekday strings. The array should
        be indexed by [`Calendar.SUNDAY`](../util/Calendar.md#SUNDAY),
        [`Calendar.MONDAY`](../util/Calendar.md#MONDAY), etc.
  + ### getAmPmStrings

    public [String](../lang/String.md "class in java.lang")[] getAmPmStrings()

    Gets ampm strings. For example: "AM" and "PM".

    Returns:
    :   the ampm strings.
  + ### setAmPmStrings

    public void setAmPmStrings([String](../lang/String.md "class in java.lang")[] newAmpms)

    Sets ampm strings. For example: "AM" and "PM".

    Parameters:
    :   `newAmpms` - the new ampm strings.
  + ### getZoneStrings

    public [String](../lang/String.md "class in java.lang")[][] getZoneStrings()

    Gets time zone strings. Use of this method is discouraged; use
    [`TimeZone.getDisplayName()`](../util/TimeZone.md#getDisplayName())
    instead.

    The value returned is a
    two-dimensional array of strings of size *n* by *m*,
    where *m* is at least 5. Each of the *n* rows is an
    entry containing the localized names for a single `TimeZone`.
    Each such row contains (with `i` ranging from
    0..*n*-1):
    - `zoneStrings[i][0]` - time zone ID
    - `zoneStrings[i][1]` - long name of zone in standard
      time
    - `zoneStrings[i][2]` - short name of zone in
      standard time
    - `zoneStrings[i][3]` - long name of zone in daylight
      saving time
    - `zoneStrings[i][4]` - short name of zone in daylight
      saving timeThe zone ID is *not* localized; it's one of the valid IDs of
    the [`TimeZone`](../util/TimeZone.md "class in java.util") class that are not
    [custom IDs](../util/TimeZone.md#CustomID).
    All other entries are localized names. If a zone does not implement
    daylight saving time, the daylight saving time names should not be used.

    If [`setZoneStrings`](#setZoneStrings(java.lang.String%5B%5D%5B%5D)) has been called
    on this `DateFormatSymbols` instance, then the strings
    provided by that call are returned. Otherwise, the returned array
    contains names provided by the Java runtime and by installed
    [`TimeZoneNameProvider`](../util/spi/TimeZoneNameProvider.md "class in java.util.spi")
    implementations.

    Returns:
    :   the time zone strings.

    See Also:
    :   - [`setZoneStrings(String[][])`](#setZoneStrings(java.lang.String%5B%5D%5B%5D))
  + ### setZoneStrings

    public void setZoneStrings([String](../lang/String.md "class in java.lang")[][] newZoneStrings)

    Sets time zone strings. The argument must be a
    two-dimensional array of strings of size *n* by *m*,
    where *m* is at least 5. Each of the *n* rows is an
    entry containing the localized names for a single `TimeZone`.
    Each such row contains (with `i` ranging from
    0..*n*-1):
    - `zoneStrings[i][0]` - time zone ID
    - `zoneStrings[i][1]` - long name of zone in standard
      time
    - `zoneStrings[i][2]` - short name of zone in
      standard time
    - `zoneStrings[i][3]` - long name of zone in daylight
      saving time
    - `zoneStrings[i][4]` - short name of zone in daylight
      saving timeThe zone ID is *not* localized; it's one of the valid IDs of
    the [`TimeZone`](../util/TimeZone.md "class in java.util") class that are not
    [custom IDs](../util/TimeZone.md#CustomID).
    All other entries are localized names.

    Parameters:
    :   `newZoneStrings` - the new time zone strings.

    Throws:
    :   `IllegalArgumentException` - if the length of any row in
        `newZoneStrings` is less than 5
    :   `NullPointerException` - if `newZoneStrings` is null

    See Also:
    :   - [`getZoneStrings()`](#getZoneStrings())
  + ### getLocalPatternChars

    public [String](../lang/String.md "class in java.lang") getLocalPatternChars()

    Gets localized date-time pattern characters. For example: 'u', 't', etc.

    Returns:
    :   the localized date-time pattern characters.
  + ### setLocalPatternChars

    public void setLocalPatternChars([String](../lang/String.md "class in java.lang") newLocalPatternChars)

    Sets localized date-time pattern characters. For example: 'u', 't', etc.

    Parameters:
    :   `newLocalPatternChars` - the new localized date-time
        pattern characters.
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()

    Overrides Cloneable

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")
  + ### hashCode

    public int hashCode()

    Override hashCode.
    Generates a hash code for the DateFormatSymbols object.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Override equals

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