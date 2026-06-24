Module [java.base](../../../module-summary.md)

Package [java.text.spi](package-summary.md)

# Class DecimalFormatSymbolsProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

java.text.spi.DecimalFormatSymbolsProvider

---

public abstract class DecimalFormatSymbolsProvider
extends [LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide instances of the
[`DecimalFormatSymbols`](../DecimalFormatSymbols.md "class in java.text") class.

The requested `Locale` may contain an  [extension](../../util/Locale.md#def_locale_extension) for
specifying the desired numbering system. For example, `"ar-u-nu-arab"`
(in the BCP 47 language tag form) specifies Arabic with the Arabic-Indic
digits and symbols, while `"ar-u-nu-latn"` specifies Arabic with the
Latin digits and symbols. Refer to the *Unicode Locale Data Markup
Language (LDML)* specification for numbering systems.

Since:
:   1.6

See Also:
:   * [`Locale.forLanguageTag(String)`](../../util/Locale.md#forLanguageTag(java.lang.String))
    * [`Locale.getExtension(char)`](../../util/Locale.md#getExtension(char))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DecimalFormatSymbolsProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract DecimalFormatSymbols`

  `getInstance(Locale locale)`

  Returns a new `DecimalFormatSymbols` instance for the
  specified locale.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](../../util/spi/LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DecimalFormatSymbolsProvider

    protected DecimalFormatSymbolsProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getInstance

    public abstract [DecimalFormatSymbols](../DecimalFormatSymbols.md "class in java.text") getInstance([Locale](../../util/Locale.md "class in java.util") locale)

    Returns a new `DecimalFormatSymbols` instance for the
    specified locale.

    Parameters:
    :   `locale` - the desired locale

    Returns:
    :   a `DecimalFormatSymbols` instance.

    Throws:
    :   `NullPointerException` - if `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](../../util/spi/LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`DecimalFormatSymbols.getInstance(java.util.Locale)`](../DecimalFormatSymbols.md#getInstance(java.util.Locale))