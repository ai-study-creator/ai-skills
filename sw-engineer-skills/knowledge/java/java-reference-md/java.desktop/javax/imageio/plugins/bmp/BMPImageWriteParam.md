Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.bmp](package-summary.md)

# Class BMPImageWriteParam

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.IIOParam](../../IIOParam.md "class in javax.imageio")

[javax.imageio.ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

javax.imageio.plugins.bmp.BMPImageWriteParam

---

public class BMPImageWriteParam
extends [ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

A subclass of `ImageWriteParam` for encoding images in
the BMP format.

This class allows for the specification of various parameters
while writing a BMP format image file. By default, the data layout
is bottom-up, such that the pixels are stored in bottom-up order,
the first scanline being stored last.

The particular compression scheme to be used can be specified by using
the `setCompressionType()` method with the appropriate type
string. The compression scheme specified will be honored if and only if it
is compatible with the type of image being written. If the specified
compression scheme is not compatible with the type of image being written
then the `IOException` will be thrown by the BMP image writer.
If the compression type is not set explicitly then `getCompressionType()`
will return `null`. In this case the BMP image writer will select
a compression type that supports encoding of the given image without loss
of the color resolution.

The compression type strings and the image type(s) each supports are
listed in the following
table:

Compression Types

| Type String Description Image Types | | |
| --- | --- | --- |
| BI\_RGB Uncompressed RLE <= 8-bits/sample|  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | | BI\_RLE8 8-bit Run Length Encoding <= 8-bits/sample|  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | | BI\_RLE4 4-bit Run Length Encoding <= 4-bits/sample|  |  |  | | --- | --- | --- | | BI\_BITFIELDS Packed data 16 or 32 bits/sample | | | | | | | | | | | |

* ## Field Summary

  ### Fields inherited from class javax.imageio.[ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

  `canOffsetTiles, canWriteCompressed, canWriteProgressive, canWriteTiles, compressionMode, compressionQuality, compressionType, compressionTypes, locale, MODE_COPY_FROM_METADATA, MODE_DEFAULT, MODE_DISABLED, MODE_EXPLICIT, preferredTileSizes, progressiveMode, tileGridXOffset, tileGridYOffset, tileHeight, tileWidth, tilingMode, tilingSet`

  ### Fields inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `controller, defaultController, destinationOffset, destinationType, sourceBands, sourceRegion, sourceXSubsampling, sourceYSubsampling, subsamplingXOffset, subsamplingYOffset`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BMPImageWriteParam()`

  Constructs an `BMPImageWriteParam` object with default
  values for all parameters and a `null Locale`.

  `BMPImageWriteParam(Locale locale)`

  Constructs a `BMPImageWriteParam` set to use a given
  `Locale` and with default values for all parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isTopDown()`

  Returns the value of the `topDown` parameter.

  `void`

  `setTopDown(boolean topDown)`

  If set, the data will be written out in a top-down manner, the first
  scanline being written first.

  ### Methods inherited from class javax.imageio.[ImageWriteParam](../../ImageWriteParam.md "class in javax.imageio")

  `canOffsetTiles, canWriteCompressed, canWriteProgressive, canWriteTiles, getBitRate, getCompressionMode, getCompressionQuality, getCompressionQualityDescriptions, getCompressionQualityValues, getCompressionType, getCompressionTypes, getLocale, getLocalizedCompressionTypeName, getPreferredTileSizes, getProgressiveMode, getTileGridXOffset, getTileGridYOffset, getTileHeight, getTileWidth, getTilingMode, isCompressionLossless, setCompressionMode, setCompressionQuality, setCompressionType, setProgressiveMode, setTiling, setTilingMode, unsetCompression, unsetTiling`

  ### Methods inherited from class javax.imageio.[IIOParam](../../IIOParam.md "class in javax.imageio")

  `activateController, getController, getDefaultController, getDestinationOffset, getDestinationType, getSourceBands, getSourceRegion, getSourceXSubsampling, getSourceYSubsampling, getSubsamplingXOffset, getSubsamplingYOffset, hasController, setController, setDestinationOffset, setDestinationType, setSourceBands, setSourceRegion, setSourceSubsampling`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BMPImageWriteParam

    public BMPImageWriteParam([Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a `BMPImageWriteParam` set to use a given
    `Locale` and with default values for all parameters.

    Parameters:
    :   `locale` - a `Locale` to be used to localize
        compression type names and quality descriptions, or
        `null`.
  + ### BMPImageWriteParam

    public BMPImageWriteParam()

    Constructs an `BMPImageWriteParam` object with default
    values for all parameters and a `null Locale`.
* ## Method Details

  + ### setTopDown

    public void setTopDown(boolean topDown)

    If set, the data will be written out in a top-down manner, the first
    scanline being written first.

    Parameters:
    :   `topDown` - whether the data are written in top-down order.
  + ### isTopDown

    public boolean isTopDown()

    Returns the value of the `topDown` parameter.
    The default is `false`.

    Returns:
    :   whether the data are written in top-down order.