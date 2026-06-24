Module [java.base](../../../module-summary.md)

Package [java.time.format](package-summary.md)

# Enum Class SignStyle

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[SignStyle](SignStyle.md "enum class in java.time.format")>

java.time.format.SignStyle

All Implemented Interfaces:
:   `Serializable`, `Comparable<SignStyle>`, `Constable`

---

public enum SignStyle
extends [Enum](../../lang/Enum.md "class in java.lang")<[SignStyle](SignStyle.md "enum class in java.time.format")>

Enumeration of ways to handle the positive/negative sign.

The formatting engine allows the positive and negative signs of numbers
to be controlled using this enum.
See [`DateTimeFormatterBuilder`](DateTimeFormatterBuilder.md "class in java.time.format") for usage.

Since:
:   1.8

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ALWAYS`

  Style to always output the sign, where zero will output '+'.

  `EXCEEDS_PAD`

  Style to always output the sign if the value exceeds the pad width.

  `NEVER`

  Style to never output sign, only outputting the absolute value.

  `NORMAL`

  Style to output the sign only if the value is negative.

  `NOT_NEGATIVE`

  Style to block negative values, throwing an exception on printing.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static SignStyle`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static SignStyle[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NORMAL

    public static final [SignStyle](SignStyle.md "enum class in java.time.format") NORMAL

    Style to output the sign only if the value is negative.

    In strict parsing, the negative sign will be accepted and the positive sign rejected.
    In lenient parsing, any sign will be accepted.
  + ### ALWAYS

    public static final [SignStyle](SignStyle.md "enum class in java.time.format") ALWAYS

    Style to always output the sign, where zero will output '+'.

    In strict parsing, the absence of a sign will be rejected.
    In lenient parsing, any sign will be accepted, with the absence
    of a sign treated as a positive number.
  + ### NEVER

    public static final [SignStyle](SignStyle.md "enum class in java.time.format") NEVER

    Style to never output sign, only outputting the absolute value.

    In strict parsing, any sign will be rejected.
    In lenient parsing, any sign will be accepted unless the width is fixed.
  + ### NOT\_NEGATIVE

    public static final [SignStyle](SignStyle.md "enum class in java.time.format") NOT\_NEGATIVE

    Style to block negative values, throwing an exception on printing.

    In strict parsing, any sign will be rejected.
    In lenient parsing, any sign will be accepted unless the width is fixed.
  + ### EXCEEDS\_PAD

    public static final [SignStyle](SignStyle.md "enum class in java.time.format") EXCEEDS\_PAD

    Style to always output the sign if the value exceeds the pad width.
    A negative value will always output the '-' sign.

    In strict parsing, the sign will be rejected unless the pad width is exceeded.
    In lenient parsing, any sign will be accepted, with the absence
    of a sign treated as a positive number.
* ## Method Details

  + ### values

    public static [SignStyle](SignStyle.md "enum class in java.time.format")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [SignStyle](SignStyle.md "enum class in java.time.format") valueOf([String](../../lang/String.md "class in java.lang") name)

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