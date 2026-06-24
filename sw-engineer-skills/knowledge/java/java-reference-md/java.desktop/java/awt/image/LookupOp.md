Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class LookupOp

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.image.LookupOp

All Implemented Interfaces:
:   `BufferedImageOp`, `RasterOp`

---

public class LookupOp
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [BufferedImageOp](BufferedImageOp.md "interface in java.awt.image"), [RasterOp](RasterOp.md "interface in java.awt.image")

This class implements a lookup operation from the source
to the destination. The LookupTable object may contain a single array
or multiple arrays, subject to the restrictions below.

For Rasters, the lookup operates on bands. The number of
lookup arrays may be one, in which case the same array is
applied to all bands, or it must equal the number of Source
Raster bands.

For BufferedImages, the lookup operates on color and alpha components.
The number of lookup arrays may be one, in which case the
same array is applied to all color (but not alpha) components.
Otherwise, the number of lookup arrays may
equal the number of Source color components, in which case no
lookup of the alpha component (if present) is performed.
If neither of these cases apply, the number of lookup arrays
must equal the number of Source color components plus alpha components,
in which case lookup is performed for all color and alpha components.
This allows non-uniform rescaling of multi-band BufferedImages.

BufferedImage sources with premultiplied alpha data are treated in the same
manner as non-premultiplied images for purposes of the lookup. That is,
the lookup is done per band on the raw data of the BufferedImage source
without regard to whether the data is premultiplied. If a color conversion
is required to the destination ColorModel, the premultiplied state of
both source and destination will be taken into account for this step.

Images with an IndexColorModel cannot be used.

If a RenderingHints object is specified in the constructor, the
color rendering hint and the dithering hint may be used when color
conversion is required.

This class allows the Source to be the same as the Destination.

See Also:
:   * [`LookupTable`](LookupTable.md "class in java.awt.image")
    * [`RenderingHints.KEY_COLOR_RENDERING`](../RenderingHints.md#KEY_COLOR_RENDERING)
    * [`RenderingHints.KEY_DITHERING`](../RenderingHints.md#KEY_DITHERING)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LookupOp(LookupTable lookup,
  RenderingHints hints)`

  Constructs a `LookupOp` object given the lookup
  table and a `RenderingHints` object, which might
  be `null`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BufferedImage`

  `createCompatibleDestImage(BufferedImage src,
  ColorModel destCM)`

  Creates a zeroed destination image with the correct size and number of
  bands.

  `WritableRaster`

  `createCompatibleDestRaster(Raster src)`

  Creates a zeroed-destination `Raster` with the
  correct size and number of bands, given this source.

  `final BufferedImage`

  `filter(BufferedImage src,
  BufferedImage dst)`

  Performs a lookup operation on a `BufferedImage`.

  `final WritableRaster`

  `filter(Raster src,
  WritableRaster dst)`

  Performs a lookup operation on a `Raster`.

  `final Rectangle2D`

  `getBounds2D(BufferedImage src)`

  Returns the bounding box of the filtered destination image.

  `final Rectangle2D`

  `getBounds2D(Raster src)`

  Returns the bounding box of the filtered destination Raster.

  `final Point2D`

  `getPoint2D(Point2D srcPt,
  Point2D dstPt)`

  Returns the location of the destination point given a
  point in the source.

  `final RenderingHints`

  `getRenderingHints()`

  Returns the rendering hints for this op.

  `final LookupTable`

  `getTable()`

  Returns the `LookupTable`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LookupOp

    public LookupOp([LookupTable](LookupTable.md "class in java.awt.image") lookup,
    [RenderingHints](../RenderingHints.md "class in java.awt") hints)

    Constructs a `LookupOp` object given the lookup
    table and a `RenderingHints` object, which might
    be `null`.

    Parameters:
    :   `lookup` - the specified `LookupTable`
    :   `hints` - the specified `RenderingHints`,
        or `null`
* ## Method Details

  + ### getTable

    public final [LookupTable](LookupTable.md "class in java.awt.image") getTable()

    Returns the `LookupTable`.

    Returns:
    :   the `LookupTable` of this
        `LookupOp`.
  + ### filter

    public final [BufferedImage](BufferedImage.md "class in java.awt.image") filter([BufferedImage](BufferedImage.md "class in java.awt.image") src,
    [BufferedImage](BufferedImage.md "class in java.awt.image") dst)

    Performs a lookup operation on a `BufferedImage`.
    If the color model in the source image is not the same as that
    in the destination image, the pixels will be converted
    in the destination. If the destination image is `null`,
    a `BufferedImage` will be created with an appropriate
    `ColorModel`. An `IllegalArgumentException`
    might be thrown if the number of arrays in the
    `LookupTable` does not meet the restrictions
    stated in the class comment above, or if the source image
    has an `IndexColorModel`.

    Specified by:
    :   `filter` in interface `BufferedImageOp`

    Parameters:
    :   `src` - the `BufferedImage` to be filtered
    :   `dst` - the `BufferedImage` in which to
        store the results of the filter operation

    Returns:
    :   the filtered `BufferedImage`.

    Throws:
    :   `IllegalArgumentException` - if the number of arrays in the
        `LookupTable` does not meet the restrictions
        described in the class comments, or if the source image
        has an `IndexColorModel`.
  + ### filter

    public final [WritableRaster](WritableRaster.md "class in java.awt.image") filter([Raster](Raster.md "class in java.awt.image") src,
    [WritableRaster](WritableRaster.md "class in java.awt.image") dst)

    Performs a lookup operation on a `Raster`.
    If the destination `Raster` is `null`,
    a new `Raster` will be created.
    The `IllegalArgumentException` might be thrown
    if the source `Raster` and the destination
    `Raster` do not have the same
    number of bands or if the number of arrays in the
    `LookupTable` does not meet the
    restrictions stated in the class comment above.

    Specified by:
    :   `filter` in interface `RasterOp`

    Parameters:
    :   `src` - the source `Raster` to filter
    :   `dst` - the destination `WritableRaster` for the
        filtered `src`

    Returns:
    :   the filtered `WritableRaster`.

    Throws:
    :   `IllegalArgumentException` - if the source and destinations
        rasters do not have the same number of bands, or the
        number of arrays in the `LookupTable` does
        not meet the restrictions described in the class comments.
  + ### getBounds2D

    public final [Rectangle2D](../geom/Rectangle2D.md "class in java.awt.geom") getBounds2D([BufferedImage](BufferedImage.md "class in java.awt.image") src)

    Returns the bounding box of the filtered destination image. Since
    this is not a geometric operation, the bounding box does not
    change.

    Specified by:
    :   `getBounds2D` in interface `BufferedImageOp`

    Parameters:
    :   `src` - the `BufferedImage` to be filtered

    Returns:
    :   the bounds of the filtered definition image.
  + ### getBounds2D

    public final [Rectangle2D](../geom/Rectangle2D.md "class in java.awt.geom") getBounds2D([Raster](Raster.md "class in java.awt.image") src)

    Returns the bounding box of the filtered destination Raster. Since
    this is not a geometric operation, the bounding box does not
    change.

    Specified by:
    :   `getBounds2D` in interface `RasterOp`

    Parameters:
    :   `src` - the `Raster` to be filtered

    Returns:
    :   the bounds of the filtered definition `Raster`.
  + ### createCompatibleDestImage

    public [BufferedImage](BufferedImage.md "class in java.awt.image") createCompatibleDestImage([BufferedImage](BufferedImage.md "class in java.awt.image") src,
    [ColorModel](ColorModel.md "class in java.awt.image") destCM)

    Creates a zeroed destination image with the correct size and number of
    bands. If destCM is `null`, an appropriate
    `ColorModel` will be used.

    Specified by:
    :   `createCompatibleDestImage` in interface `BufferedImageOp`

    Parameters:
    :   `src` - Source image for the filter operation.
    :   `destCM` - the destination's `ColorModel`, which
        can be `null`.

    Returns:
    :   a filtered destination `BufferedImage`.
  + ### createCompatibleDestRaster

    public [WritableRaster](WritableRaster.md "class in java.awt.image") createCompatibleDestRaster([Raster](Raster.md "class in java.awt.image") src)

    Creates a zeroed-destination `Raster` with the
    correct size and number of bands, given this source.

    Specified by:
    :   `createCompatibleDestRaster` in interface `RasterOp`

    Parameters:
    :   `src` - the `Raster` to be transformed

    Returns:
    :   the zeroed-destination `Raster`.
  + ### getPoint2D

    public final [Point2D](../geom/Point2D.md "class in java.awt.geom") getPoint2D([Point2D](../geom/Point2D.md "class in java.awt.geom") srcPt,
    [Point2D](../geom/Point2D.md "class in java.awt.geom") dstPt)

    Returns the location of the destination point given a
    point in the source. If `dstPt` is not
    `null`, it will be used to hold the return value.
    Since this is not a geometric operation, the `srcPt`
    will equal the `dstPt`.

    Specified by:
    :   `getPoint2D` in interface `BufferedImageOp`

    Specified by:
    :   `getPoint2D` in interface `RasterOp`

    Parameters:
    :   `srcPt` - a `Point2D` that represents a point
        in the source image
    :   `dstPt` - a `Point2D` that represents the location
        in the destination

    Returns:
    :   the `Point2D` in the destination that
        corresponds to the specified point in the source.
  + ### getRenderingHints

    public final [RenderingHints](../RenderingHints.md "class in java.awt") getRenderingHints()

    Returns the rendering hints for this op.

    Specified by:
    :   `getRenderingHints` in interface `BufferedImageOp`

    Specified by:
    :   `getRenderingHints` in interface `RasterOp`

    Returns:
    :   the `RenderingHints` object associated
        with this op.