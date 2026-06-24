Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Class TimeZoneNameProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

java.util.spi.TimeZoneNameProvider

---

public abstract class TimeZoneNameProvider
extends [LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide localized time zone names for the
[`TimeZone`](../TimeZone.md "class in java.util") class.
The localized time zone names available from the implementations of
this class are also the source for the
[`DateFormatSymbols.getZoneStrings()`](../../text/DateFormatSymbols.md#getZoneStrings()) method.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TimeZoneNameProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getDisplayName(String ID,
  boolean daylight,
  int style,
  Locale locale)`

  Returns a name for the given time zone ID that's suitable for
  presentation to the user in the specified locale.

  `String`

  `getGenericDisplayName(String ID,
  int style,
  Locale locale)`

  Returns a generic name for the given time zone `ID` that's suitable
  for presentation to the user in the specified `locale`.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TimeZoneNameProvider

    protected TimeZoneNameProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getDisplayName

    public abstract [String](../../lang/String.md "class in java.lang") getDisplayName([String](../../lang/String.md "class in java.lang") ID,
    boolean daylight,
    int style,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a name for the given time zone ID that's suitable for
    presentation to the user in the specified locale. The given time
    zone ID is "GMT" or one of the names defined using "Zone" entries
    in the "tz database", a public domain time zone database at
    <https://www.iana.org/time-zones>.
    The data of this database is contained in a file whose name starts with
    "tzdata", and the specification of the data format is part of the zic.8
    man page, which is contained in a file whose name starts with "tzcode".

    If `daylight` is true, the method should return a name
    appropriate for daylight saving time even if the specified time zone
    has not observed daylight saving time in the past.

    Parameters:
    :   `ID` - a time zone ID string
    :   `daylight` - if true, return the daylight saving name.
    :   `style` - either [`TimeZone.LONG`](../TimeZone.md#LONG) or
        [`TimeZone.SHORT`](../TimeZone.md#SHORT)
    :   `locale` - the desired locale

    Returns:
    :   the human-readable name of the given time zone in the
        given locale, or null if it's not available.

    Throws:
    :   `IllegalArgumentException` - if `style` is invalid,
        or `locale` isn't one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).
    :   `NullPointerException` - if `ID` or `locale`
        is null

    See Also:
    :   - [`TimeZone.getDisplayName(boolean, int, java.util.Locale)`](../TimeZone.md#getDisplayName(boolean,int,java.util.Locale))

    External Specifications
    :   - [Time Zone Database](https://www.iana.org/time-zones)
  + ### getGenericDisplayName

    public [String](../../lang/String.md "class in java.lang") getGenericDisplayName([String](../../lang/String.md "class in java.lang") ID,
    int style,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a generic name for the given time zone `ID` that's suitable
    for presentation to the user in the specified `locale`. Generic
    time zone names are neutral from standard time and daylight saving
    time. For example, "PT" is the short generic name of time zone ID `America/Los_Angeles`, while its short standard time and daylight saving
    time names are "PST" and "PDT", respectively. Refer to
    [`getDisplayName`](#getDisplayName(java.lang.String,boolean,int,java.util.Locale))
    for valid time zone IDs.

    The default implementation of this method returns `null`.

    Parameters:
    :   `ID` - a time zone ID string
    :   `style` - either [`TimeZone.LONG`](../TimeZone.md#LONG) or
        [`TimeZone.SHORT`](../TimeZone.md#SHORT)
    :   `locale` - the desired locale

    Returns:
    :   the human-readable generic name of the given time zone in the
        given locale, or `null` if it's not available.

    Throws:
    :   `IllegalArgumentException` - if `style` is invalid,
        or `locale` isn't one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).
    :   `NullPointerException` - if `ID` or `locale`
        is `null`

    Since:
    :   1.8