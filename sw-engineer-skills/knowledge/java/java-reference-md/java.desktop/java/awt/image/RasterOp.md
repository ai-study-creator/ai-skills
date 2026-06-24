Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Interface RasterOp

All Known Implementing Classes:
:   `AffineTransformOp`, `BandCombineOp`, `ColorConvertOp`, `ConvolveOp`, `LookupOp`, `RescaleOp`

---

public interface RasterOp

This interface describes single-input/single-output
operations performed on Raster objects. It is implemented by such
classes as AffineTransformOp, ConvolveOp, and LookupOp. The Source
and Destination objects must contain the appropriate number
of bands for the particular classes implementing this interface.
Otherwise, an exception is thrown. This interface cannot be used to
describe more sophisticated Ops such as ones that take multiple sources.
Each class implementing this interface will specify whether or not it
will allow an in-place filtering operation (i.e. source object equal
to the destination object). Note that the restriction to single-input
operations means that the values of destination pixels prior to the
operation are not used as input to the filter operation.

See Also:
:   * [`AffineTransformOp`](AffineTransformOp.md "class in java.awt.image")
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

  `WritableRaster`

  `createCompatibleDestRaster(Raster src)`

  Creates a zeroed destination Raster with the correct size and number of
  bands.

  `WritableRaster`

  `filter(Raster src,
  WritableRaster dest)`

  Performs a single-input/single-output operation from a source Raster
  to a destination Raster.

  `Rectangle2D`

  `getBounds2D(Raster src)`

  Returns the bounding box of the filtered destination Raster.

  `Point2D`

  `getPoint2D(Point2D srcPt,
  Point2D dstPt)`

  Returns the location of the destination point given a
  point in the source Raster.

  `RenderingHints`

  `getRenderingHints()`

  Returns the rendering hints for this RasterOp.

* ## Method Details

  + ### filter

    [WritableRaster](WritableRaster.md "class in java.awt.image") filter([Raster](Raster.md "class in java.awt.image") src,
    [WritableRaster](WritableRaster.md "class in java.awt.image") dest)

    Performs a single-input/single-output operation from a source Raster
    to a destination Raster. If the destination Raster is null, a
    new Raster will be created. The IllegalArgumentException may be thrown
    if the source and/or destination Raster is incompatible with the types
    of Rasters allowed by the class implementing this filter.

    Parameters:
    :   `src` - the source `Raster`
    :   `dest` - the destination `WritableRaster`

    Returns:
    :   a `WritableRaster` that represents the result of
        the filtering operation.
  + ### getBounds2D

    [Rectangle2D](../geom/Rectangle2D.md "class in java.awt.geom") getBounds2D([Raster](Raster.md "class in java.awt.image") src)

    Returns the bounding box of the filtered destination Raster.
    The IllegalArgumentException may be thrown if the source Raster
    is incompatible with the types of Rasters allowed
    by the class implementing this filter.

    Parameters:
    :   `src` - the source `Raster`

    Returns:
    :   a `Rectangle2D` that is the bounding box of
        the `Raster` resulting from the filtering
        operation.
  + ### createCompatibleDestRaster

    [WritableRaster](WritableRaster.md "class in java.awt.image") createCompatibleDestRaster([Raster](Raster.md "class in java.awt.image") src)

    Creates a zeroed destination Raster with the correct size and number of
    bands.
    The IllegalArgumentException may be thrown if the source Raster
    is incompatible with the types of Rasters allowed
    by the class implementing this filter.

    Parameters:
    :   `src` - the source `Raster`

    Returns:
    :   a `WritableRaster` that is compatible with
        `src`
  + ### getPoint2D

    [Point2D](../geom/Point2D.md "class in java.awt.geom") getPoint2D([Point2D](../geom/Point2D.md "class in java.awt.geom") srcPt,
    [Point2D](../geom/Point2D.md "class in java.awt.geom") dstPt)

    Returns the location of the destination point given a
    point in the source Raster. If dstPt is non-null, it
    will be used to hold the return value.

    Parameters:
    :   `srcPt` - the source `Point2D`
    :   `dstPt` - the destination `Point2D`

    Returns:
    :   the location of the destination point.
  + ### getRenderingHints

    [RenderingHints](../RenderingHints.md "class in java.awt") getRenderingHints()

    Returns the rendering hints for this RasterOp. Returns
    null if no hints have been set.

    Returns:
    :   the `RenderingHints` object of this
        `RasterOp`.