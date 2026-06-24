Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Interface BufferedImageOp

All Known Implementing Classes:
:   `AffineTransformOp`, `ColorConvertOp`, `ConvolveOp`, `LookupOp`, `RescaleOp`

---

public interface BufferedImageOp

This interface describes single-input/single-output
operations performed on `BufferedImage` objects.
It is implemented by `AffineTransformOp`,
`ConvolveOp`, `ColorConvertOp`, `RescaleOp`,
and `LookupOp`. These objects can be passed into
a `BufferedImageFilter` to operate on a
`BufferedImage` in the
ImageProducer-ImageFilter-ImageConsumer paradigm.

Classes that implement this
interface must specify whether or not they allow in-place filtering--
filter operations where the source object is equal to the destination
object.

This interface cannot be used to describe more sophisticated operations
such as those that take multiple sources. Note that this restriction also
means that the values of the destination pixels prior to the operation are
not used as input to the filter operation.

See Also:
:   * [`BufferedImage`](BufferedImage.md "class in java.awt.image")
    * [`BufferedImageFilter`](BufferedImageFilter.md "class in java.awt.image")
    * [`AffineTransformOp`](AffineTransformOp.md "class in java.awt.image")
    * [`BandCombineOp`](BandCombineOp.md "class in java.awt.image")
    * [`ColorConvertOp`](ColorConvertOp.md "class in java.awt.image")
    * [`ConvolveOp`](ConvolveOp.md "class in java.awt.image")
    * [`LookupOp`](LookupOp.md "class in java.awt.image")
    * [`RescaleOp`](RescaleOp.md "class in java.awt.image")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `BufferedImage`

  `createCompatibleDestImage(BufferedImage src,
  ColorModel destCM)`

  Creates a zeroed destination image with the correct size and number of
  bands.

  `BufferedImage`

  `filter(BufferedImage src,
  BufferedImage dest)`

  Performs a single-input/single-output operation on a
  `BufferedImage`.

  `Rectangle2D`

  `getBounds2D(BufferedImage src)`

  Returns the bounding box of the filtered destination image.

  `Point2D`

  `getPoint2D(Point2D srcPt,
  Point2D dstPt)`

  Returns the location of the corresponding destination point given a
  point in the source image.

  `RenderingHints`

  `getRenderingHints()`

  Returns the rendering hints for this operation.

* ## Method Details

  + ### filter

    [BufferedImage](BufferedImage.md "class in java.awt.image") filter([BufferedImage](BufferedImage.md "class in java.awt.image") src,
    [BufferedImage](BufferedImage.md "class in java.awt.image") dest)

    Performs a single-input/single-output operation on a
    `BufferedImage`.
    If the color models for the two images do not match, a color
    conversion into the destination color model is performed.
    If the destination image is null,
    a `BufferedImage` with an appropriate `ColorModel`
    is created.

    An `IllegalArgumentException` may be thrown if the source
    and/or destination image is incompatible with the types of images $
    allowed by the class implementing this filter.

    Parameters:
    :   `src` - The `BufferedImage` to be filtered
    :   `dest` - The `BufferedImage` in which to store the results$

    Returns:
    :   The filtered `BufferedImage`.

    Throws:
    :   `IllegalArgumentException` - If the source and/or destination
        image is not compatible with the types of images allowed by the class
        implementing this filter.
  + ### getBounds2D

    [Rectangle2D](../geom/Rectangle2D.md "class in java.awt.geom") getBounds2D([BufferedImage](BufferedImage.md "class in java.awt.image") src)

    Returns the bounding box of the filtered destination image.
    An `IllegalArgumentException` may be thrown if the source
    image is incompatible with the types of images allowed
    by the class implementing this filter.

    Parameters:
    :   `src` - The `BufferedImage` to be filtered

    Returns:
    :   The `Rectangle2D` representing the destination
        image's bounding box.
  + ### createCompatibleDestImage

    [BufferedImage](BufferedImage.md "class in java.awt.image") createCompatibleDestImage([BufferedImage](BufferedImage.md "class in java.awt.image") src,
    [ColorModel](ColorModel.md "class in java.awt.image") destCM)

    Creates a zeroed destination image with the correct size and number of
    bands.
    An `IllegalArgumentException` may be thrown if the source
    image is incompatible with the types of images allowed
    by the class implementing this filter.

    Parameters:
    :   `src` - The `BufferedImage` to be filtered
    :   `destCM` - `ColorModel` of the destination. If null,
        the `ColorModel` of the source is used.

    Returns:
    :   The zeroed destination image.
  + ### getPoint2D

    [Point2D](../geom/Point2D.md "class in java.awt.geom") getPoint2D([Point2D](../geom/Point2D.md "class in java.awt.geom") srcPt,
    [Point2D](../geom/Point2D.md "class in java.awt.geom") dstPt)

    Returns the location of the corresponding destination point given a
    point in the source image. If `dstPt` is specified, it
    is used to hold the return value.

    Parameters:
    :   `srcPt` - the `Point2D` that represents the point in
        the source image
    :   `dstPt` - The `Point2D` in which to store the result

    Returns:
    :   The `Point2D` in the destination image that
        corresponds to the specified point in the source image.
  + ### getRenderingHints

    [RenderingHints](../RenderingHints.md "class in java.awt") getRenderingHints()

    Returns the rendering hints for this operation.

    Returns:
    :   The `RenderingHints` object for this
        `BufferedImageOp`. Returns
        null if no hints have been set.