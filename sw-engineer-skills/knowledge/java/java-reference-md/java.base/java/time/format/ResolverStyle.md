Module [java.base](../../../module-summary.md)

Package [java.time.format](package-summary.md)

# Enum Class ResolverStyle

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[ResolverStyle](ResolverStyle.md "enum class in java.time.format")>

java.time.format.ResolverStyle

All Implemented Interfaces:
:   `Serializable`, `Comparable<ResolverStyle>`, `Constable`

---

public enum ResolverStyle
extends [Enum](../../lang/Enum.md "class in java.lang")<[ResolverStyle](ResolverStyle.md "enum class in java.time.format")>

Enumeration of different ways to resolve dates and times.

Parsing a text string occurs in two phases.
Phase 1 is a basic text parse according to the fields added to the builder.
Phase 2 resolves the parsed field-value pairs into date and/or time objects.
This style is used to control how phase 2, resolving, happens.

Since:
:   1.8

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `LENIENT`

  Style to resolve dates and times leniently.

  `SMART`

  Style to resolve dates and times in a smart, or intelligent, manner.

  `STRICT`

  Style to resolve dates and times strictly.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ResolverStyle`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ResolverStyle[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### STRICT

    public static final [ResolverStyle](ResolverStyle.md "enum class in java.time.format") STRICT

    Style to resolve dates and times strictly.

    Using strict resolution will ensure that all parsed values are within
    the outer range of valid values for the field. Individual fields may
    be further processed for strictness.

    For example, resolving year-month and day-of-month in the ISO calendar
    system using strict mode will ensure that the day-of-month is valid
    for the year-month, rejecting invalid values.
  + ### SMART

    public static final [ResolverStyle](ResolverStyle.md "enum class in java.time.format") SMART

    Style to resolve dates and times in a smart, or intelligent, manner.

    Using smart resolution will perform the sensible default for each
    field, which may be the same as strict, the same as lenient, or a third
    behavior. Individual fields will interpret this differently.

    For example, resolving year-month and day-of-month in the ISO calendar
    system using smart mode will ensure that the day-of-month is from
    1 to 31, converting any value beyond the last valid day-of-month to be
    the last valid day-of-month.
  + ### LENIENT

    public static final [ResolverStyle](ResolverStyle.md "enum class in java.time.format") LENIENT

    Style to resolve dates and times leniently.

    Using lenient resolution will resolve the values in an appropriate
    lenient manner. Individual fields will interpret this differently.

    For example, lenient mode allows the month in the ISO calendar system
    to be outside the range 1 to 12.
    For example, month 15 is treated as being 3 months after month 12.
* ## Method Details

  + ### values

    public static [ResolverStyle](ResolverStyle.md "enum class in java.time.format")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ResolverStyle](ResolverStyle.md "enum class in java.time.format") valueOf([String](../../lang/String.md "class in java.lang") name)

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