Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class MultipleGradientPaint

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.MultipleGradientPaint

All Implemented Interfaces:
:   `Paint`, `Transparency`

Direct Known Subclasses:
:   `LinearGradientPaint`, `RadialGradientPaint`

---

public abstract sealed class MultipleGradientPaint
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Paint](Paint.md "interface in java.awt")
permits [LinearGradientPaint](LinearGradientPaint.md "class in java.awt"), [RadialGradientPaint](RadialGradientPaint.md "class in java.awt")

This is the superclass for Paints which use a multiple color
gradient to fill in their raster. It provides storage for variables and
enumerated values common to
`LinearGradientPaint` and `RadialGradientPaint`.

Since:
:   1.6

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `MultipleGradientPaint.ColorSpaceType`

  The color space in which to perform the gradient interpolation.

  `static enum`

  `MultipleGradientPaint.CycleMethod`

  The method to use when painting outside the gradient bounds.
* ## Field Summary

  ### Fields inherited from interface java.awt.[Transparency](Transparency.md "interface in java.awt")

  `BITMASK, OPAQUE, TRANSLUCENT`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Color[]`

  `getColors()`

  Returns a copy of the array of colors used by this gradient.

  `final MultipleGradientPaint.ColorSpaceType`

  `getColorSpace()`

  Returns the enumerated type which specifies color space for
  interpolation.

  `final MultipleGradientPaint.CycleMethod`

  `getCycleMethod()`

  Returns the enumerated type which specifies cycling behavior.

  `final float[]`

  `getFractions()`

  Returns a copy of the array of floats used by this gradient
  to calculate color distribution.

  `final AffineTransform`

  `getTransform()`

  Returns a copy of the transform applied to the gradient.

  `final int`

  `getTransparency()`

  Returns the transparency mode for this `Paint` object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.awt.[Paint](Paint.md "interface in java.awt")

  `createContext`

* ## Method Details

  + ### getFractions

    public final float[] getFractions()

    Returns a copy of the array of floats used by this gradient
    to calculate color distribution.
    The returned array always has 0 as its first value and 1 as its
    last value, with increasing values in between.

    Returns:
    :   a copy of the array of floats used by this gradient to
        calculate color distribution
  + ### getColors

    public final [Color](Color.md "class in java.awt")[] getColors()

    Returns a copy of the array of colors used by this gradient.
    The first color maps to the first value in the fractions array,
    and the last color maps to the last value in the fractions array.

    Returns:
    :   a copy of the array of colors used by this gradient
  + ### getCycleMethod

    public final [MultipleGradientPaint.CycleMethod](MultipleGradientPaint.CycleMethod.md "enum class in java.awt") getCycleMethod()

    Returns the enumerated type which specifies cycling behavior.

    Returns:
    :   the enumerated type which specifies cycling behavior
  + ### getColorSpace

    public final [MultipleGradientPaint.ColorSpaceType](MultipleGradientPaint.ColorSpaceType.md "enum class in java.awt") getColorSpace()

    Returns the enumerated type which specifies color space for
    interpolation.

    Returns:
    :   the enumerated type which specifies color space for
        interpolation
  + ### getTransform

    public final [AffineTransform](geom/AffineTransform.md "class in java.awt.geom") getTransform()

    Returns a copy of the transform applied to the gradient.

    Note that if no transform is applied to the gradient
    when it is created, the identity transform is used.

    Returns:
    :   a copy of the transform applied to the gradient
  + ### getTransparency

    public final int getTransparency()

    Returns the transparency mode for this `Paint` object.

    Specified by:
    :   `getTransparency` in interface `Transparency`

    Returns:
    :   `OPAQUE` if all colors used by this
        `Paint` object are opaque,
        `TRANSLUCENT` if at least one of the
        colors used by this `Paint` object is not opaque.

    See Also:
    :   - [`Transparency`](Transparency.md "interface in java.awt")