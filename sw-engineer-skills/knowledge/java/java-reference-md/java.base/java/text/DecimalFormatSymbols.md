Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class DecimalFormatSymbols

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.DecimalFormatSymbols

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class DecimalFormatSymbols
extends [Object](../lang/Object.md "class in java.lang")
implements [Cloneable](../lang/Cloneable.md "interface in java.lang"), [Serializable](../io/Serializable.md "interface in java.io")

This class represents the set of symbols (such as the decimal separator,
the grouping separator, and so on) needed by `DecimalFormat`
to format numbers. `DecimalFormat` creates for itself an instance of
`DecimalFormatSymbols` from its locale data. If you need to change any
of these symbols, you can get the `DecimalFormatSymbols` object from
your `DecimalFormat` and modify it.

If the locale contains "rg" (region override)
[Unicode extension](../util/Locale.md#def_locale_extension),
the symbols are overridden for the designated region.

Since:
:   1.1

See Also:
:   * [`Locale`](../util/Locale.md "class in java.util")
    * [`DecimalFormat`](DecimalFormat.md "class in java.text")
    * [Serialized Form](../../../serialized-form.md#java.text.DecimalFormatSymbols)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DecimalFormatSymbols()`

  Create a DecimalFormatSymbols object for the default
  [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `DecimalFormatSymbols(Locale locale)`

  Create a DecimalFormatSymbols object for the given locale.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Standard override.

  `boolean`

  `equals(Object obj)`

  Override equals.

  `static Locale[]`

  `getAvailableLocales()`

  Returns an array of all locales for which the
  `getInstance` methods of this class can return
  localized instances.

  `Currency`

  `getCurrency()`

  Gets the currency of these DecimalFormatSymbols.

  `String`

  `getCurrencySymbol()`

  Returns the currency symbol for the currency of these
  DecimalFormatSymbols in their locale.

  `char`

  `getDecimalSeparator()`

  Gets the character used for decimal sign.

  `char`

  `getDigit()`

  Gets the character used for a digit in a pattern.

  `String`

  `getExponentSeparator()`

  Returns the string used to separate the mantissa from the exponent.

  `char`

  `getGroupingSeparator()`

  Gets the character used for grouping separator.

  `String`

  `getInfinity()`

  Gets the string used to represent infinity.

  `static final DecimalFormatSymbols`

  `getInstance()`

  Gets the `DecimalFormatSymbols` instance for the default
  locale.

  `static final DecimalFormatSymbols`

  `getInstance(Locale locale)`

  Gets the `DecimalFormatSymbols` instance for the specified
  locale.

  `String`

  `getInternationalCurrencySymbol()`

  Returns the ISO 4217 currency code of the currency of these
  DecimalFormatSymbols.

  `Locale`

  `getLocale()`

  Returns locale used to create this instance.

  `char`

  `getMinusSign()`

  Gets the character used to represent minus sign.

  `char`

  `getMonetaryDecimalSeparator()`

  Returns the monetary decimal separator.

  `char`

  `getMonetaryGroupingSeparator()`

  Gets the character used for grouping separator for currencies.

  `String`

  `getNaN()`

  Gets the string used to represent "not a number".

  `char`

  `getPatternSeparator()`

  Gets the character used to separate positive and negative subpatterns
  in a pattern.

  `char`

  `getPercent()`

  Gets the character used for percent sign.

  `char`

  `getPerMill()`

  Gets the character used for per mille sign.

  `char`

  `getZeroDigit()`

  Gets the character used for zero.

  `int`

  `hashCode()`

  Override hashCode.

  `void`

  `setCurrency(Currency currency)`

  Sets the currency of these DecimalFormatSymbols.

  `void`

  `setCurrencySymbol(String currency)`

  Sets the currency symbol for the currency of these
  DecimalFormatSymbols in their locale.

  `void`

  `setDecimalSeparator(char decimalSeparator)`

  Sets the character used for decimal sign.

  `void`

  `setDigit(char digit)`

  Sets the character used for a digit in a pattern.

  `void`

  `setExponentSeparator(String exp)`

  Sets the string used to separate the mantissa from the exponent.

  `void`

  `setGroupingSeparator(char groupingSeparator)`

  Sets the character used for grouping separator.

  `void`

  `setInfinity(String infinity)`

  Sets the string used to represent infinity.

  `void`

  `setInternationalCurrencySymbol(String currencyCode)`

  Sets the ISO 4217 currency code of the currency of these
  DecimalFormatSymbols.

  `void`

  `setMinusSign(char minusSign)`

  Sets the character used to represent minus sign.

  `void`

  `setMonetaryDecimalSeparator(char sep)`

  Sets the monetary decimal separator.

  `void`

  `setMonetaryGroupingSeparator(char monetaryGroupingSeparator)`

  Sets the character used for grouping separator for currencies.

  `void`

  `setNaN(String NaN)`

  Sets the string used to represent "not a number".

  `void`

  `setPatternSeparator(char patternSeparator)`

  Sets the character used to separate positive and negative subpatterns
  in a pattern.

  `void`

  `setPercent(char percent)`

  Sets the character used for percent sign.

  `void`

  `setPerMill(char perMill)`

  Sets the character used for per mille sign.

  `void`

  `setZeroDigit(char zeroDigit)`

  Sets the character used for zero.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DecimalFormatSymbols

    public DecimalFormatSymbols()

    Create a DecimalFormatSymbols object for the default
    [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.
    This constructor can only construct instances for the locales
    supported by the Java runtime environment, not for those
    supported by installed
    [`DecimalFormatSymbolsProvider`](spi/DecimalFormatSymbolsProvider.md "class in java.text.spi")
    implementations. For full locale coverage, use the
    [`getInstance`](#getInstance(java.util.Locale)) method.

    This is equivalent to calling
    [`DecimalFormatSymbols(Locale.getDefault(Locale.Category.FORMAT))`](#%3Cinit%3E(java.util.Locale)).

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### DecimalFormatSymbols

    public DecimalFormatSymbols([Locale](../util/Locale.md "class in java.util") locale)

    Create a DecimalFormatSymbols object for the given locale.
    This constructor can only construct instances for the locales
    supported by the Java runtime environment, not for those
    supported by installed
    [`DecimalFormatSymbolsProvider`](spi/DecimalFormatSymbolsProvider.md "class in java.text.spi")
    implementations. For full locale coverage, use the
    [`getInstance`](#getInstance(java.util.Locale)) method.
    If the specified locale contains the [`Locale.UNICODE_LOCALE_EXTENSION`](../util/Locale.md#UNICODE_LOCALE_EXTENSION)
    for the numbering system, the instance is initialized with the specified numbering
    system if the JRE implementation supports it. For example,

    ```
     NumberFormat.getNumberInstance(Locale.forLanguageTag("th-TH-u-nu-thai"))
    ```

    This may return a `NumberFormat` instance with the Thai numbering system,
    instead of the Latin numbering system.

    Parameters:
    :   `locale` - the desired locale

    Throws:
    :   `NullPointerException` - if `locale` is null
* ## Method Details

  + ### getAvailableLocales

    public static [Locale](../util/Locale.md "class in java.util")[] getAvailableLocales()

    Returns an array of all locales for which the
    `getInstance` methods of this class can return
    localized instances.
    The returned array represents the union of locales supported by the Java
    runtime and by installed
    [`DecimalFormatSymbolsProvider`](spi/DecimalFormatSymbolsProvider.md "class in java.text.spi")
    implementations. At a minimum, the returned array must contain a
    `Locale` instance equal to [`Locale.ROOT`](../util/Locale.md#ROOT) and
    a `Locale` instance equal to [`Locale.US`](../util/Locale.md#US).

    Returns:
    :   an array of locales for which localized
        `DecimalFormatSymbols` instances are available.

    Since:
    :   1.6
  + ### getInstance

    public static final [DecimalFormatSymbols](DecimalFormatSymbols.md "class in java.text") getInstance()

    Gets the `DecimalFormatSymbols` instance for the default
    locale. This method provides access to `DecimalFormatSymbols`
    instances for locales supported by the Java runtime itself as well
    as for those supported by installed
    [`DecimalFormatSymbolsProvider`](spi/DecimalFormatSymbolsProvider.md "class in java.text.spi") implementations.

    This is equivalent to calling
    [`getInstance(Locale.getDefault(Locale.Category.FORMAT))`](#getInstance(java.util.Locale)).

    Returns:
    :   a `DecimalFormatSymbols` instance.

    Since:
    :   1.6

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getInstance

    public static final [DecimalFormatSymbols](DecimalFormatSymbols.md "class in java.text") getInstance([Locale](../util/Locale.md "class in java.util") locale)

    Gets the `DecimalFormatSymbols` instance for the specified
    locale. This method provides access to `DecimalFormatSymbols`
    instances for locales supported by the Java runtime itself as well
    as for those supported by installed
    [`DecimalFormatSymbolsProvider`](spi/DecimalFormatSymbolsProvider.md "class in java.text.spi") implementations.
    If the specified locale contains the [`Locale.UNICODE_LOCALE_EXTENSION`](../util/Locale.md#UNICODE_LOCALE_EXTENSION)
    for the numbering system, the instance is initialized with the specified numbering
    system if the JRE implementation supports it. For example,

    ```
     NumberFormat.getNumberInstance(Locale.forLanguageTag("th-TH-u-nu-thai"))
    ```

    This may return a `NumberFormat` instance with the Thai numbering system,
    instead of the Latin numbering system.

    Parameters:
    :   `locale` - the desired locale.

    Returns:
    :   a `DecimalFormatSymbols` instance.

    Throws:
    :   `NullPointerException` - if `locale` is null

    Since:
    :   1.6
  + ### getLocale

    public [Locale](../util/Locale.md "class in java.util") getLocale()

    Returns locale used to create this instance.

    Returns:
    :   locale used to create this instance

    Since:
    :   19
  + ### getZeroDigit

    public char getZeroDigit()

    Gets the character used for zero. Different for Arabic, etc.

    Returns:
    :   the character used for zero
  + ### setZeroDigit

    public void setZeroDigit(char zeroDigit)

    Sets the character used for zero. Different for Arabic, etc.

    Parameters:
    :   `zeroDigit` - the character used for zero
  + ### getGroupingSeparator

    public char getGroupingSeparator()

    Gets the character used for grouping separator. Different for French, etc.

    Returns:
    :   the grouping separator
  + ### setGroupingSeparator

    public void setGroupingSeparator(char groupingSeparator)

    Sets the character used for grouping separator. Different for French, etc.

    Parameters:
    :   `groupingSeparator` - the grouping separator
  + ### getDecimalSeparator

    public char getDecimalSeparator()

    Gets the character used for decimal sign. Different for French, etc.

    Returns:
    :   the character used for decimal sign
  + ### setDecimalSeparator

    public void setDecimalSeparator(char decimalSeparator)

    Sets the character used for decimal sign. Different for French, etc.

    Parameters:
    :   `decimalSeparator` - the character used for decimal sign
  + ### getPerMill

    public char getPerMill()

    Gets the character used for per mille sign. Different for Arabic, etc.

    Returns:
    :   the character used for per mille sign
  + ### setPerMill

    public void setPerMill(char perMill)

    Sets the character used for per mille sign. Different for Arabic, etc.

    Parameters:
    :   `perMill` - the character used for per mille sign
  + ### getPercent

    public char getPercent()

    Gets the character used for percent sign. Different for Arabic, etc.

    Returns:
    :   the character used for percent sign
  + ### setPercent

    public void setPercent(char percent)

    Sets the character used for percent sign. Different for Arabic, etc.

    Parameters:
    :   `percent` - the character used for percent sign
  + ### getDigit

    public char getDigit()

    Gets the character used for a digit in a pattern.

    Returns:
    :   the character used for a digit in a pattern
  + ### setDigit

    public void setDigit(char digit)

    Sets the character used for a digit in a pattern.

    Parameters:
    :   `digit` - the character used for a digit in a pattern
  + ### getPatternSeparator

    public char getPatternSeparator()

    Gets the character used to separate positive and negative subpatterns
    in a pattern.

    Returns:
    :   the pattern separator
  + ### setPatternSeparator

    public void setPatternSeparator(char patternSeparator)

    Sets the character used to separate positive and negative subpatterns
    in a pattern.

    Parameters:
    :   `patternSeparator` - the pattern separator
  + ### getInfinity

    public [String](../lang/String.md "class in java.lang") getInfinity()

    Gets the string used to represent infinity. Almost always left
    unchanged.

    Returns:
    :   the string representing infinity
  + ### setInfinity

    public void setInfinity([String](../lang/String.md "class in java.lang") infinity)

    Sets the string used to represent infinity. Almost always left
    unchanged.

    Parameters:
    :   `infinity` - the string representing infinity
  + ### getNaN

    public [String](../lang/String.md "class in java.lang") getNaN()

    Gets the string used to represent "not a number". Almost always left
    unchanged.

    Returns:
    :   the string representing "not a number"
  + ### setNaN

    public void setNaN([String](../lang/String.md "class in java.lang") NaN)

    Sets the string used to represent "not a number". Almost always left
    unchanged.

    Parameters:
    :   `NaN` - the string representing "not a number"
  + ### getMinusSign

    public char getMinusSign()

    Gets the character used to represent minus sign. If no explicit
    negative format is specified, one is formed by prefixing
    minusSign to the positive format.

    Returns:
    :   the character representing minus sign
  + ### setMinusSign

    public void setMinusSign(char minusSign)

    Sets the character used to represent minus sign. If no explicit
    negative format is specified, one is formed by prefixing
    minusSign to the positive format.

    Parameters:
    :   `minusSign` - the character representing minus sign
  + ### getCurrencySymbol

    public [String](../lang/String.md "class in java.lang") getCurrencySymbol()

    Returns the currency symbol for the currency of these
    DecimalFormatSymbols in their locale.

    Returns:
    :   the currency symbol

    Since:
    :   1.2
  + ### setCurrencySymbol

    public void setCurrencySymbol([String](../lang/String.md "class in java.lang") currency)

    Sets the currency symbol for the currency of these
    DecimalFormatSymbols in their locale.

    Parameters:
    :   `currency` - the currency symbol

    Since:
    :   1.2
  + ### getInternationalCurrencySymbol

    public [String](../lang/String.md "class in java.lang") getInternationalCurrencySymbol()

    Returns the ISO 4217 currency code of the currency of these
    DecimalFormatSymbols.

    Returns:
    :   the currency code

    Since:
    :   1.2
  + ### setInternationalCurrencySymbol

    public void setInternationalCurrencySymbol([String](../lang/String.md "class in java.lang") currencyCode)

    Sets the ISO 4217 currency code of the currency of these
    DecimalFormatSymbols.
    If the currency code is valid (as defined by
    [`Currency.getInstance`](../util/Currency.md#getInstance(java.lang.String))),
    this also sets the currency attribute to the corresponding Currency
    instance and the currency symbol attribute to the currency's symbol
    in the DecimalFormatSymbols' locale. If the currency code is not valid,
    then the currency attribute is set to null and the currency symbol
    attribute is not modified.

    Parameters:
    :   `currencyCode` - the currency code

    Since:
    :   1.2

    See Also:
    :   - [`setCurrency(java.util.Currency)`](#setCurrency(java.util.Currency))
        - [`setCurrencySymbol(java.lang.String)`](#setCurrencySymbol(java.lang.String))
  + ### getCurrency

    public [Currency](../util/Currency.md "class in java.util") getCurrency()

    Gets the currency of these DecimalFormatSymbols. May be null if the
    currency symbol attribute was previously set to a value that's not
    a valid ISO 4217 currency code.

    Returns:
    :   the currency used, or null

    Since:
    :   1.4
  + ### setCurrency

    public void setCurrency([Currency](../util/Currency.md "class in java.util") currency)

    Sets the currency of these DecimalFormatSymbols.
    This also sets the currency symbol attribute to the currency's symbol
    in the DecimalFormatSymbols' locale, and the international currency
    symbol attribute to the currency's ISO 4217 currency code.

    Parameters:
    :   `currency` - the new currency to be used

    Throws:
    :   `NullPointerException` - if `currency` is null

    Since:
    :   1.4

    See Also:
    :   - [`setCurrencySymbol(java.lang.String)`](#setCurrencySymbol(java.lang.String))
        - [`setInternationalCurrencySymbol(java.lang.String)`](#setInternationalCurrencySymbol(java.lang.String))
  + ### getMonetaryDecimalSeparator

    public char getMonetaryDecimalSeparator()

    Returns the monetary decimal separator.

    Returns:
    :   the monetary decimal separator

    Since:
    :   1.2
  + ### setMonetaryDecimalSeparator

    public void setMonetaryDecimalSeparator(char sep)

    Sets the monetary decimal separator.

    Parameters:
    :   `sep` - the monetary decimal separator

    Since:
    :   1.2
  + ### getExponentSeparator

    public [String](../lang/String.md "class in java.lang") getExponentSeparator()

    Returns the string used to separate the mantissa from the exponent.
    Examples: "x10^" for 1.23x10^4, "E" for 1.23E4.

    Returns:
    :   the exponent separator string

    Since:
    :   1.6

    See Also:
    :   - [`setExponentSeparator(java.lang.String)`](#setExponentSeparator(java.lang.String))
  + ### setExponentSeparator

    public void setExponentSeparator([String](../lang/String.md "class in java.lang") exp)

    Sets the string used to separate the mantissa from the exponent.
    Examples: "x10^" for 1.23x10^4, "E" for 1.23E4.

    Parameters:
    :   `exp` - the exponent separator string

    Throws:
    :   `NullPointerException` - if `exp` is null

    Since:
    :   1.6

    See Also:
    :   - [`getExponentSeparator()`](#getExponentSeparator())
  + ### getMonetaryGroupingSeparator

    public char getMonetaryGroupingSeparator()

    Gets the character used for grouping separator for currencies.
    May be different from `grouping separator` in some locales,
    e.g, German in Austria.

    Returns:
    :   the monetary grouping separator

    Since:
    :   15
  + ### setMonetaryGroupingSeparator

    public void setMonetaryGroupingSeparator(char monetaryGroupingSeparator)

    Sets the character used for grouping separator for currencies.
    Invocation of this method will not affect the normal
    `grouping separator`.

    Parameters:
    :   `monetaryGroupingSeparator` - the monetary grouping separator

    Since:
    :   15

    See Also:
    :   - [`setGroupingSeparator(char)`](#setGroupingSeparator(char))
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()

    Standard override.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Override equals.

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
  + ### hashCode

    public int hashCode()

    Override hashCode.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))