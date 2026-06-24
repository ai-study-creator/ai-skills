Module [java.base](../../../module-summary.md)

Package [java.text.spi](package-summary.md)

# Class NumberFormatProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

java.text.spi.NumberFormatProvider

---

public abstract class NumberFormatProvider
extends [LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide concrete implementations of the
[`NumberFormat`](../NumberFormat.md "class in java.text") class.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `NumberFormatProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `NumberFormat`

  `getCompactNumberInstance(Locale locale,
  NumberFormat.Style formatStyle)`

  Returns a new `NumberFormat` instance which formats
  a number in its compact form for the specified
  `locale` and `formatStyle`.

  `abstract NumberFormat`

  `getCurrencyInstance(Locale locale)`

  Returns a new `NumberFormat` instance which formats
  monetary values for the specified locale.

  `abstract NumberFormat`

  `getIntegerInstance(Locale locale)`

  Returns a new `NumberFormat` instance which formats
  integer values for the specified locale.

  `abstract NumberFormat`

  `getNumberInstance(Locale locale)`

  Returns a new general-purpose `NumberFormat` instance for
  the specified locale.

  `abstract NumberFormat`

  `getPercentInstance(Locale locale)`

  Returns a new `NumberFormat` instance which formats
  percentage values for the specified locale.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### NumberFormatProvider

    protected NumberFormatProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getCurrencyInstance

    public abstract [NumberFormat](../NumberFormat.md "class in java.text") getCurrencyInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `NumberFormat` instance which formats
    monetary values for the specified locale.

    Parameters:
    :   `locale` - the desired locale.

    Returns:
    :   a currency formatter

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`NumberFormat.getCurrencyInstance(java.util.Locale)`](../NumberFormat.md#getCurrencyInstance(java.util.Locale))
  + ### getIntegerInstance

    public abstract [NumberFormat](../NumberFormat.md "class in java.text") getIntegerInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `NumberFormat` instance which formats
    integer values for the specified locale.
    The returned number format is configured to
    round floating point numbers to the nearest integer using
    half-even rounding (see [`HALF_EVEN`](../../math/RoundingMode.md#HALF_EVEN))
    for formatting, and to parse only the integer part of
    an input string (see [`isParseIntegerOnly`](../NumberFormat.md#isParseIntegerOnly())).

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   a number format for integer values

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`NumberFormat.getIntegerInstance(java.util.Locale)`](../NumberFormat.md#getIntegerInstance(java.util.Locale))
  + ### getNumberInstance

    public abstract [NumberFormat](../NumberFormat.md "class in java.text") getNumberInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new general-purpose `NumberFormat` instance for
    the specified locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   a general-purpose number formatter

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`NumberFormat.getNumberInstance(java.util.Locale)`](../NumberFormat.md#getNumberInstance(java.util.Locale))
  + ### getPercentInstance

    public abstract [NumberFormat](../NumberFormat.md "class in java.text") getPercentInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `NumberFormat` instance which formats
    percentage values for the specified locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   a percent formatter

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`NumberFormat.getPercentInstance(java.util.Locale)`](../NumberFormat.md#getPercentInstance(java.util.Locale))
  + ### getCompactNumberInstance

    public [NumberFormat](../NumberFormat.md "class in java.text") getCompactNumberInstance([Locale](../../util/Locale.md "class in java.util") locale,
    [NumberFormat.Style](../NumberFormat.Style.md "enum class in java.text") formatStyle)

    Returns a new `NumberFormat` instance which formats
    a number in its compact form for the specified
    `locale` and `formatStyle`.

    Parameters:
    :   `locale` - the desired locale
    :   `formatStyle` - the style for formatting a number

    Returns:
    :   a compact number formatter

    Throws:
    :   `NullPointerException` - if `locale` or `formatStyle`
        is `null`
    :   `IllegalArgumentException` - if `locale` is not
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).
    :   `UnsupportedOperationException` - if the implementation does not
        support this method

    Since:
    :   12

    See Also:
    :   - [`NumberFormat.getCompactNumberInstance(Locale, NumberFormat.Style)`](../NumberFormat.md#getCompactNumberInstance(java.util.Locale,java.text.NumberFormat.Style))