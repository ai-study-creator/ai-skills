Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class MultipleGradientPaint.CycleMethod

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt")>

java.awt.MultipleGradientPaint.CycleMethod

All Implemented Interfaces:
:   `Serializable`, `Comparable<MultipleGradientPaint.CycleMethod>`, `Constable`

Enclosing class:
:   `MultipleGradientPaint`

---

public static enum MultipleGradientPaint.CycleMethod
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt")>

The method to use when painting outside the gradient bounds.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NO_CYCLE`

  Use the terminal colors to fill the remaining area.

  `REFLECT`

  Cycle the gradient colors start-to-end, end-to-start
  to fill the remaining area.

  `REPEAT`

  Cycle the gradient colors start-to-end, start-to-end
  to fill the remaining area.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static MultipleGradientPaint.CycleMethod`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static MultipleGradientPaint.CycleMethod[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NO\_CYCLE

    public static final [MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt") NO\_CYCLE

    Use the terminal colors to fill the remaining area.
  + ### REFLECT

    public static final [MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt") REFLECT

    Cycle the gradient colors start-to-end, end-to-start
    to fill the remaining area.
  + ### REPEAT

    public static final [MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt") REPEAT

    Cycle the gradient colors start-to-end, start-to-end
    to fill the remaining area.
* ## Method Details

  + ### values

    public static [MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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