Module [java.base](../../../module-summary.md)

Package [java.text.spi](package-summary.md)

# Class DateFormatSymbolsProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

java.text.spi.DateFormatSymbolsProvider

---

public abstract class DateFormatSymbolsProvider
extends [LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide instances of the
[`DateFormatSymbols`](../DateFormatSymbols.md "class in java.text") class.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DateFormatSymbolsProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract DateFormatSymbols`

  `getInstance(Locale locale)`

  Returns a new `DateFormatSymbols` instance for the
  specified locale.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DateFormatSymbolsProvider

    protected DateFormatSymbolsProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getInstance

    public abstract [DateFormatSymbols](../DateFormatSymbols.md "class in java.text") getInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `DateFormatSymbols` instance for the
    specified locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   a `DateFormatSymbols` instance.

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`DateFormatSymbols.getInstance(java.util.Locale)`](../DateFormatSymbols.md#getInstance(java.util.Locale))