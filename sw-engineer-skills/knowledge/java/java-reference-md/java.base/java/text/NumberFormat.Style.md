Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Enum Class NumberFormat.Style

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[NumberFormat.Style](NumberFormat.Style.md "enum class in java.text")>

java.text.NumberFormat.Style

All Implemented Interfaces:
:   `Serializable`, `Comparable<NumberFormat.Style>`, `Constable`

Enclosing class:
:   `NumberFormat`

---

public static enum NumberFormat.Style
extends [Enum](../lang/Enum.md "class in java.lang")<[NumberFormat.Style](NumberFormat.Style.md "enum class in java.text")>

A number format style.

`Style` is an enum which represents the style for formatting
a number within a given `NumberFormat` instance.

Since:
:   12

See Also:
:   * [`CompactNumberFormat`](CompactNumberFormat.md "class in java.text")
    * [`NumberFormat.getCompactNumberInstance(Locale, Style)`](NumberFormat.md#getCompactNumberInstance(java.util.Locale,java.text.NumberFormat.Style))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `LONG`

  The `LONG` number format style.

  `SHORT`

  The `SHORT` number format style.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static NumberFormat.Style`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static NumberFormat.Style[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SHORT

    public static final [NumberFormat.Style](NumberFormat.Style.md "enum class in java.text") SHORT

    The `SHORT` number format style.
  + ### LONG

    public static final [NumberFormat.Style](NumberFormat.Style.md "enum class in java.text") LONG

    The `LONG` number format style.
* ## Method Details

  + ### values

    public static [NumberFormat.Style](NumberFormat.Style.md "enum class in java.text")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [NumberFormat.Style](NumberFormat.Style.md "enum class in java.text") valueOf([String](../lang/String.md "class in java.lang") name)

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