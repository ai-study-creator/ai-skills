Module [java.base](../../../module-summary.md)

Package [java.text.spi](package-summary.md)

# Class DateFormatProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

java.text.spi.DateFormatProvider

---

public abstract class DateFormatProvider
extends [LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide concrete implementations of the
[`DateFormat`](../DateFormat.md "class in java.text") class.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DateFormatProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract DateFormat`

  `getDateInstance(int style,
  Locale locale)`

  Returns a new `DateFormat` instance which formats date
  with the given formatting style for the specified locale.

  `abstract DateFormat`

  `getDateTimeInstance(int dateStyle,
  int timeStyle,
  Locale locale)`

  Returns a new `DateFormat` instance which formats date and time
  with the given formatting style for the specified locale.

  `abstract DateFormat`

  `getTimeInstance(int style,
  Locale locale)`

  Returns a new `DateFormat` instance which formats time
  with the given formatting style for the specified locale.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DateFormatProvider

    protected DateFormatProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getTimeInstance

    public abstract [DateFormat](../DateFormat.md "class in java.text") getTimeInstance(int style,
    [Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `DateFormat` instance which formats time
    with the given formatting style for the specified locale.

    Parameters:
    :   `style` - the given formatting style. Either one of
        [`DateFormat.SHORT`](../DateFormat.md#SHORT),
        [`DateFormat.MEDIUM`](../DateFormat.md#MEDIUM),
        [`DateFormat.LONG`](../DateFormat.md#LONG), or
        [`DateFormat.FULL`](../DateFormat.md#FULL).
    :   `locale` - the desired locale.

    Returns:
    :   a time formatter.

    Throws:
    :   `IllegalArgumentException` - if `style` is invalid,
        or if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).
    :   `NullPointerException` - if `locale` is null

    See Also:
    :   - [`DateFormat.getTimeInstance(int, java.util.Locale)`](../DateFormat.md#getTimeInstance(int,java.util.Locale))
  + ### getDateInstance

    public abstract [DateFormat](../DateFormat.md "class in java.text") getDateInstance(int style,
    [Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `DateFormat` instance which formats date
    with the given formatting style for the specified locale.

    Parameters:
    :   `style` - the given formatting style. Either one of
        [`DateFormat.SHORT`](../DateFormat.md#SHORT),
        [`DateFormat.MEDIUM`](../DateFormat.md#MEDIUM),
        [`DateFormat.LONG`](../DateFormat.md#LONG), or
        [`DateFormat.FULL`](../DateFormat.md#FULL).
    :   `locale` - the desired locale.

    Returns:
    :   a date formatter.

    Throws:
    :   `IllegalArgumentException` - if `style` is invalid,
        or if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).
    :   `NullPointerException` - if `locale` is null

    See Also:
    :   - [`DateFormat.getDateInstance(int, java.util.Locale)`](../DateFormat.md#getDateInstance(int,java.util.Locale))
  + ### getDateTimeInstance

    public abstract [DateFormat](../DateFormat.md "class in java.text") getDateTimeInstance(int dateStyle,
    int timeStyle,
    [Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `DateFormat` instance which formats date and time
    with the given formatting style for the specified locale.

    Parameters:
    :   `dateStyle` - the given date formatting style. Either one of
        [`DateFormat.SHORT`](../DateFormat.md#SHORT),
        [`DateFormat.MEDIUM`](../DateFormat.md#MEDIUM),
        [`DateFormat.LONG`](../DateFormat.md#LONG), or
        [`DateFormat.FULL`](../DateFormat.md#FULL).
    :   `timeStyle` - the given time formatting style. Either one of
        [`DateFormat.SHORT`](../DateFormat.md#SHORT),
        [`DateFormat.MEDIUM`](../DateFormat.md#MEDIUM),
        [`DateFormat.LONG`](../DateFormat.md#LONG), or
        [`DateFormat.FULL`](../DateFormat.md#FULL).
    :   `locale` - the desired locale.

    Returns:
    :   a date/time formatter.

    Throws:
    :   `IllegalArgumentException` - if `dateStyle` or
        `timeStyle` is invalid,
        or if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).
    :   `NullPointerException` - if `locale` is null

    See Also:
    :   - [`DateFormat.getDateTimeInstance(int, int, java.util.Locale)`](../DateFormat.md#getDateTimeInstance(int,int,java.util.Locale))