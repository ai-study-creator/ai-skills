Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Interface RenderedImage

All Known Subinterfaces:
:   `WritableRenderedImage`

All Known Implementing Classes:
:   `BufferedImage`

---

public interface RenderedImage

RenderedImage is a common interface for objects which contain
or can produce image data in the form of Rasters. The image
data may be stored/produced as a single tile or a regular array
of tiles.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `WritableRaster`

  `copyData(WritableRaster raster)`

  Computes an arbitrary rectangular region of the RenderedImage
  and copies it into a caller-supplied WritableRaster.

  `ColorModel`

  `getColorModel()`

  Returns the ColorModel associated with this image.

  `Raster`

  `getData()`

  Returns the image as one large tile (for tile based
  images this will require fetching the whole image
  and copying the image data over).

  `Raster`

  `getData(Rectangle rect)`

  Computes and returns an arbitrary region of the RenderedImage.

  `int`

  `getHeight()`

  Returns the height of the RenderedImage.

  `int`

  `getMinTileX()`

  Returns the minimum tile index in the X direction.

  `int`

  `getMinTileY()`

  Returns the minimum tile index in the Y direction.

  `int`

  `getMinX()`

  Returns the minimum X coordinate (inclusive) of the RenderedImage.

  `int`

  `getMinY()`

  Returns the minimum Y coordinate (inclusive) of the RenderedImage.

  `int`

  `getNumXTiles()`

  Returns the number of tiles in the X direction.

  `int`

  `getNumYTiles()`

  Returns the number of tiles in the Y direction.

  `Object`

  `getProperty(String name)`

  Gets a property from the property set of this image.

  `String[]`

  `getPropertyNames()`

  Returns an array of names recognized by
  [`getProperty(String)`](#getProperty(java.lang.String))
  or `null`, if no property names are recognized.

  `SampleModel`

  `getSampleModel()`

  Returns the SampleModel associated with this image.

  `Vector<RenderedImage>`

  `getSources()`

  Returns a vector of RenderedImages that are the immediate sources of
  image data for this RenderedImage.

  `Raster`

  `getTile(int tileX,
  int tileY)`

  Returns tile (tileX, tileY).

  `int`

  `getTileGridXOffset()`

  Returns the X offset of the tile grid relative to the origin,
  i.e., the X coordinate of the upper-left pixel of tile (0, 0).

  `int`

  `getTileGridYOffset()`

  Returns the Y offset of the tile grid relative to the origin,
  i.e., the Y coordinate of the upper-left pixel of tile (0, 0).

  `int`

  `getTileHeight()`

  Returns the tile height in pixels.

  `int`

  `getTileWidth()`

  Returns the tile width in pixels.

  `int`

  `getWidth()`

  Returns the width of the RenderedImage.

* ## Method Details

  + ### getSources

    [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[RenderedImage](RenderedImage.md "interface in java.awt.image")> getSources()

    Returns a vector of RenderedImages that are the immediate sources of
    image data for this RenderedImage. This method returns null if
    the RenderedImage object has no information about its immediate
    sources. It returns an empty Vector if the RenderedImage object has
    no immediate sources.

    Returns:
    :   a Vector of `RenderedImage` objects.
  + ### getProperty

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Gets a property from the property set of this image. The set of
    properties and whether it is immutable is determined by the
    implementing class. This method returns
    java.awt.Image.UndefinedProperty if the specified property is
    not defined for this RenderedImage.

    Parameters:
    :   `name` - the name of the property

    Returns:
    :   the property indicated by the specified name.

    See Also:
    :   - [`Image.UndefinedProperty`](../Image.md#UndefinedProperty)
  + ### getPropertyNames

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getPropertyNames()

    Returns an array of names recognized by
    [`getProperty(String)`](#getProperty(java.lang.String))
    or `null`, if no property names are recognized.

    Returns:
    :   a `String` array containing all of the
        property names that `getProperty(String)` recognizes;
        or `null` if no property names are recognized.
  + ### getColorModel

    [ColorModel](ColorModel.md "class in java.awt.image") getColorModel()

    Returns the ColorModel associated with this image. All Rasters
    returned from this image will have this as their ColorModel. This
    can return null.

    Returns:
    :   the `ColorModel` of this image.
  + ### getSampleModel

    [SampleModel](SampleModel.md "class in java.awt.image") getSampleModel()

    Returns the SampleModel associated with this image. All Rasters
    returned from this image will have this as their SampleModel.

    Returns:
    :   the `SampleModel` of this image.
  + ### getWidth

    int getWidth()

    Returns the width of the RenderedImage.

    Returns:
    :   the width of this `RenderedImage`.
  + ### getHeight

    int getHeight()

    Returns the height of the RenderedImage.

    Returns:
    :   the height of this `RenderedImage`.
  + ### getMinX

    int getMinX()

    Returns the minimum X coordinate (inclusive) of the RenderedImage.

    Returns:
    :   the X coordinate of this `RenderedImage`.
  + ### getMinY

    int getMinY()

    Returns the minimum Y coordinate (inclusive) of the RenderedImage.

    Returns:
    :   the Y coordinate of this `RenderedImage`.
  + ### getNumXTiles

    int getNumXTiles()

    Returns the number of tiles in the X direction.

    Returns:
    :   the number of tiles in the X direction.
  + ### getNumYTiles

    int getNumYTiles()

    Returns the number of tiles in the Y direction.

    Returns:
    :   the number of tiles in the Y direction.
  + ### getMinTileX

    int getMinTileX()

    Returns the minimum tile index in the X direction.

    Returns:
    :   the minimum tile index in the X direction.
  + ### getMinTileY

    int getMinTileY()

    Returns the minimum tile index in the Y direction.

    Returns:
    :   the minimum tile index in the X direction.
  + ### getTileWidth

    int getTileWidth()

    Returns the tile width in pixels. All tiles must have the same
    width.

    Returns:
    :   the tile width in pixels.
  + ### getTileHeight

    int getTileHeight()

    Returns the tile height in pixels. All tiles must have the same
    height.

    Returns:
    :   the tile height in pixels.
  + ### getTileGridXOffset

    int getTileGridXOffset()

    Returns the X offset of the tile grid relative to the origin,
    i.e., the X coordinate of the upper-left pixel of tile (0, 0).
    (Note that tile (0, 0) may not actually exist.)

    Returns:
    :   the X offset of the tile grid relative to the origin.
  + ### getTileGridYOffset

    int getTileGridYOffset()

    Returns the Y offset of the tile grid relative to the origin,
    i.e., the Y coordinate of the upper-left pixel of tile (0, 0).
    (Note that tile (0, 0) may not actually exist.)

    Returns:
    :   the Y offset of the tile grid relative to the origin.
  + ### getTile

    [Raster](Raster.md "class in java.awt.image") getTile(int tileX,
    int tileY)

    Returns tile (tileX, tileY). Note that tileX and tileY are indices
    into the tile array, not pixel locations. The Raster that is returned
    is live and will be updated if the image is changed.

    Parameters:
    :   `tileX` - the X index of the requested tile in the tile array
    :   `tileY` - the Y index of the requested tile in the tile array

    Returns:
    :   the tile given the specified indices.
  + ### getData

    [Raster](Raster.md "class in java.awt.image") getData()

    Returns the image as one large tile (for tile based
    images this will require fetching the whole image
    and copying the image data over). The Raster returned is
    a copy of the image data and will not be updated if the image
    is changed.

    Returns:
    :   the image as one large tile.
  + ### getData

    [Raster](Raster.md "class in java.awt.image") getData([Rectangle](../Rectangle.md "class in java.awt") rect)

    Computes and returns an arbitrary region of the RenderedImage.
    The Raster returned is a copy of the image data and will not
    be updated if the image is changed.

    Parameters:
    :   `rect` - the region of the RenderedImage to be returned.

    Returns:
    :   the region of the `RenderedImage`
        indicated by the specified `Rectangle`.
  + ### copyData

    [WritableRaster](WritableRaster.md "class in java.awt.image") copyData([WritableRaster](WritableRaster.md "class in java.awt.image") raster)

    Computes an arbitrary rectangular region of the RenderedImage
    and copies it into a caller-supplied WritableRaster. The region
    to be computed is determined from the bounds of the supplied
    WritableRaster. The supplied WritableRaster must have a
    SampleModel that is compatible with this image. If raster is null,
    an appropriate WritableRaster is created.

    Parameters:
    :   `raster` - a WritableRaster to hold the returned portion of the
        image, or null.

    Returns:
    :   a reference to the supplied or created WritableRaster.