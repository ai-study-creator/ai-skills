Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class NumberFormat

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.text.Format](Format.md "class in java.text")

java.text.NumberFormat

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `ChoiceFormat`, `CompactNumberFormat`, `DecimalFormat`

---

public abstract class NumberFormat
extends [Format](Format.md "class in java.text")

`NumberFormat` is the abstract base class for all number
formats. This class provides the interface for formatting and parsing
numbers. `NumberFormat` also provides methods for determining
which locales have number formats, and what their names are.

`NumberFormat` helps you to format and parse numbers for any locale.
Your code can be completely independent of the locale conventions for
decimal points, thousands-separators, or even the particular decimal
digits used, or whether the number format is even decimal.

To format a number for the current Locale, use one of the factory
class methods:
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> myString = NumberFormat.getInstance().format(myNumber);
> ```

If you are formatting multiple numbers, it is
more efficient to get the format and use it multiple times so that
the system doesn't have to fetch the information about the local
language and country conventions multiple times.
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> NumberFormat nf = NumberFormat.getInstance();
> for (int i = 0; i < myNumber.length; ++i) {
>     output.println(nf.format(myNumber[i]) + "; ");
> }
> ```

To format a number for a different Locale, specify it in the
call to `getInstance`.
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> NumberFormat nf = NumberFormat.getInstance(Locale.FRENCH);
> ```

If the locale contains "nu" (numbers) and/or "rg" (region override)
[Unicode extensions](../util/Locale.md#def_locale_extension),
the decimal digits, and/or the country used for formatting are overridden.
If both "nu" and "rg" are specified, the decimal digits from the "nu"
extension supersedes the implicit one from the "rg" extension.

You can also use a `NumberFormat` to parse numbers:
> Copy![Copy snippet](../../../copy.svg)
>
> ```
> myNumber = nf.parse(myString);
> ```

Use `getInstance` or `getNumberInstance` to get the
normal number format. Use `getIntegerInstance` to get an
integer number format. Use `getCurrencyInstance` to get the
currency number format. Use `getCompactNumberInstance` to get the
compact number format to format a number in shorter form. For example,
`2000` can be formatted as `"2K"` in
[`US locale`](../util/Locale.md#US). Use `getPercentInstance`
to get a format for displaying percentages. With this format, a fraction
like 0.53 is displayed as 53%.

You can also control the display of numbers with such methods as
`setMinimumFractionDigits`.
If you want even more control over the format or parsing,
or want to give your users more control,
you can try casting the `NumberFormat` you get from the factory methods
to a `DecimalFormat` or `CompactNumberFormat` depending on
the factory method used. This will work for the vast majority of locales;
just remember to put it in a `try` block in case you encounter
an unusual one.

NumberFormat and DecimalFormat are designed such that some controls
work for formatting and others work for parsing. The following is
the detailed description for each these control methods,

setParseIntegerOnly : only affects parsing, e.g.
if true, "3456.78" → 3456 (and leaves the parse position just after index 6)
if false, "3456.78" → 3456.78 (and leaves the parse position just after index 8)
This is independent of formatting. If you want to not show a decimal point
where there might be no digits after the decimal point, use
setDecimalSeparatorAlwaysShown.

setDecimalSeparatorAlwaysShown : only affects formatting, and only where
there might be no digits after the decimal point, such as with a pattern
like "#,##0.##", e.g.,
if true, 3456.00 → "3,456."
if false, 3456.00 → "3456"
This is independent of parsing. If you want parsing to stop at the decimal
point, use setParseIntegerOnly.

You can also use forms of the `parse` and `format`
methods with `ParsePosition` and `FieldPosition` to
allow you to:

* progressively parse through pieces of a string* align the decimal point and other areas

For example, you can align numbers in two ways:

1. If you are using a monospaced font with spacing for alignment,
   you can pass the `FieldPosition` in your format call, with
   `field` = `INTEGER_FIELD`. On output,
   `getEndIndex` will be set to the offset between the
   last character of the integer and the decimal. Add
   (desiredSpaceCount - getEndIndex) spaces at the front of the string.- If you are using proportional fonts,
     instead of padding with spaces, measure the width
     of the string in pixels from the start to `getEndIndex`.
     Then move the pen by
     (desiredPixelWidth - widthToAlignmentPoint) before drawing the text.
     It also works where there is no decimal, but possibly additional
     characters at the end, e.g., with parentheses in negative
     numbers: "(12)" for -12.

## Synchronization

Number formats are generally not synchronized.
It is recommended to create separate format instances for each thread.
If multiple threads access a format concurrently, it must be synchronized
externally.

Since:
:   1.1

See Also:
:   * [`DecimalFormat`](DecimalFormat.md "class in java.text")
    * [`ChoiceFormat`](ChoiceFormat.md "class in java.text")
    * [`CompactNumberFormat`](CompactNumberFormat.md "class in java.text")
    * [Serialized Form](../../../serialized-form.md#java.text.NumberFormat)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `NumberFormat.Field`

  Defines constants that are used as attribute keys in the
  `AttributedCharacterIterator` returned
  from `NumberFormat.formatToCharacterIterator` and as
  field identifiers in `FieldPosition`.

  `static enum`

  `NumberFormat.Style`

  A number format style.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `FRACTION_FIELD`

  Field constant used to construct a FieldPosition object.

  `static final int`

  `INTEGER_FIELD`

  Field constant used to construct a FieldPosition object.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `NumberFormat()`

  Sole constructor.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Overrides Cloneable.

  `boolean`

  `equals(Object obj)`

  Overrides equals.

  `final String`

  `format(double number)`

  Specialization of format.

  `abstract StringBuffer`

  `format(double number,
  StringBuffer toAppendTo,
  FieldPosition pos)`

  Specialization of format.

  `final String`

  `format(long number)`

  Specialization of format.

  `abstract StringBuffer`

  `format(long number,
  StringBuffer toAppendTo,
  FieldPosition pos)`

  Specialization of format.

  `StringBuffer`

  `format(Object number,
  StringBuffer toAppendTo,
  FieldPosition pos)`

  Formats a number and appends the resulting text to the given string
  buffer.

  `static Locale[]`

  `getAvailableLocales()`

  Returns an array of all locales for which the
  `get*Instance` methods of this class can return
  localized instances.

  `static NumberFormat`

  `getCompactNumberInstance()`

  Returns a compact number format for the default
  [`FORMAT`](../util/Locale.Category.md#FORMAT) locale with
  [`"SHORT"`](NumberFormat.Style.md#SHORT) format style.

  `static NumberFormat`

  `getCompactNumberInstance(Locale locale,
  NumberFormat.Style formatStyle)`

  Returns a compact number format for the specified [`locale`](../util/Locale.md "class in java.util")
  and [`formatStyle`](NumberFormat.Style.md "enum class in java.text").

  `Currency`

  `getCurrency()`

  Gets the currency used by this number format when formatting
  currency values.

  `static final NumberFormat`

  `getCurrencyInstance()`

  Returns a currency format for the current default
  [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static NumberFormat`

  `getCurrencyInstance(Locale inLocale)`

  Returns a currency format for the specified locale.

  `static final NumberFormat`

  `getInstance()`

  Returns a general-purpose number format for the current default
  [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static NumberFormat`

  `getInstance(Locale inLocale)`

  Returns a general-purpose number format for the specified locale.

  `static final NumberFormat`

  `getIntegerInstance()`

  Returns an integer number format for the current default
  [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static NumberFormat`

  `getIntegerInstance(Locale inLocale)`

  Returns an integer number format for the specified locale.

  `int`

  `getMaximumFractionDigits()`

  Returns the maximum number of digits allowed in the fraction portion of a
  number.

  `int`

  `getMaximumIntegerDigits()`

  Returns the maximum number of digits allowed in the integer portion of a
  number.

  `int`

  `getMinimumFractionDigits()`

  Returns the minimum number of digits allowed in the fraction portion of a
  number.

  `int`

  `getMinimumIntegerDigits()`

  Returns the minimum number of digits allowed in the integer portion of a
  number.

  `static final NumberFormat`

  `getNumberInstance()`

  Returns a general-purpose number format for the current default
  [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static NumberFormat`

  `getNumberInstance(Locale inLocale)`

  Returns a general-purpose number format for the specified locale.

  `static final NumberFormat`

  `getPercentInstance()`

  Returns a percentage format for the current default
  [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

  `static NumberFormat`

  `getPercentInstance(Locale inLocale)`

  Returns a percentage format for the specified locale.

  `RoundingMode`

  `getRoundingMode()`

  Gets the [`RoundingMode`](../math/RoundingMode.md "enum class in java.math") used in this NumberFormat.

  `int`

  `hashCode()`

  Overrides hashCode.

  `boolean`

  `isGroupingUsed()`

  Returns true if grouping is used in this format.

  `boolean`

  `isParseIntegerOnly()`

  Returns true if this format will parse numbers as integers only.

  `Number`

  `parse(String source)`

  Parses text from the beginning of the given string to produce a number.

  `abstract Number`

  `parse(String source,
  ParsePosition parsePosition)`

  Returns a Long if possible (e.g., within the range [Long.MIN\_VALUE,
  Long.MAX\_VALUE] and with no decimals), otherwise a Double.

  `final Object`

  `parseObject(String source,
  ParsePosition pos)`

  Parses text from a string to produce a `Number`.

  `void`

  `setCurrency(Currency currency)`

  Sets the currency used by this number format when formatting
  currency values.

  `void`

  `setGroupingUsed(boolean newValue)`

  Set whether or not grouping will be used in this format.

  `void`

  `setMaximumFractionDigits(int newValue)`

  Sets the maximum number of digits allowed in the fraction portion of a
  number.

  `void`

  `setMaximumIntegerDigits(int newValue)`

  Sets the maximum number of digits allowed in the integer portion of a
  number.

  `void`

  `setMinimumFractionDigits(int newValue)`

  Sets the minimum number of digits allowed in the fraction portion of a
  number.

  `void`

  `setMinimumIntegerDigits(int newValue)`

  Sets the minimum number of digits allowed in the integer portion of a
  number.

  `void`

  `setParseIntegerOnly(boolean value)`

  Sets whether or not numbers should be parsed as integers only.

  `void`

  `setRoundingMode(RoundingMode roundingMode)`

  Sets the [`RoundingMode`](../math/RoundingMode.md "enum class in java.math") used in this NumberFormat.

  ### Methods inherited from class java.text.[Format](Format.md "class in java.text")

  `format, formatToCharacterIterator, parseObject`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### INTEGER\_FIELD

    public static final int INTEGER\_FIELD

    Field constant used to construct a FieldPosition object. Signifies that
    the position of the integer part of a formatted number should be returned.

    See Also:
    :   - [`FieldPosition`](FieldPosition.md "class in java.text")
        - [Constant Field Values](../../../constant-values.md#java.text.NumberFormat.INTEGER_FIELD)
  + ### FRACTION\_FIELD

    public static final int FRACTION\_FIELD

    Field constant used to construct a FieldPosition object. Signifies that
    the position of the fraction part of a formatted number should be returned.

    See Also:
    :   - [`FieldPosition`](FieldPosition.md "class in java.text")
        - [Constant Field Values](../../../constant-values.md#java.text.NumberFormat.FRACTION_FIELD)
* ## Constructor Details

  + ### NumberFormat

    protected NumberFormat()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### format

    public [StringBuffer](../lang/StringBuffer.md "class in java.lang") format([Object](../lang/Object.md "class in java.lang") number,
    [StringBuffer](../lang/StringBuffer.md "class in java.lang") toAppendTo,
    [FieldPosition](FieldPosition.md "class in java.text") pos)

    Formats a number and appends the resulting text to the given string
    buffer.
    The number can be of any subclass of [`Number`](../lang/Number.md "class in java.lang").

    This implementation extracts the number's value using
    [`Number.longValue()`](../lang/Number.md#longValue()) for all integral type values that
    can be converted to `long` without loss of information,
    including `BigInteger` values with a
    [`bit length`](../math/BigInteger.md#bitLength()) of less than 64,
    and [`Number.doubleValue()`](../lang/Number.md#doubleValue()) for all other types. It
    then calls
    [`format(long,java.lang.StringBuffer,java.text.FieldPosition)`](#format(long,java.lang.StringBuffer,java.text.FieldPosition))
    or [`format(double,java.lang.StringBuffer,java.text.FieldPosition)`](#format(double,java.lang.StringBuffer,java.text.FieldPosition)).
    This may result in loss of magnitude information and precision for
    `BigInteger` and `BigDecimal` values.

    Specified by:
    :   `format` in class `Format`

    Parameters:
    :   `number` - the number to format
    :   `toAppendTo` - the `StringBuffer` to which the formatted
        text is to be appended
    :   `pos` - keeps track on the position of the field within the
        returned string. For example, for formatting a number
        `1234567.89` in `Locale.US` locale,
        if the given `fieldPosition` is
        [`INTEGER_FIELD`](#INTEGER_FIELD), the begin index
        and end index of `fieldPosition` will be set
        to 0 and 9, respectively for the output string
        `1,234,567.89`.

    Returns:
    :   the value passed in as `toAppendTo`

    Throws:
    :   `IllegalArgumentException` - if `number` is
        null or not an instance of `Number`.
    :   `NullPointerException` - if `toAppendTo` or
        `pos` is null
    :   `ArithmeticException` - if rounding is needed with rounding
        mode being set to RoundingMode.UNNECESSARY

    See Also:
    :   - [`FieldPosition`](FieldPosition.md "class in java.text")
  + ### parseObject

    public final [Object](../lang/Object.md "class in java.lang") parseObject([String](../lang/String.md "class in java.lang") source,
    [ParsePosition](ParsePosition.md "class in java.text") pos)

    Parses text from a string to produce a `Number`.

    The method attempts to parse text starting at the index given by
    `pos`.
    If parsing succeeds, then the index of `pos` is updated
    to the index after the last character used (parsing does not necessarily
    use all characters up to the end of the string), and the parsed
    number is returned. The updated `pos` can be used to
    indicate the starting point for the next call to this method.
    If an error occurs, then the index of `pos` is not
    changed, the error index of `pos` is set to the index of
    the character where the error occurred, and null is returned.

    See the [`parse(String, ParsePosition)`](#parse(java.lang.String,java.text.ParsePosition)) method for more information
    on number parsing.

    Specified by:
    :   `parseObject` in class `Format`

    Parameters:
    :   `source` - A `String`, part of which should be parsed.
    :   `pos` - A `ParsePosition` object with index and error
        index information as described above.

    Returns:
    :   A `Number` parsed from the string. In case of
        error, returns null.

    Throws:
    :   `NullPointerException` - if `source` or `pos` is null.
  + ### format

    public final [String](../lang/String.md "class in java.lang") format(double number)

    Specialization of format.

    Parameters:
    :   `number` - the double number to format

    Returns:
    :   the formatted String

    Throws:
    :   `ArithmeticException` - if rounding is needed with rounding
        mode being set to RoundingMode.UNNECESSARY

    See Also:
    :   - [`Format.format(java.lang.Object)`](Format.md#format(java.lang.Object))
  + ### format

    public final [String](../lang/String.md "class in java.lang") format(long number)

    Specialization of format.

    Parameters:
    :   `number` - the long number to format

    Returns:
    :   the formatted String

    Throws:
    :   `ArithmeticException` - if rounding is needed with rounding
        mode being set to RoundingMode.UNNECESSARY

    See Also:
    :   - [`Format.format(java.lang.Object)`](Format.md#format(java.lang.Object))
  + ### format

    public abstract [StringBuffer](../lang/StringBuffer.md "class in java.lang") format(double number,
    [StringBuffer](../lang/StringBuffer.md "class in java.lang") toAppendTo,
    [FieldPosition](FieldPosition.md "class in java.text") pos)

    Specialization of format.

    Parameters:
    :   `number` - the double number to format
    :   `toAppendTo` - the StringBuffer to which the formatted text is to be
        appended
    :   `pos` - keeps track on the position of the field within the
        returned string. For example, for formatting a number
        `1234567.89` in `Locale.US` locale,
        if the given `fieldPosition` is
        [`INTEGER_FIELD`](#INTEGER_FIELD), the begin index
        and end index of `fieldPosition` will be set
        to 0 and 9, respectively for the output string
        `1,234,567.89`.

    Returns:
    :   the formatted StringBuffer

    Throws:
    :   `ArithmeticException` - if rounding is needed with rounding
        mode being set to RoundingMode.UNNECESSARY

    See Also:
    :   - [`Format.format(java.lang.Object)`](Format.md#format(java.lang.Object))
  + ### format

    public abstract [StringBuffer](../lang/StringBuffer.md "class in java.lang") format(long number,
    [StringBuffer](../lang/StringBuffer.md "class in java.lang") toAppendTo,
    [FieldPosition](FieldPosition.md "class in java.text") pos)

    Specialization of format.

    Parameters:
    :   `number` - the long number to format
    :   `toAppendTo` - the StringBuffer to which the formatted text is to be
        appended
    :   `pos` - keeps track on the position of the field within the
        returned string. For example, for formatting a number
        `123456789` in `Locale.US` locale,
        if the given `fieldPosition` is
        [`INTEGER_FIELD`](#INTEGER_FIELD), the begin index
        and end index of `fieldPosition` will be set
        to 0 and 11, respectively for the output string
        `123,456,789`.

    Returns:
    :   the formatted StringBuffer

    Throws:
    :   `ArithmeticException` - if rounding is needed with rounding
        mode being set to RoundingMode.UNNECESSARY

    See Also:
    :   - [`Format.format(java.lang.Object)`](Format.md#format(java.lang.Object))
  + ### parse

    public abstract [Number](../lang/Number.md "class in java.lang") parse([String](../lang/String.md "class in java.lang") source,
    [ParsePosition](ParsePosition.md "class in java.text") parsePosition)

    Returns a Long if possible (e.g., within the range [Long.MIN\_VALUE,
    Long.MAX\_VALUE] and with no decimals), otherwise a Double.
    If IntegerOnly is set, will stop at a decimal
    point (or equivalent; e.g., for rational numbers "1 2/3", will stop
    after the 1).
    Does not throw an exception; if no object can be parsed, index is
    unchanged!

    Parameters:
    :   `source` - the String to parse
    :   `parsePosition` - the parse position

    Returns:
    :   the parsed value

    See Also:
    :   - [`isParseIntegerOnly()`](#isParseIntegerOnly())
        - [`Format.parseObject(java.lang.String, java.text.ParsePosition)`](Format.md#parseObject(java.lang.String,java.text.ParsePosition))
  + ### parse

    public [Number](../lang/Number.md "class in java.lang") parse([String](../lang/String.md "class in java.lang") source)
    throws [ParseException](ParseException.md "class in java.text")

    Parses text from the beginning of the given string to produce a number.
    The method may not use the entire text of the given string.

    See the [`parse(String, ParsePosition)`](#parse(java.lang.String,java.text.ParsePosition)) method for more information
    on number parsing.

    Parameters:
    :   `source` - A `String` whose beginning should be parsed.

    Returns:
    :   A `Number` parsed from the string.

    Throws:
    :   `ParseException` - if the beginning of the specified string
        cannot be parsed.
  + ### isParseIntegerOnly

    public boolean isParseIntegerOnly()

    Returns true if this format will parse numbers as integers only.
    For example in the English locale, with ParseIntegerOnly true, the
    string "1234." would be parsed as the integer value 1234 and parsing
    would stop at the "." character. Of course, the exact format accepted
    by the parse operation is locale dependent and determined by sub-classes
    of NumberFormat.

    Returns:
    :   `true` if numbers should be parsed as integers only;
        `false` otherwise
  + ### setParseIntegerOnly

    public void setParseIntegerOnly(boolean value)

    Sets whether or not numbers should be parsed as integers only.

    Parameters:
    :   `value` - `true` if numbers should be parsed as integers only;
        `false` otherwise

    See Also:
    :   - [`isParseIntegerOnly()`](#isParseIntegerOnly())
  + ### getInstance

    public static final [NumberFormat](NumberFormat.md "class in java.text") getInstance()

    Returns a general-purpose number format for the current default
    [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.
    This is the same as calling
    [`getNumberInstance()`](#getNumberInstance()).

    Returns:
    :   the `NumberFormat` instance for general-purpose number
        formatting
  + ### getInstance

    public static [NumberFormat](NumberFormat.md "class in java.text") getInstance([Locale](../util/Locale.md "class in java.util") inLocale)

    Returns a general-purpose number format for the specified locale.
    This is the same as calling
    [`getNumberInstance(inLocale)`](#getNumberInstance(java.util.Locale)).

    Parameters:
    :   `inLocale` - the desired locale

    Returns:
    :   the `NumberFormat` instance for general-purpose number
        formatting
  + ### getNumberInstance

    public static final [NumberFormat](NumberFormat.md "class in java.text") getNumberInstance()

    Returns a general-purpose number format for the current default
    [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getNumberInstance(Locale.getDefault(Locale.Category.FORMAT))`](#getNumberInstance(java.util.Locale)).

    Returns:
    :   the `NumberFormat` instance for general-purpose number
        formatting

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getNumberInstance

    public static [NumberFormat](NumberFormat.md "class in java.text") getNumberInstance([Locale](../util/Locale.md "class in java.util") inLocale)

    Returns a general-purpose number format for the specified locale.

    Parameters:
    :   `inLocale` - the desired locale

    Returns:
    :   the `NumberFormat` instance for general-purpose number
        formatting
  + ### getIntegerInstance

    public static final [NumberFormat](NumberFormat.md "class in java.text") getIntegerInstance()

    Returns an integer number format for the current default
    [`FORMAT`](../util/Locale.Category.md#FORMAT) locale. The
    returned number format is configured to round floating point numbers
    to the nearest integer using half-even rounding (see [`RoundingMode.HALF_EVEN`](../math/RoundingMode.md#HALF_EVEN)) for formatting,
    and to parse only the integer part of an input string (see [`isParseIntegerOnly`](#isParseIntegerOnly())).

    This is equivalent to calling
    [`getIntegerInstance(Locale.getDefault(Locale.Category.FORMAT))`](#getIntegerInstance(java.util.Locale)).

    Returns:
    :   a number format for integer values

    Since:
    :   1.4

    See Also:
    :   - [`getRoundingMode()`](#getRoundingMode())
        - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getIntegerInstance

    public static [NumberFormat](NumberFormat.md "class in java.text") getIntegerInstance([Locale](../util/Locale.md "class in java.util") inLocale)

    Returns an integer number format for the specified locale. The
    returned number format is configured to round floating point numbers
    to the nearest integer using half-even rounding (see [`RoundingMode.HALF_EVEN`](../math/RoundingMode.md#HALF_EVEN)) for formatting,
    and to parse only the integer part of an input string (see [`isParseIntegerOnly`](#isParseIntegerOnly())).

    Parameters:
    :   `inLocale` - the desired locale

    Returns:
    :   a number format for integer values

    Since:
    :   1.4

    See Also:
    :   - [`getRoundingMode()`](#getRoundingMode())
  + ### getCurrencyInstance

    public static final [NumberFormat](NumberFormat.md "class in java.text") getCurrencyInstance()

    Returns a currency format for the current default
    [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getCurrencyInstance(Locale.getDefault(Locale.Category.FORMAT))`](#getCurrencyInstance(java.util.Locale)).

    Returns:
    :   the `NumberFormat` instance for currency formatting

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getCurrencyInstance

    public static [NumberFormat](NumberFormat.md "class in java.text") getCurrencyInstance([Locale](../util/Locale.md "class in java.util") inLocale)

    Returns a currency format for the specified locale.

    If the specified locale contains the "`cf`" (
    [currency format style](https://www.unicode.org/reports/tr35/tr35.html#UnicodeCurrencyFormatIdentifier))
    [Unicode extension](../util/Locale.md#def_locale_extension),
    the returned currency format uses the style if it is available.
    Otherwise, the style uses the default "`standard`" currency format.
    For example, if the style designates "`account`", negative
    currency amounts use a pair of parentheses in some locales.

    Parameters:
    :   `inLocale` - the desired locale

    Returns:
    :   the `NumberFormat` instance for currency formatting

    External Specifications
    :   - [Unicode Locale Data Markup Language (LDML)](https://www.unicode.org/reports/tr35)
  + ### getPercentInstance

    public static final [NumberFormat](NumberFormat.md "class in java.text") getPercentInstance()

    Returns a percentage format for the current default
    [`FORMAT`](../util/Locale.Category.md#FORMAT) locale.

    This is equivalent to calling
    [`getPercentInstance(Locale.getDefault(Locale.Category.FORMAT))`](#getPercentInstance(java.util.Locale)).

    Returns:
    :   the `NumberFormat` instance for percentage formatting

    See Also:
    :   - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getPercentInstance

    public static [NumberFormat](NumberFormat.md "class in java.text") getPercentInstance([Locale](../util/Locale.md "class in java.util") inLocale)

    Returns a percentage format for the specified locale.

    Parameters:
    :   `inLocale` - the desired locale

    Returns:
    :   the `NumberFormat` instance for percentage formatting
  + ### getCompactNumberInstance

    public static [NumberFormat](NumberFormat.md "class in java.text") getCompactNumberInstance()

    Returns a compact number format for the default
    [`FORMAT`](../util/Locale.Category.md#FORMAT) locale with
    [`"SHORT"`](NumberFormat.Style.md#SHORT) format style.

    Returns:
    :   A `NumberFormat` instance for compact number
        formatting

    Since:
    :   12

    See Also:
    :   - [`CompactNumberFormat`](CompactNumberFormat.md "class in java.text")
        - [`NumberFormat.Style`](NumberFormat.Style.md "enum class in java.text")
        - [`Locale.getDefault(java.util.Locale.Category)`](../util/Locale.md#getDefault(java.util.Locale.Category))
        - [`Locale.Category.FORMAT`](../util/Locale.Category.md#FORMAT)
  + ### getCompactNumberInstance

    public static [NumberFormat](NumberFormat.md "class in java.text") getCompactNumberInstance([Locale](../util/Locale.md "class in java.util") locale,
    [NumberFormat.Style](NumberFormat.Style.md "enum class in java.text") formatStyle)

    Returns a compact number format for the specified [`locale`](../util/Locale.md "class in java.util")
    and [`formatStyle`](NumberFormat.Style.md "enum class in java.text").

    Parameters:
    :   `locale` - the desired locale
    :   `formatStyle` - the style for formatting a number

    Returns:
    :   A `NumberFormat` instance for compact number
        formatting

    Throws:
    :   `NullPointerException` - if `locale` or `formatStyle`
        is `null`

    Since:
    :   12

    See Also:
    :   - [`CompactNumberFormat`](CompactNumberFormat.md "class in java.text")
        - [`NumberFormat.Style`](NumberFormat.Style.md "enum class in java.text")
        - [`Locale`](../util/Locale.md "class in java.util")
  + ### getAvailableLocales

    public static [Locale](../util/Locale.md "class in java.util")[] getAvailableLocales()

    Returns an array of all locales for which the
    `get*Instance` methods of this class can return
    localized instances.
    The returned array represents the union of locales supported by the Java
    runtime and by installed
    [`NumberFormatProvider`](spi/NumberFormatProvider.md "class in java.text.spi") implementations.
    At a minimum, the returned array must contain a `Locale` instance equal to
    [`Locale.ROOT`](../util/Locale.md#ROOT) and a `Locale` instance equal to
    [`Locale.US`](../util/Locale.md#US).

    Returns:
    :   An array of locales for which localized
        `NumberFormat` instances are available.
  + ### hashCode

    public int hashCode()

    Overrides hashCode.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Overrides equals.

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
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()

    Overrides Cloneable.

    Overrides:
    :   `clone` in class `Format`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")
  + ### isGroupingUsed

    public boolean isGroupingUsed()

    Returns true if grouping is used in this format. For example, in the
    English locale, with grouping on, the number 1234567 might be formatted
    as "1,234,567". The grouping separator as well as the size of each group
    is locale dependent and is determined by sub-classes of NumberFormat.

    Returns:
    :   `true` if grouping is used;
        `false` otherwise

    See Also:
    :   - [`setGroupingUsed(boolean)`](#setGroupingUsed(boolean))
  + ### setGroupingUsed

    public void setGroupingUsed(boolean newValue)

    Set whether or not grouping will be used in this format.

    Parameters:
    :   `newValue` - `true` if grouping is used;
        `false` otherwise

    See Also:
    :   - [`isGroupingUsed()`](#isGroupingUsed())
  + ### getMaximumIntegerDigits

    public int getMaximumIntegerDigits()

    Returns the maximum number of digits allowed in the integer portion of a
    number.

    Returns:
    :   the maximum number of digits

    See Also:
    :   - [`setMaximumIntegerDigits(int)`](#setMaximumIntegerDigits(int))
  + ### setMaximumIntegerDigits

    public void setMaximumIntegerDigits(int newValue)

    Sets the maximum number of digits allowed in the integer portion of a
    number. maximumIntegerDigits must be ≥ minimumIntegerDigits. If the
    new value for maximumIntegerDigits is less than the current value
    of minimumIntegerDigits, then minimumIntegerDigits will also be set to
    the new value.

    Parameters:
    :   `newValue` - the maximum number of integer digits to be shown; if
        less than zero, then zero is used. The concrete subclass may enforce an
        upper limit to this value appropriate to the numeric type being formatted.

    See Also:
    :   - [`getMaximumIntegerDigits()`](#getMaximumIntegerDigits())
  + ### getMinimumIntegerDigits

    public int getMinimumIntegerDigits()

    Returns the minimum number of digits allowed in the integer portion of a
    number.

    Returns:
    :   the minimum number of digits

    See Also:
    :   - [`setMinimumIntegerDigits(int)`](#setMinimumIntegerDigits(int))
  + ### setMinimumIntegerDigits

    public void setMinimumIntegerDigits(int newValue)

    Sets the minimum number of digits allowed in the integer portion of a
    number. minimumIntegerDigits must be ≤ maximumIntegerDigits. If the
    new value for minimumIntegerDigits exceeds the current value
    of maximumIntegerDigits, then maximumIntegerDigits will also be set to
    the new value

    Parameters:
    :   `newValue` - the minimum number of integer digits to be shown; if
        less than zero, then zero is used. The concrete subclass may enforce an
        upper limit to this value appropriate to the numeric type being formatted.

    See Also:
    :   - [`getMinimumIntegerDigits()`](#getMinimumIntegerDigits())
  + ### getMaximumFractionDigits

    public int getMaximumFractionDigits()

    Returns the maximum number of digits allowed in the fraction portion of a
    number.

    Returns:
    :   the maximum number of digits.

    See Also:
    :   - [`setMaximumFractionDigits(int)`](#setMaximumFractionDigits(int))
  + ### setMaximumFractionDigits

    public void setMaximumFractionDigits(int newValue)

    Sets the maximum number of digits allowed in the fraction portion of a
    number. maximumFractionDigits must be ≥ minimumFractionDigits. If the
    new value for maximumFractionDigits is less than the current value
    of minimumFractionDigits, then minimumFractionDigits will also be set to
    the new value.

    Parameters:
    :   `newValue` - the maximum number of fraction digits to be shown; if
        less than zero, then zero is used. The concrete subclass may enforce an
        upper limit to this value appropriate to the numeric type being formatted.

    See Also:
    :   - [`getMaximumFractionDigits()`](#getMaximumFractionDigits())
  + ### getMinimumFractionDigits

    public int getMinimumFractionDigits()

    Returns the minimum number of digits allowed in the fraction portion of a
    number.

    Returns:
    :   the minimum number of digits

    See Also:
    :   - [`setMinimumFractionDigits(int)`](#setMinimumFractionDigits(int))
  + ### setMinimumFractionDigits

    public void setMinimumFractionDigits(int newValue)

    Sets the minimum number of digits allowed in the fraction portion of a
    number. minimumFractionDigits must be ≤ maximumFractionDigits. If the
    new value for minimumFractionDigits exceeds the current value
    of maximumFractionDigits, then maximumFractionDigits will also be set to
    the new value

    Parameters:
    :   `newValue` - the minimum number of fraction digits to be shown; if
        less than zero, then zero is used. The concrete subclass may enforce an
        upper limit to this value appropriate to the numeric type being formatted.

    See Also:
    :   - [`getMinimumFractionDigits()`](#getMinimumFractionDigits())
  + ### getCurrency

    public [Currency](../util/Currency.md "class in java.util") getCurrency()

    Gets the currency used by this number format when formatting
    currency values. The initial value is derived in a locale dependent
    way. The returned value may be null if no valid
    currency could be determined and no currency has been set using
    [`setCurrency`](#setCurrency(java.util.Currency)).

    The default implementation throws
    `UnsupportedOperationException`.

    Returns:
    :   the currency used by this number format, or `null`

    Throws:
    :   `UnsupportedOperationException` - if the number format class
        doesn't implement currency formatting

    Since:
    :   1.4
  + ### setCurrency

    public void setCurrency([Currency](../util/Currency.md "class in java.util") currency)

    Sets the currency used by this number format when formatting
    currency values. This does not update the minimum or maximum
    number of fraction digits used by the number format.

    The default implementation throws
    `UnsupportedOperationException`.

    Parameters:
    :   `currency` - the new currency to be used by this number format

    Throws:
    :   `UnsupportedOperationException` - if the number format class
        doesn't implement currency formatting
    :   `NullPointerException` - if `currency` is null

    Since:
    :   1.4
  + ### getRoundingMode

    public [RoundingMode](../math/RoundingMode.md "enum class in java.math") getRoundingMode()

    Gets the [`RoundingMode`](../math/RoundingMode.md "enum class in java.math") used in this NumberFormat.
    The default implementation of this method in NumberFormat
    always throws [`UnsupportedOperationException`](../lang/UnsupportedOperationException.md "class in java.lang").
    Subclasses which handle different rounding modes should override
    this method.

    Returns:
    :   The `RoundingMode` used for this NumberFormat.

    Throws:
    :   `UnsupportedOperationException` - The default implementation
        always throws this exception

    Since:
    :   1.6

    See Also:
    :   - [`setRoundingMode(RoundingMode)`](#setRoundingMode(java.math.RoundingMode))
  + ### setRoundingMode

    public void setRoundingMode([RoundingMode](../math/RoundingMode.md "enum class in java.math") roundingMode)

    Sets the [`RoundingMode`](../math/RoundingMode.md "enum class in java.math") used in this NumberFormat.
    The default implementation of this method in NumberFormat always
    throws [`UnsupportedOperationException`](../lang/UnsupportedOperationException.md "class in java.lang").
    Subclasses which handle different rounding modes should override
    this method.

    Parameters:
    :   `roundingMode` - The `RoundingMode` to be used

    Throws:
    :   `UnsupportedOperationException` - The default implementation
        always throws this exception
    :   `NullPointerException` - if `roundingMode` is null

    Since:
    :   1.6

    See Also:
    :   - [`getRoundingMode()`](#getRoundingMode())