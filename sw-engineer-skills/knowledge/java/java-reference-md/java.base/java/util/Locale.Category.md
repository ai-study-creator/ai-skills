Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Enum Class Locale.Category

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[Locale.Category](Locale.Category.md "enum class in java.util")>

java.util.Locale.Category

All Implemented Interfaces:
:   `Serializable`, `Comparable<Locale.Category>`, `Constable`

Enclosing class:
:   `Locale`

---

public static enum Locale.Category
extends [Enum](../lang/Enum.md "class in java.lang")<[Locale.Category](Locale.Category.md "enum class in java.util")>

Enum for locale categories. These locale categories are used to get/set
the default locale for the specific functionality represented by the
category.

Since:
:   1.7

See Also:
:   * [`Locale.getDefault(Locale.Category)`](Locale.md#getDefault(java.util.Locale.Category))
    * [`Locale.setDefault(Locale.Category, Locale)`](Locale.md#setDefault(java.util.Locale.Category,java.util.Locale))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `DISPLAY`

  Category used to represent the default locale for
  displaying user interfaces.

  `FORMAT`

  Category used to represent the default locale for
  formatting dates, numbers, and/or currencies.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Locale.Category`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Locale.Category[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### DISPLAY

    public static final [Locale.Category](Locale.Category.md "enum class in java.util") DISPLAY

    Category used to represent the default locale for
    displaying user interfaces.
  + ### FORMAT

    public static final [Locale.Category](Locale.Category.md "enum class in java.util") FORMAT

    Category used to represent the default locale for
    formatting dates, numbers, and/or currencies.
* ## Method Details

  + ### values

    public static [Locale.Category](Locale.Category.md "enum class in java.util")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Locale.Category](Locale.Category.md "enum class in java.util") valueOf([String](../lang/String.md "class in java.lang") name)

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