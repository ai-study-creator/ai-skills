Module [java.base](../../../module-summary.md)

Package [java.time.format](package-summary.md)

# Enum Class TextStyle

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[TextStyle](TextStyle.md "enum class in java.time.format")>

java.time.format.TextStyle

All Implemented Interfaces:
:   `Serializable`, `Comparable<TextStyle>`, `Constable`

---

public enum TextStyle
extends [Enum](../../lang/Enum.md "class in java.lang")<[TextStyle](TextStyle.md "enum class in java.time.format")>

Enumeration of the style of text formatting and parsing.

Text styles define three sizes for the formatted text - 'full', 'short' and 'narrow'.
Each of these three sizes is available in both 'standard' and 'stand-alone' variations.

The difference between the three sizes is obvious in most languages.
For example, in English the 'full' month is 'January', the 'short' month is 'Jan'
and the 'narrow' month is 'J'. Note that the narrow size is often not unique.
For example, 'January', 'June' and 'July' all have the 'narrow' text 'J'.

The difference between the 'standard' and 'stand-alone' forms is trickier to describe
as there is no difference in English. However, in other languages there is a difference
in the word used when the text is used alone, as opposed to in a complete date.
For example, the word used for a month when used alone in a date picker is different
to the word used for month in association with a day and year in a date.

Since:
:   1.8

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `FULL`

  Full text, typically the full description.

  `FULL_STANDALONE`

  Full text for stand-alone use, typically the full description.

  `NARROW`

  Narrow text, typically a single letter.

  `NARROW_STANDALONE`

  Narrow text for stand-alone use, typically a single letter.

  `SHORT`

  Short text, typically an abbreviation.

  `SHORT_STANDALONE`

  Short text for stand-alone use, typically an abbreviation.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `TextStyle`

  `asNormal()`

  Returns the normal style with the same size.

  `TextStyle`

  `asStandalone()`

  Returns the stand-alone style with the same size.

  `boolean`

  `isStandalone()`

  Returns true if the Style is a stand-alone style.

  `static TextStyle`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static TextStyle[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### FULL

    public static final [TextStyle](TextStyle.md "enum class in java.time.format") FULL

    Full text, typically the full description.
    For example, day-of-week Monday might output "Monday".
  + ### FULL\_STANDALONE

    public static final [TextStyle](TextStyle.md "enum class in java.time.format") FULL\_STANDALONE

    Full text for stand-alone use, typically the full description.
    For example, day-of-week Monday might output "Monday".
  + ### SHORT

    public static final [TextStyle](TextStyle.md "enum class in java.time.format") SHORT

    Short text, typically an abbreviation.
    For example, day-of-week Monday might output "Mon".
  + ### SHORT\_STANDALONE

    public static final [TextStyle](TextStyle.md "enum class in java.time.format") SHORT\_STANDALONE

    Short text for stand-alone use, typically an abbreviation.
    For example, day-of-week Monday might output "Mon".
  + ### NARROW

    public static final [TextStyle](TextStyle.md "enum class in java.time.format") NARROW

    Narrow text, typically a single letter.
    For example, day-of-week Monday might output "M".
  + ### NARROW\_STANDALONE

    public static final [TextStyle](TextStyle.md "enum class in java.time.format") NARROW\_STANDALONE

    Narrow text for stand-alone use, typically a single letter.
    For example, day-of-week Monday might output "M".
* ## Method Details

  + ### values

    public static [TextStyle](TextStyle.md "enum class in java.time.format")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [TextStyle](TextStyle.md "enum class in java.time.format") valueOf([String](../../lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null
  + ### isStandalone

    public boolean isStandalone()

    Returns true if the Style is a stand-alone style.

    Returns:
    :   true if the style is a stand-alone style.
  + ### asStandalone

    public [TextStyle](TextStyle.md "enum class in java.time.format") asStandalone()

    Returns the stand-alone style with the same size.

    Returns:
    :   the stand-alone style with the same size
  + ### asNormal

    public [TextStyle](TextStyle.md "enum class in java.time.format") asNormal()

    Returns the normal style with the same size.

    Returns:
    :   the normal style with the same size