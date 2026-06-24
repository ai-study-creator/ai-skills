Module [java.base](../../../module-summary.md)

Package [java.util.spi](package-summary.md)

# Class LocaleNameProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.spi.LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

java.util.spi.LocaleNameProvider

---

public abstract class LocaleNameProvider
extends [LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

An abstract class for service providers that
provide localized names for the
[`Locale`](../Locale.md "class in java.util") class.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `LocaleNameProvider()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getDisplayCountry(String countryCode,
  Locale locale)`

  Returns a localized name for the given [IETF BCP47](http://www.rfc-editor.org/rfc/bcp/bcp47.txt) region code (either ISO 3166 country code or UN M.49 area
  codes) and the given locale that is appropriate for display to the user.

  `abstract String`

  `getDisplayLanguage(String languageCode,
  Locale locale)`

  Returns a localized name for the given [IETF BCP47](http://www.rfc-editor.org/rfc/bcp/bcp47.txt) language code and the given locale that is appropriate for
  display to the user.

  `String`

  `getDisplayScript(String scriptCode,
  Locale locale)`

  Returns a localized name for the given [IETF BCP47](http://www.rfc-editor.org/rfc/bcp/bcp47.txt) script code and the given locale that is appropriate for
  display to the user.

  `String`

  `getDisplayUnicodeExtensionKey(String key,
  Locale locale)`

  Returns a localized name for the given
  [Unicode extension](../Locale.md#def_locale_extension) key,
  and the given locale that is appropriate for display to the user.

  `String`

  `getDisplayUnicodeExtensionType(String type,
  String key,
  Locale locale)`

  Returns a localized name for the given
  [Unicode extension](../Locale.md#def_locale_extension) type,
  and the given locale that is appropriate for display to the user.

  `abstract String`

  `getDisplayVariant(String variant,
  Locale locale)`

  Returns a localized name for the given variant code and the given locale that
  is appropriate for display to the user.

  ### Methods inherited from class java.util.spi.[LocaleServiceProvider](LocaleServiceProvider.md "class in java.util.spi")

  `getAvailableLocales, isSupportedLocale`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LocaleNameProvider

    protected LocaleNameProvider()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### getDisplayLanguage

    public abstract [String](../../lang/String.md "class in java.lang") getDisplayLanguage([String](../../lang/String.md "class in java.lang") languageCode,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a localized name for the given [IETF BCP47](http://www.rfc-editor.org/rfc/bcp/bcp47.txt) language code and the given locale that is appropriate for
    display to the user.
    For example, if `languageCode` is "fr" and `locale`
    is en\_US, getDisplayLanguage() will return "French"; if `languageCode`
    is "en" and `locale` is fr\_FR, getDisplayLanguage() will return "anglais".
    If the name returned cannot be localized according to `locale`,
    (say, the provider does not have a Japanese name for Croatian),
    this method returns null.

    Parameters:
    :   `languageCode` - the language code string in the form of two to eight
        lower-case letters between 'a' (U+0061) and 'z' (U+007A)
    :   `locale` - the desired locale

    Returns:
    :   the name of the given language code for the specified locale, or null if it's not
        available.

    Throws:
    :   `NullPointerException` - if `languageCode` or `locale` is null
    :   `IllegalArgumentException` - if `languageCode` is not in the form of
        two or three lower-case letters, or `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`Locale.getDisplayLanguage(java.util.Locale)`](../Locale.md#getDisplayLanguage(java.util.Locale))
  + ### getDisplayScript

    public [String](../../lang/String.md "class in java.lang") getDisplayScript([String](../../lang/String.md "class in java.lang") scriptCode,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a localized name for the given [IETF BCP47](http://www.rfc-editor.org/rfc/bcp/bcp47.txt) script code and the given locale that is appropriate for
    display to the user.
    For example, if `scriptCode` is "Latn" and `locale`
    is en\_US, getDisplayScript() will return "Latin"; if `scriptCode`
    is "Cyrl" and `locale` is fr\_FR, getDisplayScript() will return "cyrillique".
    If the name returned cannot be localized according to `locale`,
    (say, the provider does not have a Japanese name for Cyrillic),
    this method returns null. The default implementation returns null.

    Parameters:
    :   `scriptCode` - the four letter script code string in the form of title-case
        letters (the first letter is upper-case character between 'A' (U+0041) and
        'Z' (U+005A) followed by three lower-case character between 'a' (U+0061)
        and 'z' (U+007A)).
    :   `locale` - the desired locale

    Returns:
    :   the name of the given script code for the specified locale, or null if it's not
        available.

    Throws:
    :   `NullPointerException` - if `scriptCode` or `locale` is null
    :   `IllegalArgumentException` - if `scriptCode` is not in the form of
        four title case letters, or `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).

    Since:
    :   1.7

    See Also:
    :   - [`Locale.getDisplayScript(java.util.Locale)`](../Locale.md#getDisplayScript(java.util.Locale))
  + ### getDisplayCountry

    public abstract [String](../../lang/String.md "class in java.lang") getDisplayCountry([String](../../lang/String.md "class in java.lang") countryCode,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a localized name for the given [IETF BCP47](http://www.rfc-editor.org/rfc/bcp/bcp47.txt) region code (either ISO 3166 country code or UN M.49 area
    codes) and the given locale that is appropriate for display to the user.
    For example, if `countryCode` is "FR" and `locale`
    is en\_US, getDisplayCountry() will return "France"; if `countryCode`
    is "US" and `locale` is fr\_FR, getDisplayCountry() will return "Etats-Unis".
    If the name returned cannot be localized according to `locale`,
    (say, the provider does not have a Japanese name for Croatia),
    this method returns null.

    Parameters:
    :   `countryCode` - the country(region) code string in the form of two
        upper-case letters between 'A' (U+0041) and 'Z' (U+005A) or the UN M.49 area code
        in the form of three digit letters between '0' (U+0030) and '9' (U+0039).
    :   `locale` - the desired locale

    Returns:
    :   the name of the given country code for the specified locale, or null if it's not
        available.

    Throws:
    :   `NullPointerException` - if `countryCode` or `locale` is null
    :   `IllegalArgumentException` - if `countryCode` is not in the form of
        two upper-case letters or three digit letters, or `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`Locale.getDisplayCountry(java.util.Locale)`](../Locale.md#getDisplayCountry(java.util.Locale))
  + ### getDisplayVariant

    public abstract [String](../../lang/String.md "class in java.lang") getDisplayVariant([String](../../lang/String.md "class in java.lang") variant,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a localized name for the given variant code and the given locale that
    is appropriate for display to the user.
    If the name returned cannot be localized according to `locale`,
    this method returns null.

    Parameters:
    :   `variant` - the variant string
    :   `locale` - the desired locale

    Returns:
    :   the name of the given variant string for the specified locale, or null if it's not
        available.

    Throws:
    :   `NullPointerException` - if `variant` or `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).

    See Also:
    :   - [`Locale.getDisplayVariant(java.util.Locale)`](../Locale.md#getDisplayVariant(java.util.Locale))
  + ### getDisplayUnicodeExtensionKey

    public [String](../../lang/String.md "class in java.lang") getDisplayUnicodeExtensionKey([String](../../lang/String.md "class in java.lang") key,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a localized name for the given
    [Unicode extension](../Locale.md#def_locale_extension) key,
    and the given locale that is appropriate for display to the user.
    If the name returned cannot be localized according to `locale`,
    this method returns null.

    Parameters:
    :   `key` - the Unicode Extension key, not null.
    :   `locale` - the desired locale, not null.

    Returns:
    :   the name of the given key string for the specified locale,
        or null if it's not available.

    Throws:
    :   `NullPointerException` - if `key` or `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).

    Since:
    :   10
  + ### getDisplayUnicodeExtensionType

    public [String](../../lang/String.md "class in java.lang") getDisplayUnicodeExtensionType([String](../../lang/String.md "class in java.lang") type,
    [String](../../lang/String.md "class in java.lang") key,
    [Locale](../Locale.md "class in java.util") locale)

    Returns a localized name for the given
    [Unicode extension](../Locale.md#def_locale_extension) type,
    and the given locale that is appropriate for display to the user.
    If the name returned cannot be localized according to `locale`,
    this method returns null.

    Parameters:
    :   `type` - the Unicode Extension type, not null.
    :   `key` - the Unicode Extension key for this `type`, not null.
    :   `locale` - the desired locale, not null.

    Returns:
    :   the name of the given type string for the specified locale,
        or null if it's not available.

    Throws:
    :   `NullPointerException` - if `key`, `type` or `locale` is null
    :   `IllegalArgumentException` - if `locale` isn't
        one of the locales returned from
        [`getAvailableLocales()`](LocaleServiceProvider.md#getAvailableLocales()).

    Since:
    :   10