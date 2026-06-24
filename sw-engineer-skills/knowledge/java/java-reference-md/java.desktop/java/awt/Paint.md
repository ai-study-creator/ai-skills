Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface Paint

All Superinterfaces:
:   `Transparency`

All Known Implementing Classes:
:   `Color`, `ColorUIResource`, `GradientPaint`, `LinearGradientPaint`, `MultipleGradientPaint`, `RadialGradientPaint`, `SystemColor`, `TexturePaint`

---

public interface Paint
extends [Transparency](Transparency.md "interface in java.awt")

This `Paint` interface defines how color patterns
can be generated for [`Graphics2D`](Graphics2D.md "class in java.awt") operations. A class
implementing the `Paint` interface is added to the
`Graphics2D` context in order to define the color
pattern used by the `draw` and `fill` methods.

Instances of classes implementing `Paint` must be
read-only because the `Graphics2D` does not clone
these objects when they are set as an attribute with the
`setPaint` method or when the `Graphics2D`
object is itself cloned.

See Also:
:   * [`PaintContext`](PaintContext.md "interface in java.awt")
    * [`Color`](Color.md "class in java.awt")
    * [`GradientPaint`](GradientPaint.md "class in java.awt")
    * [`TexturePaint`](TexturePaint.md "class in java.awt")
    * [`Graphics2D.setPaint(java.awt.Paint)`](Graphics2D.md#setPaint(java.awt.Paint))

* ## Field Summary

  ### Fields inherited from interface java.awt.[Transparency](Transparency.md "interface in java.awt")

  `BITMASK, OPAQUE, TRANSLUCENT`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `PaintContext`

  `createContext(ColorModel cm,
  Rectangle deviceBounds,
  Rectangle2D userBounds,
  AffineTransform xform,
  RenderingHints hints)`

  Creates and returns a [`PaintContext`](PaintContext.md "interface in java.awt") used to
  generate the color pattern.

  ### Methods inherited from interface java.awt.[Transparency](Transparency.md "interface in java.awt")

  `getTransparency`

* ## Method Details

  + ### createContext

    [PaintContext](PaintContext.md "interface in java.awt") createContext([ColorModel](image/ColorModel.md "class in java.awt.image") cm,
    [Rectangle](Rectangle.md "class in java.awt") deviceBounds,
    [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") userBounds,
    [AffineTransform](geom/AffineTransform.md "class in java.awt.geom") xform,
    [RenderingHints](RenderingHints.md "class in java.awt") hints)

    Creates and returns a [`PaintContext`](PaintContext.md "interface in java.awt") used to
    generate the color pattern.
    The arguments to this method convey additional information
    about the rendering operation that may be
    used or ignored on various implementations of the `Paint` interface.
    A caller must pass non-`null` values for all of the arguments
    except for the `ColorModel` argument which may be `null` to
    indicate that no specific `ColorModel` type is preferred.
    Implementations of the `Paint` interface are allowed to use or ignore
    any of the arguments as makes sense for their function, and are
    not constrained to use the specified `ColorModel` for the returned
    `PaintContext`, even if it is not `null`.
    Implementations are allowed to throw `NullPointerException` for
    any `null` argument other than the `ColorModel` argument,
    but are not required to do so.

    Parameters:
    :   `cm` - the preferred [`ColorModel`](image/ColorModel.md "class in java.awt.image") which represents the most convenient
        format for the caller to receive the pixel data, or `null`
        if there is no preference.
    :   `deviceBounds` - the device space bounding box
        of the graphics primitive being rendered.
        Implementations of the `Paint` interface
        are allowed to throw `NullPointerException`
        for a `null deviceBounds`.
    :   `userBounds` - the user space bounding box
        of the graphics primitive being rendered.
        Implementations of the `Paint` interface
        are allowed to throw `NullPointerException`
        for a `null userBounds`.
    :   `xform` - the [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom") from user
        space into device space.
        Implementations of the `Paint` interface
        are allowed to throw `NullPointerException`
        for a `null xform`.
    :   `hints` - the set of hints that the context object can use to
        choose between rendering alternatives.
        Implementations of the `Paint` interface
        are allowed to throw `NullPointerException`
        for a `null hints`.

    Returns:
    :   the `PaintContext` for
        generating color patterns.

    See Also:
    :   - [`PaintContext`](PaintContext.md "interface in java.awt")
        - [`ColorModel`](image/ColorModel.md "class in java.awt.image")
        - [`Rectangle`](Rectangle.md "class in java.awt")
        - [`Rectangle2D`](geom/Rectangle2D.md "class in java.awt.geom")
        - [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom")
        - [`RenderingHints`](RenderingHints.md "class in java.awt")