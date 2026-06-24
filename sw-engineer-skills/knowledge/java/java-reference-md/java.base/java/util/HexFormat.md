Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class HexFormat

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.HexFormat

---

public final class HexFormat
extends [Object](../lang/Object.md "class in java.lang")

`HexFormat` converts between bytes and chars and hex-encoded strings which may include
additional formatting markup such as prefixes, suffixes, and delimiters.

There are two factories of `HexFormat` with preset parameters [`of()`](#of()) and
[`ofDelimiter(delimiter)`](#ofDelimiter(java.lang.String)). For other parameter combinations
the `withXXX` methods return copies of `HexFormat` modified
[`withPrefix(String)`](#withPrefix(java.lang.String)), [`withSuffix(String)`](#withSuffix(java.lang.String)), [`withDelimiter(String)`](#withDelimiter(java.lang.String))
or choice of [`withUpperCase()`](#withUpperCase()) or [`withLowerCase()`](#withLowerCase()) parameters.

For primitive to hexadecimal string conversions the `toHexDigits`
methods include [`toHexDigits(byte)`](#toHexDigits(byte)), [`toHexDigits(int)`](#toHexDigits(int)), and
[`toHexDigits(long)`](#toHexDigits(long)), etc. The default is to use lowercase characters `"0-9","a-f"`.
For conversions producing uppercase hexadecimal the characters are `"0-9","A-F"`.
Only the [`HexFormat.isUpperCase()`](#isUpperCase()) parameter is
considered; the delimiter, prefix and suffix are not used.

For hexadecimal string to primitive conversions the `fromHexDigits`
methods include [`fromHexDigits(string)`](#fromHexDigits(java.lang.CharSequence)),
[`fromHexDigitsToLong(string)`](#fromHexDigitsToLong(java.lang.CharSequence)), and
[`fromHexDigit(int)`](#fromHexDigit(int)) converts a single character or codepoint.
For conversions from hexadecimal characters the digits and uppercase and lowercase
characters in `"0-9", "a-f", and "A-F"` are converted to corresponding values
`0-15`. The delimiter, prefix, suffix, and uppercase parameters are not used.

For byte array to formatted hexadecimal string conversions
the `formatHex` methods include [`formatHex(byte[])`](#formatHex(byte%5B%5D))
and [`formatHex(Appendable, byte[])`](#formatHex(A,byte%5B%5D)).
The formatted output is a string or is appended to an [`Appendable`](../lang/Appendable.md "interface in java.lang") such as
[`StringBuilder`](../lang/StringBuilder.md "class in java.lang") or [`PrintStream`](../io/PrintStream.md "class in java.io").
Each byte value is formatted as the prefix, two hexadecimal characters from the
uppercase or lowercase digits, and the suffix.
A delimiter follows each formatted value, except the last.
For conversions producing uppercase hexadecimal strings use [`withUpperCase()`](#withUpperCase()).

For formatted hexadecimal string to byte array conversions the
`parseHex` methods include [`parseHex(CharSequence)`](#parseHex(java.lang.CharSequence)) and
[`parseHex(char[], offset, length)`](#parseHex(char%5B%5D,int,int)).
Each byte value is parsed from the prefix, two case insensitive hexadecimal characters,
and the suffix. A delimiter follows each formatted value, except the last.

Since:
:   17

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `delimiter()`

  Returns the delimiter between hexadecimal values in formatted hexadecimal strings.

  `boolean`

  `equals(Object o)`

  Returns `true` if the other object is a `HexFormat`
  with the same parameters.

  `String`

  `formatHex(byte[] bytes)`

  Returns a hexadecimal string formatted from a byte array.

  `String`

  `formatHex(byte[] bytes,
  int fromIndex,
  int toIndex)`

  Returns a hexadecimal string formatted from a byte array range.

  `<A extends Appendable>  
  A`

  `formatHex(A out,
  byte[] bytes)`

  Appends formatted hexadecimal strings from a byte array to the [`Appendable`](../lang/Appendable.md "interface in java.lang").

  `<A extends Appendable>  
  A`

  `formatHex(A out,
  byte[] bytes,
  int fromIndex,
  int toIndex)`

  Appends formatted hexadecimal strings from a byte array range to the [`Appendable`](../lang/Appendable.md "interface in java.lang").

  `static int`

  `fromHexDigit(int ch)`

  Returns the value for the hexadecimal character or codepoint.

  `static int`

  `fromHexDigits(CharSequence string)`

  Returns the `int` value parsed from a string of up to eight hexadecimal characters.

  `static int`

  `fromHexDigits(CharSequence string,
  int fromIndex,
  int toIndex)`

  Returns the `int` value parsed from a string range of up to eight hexadecimal
  characters.

  `static long`

  `fromHexDigitsToLong(CharSequence string)`

  Returns the long value parsed from a string of up to sixteen hexadecimal characters.

  `static long`

  `fromHexDigitsToLong(CharSequence string,
  int fromIndex,
  int toIndex)`

  Returns the long value parsed from a string range of up to sixteen hexadecimal
  characters.

  `int`

  `hashCode()`

  Returns a hashcode for this `HexFormat`.

  `static boolean`

  `isHexDigit(int ch)`

  Returns `true` if the character is a valid hexadecimal character or codepoint.

  `boolean`

  `isUpperCase()`

  Returns `true` if the hexadecimal digits are uppercase,
  otherwise `false`.

  `static HexFormat`

  `of()`

  Returns a hexadecimal formatter with no delimiter and lowercase characters.

  `static HexFormat`

  `ofDelimiter(String delimiter)`

  Returns a hexadecimal formatter with the delimiter and lowercase characters.

  `byte[]`

  `parseHex(char[] chars,
  int fromIndex,
  int toIndex)`

  Returns a byte array containing hexadecimal values parsed from
  a range of the character array.

  `byte[]`

  `parseHex(CharSequence string)`

  Returns a byte array containing hexadecimal values parsed from the string.

  `byte[]`

  `parseHex(CharSequence string,
  int fromIndex,
  int toIndex)`

  Returns a byte array containing hexadecimal values parsed from a range of the string.

  `String`

  `prefix()`

  Returns the prefix used for each hexadecimal value in formatted hexadecimal strings.

  `String`

  `suffix()`

  Returns the suffix used for each hexadecimal value in formatted hexadecimal strings.

  `String`

  `toHexDigits(byte value)`

  Returns the two hexadecimal characters for the `byte` value.

  `String`

  `toHexDigits(char value)`

  Returns the four hexadecimal characters for the `char` value.

  `String`

  `toHexDigits(int value)`

  Returns the eight hexadecimal characters for the `int` value.

  `String`

  `toHexDigits(long value)`

  Returns the sixteen hexadecimal characters for the `long` value.

  `String`

  `toHexDigits(long value,
  int digits)`

  Returns up to sixteen hexadecimal characters for the `long` value.

  `String`

  `toHexDigits(short value)`

  Returns the four hexadecimal characters for the `short` value.

  `<A extends Appendable>  
  A`

  `toHexDigits(A out,
  byte value)`

  Appends two hexadecimal characters for the byte value to the [`Appendable`](../lang/Appendable.md "interface in java.lang").

  `char`

  `toHighHexDigit(int value)`

  Returns the hexadecimal character for the high 4 bits of the value considering it to be a byte.

  `char`

  `toLowHexDigit(int value)`

  Returns the hexadecimal character for the low 4 bits of the value considering it to be a byte.

  `String`

  `toString()`

  Returns a description of the formatter parameters for uppercase,
  delimiter, prefix, and suffix.

  `HexFormat`

  `withDelimiter(String delimiter)`

  Returns a copy of this `HexFormat` with the delimiter.

  `HexFormat`

  `withLowerCase()`

  Returns a copy of this `HexFormat` to use lowercase hexadecimal characters.

  `HexFormat`

  `withPrefix(String prefix)`

  Returns a copy of this `HexFormat` with the prefix.

  `HexFormat`

  `withSuffix(String suffix)`

  Returns a copy of this `HexFormat` with the suffix.

  `HexFormat`

  `withUpperCase()`

  Returns a copy of this `HexFormat` to use uppercase hexadecimal characters.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### of

    public static [HexFormat](HexFormat.md "class in java.util") of()

    Returns a hexadecimal formatter with no delimiter and lowercase characters.
    The delimiter, prefix, and suffix are empty.
    The methods [`withDelimiter`](#withDelimiter(java.lang.String)),
    [`withUpperCase`](#withUpperCase()), [`withLowerCase`](#withLowerCase()),
    [`withPrefix`](#withPrefix(java.lang.String)), and [`withSuffix`](#withSuffix(java.lang.String))
    return copies of formatters with new parameters.

    Returns:
    :   a hexadecimal formatter with no delimiter and lowercase characters
  + ### ofDelimiter

    public static [HexFormat](HexFormat.md "class in java.util") ofDelimiter([String](../lang/String.md "class in java.lang") delimiter)

    Returns a hexadecimal formatter with the delimiter and lowercase characters.
    The prefix and suffix are empty.
    The methods [`withDelimiter`](#withDelimiter(java.lang.String)),
    [`withUpperCase`](#withUpperCase()), [`withLowerCase`](#withLowerCase()),
    [`withPrefix`](#withPrefix(java.lang.String)), and [`withSuffix`](#withSuffix(java.lang.String))
    return copies of formatters with new parameters.

    Parameters:
    :   `delimiter` - a delimiter, non-null, may be empty

    Returns:
    :   a [`HexFormat`](HexFormat.md "class in java.util") with the delimiter and lowercase characters
  + ### withDelimiter

    public [HexFormat](HexFormat.md "class in java.util") withDelimiter([String](../lang/String.md "class in java.lang") delimiter)

    Returns a copy of this `HexFormat` with the delimiter.

    Parameters:
    :   `delimiter` - the delimiter, non-null, may be empty

    Returns:
    :   a copy of this `HexFormat` with the delimiter
  + ### withPrefix

    public [HexFormat](HexFormat.md "class in java.util") withPrefix([String](../lang/String.md "class in java.lang") prefix)

    Returns a copy of this `HexFormat` with the prefix.

    Parameters:
    :   `prefix` - a prefix, non-null, may be empty

    Returns:
    :   a copy of this `HexFormat` with the prefix
  + ### withSuffix

    public [HexFormat](HexFormat.md "class in java.util") withSuffix([String](../lang/String.md "class in java.lang") suffix)

    Returns a copy of this `HexFormat` with the suffix.

    Parameters:
    :   `suffix` - a suffix, non-null, may be empty

    Returns:
    :   a copy of this `HexFormat` with the suffix
  + ### withUpperCase

    public [HexFormat](HexFormat.md "class in java.util") withUpperCase()

    Returns a copy of this `HexFormat` to use uppercase hexadecimal characters.
    The uppercase hexadecimal characters are `"0-9", "A-F"`.

    Returns:
    :   a copy of this `HexFormat` with uppercase hexadecimal characters
  + ### withLowerCase

    public [HexFormat](HexFormat.md "class in java.util") withLowerCase()

    Returns a copy of this `HexFormat` to use lowercase hexadecimal characters.
    The lowercase hexadecimal characters are `"0-9", "a-f"`.

    Returns:
    :   a copy of this `HexFormat` with lowercase hexadecimal characters
  + ### delimiter

    public [String](../lang/String.md "class in java.lang") delimiter()

    Returns the delimiter between hexadecimal values in formatted hexadecimal strings.

    Returns:
    :   the delimiter, non-null, may be empty `""`
  + ### prefix

    public [String](../lang/String.md "class in java.lang") prefix()

    Returns the prefix used for each hexadecimal value in formatted hexadecimal strings.

    Returns:
    :   the prefix, non-null, may be empty `""`
  + ### suffix

    public [String](../lang/String.md "class in java.lang") suffix()

    Returns the suffix used for each hexadecimal value in formatted hexadecimal strings.

    Returns:
    :   the suffix, non-null, may be empty `""`
  + ### isUpperCase

    public boolean isUpperCase()

    Returns `true` if the hexadecimal digits are uppercase,
    otherwise `false`.

    Returns:
    :   `true` if the hexadecimal digits are uppercase,
        otherwise `false`
  + ### formatHex

    public [String](../lang/String.md "class in java.lang") formatHex(byte[] bytes)

    Returns a hexadecimal string formatted from a byte array.
    Each byte value is formatted as the prefix, two hexadecimal characters
    [selected from](#isUpperCase()) uppercase or lowercase digits, and the suffix.
    A delimiter follows each formatted value, except the last.
    The behavior is equivalent to
    [`formatHex(bytes, 0, bytes.length))`](#formatHex(byte%5B%5D,int,int)).

    Parameters:
    :   `bytes` - a non-null array of bytes

    Returns:
    :   a string hexadecimal formatting of the byte array
  + ### formatHex

    public [String](../lang/String.md "class in java.lang") formatHex(byte[] bytes,
    int fromIndex,
    int toIndex)

    Returns a hexadecimal string formatted from a byte array range.
    Each byte value is formatted as the prefix, two hexadecimal characters
    [selected from](#isUpperCase()) uppercase or lowercase digits, and the suffix.
    A delimiter follows each formatted value, except the last.

    Parameters:
    :   `bytes` - a non-null array of bytes
    :   `fromIndex` - the initial index of the range, inclusive
    :   `toIndex` - the final index of the range, exclusive

    Returns:
    :   a string hexadecimal formatting each byte of the array range

    Throws:
    :   `IndexOutOfBoundsException` - if the array range is out of bounds
  + ### formatHex

    public <A extends [Appendable](../lang/Appendable.md "interface in java.lang")> A formatHex(A out,
    byte[] bytes)

    Appends formatted hexadecimal strings from a byte array to the [`Appendable`](../lang/Appendable.md "interface in java.lang").
    Each byte value is formatted as the prefix, two hexadecimal characters
    [selected from](#isUpperCase()) uppercase or lowercase digits, and the suffix.
    A delimiter follows each formatted value, except the last.
    The formatted hexadecimal strings are appended in zero or more calls to the [`Appendable`](../lang/Appendable.md "interface in java.lang") methods.

    Type Parameters:
    :   `A` - The type of `Appendable`

    Parameters:
    :   `out` - an `Appendable`, non-null
    :   `bytes` - a byte array

    Returns:
    :   the `Appendable`

    Throws:
    :   `UncheckedIOException` - if an I/O exception occurs appending to the output
  + ### formatHex

    public <A extends [Appendable](../lang/Appendable.md "interface in java.lang")> A formatHex(A out,
    byte[] bytes,
    int fromIndex,
    int toIndex)

    Appends formatted hexadecimal strings from a byte array range to the [`Appendable`](../lang/Appendable.md "interface in java.lang").
    Each byte value is formatted as the prefix, two hexadecimal characters
    [selected from](#isUpperCase()) uppercase or lowercase digits, and the suffix.
    A delimiter follows each formatted value, except the last.
    The formatted hexadecimal strings are appended in zero or more calls to the [`Appendable`](../lang/Appendable.md "interface in java.lang") methods.

    Type Parameters:
    :   `A` - The type of `Appendable`

    Parameters:
    :   `out` - an `Appendable`, non-null
    :   `bytes` - a byte array, non-null
    :   `fromIndex` - the initial index of the range, inclusive
    :   `toIndex` - the final index of the range, exclusive.

    Returns:
    :   the `Appendable`

    Throws:
    :   `IndexOutOfBoundsException` - if the array range is out of bounds
    :   `UncheckedIOException` - if an I/O exception occurs appending to the output
  + ### parseHex

    public byte[] parseHex([CharSequence](../lang/CharSequence.md "interface in java.lang") string)

    Returns a byte array containing hexadecimal values parsed from the string.
    Each byte value is parsed from the prefix, two case insensitive hexadecimal characters,
    and the suffix. A delimiter follows each formatted value, except the last.
    The delimiters, prefixes, and suffixes strings must be present; they may be empty strings.
    A valid string consists only of the above format.

    Parameters:
    :   `string` - a string containing the byte values with prefix, hexadecimal digits, suffix,
        and delimiters

    Returns:
    :   a byte array with the values parsed from the string

    Throws:
    :   `IllegalArgumentException` - if the prefix or suffix is not present for each byte value,
        the byte values are not hexadecimal characters, or if the delimiter is not present
        after all but the last byte value
  + ### parseHex

    public byte[] parseHex([CharSequence](../lang/CharSequence.md "interface in java.lang") string,
    int fromIndex,
    int toIndex)

    Returns a byte array containing hexadecimal values parsed from a range of the string.
    Each byte value is parsed from the prefix, two case insensitive hexadecimal characters,
    and the suffix. A delimiter follows each formatted value, except the last.
    The delimiters, prefixes, and suffixes strings must be present; they may be empty strings.
    A valid string consists only of the above format.

    Parameters:
    :   `string` - a string range containing hexadecimal digits,
        delimiters, prefix, and suffix.
    :   `fromIndex` - the initial index of the range, inclusive
    :   `toIndex` - the final index of the range, exclusive.

    Returns:
    :   a byte array with the values parsed from the string range

    Throws:
    :   `IllegalArgumentException` - if the prefix or suffix is not present for each byte value,
        the byte values are not hexadecimal characters, or if the delimiter is not present
        after all but the last byte value
    :   `IndexOutOfBoundsException` - if the string range is out of bounds
  + ### parseHex

    public byte[] parseHex(char[] chars,
    int fromIndex,
    int toIndex)

    Returns a byte array containing hexadecimal values parsed from
    a range of the character array.
    Each byte value is parsed from the prefix, two case insensitive hexadecimal characters,
    and the suffix. A delimiter follows each formatted value, except the last.
    The delimiters, prefixes, and suffixes strings must be present; they may be empty strings.
    A valid character array range consists only of the above format.

    Parameters:
    :   `chars` - a character array range containing an even number of hexadecimal digits,
        delimiters, prefix, and suffix.
    :   `fromIndex` - the initial index of the range, inclusive
    :   `toIndex` - the final index of the range, exclusive.

    Returns:
    :   a byte array with the values parsed from the character array range

    Throws:
    :   `IllegalArgumentException` - if the prefix or suffix is not present for each byte value,
        the byte values are not hexadecimal characters, or if the delimiter is not present
        after all but the last byte value
    :   `IndexOutOfBoundsException` - if the character array range is out of bounds
  + ### toLowHexDigit

    public char toLowHexDigit(int value)

    Returns the hexadecimal character for the low 4 bits of the value considering it to be a byte.
    If the parameter [`isUpperCase()`](#isUpperCase()) is `true` the
    character returned for values `10-15` is uppercase `"A-F"`,
    otherwise the character returned is lowercase `"a-f"`.
    The values in the range `0-9` are returned as `"0-9"`.

    Parameters:
    :   `value` - a value, only the low 4 bits `0-3` of the value are used

    Returns:
    :   the hexadecimal character for the low 4 bits `0-3` of the value
  + ### toHighHexDigit

    public char toHighHexDigit(int value)

    Returns the hexadecimal character for the high 4 bits of the value considering it to be a byte.
    If the parameter [`isUpperCase()`](#isUpperCase()) is `true` the
    character returned for values `10-15` is uppercase `"A-F"`,
    otherwise the character returned is lowercase `"a-f"`.
    The values in the range `0-9` are returned as `"0-9"`.

    Parameters:
    :   `value` - a value, only bits `4-7` of the value are used

    Returns:
    :   the hexadecimal character for the bits `4-7` of the value
  + ### toHexDigits

    public <A extends [Appendable](../lang/Appendable.md "interface in java.lang")> A toHexDigits(A out,
    byte value)

    Appends two hexadecimal characters for the byte value to the [`Appendable`](../lang/Appendable.md "interface in java.lang").
    Each nibble (4 bits) from most significant to least significant of the value
    is formatted as if by [`toLowHexDigit(nibble)`](#toLowHexDigit(int)).
    The hexadecimal characters are appended in one or more calls to the
    [`Appendable`](../lang/Appendable.md "interface in java.lang") methods. The delimiter, prefix and suffix are not used.

    Type Parameters:
    :   `A` - The type of `Appendable`

    Parameters:
    :   `out` - an `Appendable`, non-null
    :   `value` - a byte value

    Returns:
    :   the `Appendable`

    Throws:
    :   `UncheckedIOException` - if an I/O exception occurs appending to the output
  + ### toHexDigits

    public [String](../lang/String.md "class in java.lang") toHexDigits(byte value)

    Returns the two hexadecimal characters for the `byte` value.
    Each nibble (4 bits) from most significant to least significant of the value
    is formatted as if by [`toLowHexDigit(nibble)`](#toLowHexDigit(int)).
    The delimiter, prefix and suffix are not used.

    Parameters:
    :   `value` - a byte value

    Returns:
    :   the two hexadecimal characters for the byte value
  + ### toHexDigits

    public [String](../lang/String.md "class in java.lang") toHexDigits(char value)

    Returns the four hexadecimal characters for the `char` value.
    Each nibble (4 bits) from most significant to least significant of the value
    is formatted as if by [`toLowHexDigit(nibble)`](#toLowHexDigit(int)).
    The delimiter, prefix and suffix are not used.

    Parameters:
    :   `value` - a `char` value

    Returns:
    :   the four hexadecimal characters for the `char` value
  + ### toHexDigits

    public [String](../lang/String.md "class in java.lang") toHexDigits(short value)

    Returns the four hexadecimal characters for the `short` value.
    Each nibble (4 bits) from most significant to least significant of the value
    is formatted as if by [`toLowHexDigit(nibble)`](#toLowHexDigit(int)).
    The delimiter, prefix and suffix are not used.

    Parameters:
    :   `value` - a `short` value

    Returns:
    :   the four hexadecimal characters for the `short` value
  + ### toHexDigits

    public [String](../lang/String.md "class in java.lang") toHexDigits(int value)

    Returns the eight hexadecimal characters for the `int` value.
    Each nibble (4 bits) from most significant to least significant of the value
    is formatted as if by [`toLowHexDigit(nibble)`](#toLowHexDigit(int)).
    The delimiter, prefix and suffix are not used.

    Parameters:
    :   `value` - an `int` value

    Returns:
    :   the eight hexadecimal characters for the `int` value

    See Also:
    :   - [`Integer.toHexString(int)`](../lang/Integer.md#toHexString(int))
  + ### toHexDigits

    public [String](../lang/String.md "class in java.lang") toHexDigits(long value)

    Returns the sixteen hexadecimal characters for the `long` value.
    Each nibble (4 bits) from most significant to least significant of the value
    is formatted as if by [`toLowHexDigit(nibble)`](#toLowHexDigit(int)).
    The delimiter, prefix and suffix are not used.

    Parameters:
    :   `value` - a `long` value

    Returns:
    :   the sixteen hexadecimal characters for the `long` value

    See Also:
    :   - [`Long.toHexString(long)`](../lang/Long.md#toHexString(long))
  + ### toHexDigits

    public [String](../lang/String.md "class in java.lang") toHexDigits(long value,
    int digits)

    Returns up to sixteen hexadecimal characters for the `long` value.
    Each nibble (4 bits) from most significant to least significant of the value
    is formatted as if by [`toLowHexDigit(nibble)`](#toLowHexDigit(int)).
    The delimiter, prefix and suffix are not used.

    Parameters:
    :   `value` - a `long` value
    :   `digits` - the number of hexadecimal digits to return, 0 to 16

    Returns:
    :   the hexadecimal characters for the `long` value

    Throws:
    :   `IllegalArgumentException` - if `digits` is negative or greater than 16
  + ### isHexDigit

    public static boolean isHexDigit(int ch)

    Returns `true` if the character is a valid hexadecimal character or codepoint.
    The valid hexadecimal characters are:
    - `'0' ('\u0030')` through `'9' ('\u0039')` inclusive,- `'A' ('\u0041')` through `'F' ('\u0046')` inclusive, and- `'a' ('\u0061')` through `'f' ('\u0066')` inclusive.

    Parameters:
    :   `ch` - a codepoint

    Returns:
    :   `true` if the character is valid a hexadecimal character,
        otherwise `false`
  + ### fromHexDigit

    public static int fromHexDigit(int ch)

    Returns the value for the hexadecimal character or codepoint.
    The value is:
    - `(ch - '0')` for `'0'` through `'9'` inclusive,- `(ch - 'A' + 10)` for `'A'` through `'F'` inclusive, and- `(ch - 'a' + 10)` for `'a'` through `'f'` inclusive.

    Parameters:
    :   `ch` - a character or codepoint

    Returns:
    :   the value `0-15`

    Throws:
    :   `NumberFormatException` - if the codepoint is not a hexadecimal character
  + ### fromHexDigits

    public static int fromHexDigits([CharSequence](../lang/CharSequence.md "interface in java.lang") string)

    Returns the `int` value parsed from a string of up to eight hexadecimal characters.
    The hexadecimal characters are parsed from most significant to least significant
    using [`fromHexDigit(int)`](#fromHexDigit(int)) to form an unsigned value.
    The value is zero extended to 32 bits and is returned as an `int`.

    Parameters:
    :   `string` - a CharSequence containing up to eight hexadecimal characters

    Returns:
    :   the value parsed from the string

    Throws:
    :   `IllegalArgumentException` - if the string length is greater than eight (8) or
        if any of the characters is not a hexadecimal character
  + ### fromHexDigits

    public static int fromHexDigits([CharSequence](../lang/CharSequence.md "interface in java.lang") string,
    int fromIndex,
    int toIndex)

    Returns the `int` value parsed from a string range of up to eight hexadecimal
    characters.
    The characters in the range `fromIndex` to `toIndex`, exclusive,
    are parsed from most significant to least significant
    using [`fromHexDigit(int)`](#fromHexDigit(int)) to form an unsigned value.
    The value is zero extended to 32 bits and is returned as an `int`.

    Parameters:
    :   `string` - a CharSequence containing the characters
    :   `fromIndex` - the initial index of the range, inclusive
    :   `toIndex` - the final index of the range, exclusive.

    Returns:
    :   the value parsed from the string range

    Throws:
    :   `IndexOutOfBoundsException` - if the range is out of bounds
        for the `CharSequence`
    :   `IllegalArgumentException` - if length of the range is greater than eight (8) or
        if any of the characters is not a hexadecimal character
  + ### fromHexDigitsToLong

    public static long fromHexDigitsToLong([CharSequence](../lang/CharSequence.md "interface in java.lang") string)

    Returns the long value parsed from a string of up to sixteen hexadecimal characters.
    The hexadecimal characters are parsed from most significant to least significant
    using [`fromHexDigit(int)`](#fromHexDigit(int)) to form an unsigned value.
    The value is zero extended to 64 bits and is returned as a `long`.

    Parameters:
    :   `string` - a CharSequence containing up to sixteen hexadecimal characters

    Returns:
    :   the value parsed from the string

    Throws:
    :   `IllegalArgumentException` - if the string length is greater than sixteen (16) or
        if any of the characters is not a hexadecimal character
  + ### fromHexDigitsToLong

    public static long fromHexDigitsToLong([CharSequence](../lang/CharSequence.md "interface in java.lang") string,
    int fromIndex,
    int toIndex)

    Returns the long value parsed from a string range of up to sixteen hexadecimal
    characters.
    The characters in the range `fromIndex` to `toIndex`, exclusive,
    are parsed from most significant to least significant
    using [`fromHexDigit(int)`](#fromHexDigit(int)) to form an unsigned value.
    The value is zero extended to 64 bits and is returned as a `long`.

    Parameters:
    :   `string` - a CharSequence containing the characters
    :   `fromIndex` - the initial index of the range, inclusive
    :   `toIndex` - the final index of the range, exclusive.

    Returns:
    :   the value parsed from the string range

    Throws:
    :   `IndexOutOfBoundsException` - if the range is out of bounds
        for the `CharSequence`
    :   `IllegalArgumentException` - if the length of the range is greater than sixteen (16) or
        if any of the characters is not a hexadecimal character
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") o)

    Returns `true` if the other object is a `HexFormat`
    with the same parameters.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - an object, may be null

    Returns:
    :   `true` if the other object is a `HexFormat` and the parameters
        uppercase, delimiter, prefix, and suffix are equal;
        otherwise `false`

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this `HexFormat`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashcode for this `HexFormat`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a description of the formatter parameters for uppercase,
    delimiter, prefix, and suffix.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a description of this `HexFormat`