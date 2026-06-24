Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.jpeg](package-summary.md)

# Class JPEGImageWriteParam

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.IIOParam](../../IIOParam.md "class in javax.imageio")

[javax.imageio.ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

javax.imageio.plugins.jpeg.JPEGImageWriteParam

---

public class JPEGImageWriteParam
extends [ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

This class adds the ability to set JPEG quantization and Huffman
tables when using the built-in JPEG writer plug-in, and to request that
optimized Huffman tables be computed for an image. An instance of
this class will be returned from the
`getDefaultImageWriteParam` methods of the built-in JPEG
`ImageWriter`.

The principal purpose of these additions is to allow the
specification of tables to use in encoding abbreviated streams.
The built-in JPEG writer will also accept an ordinary
`ImageWriteParam`, in which case the writer will
construct the necessary tables internally.

In either case, the quality setting in an `ImageWriteParam`
has the same meaning as for the underlying library: 1.00 means a
quantization table of all 1's, 0.75 means the "standard", visually
lossless quantization table, and 0.00 means aquantization table of
all 255's.

While tables for abbreviated streams are often specified by
first writing an abbreviated stream containing only the tables, in
some applications the tables are fixed ahead of time. This class
allows the tables to be specified directly from client code.

Normally, the tables are specified in the
`IIOMetadata` objects passed in to the writer, and any
tables included in these objects are written to the stream.
If no tables are specified in the metadata, then an abbreviated
stream is written. If no tables are included in the metadata and
no tables are specified in a `JPEGImageWriteParam`, then
an abbreviated stream is encoded using the "standard" visually
lossless tables. This class is necessary for specifying tables
when an abbreviated stream must be written without writing any tables
to a stream first. In order to use this class, the metadata object
passed into the writer must contain no tables, and no stream metadata
must be provided. See [`JPEGQTable`](JPEGQTable.md "class in javax.imageio.plugins.jpeg") and
[`JPEGHuffmanTable`](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg") for more
information on the default tables.

The default `JPEGImageWriteParam` returned by the
`getDefaultWriteParam` method of the writer contains no
tables. Default tables are included in the default
`IIOMetadata` objects returned by the writer.

If the metadata does contain tables, the tables given in a
`JPEGImageWriteParam` are ignored. Furthermore, once a
set of tables has been written, only tables in the metadata can
override them for subsequent writes, whether to the same stream or
a different one. In order to specify new tables using this class,
the [`reset`](../../ImageWriter.md#reset())
method of the writer must be called.

For more information about the operation of the built-in JPEG plug-ins,
see the [JPEG
metadata format specification and usage notes](../../metadata/doc-files/jpeg_metadata.md).

* ## Field Summary

  ### Fields inherited from class javax.imageio.[ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

  `canOffsetTiles, canWriteCompressed, canWriteProgressive, canWriteTiles, compressionMode, compressionQuality, compressionType, compressionTypes, locale, MODE_COPY_FROM_METADATA, MODE_DEFAULT, MODE_DISABLED, MODE_EXPLICIT, preferredTileSizes, progressiveMode, tileGridXOffset, tileGridYOffset, tileHeight, tileWidth, tilingMode, tilingSet`

  ### Fields inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `controller, defaultController, destinationOffset, destinationType, sourceBands, sourceRegion, sourceXSubsampling, sourceYSubsampling, subsamplingXOffset, subsamplingYOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JPEGImageWriteParam(Locale locale)`

  Constructs a `JPEGImageWriteParam`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `areTablesSet()`

  Returns `true` if tables are currently set.

  `JPEGHuffmanTable[]`

  `getACHuffmanTables()`

  Returns a copy of the array of AC Huffman tables set on the
  most recent call to `setEncodeTables`, or
  `null` if tables are not currently set.

  `String[]`

  `getCompressionQualityDescriptions()`

  Returns an array of `String`s that may be used along
  with `getCompressionQualityValues` as part of a user
  interface for setting or displaying the compression quality
  level.

  `float[]`

  `getCompressionQualityValues()`

  Returns an array of `float`s that may be used along
  with `getCompressionQualityDescriptions` as part of a user
  interface for setting or displaying the compression quality
  level.

  `JPEGHuffmanTable[]`

  `getDCHuffmanTables()`

  Returns a copy of the array of DC Huffman tables set on the
  most recent call to `setEncodeTables`, or
  `null` if tables are not currently set.

  `boolean`

  `getOptimizeHuffmanTables()`

  Returns the value passed into the most recent call
  to `setOptimizeHuffmanTables`, or
  `false` if `setOptimizeHuffmanTables`
  has never been called.

  `JPEGQTable[]`

  `getQTables()`

  Returns a copy of the array of quantization tables set on the
  most recent call to `setEncodeTables`, or
  `null` if tables are not currently set.

  `boolean`

  `isCompressionLossless()`

  Returns `false` since the JPEG plug-in only supports
  lossy compression.

  `void`

  `setEncodeTables(JPEGQTable[] qTables,
  JPEGHuffmanTable[] DCHuffmanTables,
  JPEGHuffmanTable[] ACHuffmanTables)`

  Sets the quantization and Huffman tables to use in encoding
  abbreviated streams.

  `void`

  `setOptimizeHuffmanTables(boolean optimize)`

  Tells the writer to generate optimized Huffman tables
  for the image as part of the writing process.

  `void`

  `unsetCompression()`

  Removes any previous compression quality setting.

  `void`

  `unsetEncodeTables()`

  Removes any quantization and Huffman tables that are currently
  set.

  ### Methods inherited from class javax.imageio.[ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

  `canOffsetTiles, canWriteCompressed, canWriteProgressive, canWriteTiles, getBitRate, getCompressionMode, getCompressionQuality, getCompressionType, getCompressionTypes, getLocale, getLocalizedCompressionTypeName, getPreferredTileSizes, getProgressiveMode, getTileGridXOffset, getTileGridYOffset, getTileHeight, getTileWidth, getTilingMode, setCompressionMode, setCompressionQuality, setCompressionType, setProgressiveMode, setTiling, setTilingMode, unsetTiling`

  ### Methods inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `activateController, getController, getDefaultController, getDestinationOffset, getDestinationType, getSourceBands, getSourceRegion, getSourceXSubsampling, getSourceYSubsampling, getSubsamplingXOffset, getSubsamplingYOffset, hasController, setController, setDestinationOffset, setDestinationType, setSourceBands, setSourceRegion, setSourceSubsampling`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### JPEGImageWriteParam

    public JPEGImageWriteParam([Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a `JPEGImageWriteParam`. Tiling is not
    supported. Progressive encoding is supported. The default
    progressive mode is MODE\_DISABLED. A single form of compression,
    named "JPEG", is supported. The default compression quality is
    0.75.

    Parameters:
    :   `locale` - a `Locale` to be used by the
        superclass to localize compression type names and quality
        descriptions, or `null`.
* ## Method Details

  + ### unsetCompression

    public void unsetCompression()

    Removes any previous compression quality setting.

    The default implementation resets the compression quality
    to `0.75F`.

    Overrides:
    :   `unsetCompression` in class `ImageWriteParam`

    Throws:
    :   `IllegalStateException` - if the compression mode is not
        `MODE_EXPLICIT`.

    See Also:
    :   - [`ImageWriteParam.setCompressionType(java.lang.String)`](../../ImageWriteParam.md#setCompressionType(java.lang.String))
        - [`ImageWriteParam.setCompressionQuality(float)`](../../ImageWriteParam.md#setCompressionQuality(float))
  + ### isCompressionLossless

    public boolean isCompressionLossless()

    Returns `false` since the JPEG plug-in only supports
    lossy compression.

    Overrides:
    :   `isCompressionLossless` in class `ImageWriteParam`

    Returns:
    :   `false`.

    Throws:
    :   `IllegalStateException` - if the compression mode is not
        `MODE_EXPLICIT`.
  + ### getCompressionQualityDescriptions

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getCompressionQualityDescriptions()

    Description copied from class: `ImageWriteParam`

    Returns an array of `String`s that may be used along
    with `getCompressionQualityValues` as part of a user
    interface for setting or displaying the compression quality
    level. The `String` with index `i`
    provides a description of the range of quality levels between
    `getCompressionQualityValues[i]` and
    `getCompressionQualityValues[i + 1]`. Note that the
    length of the array returned from
    `getCompressionQualityValues` will always be one
    greater than that returned from
    `getCompressionQualityDescriptions`.

    As an example, the strings "Good", "Better", and "Best"
    could be associated with the ranges `[0, .33)`,
    `[.33, .66)`, and `[.66, 1.0]`. In this
    case, `getCompressionQualityDescriptions` would
    return `{ "Good", "Better", "Best" }` and
    `getCompressionQualityValues` would return
    `{ 0.0F, .33F, .66F, 1.0F }`.

    If no descriptions are available, `null` is
    returned. If `null` is returned from
    `getCompressionQualityValues`, this method must also
    return `null`.

    The descriptions should be localized for the
    `Locale` returned by `getLocale`, if it
    is non-`null`.

    If there are multiple compression types but none has been set,
    an `IllegalStateException` is thrown.

    The default implementation checks that compression is
    supported and that the compression mode is
    `MODE_EXPLICIT`. If so, if
    `getCompressionTypes()` is `null` or
    `getCompressionType()` is non-`null`, it
    returns `null`.

    Overrides:
    :   `getCompressionQualityDescriptions` in class `ImageWriteParam`

    Returns:
    :   an array of `String`s containing localized
        descriptions of the compression quality levels.

    See Also:
    :   - [`ImageWriteParam.getCompressionQualityValues()`](../../ImageWriteParam.md#getCompressionQualityValues())
  + ### getCompressionQualityValues

    public float[] getCompressionQualityValues()

    Description copied from class: `ImageWriteParam`

    Returns an array of `float`s that may be used along
    with `getCompressionQualityDescriptions` as part of a user
    interface for setting or displaying the compression quality
    level. See [`getCompressionQualityDescriptions`](../../ImageWriteParam.md#getCompressionQualityDescriptions()) for more information.

    If no descriptions are available, `null` is
    returned. If `null` is returned from
    `getCompressionQualityDescriptions`, this method
    must also return `null`.

    If there are multiple compression types but none has been set,
    an `IllegalStateException` is thrown.

    The default implementation checks that compression is
    supported and that the compression mode is
    `MODE_EXPLICIT`. If so, if
    `getCompressionTypes()` is `null` or
    `getCompressionType()` is non-`null`, it
    returns `null`.

    Overrides:
    :   `getCompressionQualityValues` in class `ImageWriteParam`

    Returns:
    :   an array of `float`s indicating the
        boundaries between the compression quality levels as described
        by the `String`s from
        `getCompressionQualityDescriptions`.

    See Also:
    :   - [`ImageWriteParam.getCompressionQualityDescriptions()`](../../ImageWriteParam.md#getCompressionQualityDescriptions())
  + ### areTablesSet

    public boolean areTablesSet()

    Returns `true` if tables are currently set.

    Returns:
    :   `true` if tables are present.
  + ### setEncodeTables

    public void setEncodeTables([JPEGQTable](JPEGQTable.md "class in javax.imageio.plugins.jpeg")[] qTables,
    [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] DCHuffmanTables,
    [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] ACHuffmanTables)

    Sets the quantization and Huffman tables to use in encoding
    abbreviated streams. There may be a maximum of 4 tables of
    each type. These tables are ignored if tables are specified in
    the metadata. All arguments must be non-`null`.
    The two arrays of Huffman tables must have the same number of
    elements. The table specifiers in the frame and scan headers
    in the metadata are assumed to be equivalent to indices into
    these arrays. The argument arrays are copied by this method.

    Parameters:
    :   `qTables` - An array of quantization table objects.
    :   `DCHuffmanTables` - An array of Huffman table objects.
    :   `ACHuffmanTables` - An array of Huffman table objects.

    Throws:
    :   `IllegalArgumentException` - if any of the arguments
        is `null` or has more than 4 elements, or if the
        numbers of DC and AC tables differ.

    See Also:
    :   - [`unsetEncodeTables()`](#unsetEncodeTables())
  + ### unsetEncodeTables

    public void unsetEncodeTables()

    Removes any quantization and Huffman tables that are currently
    set.

    See Also:
    :   - [`setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))
  + ### getQTables

    public [JPEGQTable](JPEGQTable.md "class in javax.imageio.plugins.jpeg")[] getQTables()

    Returns a copy of the array of quantization tables set on the
    most recent call to `setEncodeTables`, or
    `null` if tables are not currently set.

    Returns:
    :   an array of `JPEGQTable` objects, or
        `null`.

    See Also:
    :   - [`setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))
  + ### getDCHuffmanTables

    public [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] getDCHuffmanTables()

    Returns a copy of the array of DC Huffman tables set on the
    most recent call to `setEncodeTables`, or
    `null` if tables are not currently set.

    Returns:
    :   an array of `JPEGHuffmanTable` objects, or
        `null`.

    See Also:
    :   - [`setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))
  + ### getACHuffmanTables

    public [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] getACHuffmanTables()

    Returns a copy of the array of AC Huffman tables set on the
    most recent call to `setEncodeTables`, or
    `null` if tables are not currently set.

    Returns:
    :   an array of `JPEGHuffmanTable` objects, or
        `null`.

    See Also:
    :   - [`setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setEncodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))
  + ### setOptimizeHuffmanTables

    public void setOptimizeHuffmanTables(boolean optimize)

    Tells the writer to generate optimized Huffman tables
    for the image as part of the writing process. The
    default is `false`. If this flag is set
    to `true`, it overrides any tables specified
    in the metadata. Note that this means that any image
    written with this flag set to `true` will
    always contain Huffman tables.

    Parameters:
    :   `optimize` - A boolean indicating whether to generate
        optimized Huffman tables when writing.

    See Also:
    :   - [`getOptimizeHuffmanTables()`](#getOptimizeHuffmanTables())
  + ### getOptimizeHuffmanTables

    public boolean getOptimizeHuffmanTables()

    Returns the value passed into the most recent call
    to `setOptimizeHuffmanTables`, or
    `false` if `setOptimizeHuffmanTables`
    has never been called.

    Returns:
    :   `true` if the writer will generate optimized
        Huffman tables.

    See Also:
    :   - [`setOptimizeHuffmanTables(boolean)`](#setOptimizeHuffmanTables(boolean))