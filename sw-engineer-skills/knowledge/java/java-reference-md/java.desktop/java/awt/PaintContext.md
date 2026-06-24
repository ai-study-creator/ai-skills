Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface PaintContext

---

public interface PaintContext

The `PaintContext` interface defines the encapsulated
and optimized environment to generate color patterns in device
space for fill or stroke operations on a
[`Graphics2D`](Graphics2D.md "class in java.awt"). The `PaintContext` provides
the necessary colors for `Graphics2D` operations in the
form of a [`Raster`](image/Raster.md "class in java.awt.image") associated with a [`ColorModel`](image/ColorModel.md "class in java.awt.image").
The `PaintContext` maintains state for a particular paint
operation. In a multi-threaded environment, several
contexts can exist simultaneously for a single [`Paint`](Paint.md "interface in java.awt") object.

See Also:
:   * [`Paint`](Paint.md "interface in java.awt")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `dispose()`

  Releases the resources allocated for the operation.

  `ColorModel`

  `getColorModel()`

  Returns the `ColorModel` of the output.

  `Raster`

  `getRaster(int x,
  int y,
  int w,
  int h)`

  Returns a `Raster` containing the colors generated for
  the graphics operation.

* ## Method Details

  + ### dispose

    void dispose()

    Releases the resources allocated for the operation.
  + ### getColorModel

    [ColorModel](image/ColorModel.md "class in java.awt.image") getColorModel()

    Returns the `ColorModel` of the output. Note that
    this `ColorModel` might be different from the hint
    specified in the
    [`createContext`](Paint.md#createContext(java.awt.image.ColorModel,java.awt.Rectangle,java.awt.geom.Rectangle2D,java.awt.geom.AffineTransform,java.awt.RenderingHints)) method of
    `Paint`. Not all `PaintContext` objects are
    capable of generating color patterns in an arbitrary
    `ColorModel`.

    Returns:
    :   the `ColorModel` of the output.
  + ### getRaster

    [Raster](image/Raster.md "class in java.awt.image") getRaster(int x,
    int y,
    int w,
    int h)

    Returns a `Raster` containing the colors generated for
    the graphics operation.

    Parameters:
    :   `x` - the x coordinate of the area in device space
        for which colors are generated.
    :   `y` - the y coordinate of the area in device space
        for which colors are generated.
    :   `w` - the width of the area in device space
    :   `h` - the height of the area in device space

    Returns:
    :   a `Raster` representing the specified
        rectangular area and containing the colors generated for
        the graphics operation.