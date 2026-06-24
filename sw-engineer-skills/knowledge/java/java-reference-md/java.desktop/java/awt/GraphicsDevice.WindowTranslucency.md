Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class GraphicsDevice.WindowTranslucency

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")>

java.awt.GraphicsDevice.WindowTranslucency

All Implemented Interfaces:
:   `Serializable`, `Comparable<GraphicsDevice.WindowTranslucency>`, `Constable`

Enclosing class:
:   `GraphicsDevice`

---

public static enum GraphicsDevice.WindowTranslucency
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")>

Kinds of translucency supported by the underlying system.

Since:
:   1.7

See Also:
:   * [`GraphicsDevice.isWindowTranslucencySupported(java.awt.GraphicsDevice.WindowTranslucency)`](GraphicsDevice.md#isWindowTranslucencySupported(java.awt.GraphicsDevice.WindowTranslucency))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `PERPIXEL_TRANSLUCENT`

  Represents support in the underlying system for windows that
  contain or might contain pixels with arbitrary alpha values
  between and including 0.0 and 1.0.

  `PERPIXEL_TRANSPARENT`

  Represents support in the underlying system for windows each pixel
  of which is guaranteed to be either completely opaque, with
  an alpha value of 1.0, or completely transparent, with an alpha
  value of 0.0.

  `TRANSLUCENT`

  Represents support in the underlying system for windows all of
  the pixels of which have the same alpha value between or including
  0.0 and 1.0.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static GraphicsDevice.WindowTranslucency`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static GraphicsDevice.WindowTranslucency[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PERPIXEL\_TRANSPARENT

    public static final [GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt") PERPIXEL\_TRANSPARENT

    Represents support in the underlying system for windows each pixel
    of which is guaranteed to be either completely opaque, with
    an alpha value of 1.0, or completely transparent, with an alpha
    value of 0.0.
  + ### TRANSLUCENT

    public static final [GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt") TRANSLUCENT

    Represents support in the underlying system for windows all of
    the pixels of which have the same alpha value between or including
    0.0 and 1.0.
  + ### PERPIXEL\_TRANSLUCENT

    public static final [GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt") PERPIXEL\_TRANSLUCENT

    Represents support in the underlying system for windows that
    contain or might contain pixels with arbitrary alpha values
    between and including 0.0 and 1.0.
* ## Method Details

  + ### values

    public static [GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [GraphicsDevice.WindowTranslucency](GraphicsDevice.WindowTranslucency.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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