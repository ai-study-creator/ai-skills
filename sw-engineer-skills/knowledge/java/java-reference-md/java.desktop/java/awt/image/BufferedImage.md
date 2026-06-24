Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class BufferedImage

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Image](../Image.md "class in java.awt")

java.awt.image.BufferedImage

All Implemented Interfaces:
:   `RenderedImage`, `WritableRenderedImage`, `Transparency`

---

public class BufferedImage
extends [Image](../Image.md "class in java.awt")
implements [WritableRenderedImage](WritableRenderedImage.md "interface in java.awt.image"), [Transparency](../Transparency.md "interface in java.awt")

The `BufferedImage` subclass describes an [`Image`](../Image.md "class in java.awt") with an accessible buffer of image data.
A `BufferedImage` is comprised of a [`ColorModel`](ColorModel.md "class in java.awt.image") and a
[`Raster`](Raster.md "class in java.awt.image") of image data.
The number and types of bands in the [`SampleModel`](SampleModel.md "class in java.awt.image") of the
`Raster` must match the number and types required by the
`ColorModel` to represent its color and alpha components.
All `BufferedImage` objects have an upper left corner
coordinate of (0, 0). Any `Raster` used to construct a
`BufferedImage` must therefore have minX=0 and minY=0.

This class relies on the data fetching and setting methods
of `Raster`,
and on the color characterization methods of `ColorModel`.

See Also:
:   * [`ColorModel`](ColorModel.md "class in java.awt.image")
    * [`Raster`](Raster.md "class in java.awt.image")
    * [`WritableRaster`](WritableRaster.md "class in java.awt.image")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `TYPE_3BYTE_BGR`

  Represents an image with 8-bit RGB color components, corresponding
  to a Windows-style BGR color model) with the colors Blue, Green,
  and Red stored in 3 bytes.

  `static final int`

  `TYPE_4BYTE_ABGR`

  Represents an image with 8-bit RGBA color components with the colors
  Blue, Green, and Red stored in 3 bytes and 1 byte of alpha.

  `static final int`

  `TYPE_4BYTE_ABGR_PRE`

  Represents an image with 8-bit RGBA color components with the colors
  Blue, Green, and Red stored in 3 bytes and 1 byte of alpha.

  `static final int`

  `TYPE_BYTE_BINARY`

  Represents an opaque byte-packed 1, 2, or 4 bit image.

  `static final int`

  `TYPE_BYTE_GRAY`

  Represents a unsigned byte grayscale image, non-indexed.

  `static final int`

  `TYPE_BYTE_INDEXED`

  Represents an indexed byte image.

  `static final int`

  `TYPE_CUSTOM`

  Image type is not recognized so it must be a customized
  image.

  `static final int`

  `TYPE_INT_ARGB`

  Represents an image with 8-bit RGBA color components packed into
  integer pixels.

  `static final int`

  `TYPE_INT_ARGB_PRE`

  Represents an image with 8-bit RGBA color components packed into
  integer pixels.

  `static final int`

  `TYPE_INT_BGR`

  Represents an image with 8-bit RGB color components, corresponding
  to a Windows- or Solaris- style BGR color model, with the colors
  Blue, Green, and Red packed into integer pixels.

  `static final int`

  `TYPE_INT_RGB`

  Represents an image with 8-bit RGB color components packed into
  integer pixels.

  `static final int`

  `TYPE_USHORT_555_RGB`

  Represents an image with 5-5-5 RGB color components (5-bits red,
  5-bits green, 5-bits blue) with no alpha.

  `static final int`

  `TYPE_USHORT_565_RGB`

  Represents an image with 5-6-5 RGB color components (5-bits red,
  6-bits green, 5-bits blue) with no alpha.

  `static final int`

  `TYPE_USHORT_GRAY`

  Represents an unsigned short grayscale image, non-indexed).

  ### Fields inherited from class java.awt.[Image](../Image.md "class in java.awt")

  `accelerationPriority, SCALE_AREA_AVERAGING, SCALE_DEFAULT, SCALE_FAST, SCALE_REPLICATE, SCALE_SMOOTH, UndefinedProperty`

  ### Fields inherited from interface java.awt.[Transparency](../Transparency.md "interface in java.awt")

  `BITMASK, OPAQUE, TRANSLUCENT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BufferedImage(int width,
  int height,
  int imageType)`

  Constructs a `BufferedImage` of one of the predefined
  image types.

  `BufferedImage(int width,
  int height,
  int imageType,
  IndexColorModel cm)`

  Constructs a `BufferedImage` of one of the predefined
  image types:
  TYPE\_BYTE\_BINARY or TYPE\_BYTE\_INDEXED.

  `BufferedImage(ColorModel cm,
  WritableRaster raster,
  boolean isRasterPremultiplied,
  Hashtable<?,?> properties)`

  Constructs a new `BufferedImage` with a specified
  `ColorModel` and `Raster`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTileObserver(TileObserver to)`

  Adds a tile observer.

  `void`

  `coerceData(boolean isAlphaPremultiplied)`

  Forces the data to match the state specified in the
  `isAlphaPremultiplied` variable.

  `WritableRaster`

  `copyData(WritableRaster outRaster)`

  Computes an arbitrary rectangular region of the
  `BufferedImage` and copies it into a specified
  `WritableRaster`.

  `Graphics2D`

  `createGraphics()`

  Creates a `Graphics2D`, which can be used to draw into
  this `BufferedImage`.

  `WritableRaster`

  `getAlphaRaster()`

  Returns a `WritableRaster` representing the alpha
  channel for `BufferedImage` objects
  with `ColorModel` objects that support a separate
  spatial alpha channel, such as `ComponentColorModel` and
  `DirectColorModel`.

  `ColorModel`

  `getColorModel()`

  Returns the `ColorModel`.

  `Raster`

  `getData()`

  Returns the image as one large tile.

  `Raster`

  `getData(Rectangle rect)`

  Computes and returns an arbitrary region of the
  `BufferedImage`.

  `Graphics`

  `getGraphics()`

  This method returns a [`Graphics2D`](../Graphics2D.md "class in java.awt"), but is here
  for backwards compatibility.

  `int`

  `getHeight()`

  Returns the height of the `BufferedImage`.

  `int`

  `getHeight(ImageObserver observer)`

  Returns the height of the `BufferedImage`.

  `int`

  `getMinTileX()`

  Returns the minimum tile index in the x direction.

  `int`

  `getMinTileY()`

  Returns the minimum tile index in the y direction.

  `int`

  `getMinX()`

  Returns the minimum x coordinate of this
  `BufferedImage`.

  `int`

  `getMinY()`

  Returns the minimum y coordinate of this
  `BufferedImage`.

  `int`

  `getNumXTiles()`

  Returns the number of tiles in the x direction.

  `int`

  `getNumYTiles()`

  Returns the number of tiles in the y direction.

  `Object`

  `getProperty(String name)`

  Returns a property of the image by name.

  `Object`

  `getProperty(String name,
  ImageObserver observer)`

  Returns a property of the image by name.

  `String[]`

  `getPropertyNames()`

  Returns an array of names recognized by
  [`getProperty(String)`](#getProperty(java.lang.String))
  or `null`, if no property names are recognized.

  `WritableRaster`

  `getRaster()`

  Returns the [`WritableRaster`](WritableRaster.md "class in java.awt.image").

  `int`

  `getRGB(int x,
  int y)`

  Returns an integer pixel in the default RGB color model
  (TYPE\_INT\_ARGB) and default sRGB colorspace.

  `int[]`

  `getRGB(int startX,
  int startY,
  int w,
  int h,
  int[] rgbArray,
  int offset,
  int scansize)`

  Returns an array of integer pixels in the default RGB color model
  (TYPE\_INT\_ARGB) and default sRGB color space,
  from a portion of the image data.

  `SampleModel`

  `getSampleModel()`

  Returns the `SampleModel` associated with this
  `BufferedImage`.

  `ImageProducer`

  `getSource()`

  Returns the object that produces the pixels for the image.

  `Vector<RenderedImage>`

  `getSources()`

  Returns a [`Vector`](../../../../java.base/java/util/Vector.md "class in java.util") of [`RenderedImage`](RenderedImage.md "interface in java.awt.image") objects that are
  the immediate sources, not the sources of these immediate sources,
  of image data for this `BufferedImage`.

  `BufferedImage`

  `getSubimage(int x,
  int y,
  int w,
  int h)`

  Returns a subimage defined by a specified rectangular region.

  `Raster`

  `getTile(int tileX,
  int tileY)`

  Returns tile (`tileX`, `tileY`).

  `int`

  `getTileGridXOffset()`

  Returns the x offset of the tile grid relative to the origin,
  For example, the x coordinate of the location of tile
  (0, 0).

  `int`

  `getTileGridYOffset()`

  Returns the y offset of the tile grid relative to the origin,
  For example, the y coordinate of the location of tile
  (0, 0).

  `int`

  `getTileHeight()`

  Returns the tile height in pixels.

  `int`

  `getTileWidth()`

  Returns the tile width in pixels.

  `int`

  `getTransparency()`

  Returns the transparency.

  `int`

  `getType()`

  Returns the image type.

  `int`

  `getWidth()`

  Returns the width of the `BufferedImage`.

  `int`

  `getWidth(ImageObserver observer)`

  Returns the width of the `BufferedImage`.

  `WritableRaster`

  `getWritableTile(int tileX,
  int tileY)`

  Checks out a tile for writing.

  `Point[]`

  `getWritableTileIndices()`

  Returns an array of [`Point`](../Point.md "class in java.awt") objects indicating which tiles
  are checked out for writing.

  `boolean`

  `hasTileWriters()`

  Returns whether or not any tile is checked out for writing.

  `boolean`

  `isAlphaPremultiplied()`

  Returns whether or not the alpha has been premultiplied.

  `boolean`

  `isTileWritable(int tileX,
  int tileY)`

  Returns whether or not a tile is currently checked out for writing.

  `void`

  `releaseWritableTile(int tileX,
  int tileY)`

  Relinquishes permission to write to a tile.

  `void`

  `removeTileObserver(TileObserver to)`

  Removes a tile observer.

  `void`

  `setData(Raster r)`

  Sets a rectangular region of the image to the contents of the
  specified `Raster r`, which is
  assumed to be in the same coordinate space as the
  `BufferedImage`.

  `void`

  `setRGB(int x,
  int y,
  int rgb)`

  Sets a pixel in this `BufferedImage` to the specified
  RGB value.

  `void`

  `setRGB(int startX,
  int startY,
  int w,
  int h,
  int[] rgbArray,
  int offset,
  int scansize)`

  Sets an array of integer pixels in the default RGB color model
  (TYPE\_INT\_ARGB) and default sRGB color space,
  into a portion of the image data.

  `String`

  `toString()`

  Returns a `String` representation of this
  `BufferedImage` object and its values.

  ### Methods inherited from class java.awt.[Image](../Image.md "class in java.awt")

  `flush, getAccelerationPriority, getCapabilities, getScaledInstance, setAccelerationPriority`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### TYPE\_CUSTOM

    public static final int TYPE\_CUSTOM

    Image type is not recognized so it must be a customized
    image. This type is only used as a return value for the getType()
    method.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_CUSTOM)
  + ### TYPE\_INT\_RGB

    public static final int TYPE\_INT\_RGB

    Represents an image with 8-bit RGB color components packed into
    integer pixels. The image has a [`DirectColorModel`](DirectColorModel.md "class in java.awt.image") without
    alpha.
    When data with non-opaque alpha is stored
    in an image of this type,
    the color data must be adjusted to a non-premultiplied form
    and the alpha discarded,
    as described in the
    [`AlphaComposite`](../AlphaComposite.md "class in java.awt") documentation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_INT_RGB)
  + ### TYPE\_INT\_ARGB

    public static final int TYPE\_INT\_ARGB

    Represents an image with 8-bit RGBA color components packed into
    integer pixels. The image has a `DirectColorModel`
    with alpha. The color data in this image is considered not to be
    premultiplied with alpha. When this type is used as the
    `imageType` argument to a `BufferedImage`
    constructor, the created image is consistent with images
    created in the JDK1.1 and earlier releases.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_INT_ARGB)
  + ### TYPE\_INT\_ARGB\_PRE

    public static final int TYPE\_INT\_ARGB\_PRE

    Represents an image with 8-bit RGBA color components packed into
    integer pixels. The image has a `DirectColorModel`
    with alpha. The color data in this image is considered to be
    premultiplied with alpha.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_INT_ARGB_PRE)
  + ### TYPE\_INT\_BGR

    public static final int TYPE\_INT\_BGR

    Represents an image with 8-bit RGB color components, corresponding
    to a Windows- or Solaris- style BGR color model, with the colors
    Blue, Green, and Red packed into integer pixels. There is no alpha.
    The image has a [`DirectColorModel`](DirectColorModel.md "class in java.awt.image").
    When data with non-opaque alpha is stored
    in an image of this type,
    the color data must be adjusted to a non-premultiplied form
    and the alpha discarded,
    as described in the
    [`AlphaComposite`](../AlphaComposite.md "class in java.awt") documentation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_INT_BGR)
  + ### TYPE\_3BYTE\_BGR

    public static final int TYPE\_3BYTE\_BGR

    Represents an image with 8-bit RGB color components, corresponding
    to a Windows-style BGR color model) with the colors Blue, Green,
    and Red stored in 3 bytes. There is no alpha. The image has a
    `ComponentColorModel`.
    When data with non-opaque alpha is stored
    in an image of this type,
    the color data must be adjusted to a non-premultiplied form
    and the alpha discarded,
    as described in the
    [`AlphaComposite`](../AlphaComposite.md "class in java.awt") documentation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_3BYTE_BGR)
  + ### TYPE\_4BYTE\_ABGR

    public static final int TYPE\_4BYTE\_ABGR

    Represents an image with 8-bit RGBA color components with the colors
    Blue, Green, and Red stored in 3 bytes and 1 byte of alpha. The
    image has a `ComponentColorModel` with alpha. The
    color data in this image is considered not to be premultiplied with
    alpha. The byte data is interleaved in a single
    byte array in the order A, B, G, R
    from lower to higher byte addresses within each pixel.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_4BYTE_ABGR)
  + ### TYPE\_4BYTE\_ABGR\_PRE

    public static final int TYPE\_4BYTE\_ABGR\_PRE

    Represents an image with 8-bit RGBA color components with the colors
    Blue, Green, and Red stored in 3 bytes and 1 byte of alpha. The
    image has a `ComponentColorModel` with alpha. The color
    data in this image is considered to be premultiplied with alpha.
    The byte data is interleaved in a single byte array in the order
    A, B, G, R from lower to higher byte addresses within each pixel.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_4BYTE_ABGR_PRE)
  + ### TYPE\_USHORT\_565\_RGB

    public static final int TYPE\_USHORT\_565\_RGB

    Represents an image with 5-6-5 RGB color components (5-bits red,
    6-bits green, 5-bits blue) with no alpha. This image has
    a `DirectColorModel`.
    When data with non-opaque alpha is stored
    in an image of this type,
    the color data must be adjusted to a non-premultiplied form
    and the alpha discarded,
    as described in the
    [`AlphaComposite`](../AlphaComposite.md "class in java.awt") documentation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_USHORT_565_RGB)
  + ### TYPE\_USHORT\_555\_RGB

    public static final int TYPE\_USHORT\_555\_RGB

    Represents an image with 5-5-5 RGB color components (5-bits red,
    5-bits green, 5-bits blue) with no alpha. This image has
    a `DirectColorModel`.
    When data with non-opaque alpha is stored
    in an image of this type,
    the color data must be adjusted to a non-premultiplied form
    and the alpha discarded,
    as described in the
    [`AlphaComposite`](../AlphaComposite.md "class in java.awt") documentation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_USHORT_555_RGB)
  + ### TYPE\_BYTE\_GRAY

    public static final int TYPE\_BYTE\_GRAY

    Represents a unsigned byte grayscale image, non-indexed. This
    image has a `ComponentColorModel` with a CS\_GRAY
    [`ColorSpace`](../color/ColorSpace.md "class in java.awt.color").
    When data with non-opaque alpha is stored
    in an image of this type,
    the color data must be adjusted to a non-premultiplied form
    and the alpha discarded,
    as described in the
    [`AlphaComposite`](../AlphaComposite.md "class in java.awt") documentation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_BYTE_GRAY)
  + ### TYPE\_USHORT\_GRAY

    public static final int TYPE\_USHORT\_GRAY

    Represents an unsigned short grayscale image, non-indexed). This
    image has a `ComponentColorModel` with a CS\_GRAY
    `ColorSpace`.
    When data with non-opaque alpha is stored
    in an image of this type,
    the color data must be adjusted to a non-premultiplied form
    and the alpha discarded,
    as described in the
    [`AlphaComposite`](../AlphaComposite.md "class in java.awt") documentation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_USHORT_GRAY)
  + ### TYPE\_BYTE\_BINARY

    public static final int TYPE\_BYTE\_BINARY

    Represents an opaque byte-packed 1, 2, or 4 bit image. The
    image has an [`IndexColorModel`](IndexColorModel.md "class in java.awt.image") without alpha. When this
    type is used as the `imageType` argument to the
    `BufferedImage` constructor that takes an
    `imageType` argument but no `ColorModel`
    argument, a 1-bit image is created with an
    `IndexColorModel` with two colors in the default
    sRGB `ColorSpace`: {0, 0, 0} and
    {255, 255, 255}.

    Images with 2 or 4 bits per pixel may be constructed via
    the `BufferedImage` constructor that takes a
    `ColorModel` argument by supplying a
    `ColorModel` with an appropriate map size.

    Images with 8 bits per pixel should use the image types
    `TYPE_BYTE_INDEXED` or `TYPE_BYTE_GRAY`
    depending on their `ColorModel`.

    When color data is stored in an image of this type,
    the closest color in the colormap is determined
    by the `IndexColorModel` and the resulting index is stored.
    Approximation and loss of alpha or color components
    can result, depending on the colors in the
    `IndexColorModel` colormap.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_BYTE_BINARY)
  + ### TYPE\_BYTE\_INDEXED

    public static final int TYPE\_BYTE\_INDEXED

    Represents an indexed byte image. When this type is used as the
    `imageType` argument to the `BufferedImage`
    constructor that takes an `imageType` argument
    but no `ColorModel` argument, an
    `IndexColorModel` is created with
    a 256-color 6/6/6 color cube palette with the rest of the colors
    from 216-255 populated by grayscale values in the
    default sRGB ColorSpace.

    When color data is stored in an image of this type,
    the closest color in the colormap is determined
    by the `IndexColorModel` and the resulting index is stored.
    Approximation and loss of alpha or color components
    can result, depending on the colors in the
    `IndexColorModel` colormap.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.image.BufferedImage.TYPE_BYTE_INDEXED)
* ## Constructor Details

  + ### BufferedImage

    public BufferedImage(int width,
    int height,
    int imageType)

    Constructs a `BufferedImage` of one of the predefined
    image types. The `ColorSpace` for the image is the
    default sRGB space.

    Parameters:
    :   `width` - width of the created image
    :   `height` - height of the created image
    :   `imageType` - type of the created image

    See Also:
    :   - [`ColorSpace`](../color/ColorSpace.md "class in java.awt.color")
        - [`TYPE_INT_RGB`](#TYPE_INT_RGB)
        - [`TYPE_INT_ARGB`](#TYPE_INT_ARGB)
        - [`TYPE_INT_ARGB_PRE`](#TYPE_INT_ARGB_PRE)
        - [`TYPE_INT_BGR`](#TYPE_INT_BGR)
        - [`TYPE_3BYTE_BGR`](#TYPE_3BYTE_BGR)
        - [`TYPE_4BYTE_ABGR`](#TYPE_4BYTE_ABGR)
        - [`TYPE_4BYTE_ABGR_PRE`](#TYPE_4BYTE_ABGR_PRE)
        - [`TYPE_BYTE_GRAY`](#TYPE_BYTE_GRAY)
        - [`TYPE_USHORT_GRAY`](#TYPE_USHORT_GRAY)
        - [`TYPE_BYTE_BINARY`](#TYPE_BYTE_BINARY)
        - [`TYPE_BYTE_INDEXED`](#TYPE_BYTE_INDEXED)
        - [`TYPE_USHORT_565_RGB`](#TYPE_USHORT_565_RGB)
        - [`TYPE_USHORT_555_RGB`](#TYPE_USHORT_555_RGB)
  + ### BufferedImage

    public BufferedImage(int width,
    int height,
    int imageType,
    [IndexColorModel](IndexColorModel.md "class in java.awt.image") cm)

    Constructs a `BufferedImage` of one of the predefined
    image types:
    TYPE\_BYTE\_BINARY or TYPE\_BYTE\_INDEXED.

    If the image type is TYPE\_BYTE\_BINARY, the number of
    entries in the color model is used to determine whether the
    image should have 1, 2, or 4 bits per pixel. If the color model
    has 1 or 2 entries, the image will have 1 bit per pixel. If it
    has 3 or 4 entries, the image with have 2 bits per pixel. If
    it has between 5 and 16 entries, the image will have 4 bits per
    pixel. Otherwise, an IllegalArgumentException will be thrown.

    Parameters:
    :   `width` - width of the created image
    :   `height` - height of the created image
    :   `imageType` - type of the created image
    :   `cm` - `IndexColorModel` of the created image

    Throws:
    :   `IllegalArgumentException` - if the imageType is not
        TYPE\_BYTE\_BINARY or TYPE\_BYTE\_INDEXED or if the imageType is
        TYPE\_BYTE\_BINARY and the color map has more than 16 entries.

    See Also:
    :   - [`TYPE_BYTE_BINARY`](#TYPE_BYTE_BINARY)
        - [`TYPE_BYTE_INDEXED`](#TYPE_BYTE_INDEXED)
  + ### BufferedImage

    public BufferedImage([ColorModel](ColorModel.md "class in java.awt.image") cm,
    [WritableRaster](WritableRaster.md "class in java.awt.image") raster,
    boolean isRasterPremultiplied,
    [Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> properties)

    Constructs a new `BufferedImage` with a specified
    `ColorModel` and `Raster`. If the number and
    types of bands in the `SampleModel` of the
    `Raster` do not match the number and types required by
    the `ColorModel` to represent its color and alpha
    components, a [`RasterFormatException`](RasterFormatException.md "class in java.awt.image") is thrown. This
    method can multiply or divide the color `Raster` data by
    alpha to match the `alphaPremultiplied` state
    in the `ColorModel`. Properties for this
    `BufferedImage` can be established by passing
    in a [`Hashtable`](../../../../java.base/java/util/Hashtable.md "class in java.util") of `String`/`Object`
    pairs.

    Parameters:
    :   `cm` - `ColorModel` for the new image
    :   `raster` - `Raster` for the image data
    :   `isRasterPremultiplied` - if `true`, the data in
        the raster has been premultiplied with alpha.
    :   `properties` - `Hashtable` of
        `String`/`Object` pairs.

    Throws:
    :   `RasterFormatException` - if the number and
        types of bands in the `SampleModel` of the
        `Raster` do not match the number and types required by
        the `ColorModel` to represent its color and alpha
        components.
    :   `IllegalArgumentException` - if
        `raster` is incompatible with `cm`

    See Also:
    :   - [`ColorModel`](ColorModel.md "class in java.awt.image")
        - [`Raster`](Raster.md "class in java.awt.image")
        - [`WritableRaster`](WritableRaster.md "class in java.awt.image")
* ## Method Details

  + ### getType

    public int getType()

    Returns the image type. If it is not one of the known types,
    TYPE\_CUSTOM is returned.

    Returns:
    :   the image type of this `BufferedImage`.

    See Also:
    :   - [`TYPE_INT_RGB`](#TYPE_INT_RGB)
        - [`TYPE_INT_ARGB`](#TYPE_INT_ARGB)
        - [`TYPE_INT_ARGB_PRE`](#TYPE_INT_ARGB_PRE)
        - [`TYPE_INT_BGR`](#TYPE_INT_BGR)
        - [`TYPE_3BYTE_BGR`](#TYPE_3BYTE_BGR)
        - [`TYPE_4BYTE_ABGR`](#TYPE_4BYTE_ABGR)
        - [`TYPE_4BYTE_ABGR_PRE`](#TYPE_4BYTE_ABGR_PRE)
        - [`TYPE_BYTE_GRAY`](#TYPE_BYTE_GRAY)
        - [`TYPE_BYTE_BINARY`](#TYPE_BYTE_BINARY)
        - [`TYPE_BYTE_INDEXED`](#TYPE_BYTE_INDEXED)
        - [`TYPE_USHORT_GRAY`](#TYPE_USHORT_GRAY)
        - [`TYPE_USHORT_565_RGB`](#TYPE_USHORT_565_RGB)
        - [`TYPE_USHORT_555_RGB`](#TYPE_USHORT_555_RGB)
        - [`TYPE_CUSTOM`](#TYPE_CUSTOM)
  + ### getColorModel

    public [ColorModel](ColorModel.md "class in java.awt.image") getColorModel()

    Returns the `ColorModel`.

    Specified by:
    :   `getColorModel` in interface `RenderedImage`

    Returns:
    :   the `ColorModel` of this
        `BufferedImage`.
  + ### getRaster

    public [WritableRaster](WritableRaster.md "class in java.awt.image") getRaster()

    Returns the [`WritableRaster`](WritableRaster.md "class in java.awt.image").

    Returns:
    :   the `WritableRaster` of this
        `BufferedImage`.
  + ### getAlphaRaster

    public [WritableRaster](WritableRaster.md "class in java.awt.image") getAlphaRaster()

    Returns a `WritableRaster` representing the alpha
    channel for `BufferedImage` objects
    with `ColorModel` objects that support a separate
    spatial alpha channel, such as `ComponentColorModel` and
    `DirectColorModel`. Returns `null` if there
    is no alpha channel associated with the `ColorModel` in
    this image. This method assumes that for all
    `ColorModel` objects other than
    `IndexColorModel`, if the `ColorModel`
    supports alpha, there is a separate alpha channel
    which is stored as the last band of image data.
    If the image uses an `IndexColorModel` that
    has alpha in the lookup table, this method returns
    `null` since there is no spatially discrete alpha
    channel. This method creates a new
    `WritableRaster`, but shares the data array.

    Returns:
    :   a `WritableRaster` or `null` if this
        `BufferedImage` has no alpha channel associated
        with its `ColorModel`.
  + ### getRGB

    public int getRGB(int x,
    int y)

    Returns an integer pixel in the default RGB color model
    (TYPE\_INT\_ARGB) and default sRGB colorspace. Color
    conversion takes place if this default model does not match
    the image `ColorModel`. There are only 8-bits of
    precision for each color component in the returned data when using
    this method.

    An `ArrayOutOfBoundsException` may be thrown
    if the coordinates are not in bounds.
    However, explicit bounds checking is not guaranteed.

    Parameters:
    :   `x` - the X coordinate of the pixel from which to get
        the pixel in the default RGB color model and sRGB
        color space
    :   `y` - the Y coordinate of the pixel from which to get
        the pixel in the default RGB color model and sRGB
        color space

    Returns:
    :   an integer pixel in the default RGB color model and
        default sRGB colorspace.

    See Also:
    :   - [`setRGB(int, int, int)`](#setRGB(int,int,int))
        - [`setRGB(int, int, int, int, int[], int, int)`](#setRGB(int,int,int,int,int%5B%5D,int,int))
  + ### getRGB

    public int[] getRGB(int startX,
    int startY,
    int w,
    int h,
    int[] rgbArray,
    int offset,
    int scansize)

    Returns an array of integer pixels in the default RGB color model
    (TYPE\_INT\_ARGB) and default sRGB color space,
    from a portion of the image data. Color conversion takes
    place if the default model does not match the image
    `ColorModel`. There are only 8-bits of precision for
    each color component in the returned data when
    using this method. With a specified coordinate (x, y) in the
    image, the ARGB pixel can be accessed in this way:

    ```
        pixel   = rgbArray[offset + (y-startY)*scansize + (x-startX)];
    ```

    An `ArrayOutOfBoundsException` may be thrown
    if the region is not in bounds.
    However, explicit bounds checking is not guaranteed.

    Parameters:
    :   `startX` - the starting X coordinate
    :   `startY` - the starting Y coordinate
    :   `w` - width of region
    :   `h` - height of region
    :   `rgbArray` - if not `null`, the rgb pixels are
        written here
    :   `offset` - offset into the `rgbArray`
    :   `scansize` - scanline stride for the `rgbArray`

    Returns:
    :   array of RGB pixels.

    See Also:
    :   - [`setRGB(int, int, int)`](#setRGB(int,int,int))
        - [`setRGB(int, int, int, int, int[], int, int)`](#setRGB(int,int,int,int,int%5B%5D,int,int))
  + ### setRGB

    public void setRGB(int x,
    int y,
    int rgb)

    Sets a pixel in this `BufferedImage` to the specified
    RGB value. The pixel is assumed to be in the default RGB color
    model, TYPE\_INT\_ARGB, and default sRGB color space. For images
    with an `IndexColorModel`, the index with the nearest
    color is chosen.

    An `ArrayOutOfBoundsException` may be thrown
    if the coordinates are not in bounds.
    However, explicit bounds checking is not guaranteed.

    Parameters:
    :   `x` - the X coordinate of the pixel to set
    :   `y` - the Y coordinate of the pixel to set
    :   `rgb` - the RGB value

    See Also:
    :   - [`getRGB(int, int)`](#getRGB(int,int))
        - [`getRGB(int, int, int, int, int[], int, int)`](#getRGB(int,int,int,int,int%5B%5D,int,int))
  + ### setRGB

    public void setRGB(int startX,
    int startY,
    int w,
    int h,
    int[] rgbArray,
    int offset,
    int scansize)

    Sets an array of integer pixels in the default RGB color model
    (TYPE\_INT\_ARGB) and default sRGB color space,
    into a portion of the image data. Color conversion takes place
    if the default model does not match the image
    `ColorModel`. There are only 8-bits of precision for
    each color component in the returned data when
    using this method. With a specified coordinate (x, y) in the
    this image, the ARGB pixel can be accessed in this way:

    ```
        pixel   = rgbArray[offset + (y-startY)*scansize + (x-startX)];
    ```

    WARNING: No dithering takes place.

    An `ArrayOutOfBoundsException` may be thrown
    if the region is not in bounds.
    However, explicit bounds checking is not guaranteed.

    Parameters:
    :   `startX` - the starting X coordinate
    :   `startY` - the starting Y coordinate
    :   `w` - width of the region
    :   `h` - height of the region
    :   `rgbArray` - the rgb pixels
    :   `offset` - offset into the `rgbArray`
    :   `scansize` - scanline stride for the `rgbArray`

    See Also:
    :   - [`getRGB(int, int)`](#getRGB(int,int))
        - [`getRGB(int, int, int, int, int[], int, int)`](#getRGB(int,int,int,int,int%5B%5D,int,int))
  + ### getWidth

    public int getWidth()

    Returns the width of the `BufferedImage`.

    Specified by:
    :   `getWidth` in interface `RenderedImage`

    Returns:
    :   the width of this `BufferedImage`
  + ### getHeight

    public int getHeight()

    Returns the height of the `BufferedImage`.

    Specified by:
    :   `getHeight` in interface `RenderedImage`

    Returns:
    :   the height of this `BufferedImage`
  + ### getWidth

    public int getWidth([ImageObserver](ImageObserver.md "interface in java.awt.image") observer)

    Returns the width of the `BufferedImage`.

    Specified by:
    :   `getWidth` in class `Image`

    Parameters:
    :   `observer` - ignored

    Returns:
    :   the width of this `BufferedImage`

    See Also:
    :   - [`Image.getHeight(java.awt.image.ImageObserver)`](../Image.md#getHeight(java.awt.image.ImageObserver))
        - [`ImageObserver`](ImageObserver.md "interface in java.awt.image")
  + ### getHeight

    public int getHeight([ImageObserver](ImageObserver.md "interface in java.awt.image") observer)

    Returns the height of the `BufferedImage`.

    Specified by:
    :   `getHeight` in class `Image`

    Parameters:
    :   `observer` - ignored

    Returns:
    :   the height of this `BufferedImage`

    See Also:
    :   - [`Image.getWidth(java.awt.image.ImageObserver)`](../Image.md#getWidth(java.awt.image.ImageObserver))
        - [`ImageObserver`](ImageObserver.md "interface in java.awt.image")
  + ### getSource

    public [ImageProducer](ImageProducer.md "interface in java.awt.image") getSource()

    Returns the object that produces the pixels for the image.

    Specified by:
    :   `getSource` in class `Image`

    Returns:
    :   the [`ImageProducer`](ImageProducer.md "interface in java.awt.image") that is used to produce the
        pixels for this image.

    See Also:
    :   - [`ImageProducer`](ImageProducer.md "interface in java.awt.image")
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [ImageObserver](ImageObserver.md "interface in java.awt.image") observer)

    Returns a property of the image by name. Individual property names
    are defined by the various image formats. If a property is not
    defined for a particular image, this method returns the
    `UndefinedProperty` field. If the properties
    for this image are not yet known, then this method returns
    `null` and the `ImageObserver` object is
    notified later. The property name "comment" should be used to
    store an optional comment that can be presented to the user as a
    description of the image, its source, or its author.

    Specified by:
    :   `getProperty` in class `Image`

    Parameters:
    :   `name` - the property name
    :   `observer` - the `ImageObserver` that receives
        notification regarding image information

    Returns:
    :   an [`Object`](../../../../java.base/java/lang/Object.md "class in java.lang") that is the property referred to by the
        specified `name` or `null` if the
        properties of this image are not yet known.

    Throws:
    :   `NullPointerException` - if the property name is null.

    See Also:
    :   - [`ImageObserver`](ImageObserver.md "interface in java.awt.image")
        - [`Image.UndefinedProperty`](../Image.md#UndefinedProperty)
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns a property of the image by name.

    Specified by:
    :   `getProperty` in interface `RenderedImage`

    Parameters:
    :   `name` - the property name

    Returns:
    :   an `Object` that is the property referred to by
        the specified `name`.

    Throws:
    :   `NullPointerException` - if the property name is null.

    See Also:
    :   - [`Image.UndefinedProperty`](../Image.md#UndefinedProperty)
  + ### getGraphics

    public [Graphics](../Graphics.md "class in java.awt") getGraphics()

    This method returns a [`Graphics2D`](../Graphics2D.md "class in java.awt"), but is here
    for backwards compatibility. [`createGraphics`](#createGraphics()) is more
    convenient, since it is declared to return a
    `Graphics2D`.

    Specified by:
    :   `getGraphics` in class `Image`

    Returns:
    :   a `Graphics2D`, which can be used to draw into
        this image.

    See Also:
    :   - [`Graphics`](../Graphics.md "class in java.awt")
        - [`Component.createImage(int, int)`](../Component.md#createImage(int,int))
  + ### createGraphics

    public [Graphics2D](../Graphics2D.md "class in java.awt") createGraphics()

    Creates a `Graphics2D`, which can be used to draw into
    this `BufferedImage`.

    Returns:
    :   a `Graphics2D`, used for drawing into this
        image.
  + ### getSubimage

    public [BufferedImage](BufferedImage.md "class in java.awt.image") getSubimage(int x,
    int y,
    int w,
    int h)

    Returns a subimage defined by a specified rectangular region.
    The returned `BufferedImage` shares the same
    data array as the original image.

    Parameters:
    :   `x` - the X coordinate of the upper-left corner of the
        specified rectangular region
    :   `y` - the Y coordinate of the upper-left corner of the
        specified rectangular region
    :   `w` - the width of the specified rectangular region
    :   `h` - the height of the specified rectangular region

    Returns:
    :   a `BufferedImage` that is the subimage of this
        `BufferedImage`.

    Throws:
    :   `RasterFormatException` - if the specified
        area is not contained within this `BufferedImage`.
  + ### isAlphaPremultiplied

    public boolean isAlphaPremultiplied()

    Returns whether or not the alpha has been premultiplied. It
    returns `false` if there is no alpha.

    Returns:
    :   `true` if the alpha has been premultiplied;
        `false` otherwise.
  + ### coerceData

    public void coerceData(boolean isAlphaPremultiplied)

    Forces the data to match the state specified in the
    `isAlphaPremultiplied` variable. It may multiply or
    divide the color raster data by alpha, or do nothing if the data is
    in the correct state.

    Parameters:
    :   `isAlphaPremultiplied` - `true` if the alpha has been
        premultiplied; `false` otherwise.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a `String` representation of this
    `BufferedImage` object and its values.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representing this
        `BufferedImage`.
  + ### getSources

    public [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[RenderedImage](RenderedImage.md "interface in java.awt.image")> getSources()

    Returns a [`Vector`](../../../../java.base/java/util/Vector.md "class in java.util") of [`RenderedImage`](RenderedImage.md "interface in java.awt.image") objects that are
    the immediate sources, not the sources of these immediate sources,
    of image data for this `BufferedImage`. This
    method returns `null` if the `BufferedImage`
    has no information about its immediate sources. It returns an
    empty `Vector` if the `BufferedImage` has no
    immediate sources.

    Specified by:
    :   `getSources` in interface `RenderedImage`

    Returns:
    :   a `Vector` containing immediate sources of
        this `BufferedImage` object's image date, or
        `null` if this `BufferedImage` has
        no information about its immediate sources, or an empty
        `Vector` if this `BufferedImage`
        has no immediate sources.
  + ### getPropertyNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getPropertyNames()

    Returns an array of names recognized by
    [`getProperty(String)`](#getProperty(java.lang.String))
    or `null`, if no property names are recognized.

    Specified by:
    :   `getPropertyNames` in interface `RenderedImage`

    Returns:
    :   a `String` array containing all of the property
        names that `getProperty(String)` recognizes;
        or `null` if no property names are recognized.
  + ### getMinX

    public int getMinX()

    Returns the minimum x coordinate of this
    `BufferedImage`. This is always zero.

    Specified by:
    :   `getMinX` in interface `RenderedImage`

    Returns:
    :   the minimum x coordinate of this
        `BufferedImage`.
  + ### getMinY

    public int getMinY()

    Returns the minimum y coordinate of this
    `BufferedImage`. This is always zero.

    Specified by:
    :   `getMinY` in interface `RenderedImage`

    Returns:
    :   the minimum y coordinate of this
        `BufferedImage`.
  + ### getSampleModel

    public [SampleModel](SampleModel.md "class in java.awt.image") getSampleModel()

    Returns the `SampleModel` associated with this
    `BufferedImage`.

    Specified by:
    :   `getSampleModel` in interface `RenderedImage`

    Returns:
    :   the `SampleModel` of this
        `BufferedImage`.
  + ### getNumXTiles

    public int getNumXTiles()

    Returns the number of tiles in the x direction.
    This is always one.

    Specified by:
    :   `getNumXTiles` in interface `RenderedImage`

    Returns:
    :   the number of tiles in the x direction.
  + ### getNumYTiles

    public int getNumYTiles()

    Returns the number of tiles in the y direction.
    This is always one.

    Specified by:
    :   `getNumYTiles` in interface `RenderedImage`

    Returns:
    :   the number of tiles in the y direction.
  + ### getMinTileX

    public int getMinTileX()

    Returns the minimum tile index in the x direction.
    This is always zero.

    Specified by:
    :   `getMinTileX` in interface `RenderedImage`

    Returns:
    :   the minimum tile index in the x direction.
  + ### getMinTileY

    public int getMinTileY()

    Returns the minimum tile index in the y direction.
    This is always zero.

    Specified by:
    :   `getMinTileY` in interface `RenderedImage`

    Returns:
    :   the minimum tile index in the y direction.
  + ### getTileWidth

    public int getTileWidth()

    Returns the tile width in pixels.

    Specified by:
    :   `getTileWidth` in interface `RenderedImage`

    Returns:
    :   the tile width in pixels.
  + ### getTileHeight

    public int getTileHeight()

    Returns the tile height in pixels.

    Specified by:
    :   `getTileHeight` in interface `RenderedImage`

    Returns:
    :   the tile height in pixels.
  + ### getTileGridXOffset

    public int getTileGridXOffset()

    Returns the x offset of the tile grid relative to the origin,
    For example, the x coordinate of the location of tile
    (0, 0). This is always zero.

    Specified by:
    :   `getTileGridXOffset` in interface `RenderedImage`

    Returns:
    :   the x offset of the tile grid.
  + ### getTileGridYOffset

    public int getTileGridYOffset()

    Returns the y offset of the tile grid relative to the origin,
    For example, the y coordinate of the location of tile
    (0, 0). This is always zero.

    Specified by:
    :   `getTileGridYOffset` in interface `RenderedImage`

    Returns:
    :   the y offset of the tile grid.
  + ### getTile

    public [Raster](Raster.md "class in java.awt.image") getTile(int tileX,
    int tileY)

    Returns tile (`tileX`, `tileY`). Note
    that `tileX` and `tileY` are indices
    into the tile array, not pixel locations. The `Raster`
    that is returned is live, which means that it is updated if the
    image is changed.

    Specified by:
    :   `getTile` in interface `RenderedImage`

    Parameters:
    :   `tileX` - the x index of the requested tile in the tile array
    :   `tileY` - the y index of the requested tile in the tile array

    Returns:
    :   a `Raster` that is the tile defined by the
        arguments `tileX` and `tileY`.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if both
        `tileX` and `tileY` are not
        equal to 0
  + ### getData

    public [Raster](Raster.md "class in java.awt.image") getData()

    Returns the image as one large tile. The `Raster`
    returned is a copy of the image data is not updated if the
    image is changed.

    Specified by:
    :   `getData` in interface `RenderedImage`

    Returns:
    :   a `Raster` that is a copy of the image data.

    See Also:
    :   - [`setData(Raster)`](#setData(java.awt.image.Raster))
  + ### getData

    public [Raster](Raster.md "class in java.awt.image") getData([Rectangle](../Rectangle.md "class in java.awt") rect)

    Computes and returns an arbitrary region of the
    `BufferedImage`. The `Raster` returned is a
    copy of the image data and is not updated if the image is
    changed.

    Specified by:
    :   `getData` in interface `RenderedImage`

    Parameters:
    :   `rect` - the region of the `BufferedImage` to be
        returned.

    Returns:
    :   a `Raster` that is a copy of the image data of
        the specified region of the `BufferedImage`

    See Also:
    :   - [`setData(Raster)`](#setData(java.awt.image.Raster))
  + ### copyData

    public [WritableRaster](WritableRaster.md "class in java.awt.image") copyData([WritableRaster](WritableRaster.md "class in java.awt.image") outRaster)

    Computes an arbitrary rectangular region of the
    `BufferedImage` and copies it into a specified
    `WritableRaster`. The region to be computed is
    determined from the bounds of the specified
    `WritableRaster`. The specified
    `WritableRaster` must have a
    `SampleModel` that is compatible with this image. If
    `outRaster` is `null`,
    an appropriate `WritableRaster` is created.

    Specified by:
    :   `copyData` in interface `RenderedImage`

    Parameters:
    :   `outRaster` - a `WritableRaster` to hold the returned
        part of the image, or `null`

    Returns:
    :   a reference to the supplied or created
        `WritableRaster`.
  + ### setData

    public void setData([Raster](Raster.md "class in java.awt.image") r)

    Sets a rectangular region of the image to the contents of the
    specified `Raster r`, which is
    assumed to be in the same coordinate space as the
    `BufferedImage`. The operation is clipped to the bounds
    of the `BufferedImage`.

    Specified by:
    :   `setData` in interface `WritableRenderedImage`

    Parameters:
    :   `r` - the specified `Raster`

    See Also:
    :   - [`getData()`](#getData())
        - [`getData(Rectangle)`](#getData(java.awt.Rectangle))
  + ### addTileObserver

    public void addTileObserver([TileObserver](TileObserver.md "interface in java.awt.image") to)

    Adds a tile observer. If the observer is already present,
    it receives multiple notifications.

    This method ignores its parameters and does nothing,
    since `BufferedImage` is always checked out
    for writing and cannot be made read-only,
    so there can never be events to dispatch.

    Specified by:
    :   `addTileObserver` in interface `WritableRenderedImage`

    Parameters:
    :   `to` - the specified [`TileObserver`](TileObserver.md "interface in java.awt.image")
  + ### removeTileObserver

    public void removeTileObserver([TileObserver](TileObserver.md "interface in java.awt.image") to)

    Removes a tile observer. If the observer was not registered,
    nothing happens. If the observer was registered for multiple
    notifications, it is now registered for one fewer notification.

    This method ignores the given observer,
    since [`addTileObserver(TileObserver)`](#addTileObserver(java.awt.image.TileObserver)) adds none.

    Specified by:
    :   `removeTileObserver` in interface `WritableRenderedImage`

    Parameters:
    :   `to` - the specified `TileObserver`.
  + ### isTileWritable

    public boolean isTileWritable(int tileX,
    int tileY)

    Returns whether or not a tile is currently checked out for writing.
    The only tile in a `BufferedImage` is at (0,0) and it is always
    writable, so calling this method with (0,0) will always return
    `true`, and any other coordinate will cause an exception
    to be thrown.

    Specified by:
    :   `isTileWritable` in interface `WritableRenderedImage`

    Parameters:
    :   `tileX` - the x index of the tile.
    :   `tileY` - the y index of the tile.

    Returns:
    :   `true` if the tile specified by the specified
        indices is checked out for writing; `false`
        otherwise.

    Throws:
    :   `IllegalArgumentException` - if either
        `tileX` or `tileY` is not equal
        to 0
  + ### getWritableTileIndices

    public [Point](../Point.md "class in java.awt")[] getWritableTileIndices()

    Returns an array of [`Point`](../Point.md "class in java.awt") objects indicating which tiles
    are checked out for writing. Returns `null` if none are
    checked out.

    Since a `BufferedImage` consists of a single tile,
    and that tile is always checked out for writing,
    this method returns an array of one point.
    Further, the offset shall be consistent with
    [`getMinTileX()`](#getMinTileX()) and [`getMinTileY()`](#getMinTileY()),
    which are always (0,0) in `BufferedImage`.
    That will always be the coordinates of the single
    returned `Point`.

    Specified by:
    :   `getWritableTileIndices` in interface `WritableRenderedImage`

    Returns:
    :   a `Point` array that indicates the tiles that
        are checked out for writing, or `null` if no
        tiles are checked out for writing.
  + ### hasTileWriters

    public boolean hasTileWriters()

    Returns whether or not any tile is checked out for writing.
    Semantically equivalent to

    ```
     (getWritableTileIndices() != null).
    ```

    Specified by:
    :   `hasTileWriters` in interface `WritableRenderedImage`

    Returns:
    :   `true` if any tile is checked out for writing;
        `false` otherwise.
  + ### getWritableTile

    public [WritableRaster](WritableRaster.md "class in java.awt.image") getWritableTile(int tileX,
    int tileY)

    Checks out a tile for writing. All registered
    `TileObservers` are notified when a tile goes from having
    no writers to having one writer.

    This method unconditionally returns the
    [single tile](#getRaster()) without checking
    the passed values. No listeners are notified since the
    returned tile is always checked out for writing.

    Specified by:
    :   `getWritableTile` in interface `WritableRenderedImage`

    Parameters:
    :   `tileX` - the x index of the tile
    :   `tileY` - the y index of the tile

    Returns:
    :   a `WritableRaster` that is the tile, indicated by
        the specified indices, to be checked out for writing.
  + ### releaseWritableTile

    public void releaseWritableTile(int tileX,
    int tileY)

    Relinquishes permission to write to a tile. If the caller
    continues to write to the tile, the results are undefined.
    Calls to this method should only appear in matching pairs
    with calls to [`getWritableTile(int, int)`](#getWritableTile(int,int)). Any other leads
    to undefined results. All registered `TileObservers`
    are notified when a tile goes from having one writer to having no
    writers.

    This method immediately returns without checking the passed values.
    No listeners are notified since the [single tile](#getRaster())
    is always checked out for writing.

    Specified by:
    :   `releaseWritableTile` in interface `WritableRenderedImage`

    Parameters:
    :   `tileX` - the x index of the tile
    :   `tileY` - the y index of the tile
  + ### getTransparency

    public int getTransparency()

    Returns the transparency. Returns either OPAQUE, BITMASK,
    or TRANSLUCENT.

    Specified by:
    :   `getTransparency` in interface `Transparency`

    Returns:
    :   the transparency of this `BufferedImage`.

    Since:
    :   1.5

    See Also:
    :   - [`Transparency.OPAQUE`](../Transparency.md#OPAQUE)
        - [`Transparency.BITMASK`](../Transparency.md#BITMASK)
        - [`Transparency.TRANSLUCENT`](../Transparency.md#TRANSLUCENT)