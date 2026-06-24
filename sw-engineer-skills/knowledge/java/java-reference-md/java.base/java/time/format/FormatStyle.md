Module [java.base](../../../module-summary.md)

Package [java.time.format](package-summary.md)

# Enum Class FormatStyle

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[FormatStyle](FormatStyle.md "enum class in java.time.format")>

java.time.format.FormatStyle

All Implemented Interfaces:
:   `Serializable`, `Comparable<FormatStyle>`, `Constable`

---

public enum FormatStyle
extends [Enum](../../lang/Enum.md "class in java.lang")<[FormatStyle](FormatStyle.md "enum class in java.time.format")>

Enumeration of the style of a localized date, time or date-time formatter.

These styles are used when obtaining a date-time style from configuration.
See [`DateTimeFormatter`](DateTimeFormatter.md "class in java.time.format") and [`DateTimeFormatterBuilder`](DateTimeFormatterBuilder.md "class in java.time.format") for usage.

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

  Full text style, with the most detail.

  `LONG`

  Long text style, with lots of detail.

  `MEDIUM`

  Medium text style, with some detail.

  `SHORT`

  Short text style, typically numeric.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static FormatStyle`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static FormatStyle[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### FULL

    public static final [FormatStyle](FormatStyle.md "enum class in java.time.format") FULL

    Full text style, with the most detail.
    For example, the format might be 'Tuesday, April 12, 1952 AD' or '3:30:42pm PST'.
  + ### LONG

    public static final [FormatStyle](FormatStyle.md "enum class in java.time.format") LONG

    Long text style, with lots of detail.
    For example, the format might be 'January 12, 1952'.
  + ### MEDIUM

    public static final [FormatStyle](FormatStyle.md "enum class in java.time.format") MEDIUM

    Medium text style, with some detail.
    For example, the format might be 'Jan 12, 1952'.
  + ### SHORT

    public static final [FormatStyle](FormatStyle.md "enum class in java.time.format") SHORT

    Short text style, typically numeric.
    For example, the format might be '12.13.52' or '3:30pm'.
* ## Method Details

  + ### values

    public static [FormatStyle](FormatStyle.md "enum class in java.time.format")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [FormatStyle](FormatStyle.md "enum class in java.time.format") valueOf([String](../../lang/String.md "class in java.lang") name)

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