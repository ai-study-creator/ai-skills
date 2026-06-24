Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Enum Class Formatter.BigDecimalLayoutForm

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util")>

java.util.Formatter.BigDecimalLayoutForm

All Implemented Interfaces:
:   `Serializable`, `Comparable<Formatter.BigDecimalLayoutForm>`, `Constable`

Enclosing class:
:   `Formatter`

---

public static enum Formatter.BigDecimalLayoutForm
extends [Enum](../lang/Enum.md "class in java.lang")<[Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util")>

Enum for `BigDecimal` formatting.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `DECIMAL_FLOAT`

  Format the `BigDecimal` as a decimal number.

  `SCIENTIFIC`

  Format the `BigDecimal` in computerized scientific notation.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Formatter.BigDecimalLayoutForm`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Formatter.BigDecimalLayoutForm[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SCIENTIFIC

    public static final [Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util") SCIENTIFIC

    Format the `BigDecimal` in computerized scientific notation.
  + ### DECIMAL\_FLOAT

    public static final [Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util") DECIMAL\_FLOAT

    Format the `BigDecimal` as a decimal number.
* ## Method Details

  + ### values

    public static [Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Formatter.BigDecimalLayoutForm](Formatter.BigDecimalLayoutForm.md "enum class in java.util") valueOf([String](../lang/String.md "class in java.lang") name)

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