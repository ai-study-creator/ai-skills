Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.nimbus](package-summary.md)

# Enum Class AbstractRegionPainter.PaintContext.CacheMode

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[AbstractRegionPainter.PaintContext.CacheMode](AbstractRegionPainter.PaintContext.CacheMode.md "enum class in javax.swing.plaf.nimbus")>

javax.swing.plaf.nimbus.AbstractRegionPainter.PaintContext.CacheMode

All Implemented Interfaces:
:   `Serializable`, `Comparable<AbstractRegionPainter.PaintContext.CacheMode>`, `Constable`

Enclosing class:
:   `AbstractRegionPainter.PaintContext`

---

protected static enum AbstractRegionPainter.PaintContext.CacheMode
extends [Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<[AbstractRegionPainter.PaintContext.CacheMode](AbstractRegionPainter.PaintContext.CacheMode.md "enum class in javax.swing.plaf.nimbus")>

Cache mode.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `FIXED_SIZES`

  Fixed sizes.

  `NINE_SQUARE_SCALE`

  Nine square scale.

  `NO_CACHING`

  No caching.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AbstractRegionPainter.PaintContext.CacheMode`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static AbstractRegionPainter.PaintContext.CacheMode[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NO\_CACHING

    public static final [AbstractRegionPainter.PaintContext.CacheMode](AbstractRegionPainter.PaintContext.CacheMode.md "enum class in javax.swing.plaf.nimbus") NO\_CACHING

    No caching.
  + ### FIXED\_SIZES

    public static final [AbstractRegionPainter.PaintContext.CacheMode](AbstractRegionPainter.PaintContext.CacheMode.md "enum class in javax.swing.plaf.nimbus") FIXED\_SIZES

    Fixed sizes.
  + ### NINE\_SQUARE\_SCALE

    public static final [AbstractRegionPainter.PaintContext.CacheMode](AbstractRegionPainter.PaintContext.CacheMode.md "enum class in javax.swing.plaf.nimbus") NINE\_SQUARE\_SCALE

    Nine square scale.
* ## Method Details

  + ### values

    public static [AbstractRegionPainter.PaintContext.CacheMode](AbstractRegionPainter.PaintContext.CacheMode.md "enum class in javax.swing.plaf.nimbus")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [AbstractRegionPainter.PaintContext.CacheMode](AbstractRegionPainter.PaintContext.CacheMode.md "enum class in javax.swing.plaf.nimbus") valueOf([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

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