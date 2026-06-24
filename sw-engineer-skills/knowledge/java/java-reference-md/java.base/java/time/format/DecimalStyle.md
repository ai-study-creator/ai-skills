Module [java.base](../../../module-summary.md)

Package [java.time.format](package-summary.md)

# Class DecimalStyle

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.time.format.DecimalStyle

---

public final class DecimalStyle
extends [Object](../../lang/Object.md "class in java.lang")

Localized decimal style used in date and time formatting.

A significant part of dealing with dates and times is the localization.
This class acts as a central point for accessing the information.

Since:
:   1.8

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DecimalStyle`

  `STANDARD`

  The standard set of non-localized decimal style symbols.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Checks if this DecimalStyle is equal to another DecimalStyle.

  `static Set<Locale>`

  `getAvailableLocales()`

  Lists all the locales that are supported.

  `char`

  `getDecimalSeparator()`

  Gets the character that represents the decimal point.

  `char`

  `getNegativeSign()`

  Gets the character that represents the negative sign.

  `char`

  `getPositiveSign()`

  Gets the character that represents the positive sign.

  `char`

  `getZeroDigit()`

  Gets the character that represents zero.

  `int`

  `hashCode()`

  A hash code for this DecimalStyle.

  `static DecimalStyle`

  `of(Locale locale)`

  Obtains the DecimalStyle for the specified locale.

  `static DecimalStyle`

  `ofDefaultLocale()`

  Obtains the DecimalStyle for the default
  [`FORMAT`](../../util/Locale.Category.md#FORMAT) locale.

  `String`

  `toString()`

  Returns a string describing this DecimalStyle.

  `DecimalStyle`

  `withDecimalSeparator(char decimalSeparator)`

  Returns a copy of the info with a new character that represents the decimal point.

  `DecimalStyle`

  `withNegativeSign(char negativeSign)`

  Returns a copy of the info with a new character that represents the negative sign.

  `DecimalStyle`

  `withPositiveSign(char positiveSign)`

  Returns a copy of the info with a new character that represents the positive sign.

  `DecimalStyle`

  `withZeroDigit(char zeroDigit)`

  Returns a copy of the info with a new character that represents zero.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### STANDARD

    public static final [DecimalStyle](DecimalStyle.md "class in java.time.format") STANDARD

    The standard set of non-localized decimal style symbols.

    This uses standard ASCII characters for zero, positive, negative and a dot for the decimal point.
* ## Method Details

  + ### getAvailableLocales

    public static [Set](../../util/Set.md "interface in java.util")<[Locale](../../util/Locale.md "class in java.util")> getAvailableLocales()

    Lists all the locales that are supported.

    At a minimum, the returned `Set` must contain a `Locale` instance equal to
    [`Locale.ROOT`](../../util/Locale.md#ROOT) and a `Locale` instance equal to
    [`Locale.US`](../../util/Locale.md#US).

    Returns:
    :   a Set of Locales for which localization is supported
  + ### ofDefaultLocale

    public static [DecimalStyle](DecimalStyle.md "class in java.time.format") ofDefaultLocale()

    Obtains the DecimalStyle for the default
    [`FORMAT`](../../util/Locale.Category.md#FORMAT) locale.

    This method provides access to locale sensitive decimal style symbols.

    This is equivalent to calling
    [`of(Locale.getDefault(Locale.Category.FORMAT))`](#of(java.util.Locale)).

    Returns:
    :   the decimal style, not null

    See Also:
    :   - [`Locale.Category.FORMAT`](../../util/Locale.Category.md#FORMAT)
  + ### of

    public static [DecimalStyle](DecimalStyle.md "class in java.time.format") of([Locale](../../util/Locale.md "class in java.util") locale)

    Obtains the DecimalStyle for the specified locale.

    This method provides access to locale sensitive decimal style symbols.
    If the locale contains "nu" (Numbering System) and/or "rg"
    (Region Override) [Unicode extensions](../../util/Locale.md#def_locale_extension), returned instance will reflect the values specified with
    those extensions. If both "nu" and "rg" are specified, the value from
    the "nu" extension supersedes the implicit one from the "rg" extension.

    Parameters:
    :   `locale` - the locale, not null

    Returns:
    :   the decimal style, not null
  + ### getZeroDigit

    public char getZeroDigit()

    Gets the character that represents zero.

    The character used to represent digits may vary by culture.
    This method specifies the zero character to use, which implies the characters for one to nine.

    Returns:
    :   the character for zero
  + ### withZeroDigit

    public [DecimalStyle](DecimalStyle.md "class in java.time.format") withZeroDigit(char zeroDigit)

    Returns a copy of the info with a new character that represents zero.

    The character used to represent digits may vary by culture.
    This method specifies the zero character to use, which implies the characters for one to nine.

    Parameters:
    :   `zeroDigit` - the character for zero

    Returns:
    :   a copy with a new character that represents zero, not null
  + ### getPositiveSign

    public char getPositiveSign()

    Gets the character that represents the positive sign.

    The character used to represent a positive number may vary by culture.
    This method specifies the character to use.

    Returns:
    :   the character for the positive sign
  + ### withPositiveSign

    public [DecimalStyle](DecimalStyle.md "class in java.time.format") withPositiveSign(char positiveSign)

    Returns a copy of the info with a new character that represents the positive sign.

    The character used to represent a positive number may vary by culture.
    This method specifies the character to use.

    Parameters:
    :   `positiveSign` - the character for the positive sign

    Returns:
    :   a copy with a new character that represents the positive sign, not null
  + ### getNegativeSign

    public char getNegativeSign()

    Gets the character that represents the negative sign.

    The character used to represent a negative number may vary by culture.
    This method specifies the character to use.

    Returns:
    :   the character for the negative sign
  + ### withNegativeSign

    public [DecimalStyle](DecimalStyle.md "class in java.time.format") withNegativeSign(char negativeSign)

    Returns a copy of the info with a new character that represents the negative sign.

    The character used to represent a negative number may vary by culture.
    This method specifies the character to use.

    Parameters:
    :   `negativeSign` - the character for the negative sign

    Returns:
    :   a copy with a new character that represents the negative sign, not null
  + ### getDecimalSeparator

    public char getDecimalSeparator()

    Gets the character that represents the decimal point.

    The character used to represent a decimal point may vary by culture.
    This method specifies the character to use.

    Returns:
    :   the character for the decimal point
  + ### withDecimalSeparator

    public [DecimalStyle](DecimalStyle.md "class in java.time.format") withDecimalSeparator(char decimalSeparator)

    Returns a copy of the info with a new character that represents the decimal point.

    The character used to represent a decimal point may vary by culture.
    This method specifies the character to use.

    Parameters:
    :   `decimalSeparator` - the character for the decimal point

    Returns:
    :   a copy with a new character that represents the decimal point, not null
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") obj)

    Checks if this DecimalStyle is equal to another DecimalStyle.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to check, null returns false

    Returns:
    :   true if this is equal to the other date

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    A hash code for this DecimalStyle.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a suitable hash code

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string describing this DecimalStyle.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string description, not null