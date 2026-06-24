Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class TexturePaint

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.TexturePaint

All Implemented Interfaces:
:   `Paint`, `Transparency`

---

public class TexturePaint
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Paint](Paint.md "interface in java.awt")

The `TexturePaint` class provides a way to fill a
[`Shape`](Shape.md "interface in java.awt") with a texture that is specified as
a [`BufferedImage`](image/BufferedImage.md "class in java.awt.image"). The size of the `BufferedImage`
object should be small because the `BufferedImage` data
is copied by the `TexturePaint` object.
At construction time, the texture is anchored to the upper
left corner of a [`Rectangle2D`](geom/Rectangle2D.md "class in java.awt.geom") that is
specified in user space. Texture is computed for
locations in the device space by conceptually replicating the
specified `Rectangle2D` infinitely in all directions
in user space and mapping the `BufferedImage` to each
replicated `Rectangle2D`.

See Also:
:   * [`Paint`](Paint.md "interface in java.awt")
    * [`Graphics2D.setPaint(java.awt.Paint)`](Graphics2D.md#setPaint(java.awt.Paint))

* ## Field Summary

  ### Fields inherited from interface java.awt.[Transparency](Transparency.md "interface in java.awt")

  `BITMASK, OPAQUE, TRANSLUCENT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TexturePaint(BufferedImage txtr,
  Rectangle2D anchor)`

  Constructs a `TexturePaint` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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
  generate a tiled image pattern.

  `Rectangle2D`

  `getAnchorRect()`

  Returns a copy of the anchor rectangle which positions and
  sizes the textured image.

  `BufferedImage`

  `getImage()`

  Returns the `BufferedImage` texture used to
  fill the shapes.

  `int`

  `getTransparency()`

  Returns the transparency mode for this `TexturePaint`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TexturePaint

    public TexturePaint([BufferedImage](image/BufferedImage.md "class in java.awt.image") txtr,
    [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") anchor)

    Constructs a `TexturePaint` object.

    Parameters:
    :   `txtr` - the `BufferedImage` object with the texture
        used for painting
    :   `anchor` - the `Rectangle2D` in user space used to
        anchor and replicate the texture
* ## Method Details

  + ### getImage

    public [BufferedImage](image/BufferedImage.md "class in java.awt.image") getImage()

    Returns the `BufferedImage` texture used to
    fill the shapes.

    Returns:
    :   a `BufferedImage`.
  + ### getAnchorRect

    public [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") getAnchorRect()

    Returns a copy of the anchor rectangle which positions and
    sizes the textured image.

    Returns:
    :   the `Rectangle2D` used to anchor and
        size this `TexturePaint`.
  + ### createContext

    public [PaintContext](PaintContext.md "interface in java.awt") createContext([ColorModel](image/ColorModel.md "class in java.awt.image") cm,
    [Rectangle](Rectangle.md "class in java.awt") deviceBounds,
    [Rectangle2D](geom/Rectangle2D.md "class in java.awt.geom") userBounds,
    [AffineTransform](geom/AffineTransform.md "class in java.awt.geom") xform,
    [RenderingHints](RenderingHints.md "class in java.awt") hints)

    Creates and returns a [`PaintContext`](PaintContext.md "interface in java.awt") used to
    generate a tiled image pattern.
    See the [`specification`](Paint.md#createContext(java.awt.image.ColorModel,java.awt.Rectangle,java.awt.geom.Rectangle2D,java.awt.geom.AffineTransform,java.awt.RenderingHints)) of the
    method in the [`Paint`](Paint.md "interface in java.awt") interface for information
    on null parameter handling.

    Specified by:
    :   `createContext` in interface `Paint`

    Parameters:
    :   `cm` - the preferred [`ColorModel`](image/ColorModel.md "class in java.awt.image") which represents the most convenient
        format for the caller to receive the pixel data, or `null`
        if there is no preference.
    :   `deviceBounds` - the device space bounding box
        of the graphics primitive being rendered.
    :   `userBounds` - the user space bounding box
        of the graphics primitive being rendered.
    :   `xform` - the [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom") from user
        space into device space.
    :   `hints` - the set of hints that the context object can use to
        choose between rendering alternatives.

    Returns:
    :   the `PaintContext` for
        generating color patterns.

    See Also:
    :   - [`Paint`](Paint.md "interface in java.awt")
        - [`PaintContext`](PaintContext.md "interface in java.awt")
        - [`ColorModel`](image/ColorModel.md "class in java.awt.image")
        - [`Rectangle`](Rectangle.md "class in java.awt")
        - [`Rectangle2D`](geom/Rectangle2D.md "class in java.awt.geom")
        - [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom")
        - [`RenderingHints`](RenderingHints.md "class in java.awt")
  + ### getTransparency

    public int getTransparency()

    Returns the transparency mode for this `TexturePaint`.

    Specified by:
    :   `getTransparency` in interface `Transparency`

    Returns:
    :   the transparency mode for this `TexturePaint`
        as an integer value.

    See Also:
    :   - [`Transparency`](Transparency.md "interface in java.awt")