Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.jpeg](package-summary.md)

# Class JPEGImageReadParam

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.IIOParam](../../IIOParam.md "class in javax.imageio")

[javax.imageio.ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

javax.imageio.plugins.jpeg.JPEGImageReadParam

---

public class JPEGImageReadParam
extends [ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

This class adds the ability to set JPEG quantization and Huffman
tables when using the built-in JPEG reader plug-in. An instance of
this class will be returned from the
`getDefaultImageReadParam` methods of the built-in JPEG
`ImageReader`.

The sole purpose of these additions is to allow the
specification of tables for use in decoding abbreviated streams.
The built-in JPEG reader will also accept an ordinary
`ImageReadParam`, which is sufficient for decoding
non-abbreviated streams.

While tables for abbreviated streams are often obtained by
first reading another abbreviated stream containing only the
tables, in some applications the tables are fixed ahead of time.
This class allows the tables to be specified directly from client
code. If no tables are specified either in the stream or in a
`JPEGImageReadParam`, then the stream is presumed to use
the "standard" visually lossless tables. See [`JPEGQTable`](JPEGQTable.md "class in javax.imageio.plugins.jpeg")
and [`JPEGHuffmanTable`](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg") for more information
on the default tables.

The default `JPEGImageReadParam` returned by the
`getDefaultReadParam` method of the builtin JPEG reader
contains no tables. Default tables may be obtained from the table
classes [`JPEGQTable`](JPEGQTable.md "class in javax.imageio.plugins.jpeg") and
[`JPEGHuffmanTable`](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg").

If a stream does contain tables, the tables given in a
`JPEGImageReadParam` are ignored. Furthermore, if the
first image in a stream does contain tables and subsequent ones do
not, then the tables given in the first image are used for all the
abbreviated images. Once tables have been read from a stream, they
can be overridden only by tables subsequently read from the same
stream. In order to specify new tables, the [`setInput`](../../ImageReader.md#setInput(java.lang.Object,boolean,boolean)) method of
the reader must be called to change the stream.

Note that this class does not provide a means for obtaining the
tables found in a stream. These may be extracted from a stream by
consulting the IIOMetadata object returned by the reader.

For more information about the operation of the built-in JPEG plug-ins,
see the [JPEG
metadata format specification and usage notes](../../metadata/doc-files/jpeg_metadata.md).

* ## Field Summary

  ### Fields inherited from class javax.imageio.[ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

  `canSetSourceRenderSize, destination, destinationBands, minProgressivePass, numProgressivePasses, sourceRenderSize`

  ### Fields inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `controller, defaultController, destinationOffset, destinationType, sourceBands, sourceRegion, sourceXSubsampling, sourceYSubsampling, subsamplingXOffset, subsamplingYOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JPEGImageReadParam()`

  Constructs a `JPEGImageReadParam`.
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
  most recent call to `setDecodeTables`, or
  `null` if tables are not currently set.

  `JPEGHuffmanTable[]`

  `getDCHuffmanTables()`

  Returns a copy of the array of DC Huffman tables set on the
  most recent call to `setDecodeTables`, or
  `null` if tables are not currently set.

  `JPEGQTable[]`

  `getQTables()`

  Returns a copy of the array of quantization tables set on the
  most recent call to `setDecodeTables`, or
  `null` if tables are not currently set.

  `void`

  `setDecodeTables(JPEGQTable[] qTables,
  JPEGHuffmanTable[] DCHuffmanTables,
  JPEGHuffmanTable[] ACHuffmanTables)`

  Sets the quantization and Huffman tables to use in decoding
  abbreviated streams.

  `void`

  `unsetDecodeTables()`

  Removes any quantization and Huffman tables that are currently
  set.

  ### Methods inherited from class javax.imageio.[ImageReadParam](../../ImageReadParam.md "class in javax.imageio")

  `canSetSourceRenderSize, getDestination, getDestinationBands, getSourceMaxProgressivePass, getSourceMinProgressivePass, getSourceNumProgressivePasses, getSourceRenderSize, setDestination, setDestinationBands, setDestinationType, setSourceProgressivePasses, setSourceRenderSize`

  ### Methods inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `activateController, getController, getDefaultController, getDestinationOffset, getDestinationType, getSourceBands, getSourceRegion, getSourceXSubsampling, getSourceYSubsampling, getSubsamplingXOffset, getSubsamplingYOffset, hasController, setController, setDestinationOffset, setSourceBands, setSourceRegion, setSourceSubsampling`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### JPEGImageReadParam

    public JPEGImageReadParam()

    Constructs a `JPEGImageReadParam`.
* ## Method Details

  + ### areTablesSet

    public boolean areTablesSet()

    Returns `true` if tables are currently set.

    Returns:
    :   `true` if tables are present.
  + ### setDecodeTables

    public void setDecodeTables([JPEGQTable](JPEGQTable.md "class in javax.imageio.plugins.jpeg")[] qTables,
    [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] DCHuffmanTables,
    [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] ACHuffmanTables)

    Sets the quantization and Huffman tables to use in decoding
    abbreviated streams. There may be a maximum of 4 tables of
    each type. These tables are ignored once tables are
    encountered in the stream. All arguments must be
    non-`null`. The two arrays of Huffman tables must
    have the same number of elements. The table specifiers in the
    frame and scan headers in the stream are assumed to be
    equivalent to indices into these arrays. The argument arrays
    are copied by this method.

    Parameters:
    :   `qTables` - an array of quantization table objects.
    :   `DCHuffmanTables` - an array of Huffman table objects.
    :   `ACHuffmanTables` - an array of Huffman table objects.

    Throws:
    :   `IllegalArgumentException` - if any of the arguments
        is `null`, has more than 4 elements, or if the
        numbers of DC and AC tables differ.

    See Also:
    :   - [`unsetDecodeTables()`](#unsetDecodeTables())
  + ### unsetDecodeTables

    public void unsetDecodeTables()

    Removes any quantization and Huffman tables that are currently
    set.

    See Also:
    :   - [`setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))
  + ### getQTables

    public [JPEGQTable](JPEGQTable.md "class in javax.imageio.plugins.jpeg")[] getQTables()

    Returns a copy of the array of quantization tables set on the
    most recent call to `setDecodeTables`, or
    `null` if tables are not currently set.

    Returns:
    :   an array of `JPEGQTable` objects, or
        `null`.

    See Also:
    :   - [`setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))
  + ### getDCHuffmanTables

    public [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] getDCHuffmanTables()

    Returns a copy of the array of DC Huffman tables set on the
    most recent call to `setDecodeTables`, or
    `null` if tables are not currently set.

    Returns:
    :   an array of `JPEGHuffmanTable` objects, or
        `null`.

    See Also:
    :   - [`setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))
  + ### getACHuffmanTables

    public [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg")[] getACHuffmanTables()

    Returns a copy of the array of AC Huffman tables set on the
    most recent call to `setDecodeTables`, or
    `null` if tables are not currently set.

    Returns:
    :   an array of `JPEGHuffmanTable` objects, or
        `null`.

    See Also:
    :   - [`setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[], javax.imageio.plugins.jpeg.JPEGHuffmanTable[])`](#setDecodeTables(javax.imageio.plugins.jpeg.JPEGQTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D,javax.imageio.plugins.jpeg.JPEGHuffmanTable%5B%5D))