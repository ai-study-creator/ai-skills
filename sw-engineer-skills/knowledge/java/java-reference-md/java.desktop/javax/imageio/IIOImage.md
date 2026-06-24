Module [java.desktop](../../module-summary.md)

Package [javax.imageio](package-summary.md)

# Class IIOImage

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.IIOImage

---

public class IIOImage
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A simple container class to aggregate an image, a set of
thumbnail (preview) images, and an object representing metadata
associated with the image.

The image data may take the form of either a
`RenderedImage`, or a `Raster`. Reader
methods that return an `IIOImage` will always return a
`BufferedImage` using the `RenderedImage`
reference. Writer methods that accept an `IIOImage`
will always accept a `RenderedImage`, and may optionally
accept a `Raster`.

Exactly one of `getRenderedImage` and
`getRaster` will return a non-`null` value.
Subclasses are responsible for ensuring this behavior.

See Also:
:   * [`ImageReader.readAll(int, ImageReadParam)`](ImageReader.md#readAll(int,javax.imageio.ImageReadParam))
    * [`ImageReader.readAll(java.util.Iterator)`](ImageReader.md#readAll(java.util.Iterator))
    * [`ImageWriter.write(javax.imageio.metadata.IIOMetadata, IIOImage, ImageWriteParam)`](ImageWriter.md#write(javax.imageio.metadata.IIOMetadata,javax.imageio.IIOImage,javax.imageio.ImageWriteParam))
    * [`ImageWriter.write(IIOImage)`](ImageWriter.md#write(javax.imageio.IIOImage))
    * [`ImageWriter.writeToSequence(IIOImage, ImageWriteParam)`](ImageWriter.md#writeToSequence(javax.imageio.IIOImage,javax.imageio.ImageWriteParam))
    * [`ImageWriter.writeInsert(int, IIOImage, ImageWriteParam)`](ImageWriter.md#writeInsert(int,javax.imageio.IIOImage,javax.imageio.ImageWriteParam))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected RenderedImage`

  `image`

  The `RenderedImage` being referenced.

  `protected IIOMetadata`

  `metadata`

  An `IIOMetadata` object containing metadata
  associated with the image.

  `protected Raster`

  `raster`

  The `Raster` being referenced.

  `protected List<? extends BufferedImage>`

  `thumbnails`

  A `List` of `BufferedImage` thumbnails,
  or `null`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IIOImage(Raster raster,
  List<? extends BufferedImage> thumbnails,
  IIOMetadata metadata)`

  Constructs an `IIOImage` containing a
  `Raster`, and thumbnails and metadata
  associated with it.

  `IIOImage(RenderedImage image,
  List<? extends BufferedImage> thumbnails,
  IIOMetadata metadata)`

  Constructs an `IIOImage` containing a
  `RenderedImage`, and thumbnails and metadata
  associated with it.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `IIOMetadata`

  `getMetadata()`

  Returns a reference to the current `IIOMetadata`
  object, or `null` is none is set.

  `int`

  `getNumThumbnails()`

  Returns the number of thumbnails stored in this
  `IIOImage`.

  `Raster`

  `getRaster()`

  Returns the currently set `Raster`, or
  `null` if only a `RenderedImage` is
  available.

  `RenderedImage`

  `getRenderedImage()`

  Returns the currently set `RenderedImage`, or
  `null` if only a `Raster` is available.

  `BufferedImage`

  `getThumbnail(int index)`

  Returns a thumbnail associated with the main image.

  `List<? extends BufferedImage>`

  `getThumbnails()`

  Returns the current `List` of thumbnail
  `BufferedImage`s, or `null` if none is
  set.

  `boolean`

  `hasRaster()`

  Returns `true` if this `IIOImage` stores
  a `Raster` rather than a `RenderedImage`.

  `void`

  `setMetadata(IIOMetadata metadata)`

  Sets the `IIOMetadata` to a new object, or
  `null`.

  `void`

  `setRaster(Raster raster)`

  Sets the current `Raster`.

  `void`

  `setRenderedImage(RenderedImage image)`

  Sets the current `RenderedImage`.

  `void`

  `setThumbnails(List<? extends BufferedImage> thumbnails)`

  Sets the list of thumbnails to a new `List` of
  `BufferedImage`s, or to `null`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### image

    protected [RenderedImage](../../java/awt/image/RenderedImage.md "interface in java.awt.image") image

    The `RenderedImage` being referenced.
  + ### raster

    protected [Raster](../../java/awt/image/Raster.md "class in java.awt.image") raster

    The `Raster` being referenced.
  + ### thumbnails

    protected [List](../../../java.base/java/util/List.md "interface in java.util")<? extends [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image")> thumbnails

    A `List` of `BufferedImage` thumbnails,
    or `null`. Non-`BufferedImage` objects
    must not be stored in this `List`.
  + ### metadata

    protected [IIOMetadata](metadata/IIOMetadata.md "class in javax.imageio.metadata") metadata

    An `IIOMetadata` object containing metadata
    associated with the image.
* ## Constructor Details

  + ### IIOImage

    public IIOImage([RenderedImage](../../java/awt/image/RenderedImage.md "interface in java.awt.image") image,
    [List](../../../java.base/java/util/List.md "interface in java.util")<? extends [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image")> thumbnails,
    [IIOMetadata](metadata/IIOMetadata.md "class in javax.imageio.metadata") metadata)

    Constructs an `IIOImage` containing a
    `RenderedImage`, and thumbnails and metadata
    associated with it.

    All parameters are stored by reference.

    The `thumbnails` argument must either be
    `null` or contain only `BufferedImage`
    objects.

    Parameters:
    :   `image` - a `RenderedImage`.
    :   `thumbnails` - a `List` of `BufferedImage`s,
        or `null`.
    :   `metadata` - an `IIOMetadata` object, or
        `null`.

    Throws:
    :   `IllegalArgumentException` - if `image` is
        `null`.
  + ### IIOImage

    public IIOImage([Raster](../../java/awt/image/Raster.md "class in java.awt.image") raster,
    [List](../../../java.base/java/util/List.md "interface in java.util")<? extends [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image")> thumbnails,
    [IIOMetadata](metadata/IIOMetadata.md "class in javax.imageio.metadata") metadata)

    Constructs an `IIOImage` containing a
    `Raster`, and thumbnails and metadata
    associated with it.

    All parameters are stored by reference.

    Parameters:
    :   `raster` - a `Raster`.
    :   `thumbnails` - a `List` of `BufferedImage`s,
        or `null`.
    :   `metadata` - an `IIOMetadata` object, or
        `null`.

    Throws:
    :   `IllegalArgumentException` - if `raster` is
        `null`.
* ## Method Details

  + ### getRenderedImage

    public [RenderedImage](../../java/awt/image/RenderedImage.md "interface in java.awt.image") getRenderedImage()

    Returns the currently set `RenderedImage`, or
    `null` if only a `Raster` is available.

    Returns:
    :   a `RenderedImage`, or `null`.

    See Also:
    :   - [`setRenderedImage(java.awt.image.RenderedImage)`](#setRenderedImage(java.awt.image.RenderedImage))
  + ### setRenderedImage

    public void setRenderedImage([RenderedImage](../../java/awt/image/RenderedImage.md "interface in java.awt.image") image)

    Sets the current `RenderedImage`. The value is
    stored by reference. Any existing `Raster` is
    discarded.

    Parameters:
    :   `image` - a `RenderedImage`.

    Throws:
    :   `IllegalArgumentException` - if `image` is
        `null`.

    See Also:
    :   - [`getRenderedImage()`](#getRenderedImage())
  + ### hasRaster

    public boolean hasRaster()

    Returns `true` if this `IIOImage` stores
    a `Raster` rather than a `RenderedImage`.

    Returns:
    :   `true` if a `Raster` is
        available.
  + ### getRaster

    public [Raster](../../java/awt/image/Raster.md "class in java.awt.image") getRaster()

    Returns the currently set `Raster`, or
    `null` if only a `RenderedImage` is
    available.

    Returns:
    :   a `Raster`, or `null`.

    See Also:
    :   - [`setRaster(java.awt.image.Raster)`](#setRaster(java.awt.image.Raster))
  + ### setRaster

    public void setRaster([Raster](../../java/awt/image/Raster.md "class in java.awt.image") raster)

    Sets the current `Raster`. The value is
    stored by reference. Any existing `RenderedImage` is
    discarded.

    Parameters:
    :   `raster` - a `Raster`.

    Throws:
    :   `IllegalArgumentException` - if `raster` is
        `null`.

    See Also:
    :   - [`getRaster()`](#getRaster())
  + ### getNumThumbnails

    public int getNumThumbnails()

    Returns the number of thumbnails stored in this
    `IIOImage`.

    Returns:
    :   the number of thumbnails, as an `int`.
  + ### getThumbnail

    public [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image") getThumbnail(int index)

    Returns a thumbnail associated with the main image.

    Parameters:
    :   `index` - the index of the desired thumbnail image.

    Returns:
    :   a thumbnail image, as a `BufferedImage`.

    Throws:
    :   `IndexOutOfBoundsException` - if the supplied index is
        negative or larger than the largest valid index.
    :   `ClassCastException` - if a
        non-`BufferedImage` object is encountered in the
        list of thumbnails at the given index.

    See Also:
    :   - [`getThumbnails()`](#getThumbnails())
        - [`setThumbnails(java.util.List<? extends java.awt.image.BufferedImage>)`](#setThumbnails(java.util.List))
  + ### getThumbnails

    public [List](../../../java.base/java/util/List.md "interface in java.util")<? extends [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image")> getThumbnails()

    Returns the current `List` of thumbnail
    `BufferedImage`s, or `null` if none is
    set. A live reference is returned.

    Returns:
    :   the current `List` of
        `BufferedImage` thumbnails, or `null`.

    See Also:
    :   - [`getThumbnail(int)`](#getThumbnail(int))
        - [`setThumbnails(java.util.List<? extends java.awt.image.BufferedImage>)`](#setThumbnails(java.util.List))
  + ### setThumbnails

    public void setThumbnails([List](../../../java.base/java/util/List.md "interface in java.util")<? extends [BufferedImage](../../java/awt/image/BufferedImage.md "class in java.awt.image")> thumbnails)

    Sets the list of thumbnails to a new `List` of
    `BufferedImage`s, or to `null`. The
    reference to the previous `List` is discarded.

    The `thumbnails` argument must either be
    `null` or contain only `BufferedImage`
    objects.

    Parameters:
    :   `thumbnails` - a `List` of
        `BufferedImage` thumbnails, or `null`.

    See Also:
    :   - [`getThumbnail(int)`](#getThumbnail(int))
        - [`getThumbnails()`](#getThumbnails())
  + ### getMetadata

    public [IIOMetadata](metadata/IIOMetadata.md "class in javax.imageio.metadata") getMetadata()

    Returns a reference to the current `IIOMetadata`
    object, or `null` is none is set.

    Returns:
    :   an `IIOMetadata` object, or `null`.

    See Also:
    :   - [`setMetadata(javax.imageio.metadata.IIOMetadata)`](#setMetadata(javax.imageio.metadata.IIOMetadata))
  + ### setMetadata

    public void setMetadata([IIOMetadata](metadata/IIOMetadata.md "class in javax.imageio.metadata") metadata)

    Sets the `IIOMetadata` to a new object, or
    `null`.

    Parameters:
    :   `metadata` - an `IIOMetadata` object, or
        `null`.

    See Also:
    :   - [`getMetadata()`](#getMetadata())