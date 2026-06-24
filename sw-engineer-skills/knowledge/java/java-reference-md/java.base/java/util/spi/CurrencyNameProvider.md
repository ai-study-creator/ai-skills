Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Class CurrencyNameProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

java.util.spi.CurrencyNameProvider

---

public abstract class CurrencyNameProvider
extends [LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide localized currency symbols and display names for the
[`Currency`](../Currency.md "class in java.util") class.
Note that currency symbols are considered names when determining
behaviors described in the
[`LocaleServiceProvider`](LocaleServiceProvider.md "class in java.util.spi")
specification.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CurrencyNameProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDisplayName(String currencyCode,
  Locale locale)`

  Returns a name for the currency that is appropriate for display to the
  user.

  `abstract String`

  `getSymbol(String currencyCode,
  Locale locale)`

  Gets the symbol of the given currency code for the specified locale.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CurrencyNameProvider

    protected CurrencyNameProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getSymbol

    public abstract [String](../../lang/String.md "class in java.lang") getSymbol([String](../../lang/String.md "class in java.lang") currencyCode,
    [Locale](../Locale.md "class in java.util") locale)

    Gets the symbol of the given currency code for the specified locale.
    For example, for "USD" (US Dollar), the symbol is "$" if the specified
    locale is the US, while for other locales it may be "US$". If no
    symbol can be determined, null should be returned.

    Parameters:
    :   `currencyCode` - the ISO 4217 currency code, which
        consists of three upper-case letters between 'A' (U+0041) and
        'Z' (U+005A)
    :   `locale` - the desired locale

    Returns:
    :   the symbol of the given currency code for the specified locale, or null if
        the symbol is not available for the locale

    Throws:
    :   `NullPointerException` - if `currencyCode` or
        `locale` is null
    :   `IllegalArgumentException` - if `currencyCode` is not in
        the form of three upper-case letters, or `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`Currency.getSymbol(java.util.Locale)`](../Currency.md#getSymbol(java.util.Locale))
  + ### getDisplayName

    public [String](../../lang/String.md "class in java.lang") getDisplayName([String](../../lang/String.md "class in java.lang") currencyCode,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a name for the currency that is appropriate for display to the
    user. The default implementation returns null.

    Parameters:
    :   `currencyCode` - the ISO 4217 currency code, which
        consists of three upper-case letters between 'A' (U+0041) and
        'Z' (U+005A)
    :   `locale` - the desired locale

    Returns:
    :   the name for the currency that is appropriate for display to the
        user, or null if the name is not available for the locale

    Throws:
    :   `IllegalArgumentException` - if `currencyCode` is not in
        the form of three upper-case letters, or `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).
    :   `NullPointerException` - if `currencyCode` or
        `locale` is `null`

    Since:
    :   1.7