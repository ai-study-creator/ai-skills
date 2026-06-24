Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class MultipleGradientPaint.ColorSpaceType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt")>

java.awt.MultipleGradientPaint.ColorSpaceType

All Implemented Interfaces:
:   `Serializable`, `Comparable<MultipleGradientPaint.ColorSpaceType>`, `Constable`

Enclosing class:
:   `MultipleGradientPaint`

---

public static enum MultipleGradientPaint.ColorSpaceType
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt")>

The color space in which to perform the gradient interpolation.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `LINEAR_RGB`

  Indicates that the color interpolation should occur in linearized
  RGB space.

  `SRGB`

  Indicates that the color interpolation should occur in sRGB space.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static MultipleGradientPaint.ColorSpaceType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static MultipleGradientPaint.ColorSpaceType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SRGB

    public static final [MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt") SRGB

    Indicates that the color interpolation should occur in sRGB space.
  + ### LINEAR\_RGB

    public static final [MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt") LINEAR\_RGB

    Indicates that the color interpolation should occur in linearized
    RGB space.
* ## Method Details

  + ### values

    public static [MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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