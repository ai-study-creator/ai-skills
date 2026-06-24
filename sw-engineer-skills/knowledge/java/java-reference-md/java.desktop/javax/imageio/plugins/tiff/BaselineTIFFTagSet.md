Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.tiff](package-summary.md)

# Class BaselineTIFFTagSet

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.imageio.plugins.tiff.TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

javax.imageio.plugins.tiff.BaselineTIFFTagSet

---

public final class BaselineTIFFTagSet
extends [TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

A class representing the set of tags found in the baseline TIFF
specification as well as some common additional tags.

The non-baseline tags included in this class are:

* [`JPEGTables`](#TAG_JPEG_TABLES)* [`ICC Profile`](#TAG_ICC_PROFILE)

The non-baseline values of baseline tags included in this class are

* [`Compression`](#TAG_COMPRESSION) tag values:
  + [`JPEG-in-TIFF compression`](#COMPRESSION_JPEG)
  + [`Zlib-in-TIFF compression`](#COMPRESSION_ZLIB)
  + [`Deflate compression`](#COMPRESSION_DEFLATE)
* [`PhotometricInterpretation`](#TAG_PHOTOMETRIC_INTERPRETATION)
  tag values:
  + [`ICCLAB 
    photometric interpretation`](#PHOTOMETRIC_INTERPRETATION_ICCLAB)

Since:
:   9

See Also:
:   * [TIFF 6.0 Specification](https://www.itu.int/itudoc/itu-t/com16/tiff-fx/docs/tiff6.pdf)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `COMPRESSION_CCITT_RLE`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_CCITT_T_4`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_CCITT_T_6`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_DEFLATE`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_JPEG`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_LZW`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_NONE`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_OLD_JPEG`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_PACKBITS`

  A value to be used with the "Compression" tag.

  `static final int`

  `COMPRESSION_ZLIB`

  A value to be used with the "Compression" tag.

  `static final int`

  `EXTRA_SAMPLES_ASSOCIATED_ALPHA`

  A value to be used with the "ExtraSamples" tag.

  `static final int`

  `EXTRA_SAMPLES_UNASSOCIATED_ALPHA`

  A value to be used with the "ExtraSamples" tag.

  `static final int`

  `EXTRA_SAMPLES_UNSPECIFIED`

  A value to be used with the "ExtraSamples" tag.

  `static final int`

  `FILL_ORDER_LEFT_TO_RIGHT`

  A value to be used with the "FillOrder" tag.

  `static final int`

  `FILL_ORDER_RIGHT_TO_LEFT`

  A value to be used with the "FillOrder" tag.

  `static final int`

  `GRAY_RESPONSE_UNIT_HUNDRED_THOUSANDTHS`

  A value to be used with the "GrayResponseUnit" tag.

  `static final int`

  `GRAY_RESPONSE_UNIT_HUNDREDTHS`

  A value to be used with the "GrayResponseUnit" tag.

  `static final int`

  `GRAY_RESPONSE_UNIT_TEN_THOUSANDTHS`

  A value to be used with the "GrayResponseUnit" tag.

  `static final int`

  `GRAY_RESPONSE_UNIT_TENTHS`

  A value to be used with the "GrayResponseUnit" tag.

  `static final int`

  `GRAY_RESPONSE_UNIT_THOUSANDTHS`

  A value to be used with the "GrayResponseUnit" tag.

  `static final int`

  `INK_SET_CMYK`

  A value to be used with the "InkSet" tag.

  `static final int`

  `INK_SET_NOT_CMYK`

  A value to be used with the "InkSet" tag.

  `static final int`

  `JPEG_PROC_BASELINE`

  A value to be used with the "JPEGProc" tag.

  `static final int`

  `JPEG_PROC_LOSSLESS`

  A value to be used with the "JPEGProc" tag.

  `static final int`

  `NEW_SUBFILE_TYPE_REDUCED_RESOLUTION`

  A mask to be used with the "NewSubfileType" tag.

  `static final int`

  `NEW_SUBFILE_TYPE_SINGLE_PAGE`

  A mask to be used with the "NewSubfileType" tag.

  `static final int`

  `NEW_SUBFILE_TYPE_TRANSPARENCY`

  A mask to be used with the "NewSubfileType" tag.

  `static final int`

  `ORIENTATION_ROW_0_BOTTOM_COLUMN_0_LEFT`

  A value to be used with the "Orientation" tag.

  `static final int`

  `ORIENTATION_ROW_0_BOTTOM_COLUMN_0_RIGHT`

  A value to be used with the "Orientation" tag.

  `static final int`

  `ORIENTATION_ROW_0_LEFT_COLUMN_0_BOTTOM`

  A value to be used with the "Orientation" tag.

  `static final int`

  `ORIENTATION_ROW_0_LEFT_COLUMN_0_TOP`

  A value to be used with the "Orientation" tag.

  `static final int`

  `ORIENTATION_ROW_0_RIGHT_COLUMN_0_BOTTOM`

  A value to be used with the "Orientation" tag.

  `static final int`

  `ORIENTATION_ROW_0_RIGHT_COLUMN_0_TOP`

  A value to be used with the "Orientation" tag.

  `static final int`

  `ORIENTATION_ROW_0_TOP_COLUMN_0_LEFT`

  A value to be used with the "Orientation" tag.

  `static final int`

  `ORIENTATION_ROW_0_TOP_COLUMN_0_RIGHT`

  A value to be used with the "Orientation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_CIELAB`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_CMYK`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_ICCLAB`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_PALETTE_COLOR`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_RGB`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_TRANSPARENCY_MASK`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PHOTOMETRIC_INTERPRETATION_Y_CB_CR`

  A value to be used with the "PhotometricInterpretation" tag.

  `static final int`

  `PLANAR_CONFIGURATION_CHUNKY`

  A value to be used with the "PlanarConfiguration" tag.

  `static final int`

  `PLANAR_CONFIGURATION_PLANAR`

  A value to be used with the "PlanarConfiguration" tag.

  `static final int`

  `PREDICTOR_HORIZONTAL_DIFFERENCING`

  A value to be used with the "Predictor" tag.

  `static final int`

  `PREDICTOR_NONE`

  A value to be used with the "Predictor" tag.

  `static final int`

  `RESOLUTION_UNIT_CENTIMETER`

  A value to be used with the "ResolutionUnit" tag.

  `static final int`

  `RESOLUTION_UNIT_INCH`

  A value to be used with the "ResolutionUnit" tag.

  `static final int`

  `RESOLUTION_UNIT_NONE`

  A value to be used with the "ResolutionUnit" tag.

  `static final int`

  `SAMPLE_FORMAT_FLOATING_POINT`

  A value to be used with the "SampleFormat" tag.

  `static final int`

  `SAMPLE_FORMAT_SIGNED_INTEGER`

  A value to be used with the "SampleFormat" tag.

  `static final int`

  `SAMPLE_FORMAT_UNDEFINED`

  A value to be used with the "SampleFormat" tag.

  `static final int`

  `SAMPLE_FORMAT_UNSIGNED_INTEGER`

  A value to be used with the "SampleFormat" tag.

  `static final int`

  `SUBFILE_TYPE_FULL_RESOLUTION`

  A value to be used with the "SubfileType" tag.

  `static final int`

  `SUBFILE_TYPE_REDUCED_RESOLUTION`

  A value to be used with the "SubfileType" tag.

  `static final int`

  `SUBFILE_TYPE_SINGLE_PAGE`

  A value to be used with the "SubfileType" tag.

  `static final int`

  `T4_OPTIONS_2D_CODING`

  A mask to be used with the "T4Options" tag.

  `static final int`

  `T4_OPTIONS_EOL_BYTE_ALIGNED`

  A mask to be used with the "T4Options" tag.

  `static final int`

  `T4_OPTIONS_UNCOMPRESSED`

  A mask to be used with the "T4Options" tag.

  `static final int`

  `T6_OPTIONS_UNCOMPRESSED`

  A mask to be used with the "T6Options" tag.

  `static final int`

  `TAG_ARTIST`

  Constant specifying the "Artist" tag.

  `static final int`

  `TAG_BITS_PER_SAMPLE`

  Constant specifying the "BitsPerSample" tag.

  `static final int`

  `TAG_CELL_LENGTH`

  Constant specifying the "cell\_length" tag.

  `static final int`

  `TAG_CELL_WIDTH`

  Constant specifying the "Cell\_Width" tag.

  `static final int`

  `TAG_COLOR_MAP`

  Constant specifying the "ColorMap" tag.

  `static final int`

  `TAG_COMPRESSION`

  Constant specifying the "Compression" tag.

  `static final int`

  `TAG_COPYRIGHT`

  Constant specifying the "Copyright" tag.

  `static final int`

  `TAG_DATE_TIME`

  Constant specifying the "DateTime" tag.

  `static final int`

  `TAG_DOCUMENT_NAME`

  Constant specifying the "document\_name" tag.

  `static final int`

  `TAG_DOT_RANGE`

  Constant specifying the "DotRange" tag.

  `static final int`

  `TAG_EXTRA_SAMPLES`

  Constant specifying the "ExtraSamples" tag.

  `static final int`

  `TAG_FILL_ORDER`

  Constant specifying the "fill\_order" tag.

  `static final int`

  `TAG_FREE_BYTE_COUNTS`

  Constant specifying the "FreeByteCounts" tag.

  `static final int`

  `TAG_FREE_OFFSETS`

  Constant specifying the "FreeOffsets" tag.

  `static final int`

  `TAG_GRAY_RESPONSE_CURVE`

  Constant specifying the "GrayResponseCurve" tag.

  `static final int`

  `TAG_GRAY_RESPONSE_UNIT`

  Constant specifying the "GrayResponseUnit" tag.

  `static final int`

  `TAG_HALFTONE_HINTS`

  Constant specifying the "HalftoneHints" tag.

  `static final int`

  `TAG_HOST_COMPUTER`

  Constant specifying the "HostComputer" tag.

  `static final int`

  `TAG_ICC_PROFILE`

  Constant specifying the "ICC Profile" tag.

  `static final int`

  `TAG_IMAGE_DESCRIPTION`

  Constant specifying the "Image\_description" tag.

  `static final int`

  `TAG_IMAGE_LENGTH`

  Constant specifying the "ImageLength" tag.

  `static final int`

  `TAG_IMAGE_WIDTH`

  Constant specifying the "ImageWidth" tag.

  `static final int`

  `TAG_INK_NAMES`

  Constant specifying the "InkNames" tag.

  `static final int`

  `TAG_INK_SET`

  Constant specifying the "InkSet" tag.

  `static final int`

  `TAG_JPEG_AC_TABLES`

  Constant specifying the "JPEGACTables" tag.

  `static final int`

  `TAG_JPEG_DC_TABLES`

  Constant specifying the "JPEGDCTables" tag.

  `static final int`

  `TAG_JPEG_INTERCHANGE_FORMAT`

  Constant specifying the "JPEGInterchangeFormat" tag.

  `static final int`

  `TAG_JPEG_INTERCHANGE_FORMAT_LENGTH`

  Constant specifying the "JPEGInterchangeFormatLength" tag.

  `static final int`

  `TAG_JPEG_LOSSLESS_PREDICTORS`

  Constant specifying the "JPEGLosslessPredictors" tag.

  `static final int`

  `TAG_JPEG_POINT_TRANSFORMS`

  Constant specifying the "JPEGPointTransforms" tag.

  `static final int`

  `TAG_JPEG_PROC`

  Constant specifying the "JPEGProc" tag.

  `static final int`

  `TAG_JPEG_Q_TABLES`

  Constant specifying the "JPEGQTables" tag.

  `static final int`

  `TAG_JPEG_RESTART_INTERVAL`

  Constant specifying the "JPEGRestartInterval" tag.

  `static final int`

  `TAG_JPEG_TABLES`

  Constant specifying the "JPEGTables" tag for
  "New style" JPEG-in-TIFF compression.

  `static final int`

  `TAG_MAKE`

  Constant specifying the "Make" tag.

  `static final int`

  `TAG_MAX_SAMPLE_VALUE`

  Constant specifying the "Max\_sample\_value" tag.

  `static final int`

  `TAG_MIN_SAMPLE_VALUE`

  Constant specifying the "Min\_sample\_value" tag.

  `static final int`

  `TAG_MODEL`

  Constant specifying the "Model" tag.

  `static final int`

  `TAG_NEW_SUBFILE_TYPE`

  Constant specifying the "NewSubfileType" tag.

  `static final int`

  `TAG_NUMBER_OF_INKS`

  Constant specifying the "NumberOfInks" tag.

  `static final int`

  `TAG_ORIENTATION`

  Constant specifying the "Orientation" tag.

  `static final int`

  `TAG_PAGE_NAME`

  Constant specifying the "PageName" tag.

  `static final int`

  `TAG_PAGE_NUMBER`

  Constant specifying the "PageNumber" tag.

  `static final int`

  `TAG_PHOTOMETRIC_INTERPRETATION`

  Constant specifying the "PhotometricInterpretation" tag.

  `static final int`

  `TAG_PLANAR_CONFIGURATION`

  Constant specifying the "PlanarConfiguration" tag.

  `static final int`

  `TAG_PREDICTOR`

  Constant specifying the "Predictor" tag.

  `static final int`

  `TAG_PRIMARY_CHROMATICITES`

  Constant specifying the "PrimaryChromaticites" tag.

  `static final int`

  `TAG_REFERENCE_BLACK_WHITE`

  Constant specifying the "ReferenceBlackWhite" tag.

  `static final int`

  `TAG_RESOLUTION_UNIT`

  Constant specifying the "ResolutionUnit" tag.

  `static final int`

  `TAG_ROWS_PER_STRIP`

  Constant specifying the "Rows\_per\_strip" tag.

  `static final int`

  `TAG_S_MAX_SAMPLE_VALUE`

  Constant specifying the "SMaxSampleValue" tag.

  `static final int`

  `TAG_S_MIN_SAMPLE_VALUE`

  Constant specifying the "SMinSampleValue" tag.

  `static final int`

  `TAG_SAMPLE_FORMAT`

  Constant specifying the "SampleFormat" tag.

  `static final int`

  `TAG_SAMPLES_PER_PIXEL`

  Constant specifying the "Samples\_per\_pixel" tag.

  `static final int`

  `TAG_SOFTWARE`

  Constant specifying the "Software" tag.

  `static final int`

  `TAG_STRIP_BYTE_COUNTS`

  Constant specifying the "Strip\_byte\_counts" tag.

  `static final int`

  `TAG_STRIP_OFFSETS`

  Constant specifying the "Strip\_offsets" tag.

  `static final int`

  `TAG_SUBFILE_TYPE`

  Constant specifying the "SubfileType" tag.

  `static final int`

  `TAG_T4_OPTIONS`

  Constant specifying the "T4Options" tag.

  `static final int`

  `TAG_T6_OPTIONS`

  Constant specifying the "T6Options" tag.

  `static final int`

  `TAG_TARGET_PRINTER`

  Constant specifying the "TargetPrinter" tag.

  `static final int`

  `TAG_THRESHHOLDING`

  Constant specifying the "Threshholding" tag.

  `static final int`

  `TAG_TILE_BYTE_COUNTS`

  Constant specifying the "TileByteCounts" tag.

  `static final int`

  `TAG_TILE_LENGTH`

  Constant specifying the "TileLength" tag.

  `static final int`

  `TAG_TILE_OFFSETS`

  Constant specifying the "TileOffsets" tag.

  `static final int`

  `TAG_TILE_WIDTH`

  Constant specifying the "TileWidth" tag.

  `static final int`

  `TAG_TRANSFER_FUNCTION`

  Constant specifying the "TransferFunction" tag.

  `static final int`

  `TAG_TRANSFER_RANGE`

  Constant specifying the "TransferRange" tag.

  `static final int`

  `TAG_WHITE_POINT`

  Constant specifying the "WhitePoint" tag.

  `static final int`

  `TAG_X_POSITION`

  Constant specifying the "XPosition" tag.

  `static final int`

  `TAG_X_RESOLUTION`

  Constant specifying the "XResolution" tag.

  `static final int`

  `TAG_Y_CB_CR_COEFFICIENTS`

  Constant specifying the "YCbCrCoefficients" tag.

  `static final int`

  `TAG_Y_CB_CR_POSITIONING`

  Constant specifying the "YCbCrPositioning" tag.

  `static final int`

  `TAG_Y_CB_CR_SUBSAMPLING`

  Constant specifying the "YCbCrSubsampling" tag.

  `static final int`

  `TAG_Y_POSITION`

  Constant specifying the "YPosition" tag.

  `static final int`

  `TAG_Y_RESOLUTION`

  Constant specifying the "YResolution" tag.

  `static final int`

  `THRESHHOLDING_NONE`

  A value to be used with the "Thresholding" tag.

  `static final int`

  `THRESHHOLDING_ORDERED_DITHER`

  A value to be used with the "Thresholding" tag.

  `static final int`

  `THRESHHOLDING_RANDOMIZED_DITHER`

  A value to be used with the "Thresholding" tag.

  `static final int`

  `Y_CB_CR_POSITIONING_CENTERED`

  A value to be used with the "YCbCrPositioning" tag.

  `static final int`

  `Y_CB_CR_POSITIONING_COSITED`

  A value to be used with the "YCbCrPositioning" tag.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static BaselineTIFFTagSet`

  `getInstance()`

  Returns a shared instance of a `BaselineTIFFTagSet`.

  ### Methods inherited from class javax.imageio.plugins.tiff.[TIFFTagSet](TIFFTagSet.md "class in javax.imageio.plugins.tiff")

  `getTag, getTag, getTagNames, getTagNumbers`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TAG\_NEW\_SUBFILE\_TYPE

    public static final int TAG\_NEW\_SUBFILE\_TYPE

    Constant specifying the "NewSubfileType" tag.

    See Also:
    :   - [`NEW_SUBFILE_TYPE_REDUCED_RESOLUTION`](#NEW_SUBFILE_TYPE_REDUCED_RESOLUTION)
        - [`NEW_SUBFILE_TYPE_SINGLE_PAGE`](#NEW_SUBFILE_TYPE_SINGLE_PAGE)
        - [`NEW_SUBFILE_TYPE_TRANSPARENCY`](#NEW_SUBFILE_TYPE_TRANSPARENCY)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_NEW_SUBFILE_TYPE)
  + ### NEW\_SUBFILE\_TYPE\_REDUCED\_RESOLUTION

    public static final int NEW\_SUBFILE\_TYPE\_REDUCED\_RESOLUTION

    A mask to be used with the "NewSubfileType" tag.

    See Also:
    :   - [`TAG_NEW_SUBFILE_TYPE`](#TAG_NEW_SUBFILE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.NEW_SUBFILE_TYPE_REDUCED_RESOLUTION)
  + ### NEW\_SUBFILE\_TYPE\_SINGLE\_PAGE

    public static final int NEW\_SUBFILE\_TYPE\_SINGLE\_PAGE

    A mask to be used with the "NewSubfileType" tag.

    See Also:
    :   - [`TAG_NEW_SUBFILE_TYPE`](#TAG_NEW_SUBFILE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.NEW_SUBFILE_TYPE_SINGLE_PAGE)
  + ### NEW\_SUBFILE\_TYPE\_TRANSPARENCY

    public static final int NEW\_SUBFILE\_TYPE\_TRANSPARENCY

    A mask to be used with the "NewSubfileType" tag.

    See Also:
    :   - [`TAG_NEW_SUBFILE_TYPE`](#TAG_NEW_SUBFILE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.NEW_SUBFILE_TYPE_TRANSPARENCY)
  + ### TAG\_SUBFILE\_TYPE

    public static final int TAG\_SUBFILE\_TYPE

    Constant specifying the "SubfileType" tag.

    See Also:
    :   - [`SUBFILE_TYPE_FULL_RESOLUTION`](#SUBFILE_TYPE_FULL_RESOLUTION)
        - [`SUBFILE_TYPE_REDUCED_RESOLUTION`](#SUBFILE_TYPE_REDUCED_RESOLUTION)
        - [`SUBFILE_TYPE_SINGLE_PAGE`](#SUBFILE_TYPE_SINGLE_PAGE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_SUBFILE_TYPE)
  + ### SUBFILE\_TYPE\_FULL\_RESOLUTION

    public static final int SUBFILE\_TYPE\_FULL\_RESOLUTION

    A value to be used with the "SubfileType" tag.

    See Also:
    :   - [`TAG_SUBFILE_TYPE`](#TAG_SUBFILE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.SUBFILE_TYPE_FULL_RESOLUTION)
  + ### SUBFILE\_TYPE\_REDUCED\_RESOLUTION

    public static final int SUBFILE\_TYPE\_REDUCED\_RESOLUTION

    A value to be used with the "SubfileType" tag.

    See Also:
    :   - [`TAG_SUBFILE_TYPE`](#TAG_SUBFILE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.SUBFILE_TYPE_REDUCED_RESOLUTION)
  + ### SUBFILE\_TYPE\_SINGLE\_PAGE

    public static final int SUBFILE\_TYPE\_SINGLE\_PAGE

    A value to be used with the "SubfileType" tag.

    See Also:
    :   - [`TAG_SUBFILE_TYPE`](#TAG_SUBFILE_TYPE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.SUBFILE_TYPE_SINGLE_PAGE)
  + ### TAG\_IMAGE\_WIDTH

    public static final int TAG\_IMAGE\_WIDTH

    Constant specifying the "ImageWidth" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_IMAGE_WIDTH)
  + ### TAG\_IMAGE\_LENGTH

    public static final int TAG\_IMAGE\_LENGTH

    Constant specifying the "ImageLength" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_IMAGE_LENGTH)
  + ### TAG\_BITS\_PER\_SAMPLE

    public static final int TAG\_BITS\_PER\_SAMPLE

    Constant specifying the "BitsPerSample" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_BITS_PER_SAMPLE)
  + ### TAG\_COMPRESSION

    public static final int TAG\_COMPRESSION

    Constant specifying the "Compression" tag.

    See Also:
    :   - [`COMPRESSION_NONE`](#COMPRESSION_NONE)
        - [`COMPRESSION_CCITT_RLE`](#COMPRESSION_CCITT_RLE)
        - [`COMPRESSION_CCITT_T_4`](#COMPRESSION_CCITT_T_4)
        - [`COMPRESSION_CCITT_T_6`](#COMPRESSION_CCITT_T_6)
        - [`COMPRESSION_LZW`](#COMPRESSION_LZW)
        - [`COMPRESSION_OLD_JPEG`](#COMPRESSION_OLD_JPEG)
        - [`COMPRESSION_JPEG`](#COMPRESSION_JPEG)
        - [`COMPRESSION_ZLIB`](#COMPRESSION_ZLIB)
        - [`COMPRESSION_PACKBITS`](#COMPRESSION_PACKBITS)
        - [`COMPRESSION_DEFLATE`](#COMPRESSION_DEFLATE)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_COMPRESSION)
  + ### COMPRESSION\_NONE

    public static final int COMPRESSION\_NONE

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_NONE)
  + ### COMPRESSION\_CCITT\_RLE

    public static final int COMPRESSION\_CCITT\_RLE

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_CCITT_RLE)
  + ### COMPRESSION\_CCITT\_T\_4

    public static final int COMPRESSION\_CCITT\_T\_4

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_CCITT_T_4)
  + ### COMPRESSION\_CCITT\_T\_6

    public static final int COMPRESSION\_CCITT\_T\_6

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_CCITT_T_6)
  + ### COMPRESSION\_LZW

    public static final int COMPRESSION\_LZW

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_LZW)
  + ### COMPRESSION\_OLD\_JPEG

    public static final int COMPRESSION\_OLD\_JPEG

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_OLD_JPEG)
  + ### COMPRESSION\_JPEG

    public static final int COMPRESSION\_JPEG

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_JPEG)
  + ### COMPRESSION\_ZLIB

    public static final int COMPRESSION\_ZLIB

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_ZLIB)
  + ### COMPRESSION\_PACKBITS

    public static final int COMPRESSION\_PACKBITS

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_PACKBITS)
  + ### COMPRESSION\_DEFLATE

    public static final int COMPRESSION\_DEFLATE

    A value to be used with the "Compression" tag.

    See Also:
    :   - [`TAG_COMPRESSION`](#TAG_COMPRESSION)
        - [DEFLATE specification](https://tools.ietf.org/html/rfc1951)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.COMPRESSION_DEFLATE)
  + ### TAG\_PHOTOMETRIC\_INTERPRETATION

    public static final int TAG\_PHOTOMETRIC\_INTERPRETATION

    Constant specifying the "PhotometricInterpretation" tag.

    See Also:
    :   - [`PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO`](#PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO)
        - [`PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO`](#PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO)
        - [`PHOTOMETRIC_INTERPRETATION_RGB`](#PHOTOMETRIC_INTERPRETATION_RGB)
        - [`PHOTOMETRIC_INTERPRETATION_PALETTE_COLOR`](#PHOTOMETRIC_INTERPRETATION_PALETTE_COLOR)
        - [`PHOTOMETRIC_INTERPRETATION_TRANSPARENCY_MASK`](#PHOTOMETRIC_INTERPRETATION_TRANSPARENCY_MASK)
        - [`PHOTOMETRIC_INTERPRETATION_Y_CB_CR`](#PHOTOMETRIC_INTERPRETATION_Y_CB_CR)
        - [`PHOTOMETRIC_INTERPRETATION_CIELAB`](#PHOTOMETRIC_INTERPRETATION_CIELAB)
        - [`PHOTOMETRIC_INTERPRETATION_ICCLAB`](#PHOTOMETRIC_INTERPRETATION_ICCLAB)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_PHOTOMETRIC_INTERPRETATION)
  + ### PHOTOMETRIC\_INTERPRETATION\_WHITE\_IS\_ZERO

    public static final int PHOTOMETRIC\_INTERPRETATION\_WHITE\_IS\_ZERO

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO)
  + ### PHOTOMETRIC\_INTERPRETATION\_BLACK\_IS\_ZERO

    public static final int PHOTOMETRIC\_INTERPRETATION\_BLACK\_IS\_ZERO

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO)
  + ### PHOTOMETRIC\_INTERPRETATION\_RGB

    public static final int PHOTOMETRIC\_INTERPRETATION\_RGB

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_RGB)
  + ### PHOTOMETRIC\_INTERPRETATION\_PALETTE\_COLOR

    public static final int PHOTOMETRIC\_INTERPRETATION\_PALETTE\_COLOR

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_PALETTE_COLOR)
  + ### PHOTOMETRIC\_INTERPRETATION\_TRANSPARENCY\_MASK

    public static final int PHOTOMETRIC\_INTERPRETATION\_TRANSPARENCY\_MASK

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_TRANSPARENCY_MASK)
  + ### PHOTOMETRIC\_INTERPRETATION\_CMYK

    public static final int PHOTOMETRIC\_INTERPRETATION\_CMYK

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_CMYK)
  + ### PHOTOMETRIC\_INTERPRETATION\_Y\_CB\_CR

    public static final int PHOTOMETRIC\_INTERPRETATION\_Y\_CB\_CR

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_Y_CB_CR)
  + ### PHOTOMETRIC\_INTERPRETATION\_CIELAB

    public static final int PHOTOMETRIC\_INTERPRETATION\_CIELAB

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_CIELAB)
  + ### PHOTOMETRIC\_INTERPRETATION\_ICCLAB

    public static final int PHOTOMETRIC\_INTERPRETATION\_ICCLAB

    A value to be used with the "PhotometricInterpretation" tag.

    See Also:
    :   - [`TAG_PHOTOMETRIC_INTERPRETATION`](#TAG_PHOTOMETRIC_INTERPRETATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PHOTOMETRIC_INTERPRETATION_ICCLAB)
  + ### TAG\_THRESHHOLDING

    public static final int TAG\_THRESHHOLDING

    Constant specifying the "Threshholding" tag.

    See Also:
    :   - [`THRESHHOLDING_NONE`](#THRESHHOLDING_NONE)
        - [`THRESHHOLDING_ORDERED_DITHER`](#THRESHHOLDING_ORDERED_DITHER)
        - [`THRESHHOLDING_RANDOMIZED_DITHER`](#THRESHHOLDING_RANDOMIZED_DITHER)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_THRESHHOLDING)
  + ### THRESHHOLDING\_NONE

    public static final int THRESHHOLDING\_NONE

    A value to be used with the "Thresholding" tag.

    See Also:
    :   - [`TAG_THRESHHOLDING`](#TAG_THRESHHOLDING)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.THRESHHOLDING_NONE)
  + ### THRESHHOLDING\_ORDERED\_DITHER

    public static final int THRESHHOLDING\_ORDERED\_DITHER

    A value to be used with the "Thresholding" tag.

    See Also:
    :   - [`TAG_THRESHHOLDING`](#TAG_THRESHHOLDING)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.THRESHHOLDING_ORDERED_DITHER)
  + ### THRESHHOLDING\_RANDOMIZED\_DITHER

    public static final int THRESHHOLDING\_RANDOMIZED\_DITHER

    A value to be used with the "Thresholding" tag.

    See Also:
    :   - [`TAG_THRESHHOLDING`](#TAG_THRESHHOLDING)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.THRESHHOLDING_RANDOMIZED_DITHER)
  + ### TAG\_CELL\_WIDTH

    public static final int TAG\_CELL\_WIDTH

    Constant specifying the "Cell\_Width" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_CELL_WIDTH)
  + ### TAG\_CELL\_LENGTH

    public static final int TAG\_CELL\_LENGTH

    Constant specifying the "cell\_length" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_CELL_LENGTH)
  + ### TAG\_FILL\_ORDER

    public static final int TAG\_FILL\_ORDER

    Constant specifying the "fill\_order" tag.

    See Also:
    :   - [`FILL_ORDER_LEFT_TO_RIGHT`](#FILL_ORDER_LEFT_TO_RIGHT)
        - [`FILL_ORDER_RIGHT_TO_LEFT`](#FILL_ORDER_RIGHT_TO_LEFT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_FILL_ORDER)
  + ### FILL\_ORDER\_LEFT\_TO\_RIGHT

    public static final int FILL\_ORDER\_LEFT\_TO\_RIGHT

    A value to be used with the "FillOrder" tag.

    See Also:
    :   - [`TAG_FILL_ORDER`](#TAG_FILL_ORDER)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.FILL_ORDER_LEFT_TO_RIGHT)
  + ### FILL\_ORDER\_RIGHT\_TO\_LEFT

    public static final int FILL\_ORDER\_RIGHT\_TO\_LEFT

    A value to be used with the "FillOrder" tag.

    See Also:
    :   - [`TAG_FILL_ORDER`](#TAG_FILL_ORDER)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.FILL_ORDER_RIGHT_TO_LEFT)
  + ### TAG\_DOCUMENT\_NAME

    public static final int TAG\_DOCUMENT\_NAME

    Constant specifying the "document\_name" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_DOCUMENT_NAME)
  + ### TAG\_IMAGE\_DESCRIPTION

    public static final int TAG\_IMAGE\_DESCRIPTION

    Constant specifying the "Image\_description" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_IMAGE_DESCRIPTION)
  + ### TAG\_MAKE

    public static final int TAG\_MAKE

    Constant specifying the "Make" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_MAKE)
  + ### TAG\_MODEL

    public static final int TAG\_MODEL

    Constant specifying the "Model" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_MODEL)
  + ### TAG\_STRIP\_OFFSETS

    public static final int TAG\_STRIP\_OFFSETS

    Constant specifying the "Strip\_offsets" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_STRIP_OFFSETS)
  + ### TAG\_ORIENTATION

    public static final int TAG\_ORIENTATION

    Constant specifying the "Orientation" tag.

    See Also:
    :   - [`ORIENTATION_ROW_0_TOP_COLUMN_0_LEFT`](#ORIENTATION_ROW_0_TOP_COLUMN_0_LEFT)
        - [`ORIENTATION_ROW_0_TOP_COLUMN_0_RIGHT`](#ORIENTATION_ROW_0_TOP_COLUMN_0_RIGHT)
        - [`ORIENTATION_ROW_0_BOTTOM_COLUMN_0_RIGHT`](#ORIENTATION_ROW_0_BOTTOM_COLUMN_0_RIGHT)
        - [`ORIENTATION_ROW_0_BOTTOM_COLUMN_0_LEFT`](#ORIENTATION_ROW_0_BOTTOM_COLUMN_0_LEFT)
        - [`ORIENTATION_ROW_0_LEFT_COLUMN_0_TOP`](#ORIENTATION_ROW_0_LEFT_COLUMN_0_TOP)
        - [`ORIENTATION_ROW_0_RIGHT_COLUMN_0_TOP`](#ORIENTATION_ROW_0_RIGHT_COLUMN_0_TOP)
        - [`ORIENTATION_ROW_0_RIGHT_COLUMN_0_BOTTOM`](#ORIENTATION_ROW_0_RIGHT_COLUMN_0_BOTTOM)
        - [`ORIENTATION_ROW_0_LEFT_COLUMN_0_BOTTOM`](#ORIENTATION_ROW_0_LEFT_COLUMN_0_BOTTOM)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_ORIENTATION)
  + ### ORIENTATION\_ROW\_0\_TOP\_COLUMN\_0\_LEFT

    public static final int ORIENTATION\_ROW\_0\_TOP\_COLUMN\_0\_LEFT

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_TOP_COLUMN_0_LEFT)
  + ### ORIENTATION\_ROW\_0\_TOP\_COLUMN\_0\_RIGHT

    public static final int ORIENTATION\_ROW\_0\_TOP\_COLUMN\_0\_RIGHT

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_TOP_COLUMN_0_RIGHT)
  + ### ORIENTATION\_ROW\_0\_BOTTOM\_COLUMN\_0\_RIGHT

    public static final int ORIENTATION\_ROW\_0\_BOTTOM\_COLUMN\_0\_RIGHT

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_BOTTOM_COLUMN_0_RIGHT)
  + ### ORIENTATION\_ROW\_0\_BOTTOM\_COLUMN\_0\_LEFT

    public static final int ORIENTATION\_ROW\_0\_BOTTOM\_COLUMN\_0\_LEFT

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_BOTTOM_COLUMN_0_LEFT)
  + ### ORIENTATION\_ROW\_0\_LEFT\_COLUMN\_0\_TOP

    public static final int ORIENTATION\_ROW\_0\_LEFT\_COLUMN\_0\_TOP

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_LEFT_COLUMN_0_TOP)
  + ### ORIENTATION\_ROW\_0\_RIGHT\_COLUMN\_0\_TOP

    public static final int ORIENTATION\_ROW\_0\_RIGHT\_COLUMN\_0\_TOP

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_RIGHT_COLUMN_0_TOP)
  + ### ORIENTATION\_ROW\_0\_RIGHT\_COLUMN\_0\_BOTTOM

    public static final int ORIENTATION\_ROW\_0\_RIGHT\_COLUMN\_0\_BOTTOM

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_RIGHT_COLUMN_0_BOTTOM)
  + ### ORIENTATION\_ROW\_0\_LEFT\_COLUMN\_0\_BOTTOM

    public static final int ORIENTATION\_ROW\_0\_LEFT\_COLUMN\_0\_BOTTOM

    A value to be used with the "Orientation" tag.

    See Also:
    :   - [`TAG_ORIENTATION`](#TAG_ORIENTATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.ORIENTATION_ROW_0_LEFT_COLUMN_0_BOTTOM)
  + ### TAG\_SAMPLES\_PER\_PIXEL

    public static final int TAG\_SAMPLES\_PER\_PIXEL

    Constant specifying the "Samples\_per\_pixel" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_SAMPLES_PER_PIXEL)
  + ### TAG\_ROWS\_PER\_STRIP

    public static final int TAG\_ROWS\_PER\_STRIP

    Constant specifying the "Rows\_per\_strip" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_ROWS_PER_STRIP)
  + ### TAG\_STRIP\_BYTE\_COUNTS

    public static final int TAG\_STRIP\_BYTE\_COUNTS

    Constant specifying the "Strip\_byte\_counts" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_STRIP_BYTE_COUNTS)
  + ### TAG\_MIN\_SAMPLE\_VALUE

    public static final int TAG\_MIN\_SAMPLE\_VALUE

    Constant specifying the "Min\_sample\_value" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_MIN_SAMPLE_VALUE)
  + ### TAG\_MAX\_SAMPLE\_VALUE

    public static final int TAG\_MAX\_SAMPLE\_VALUE

    Constant specifying the "Max\_sample\_value" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_MAX_SAMPLE_VALUE)
  + ### TAG\_X\_RESOLUTION

    public static final int TAG\_X\_RESOLUTION

    Constant specifying the "XResolution" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_X_RESOLUTION)
  + ### TAG\_Y\_RESOLUTION

    public static final int TAG\_Y\_RESOLUTION

    Constant specifying the "YResolution" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_Y_RESOLUTION)
  + ### TAG\_PLANAR\_CONFIGURATION

    public static final int TAG\_PLANAR\_CONFIGURATION

    Constant specifying the "PlanarConfiguration" tag.

    See Also:
    :   - [`PLANAR_CONFIGURATION_CHUNKY`](#PLANAR_CONFIGURATION_CHUNKY)
        - [`PLANAR_CONFIGURATION_PLANAR`](#PLANAR_CONFIGURATION_PLANAR)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_PLANAR_CONFIGURATION)
  + ### PLANAR\_CONFIGURATION\_CHUNKY

    public static final int PLANAR\_CONFIGURATION\_CHUNKY

    A value to be used with the "PlanarConfiguration" tag.

    See Also:
    :   - [`TAG_PLANAR_CONFIGURATION`](#TAG_PLANAR_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PLANAR_CONFIGURATION_CHUNKY)
  + ### PLANAR\_CONFIGURATION\_PLANAR

    public static final int PLANAR\_CONFIGURATION\_PLANAR

    A value to be used with the "PlanarConfiguration" tag.

    See Also:
    :   - [`TAG_PLANAR_CONFIGURATION`](#TAG_PLANAR_CONFIGURATION)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PLANAR_CONFIGURATION_PLANAR)
  + ### TAG\_PAGE\_NAME

    public static final int TAG\_PAGE\_NAME

    Constant specifying the "PageName" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_PAGE_NAME)
  + ### TAG\_X\_POSITION

    public static final int TAG\_X\_POSITION

    Constant specifying the "XPosition" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_X_POSITION)
  + ### TAG\_Y\_POSITION

    public static final int TAG\_Y\_POSITION

    Constant specifying the "YPosition" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_Y_POSITION)
  + ### TAG\_FREE\_OFFSETS

    public static final int TAG\_FREE\_OFFSETS

    Constant specifying the "FreeOffsets" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_FREE_OFFSETS)
  + ### TAG\_FREE\_BYTE\_COUNTS

    public static final int TAG\_FREE\_BYTE\_COUNTS

    Constant specifying the "FreeByteCounts" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_FREE_BYTE_COUNTS)
  + ### TAG\_GRAY\_RESPONSE\_UNIT

    public static final int TAG\_GRAY\_RESPONSE\_UNIT

    Constant specifying the "GrayResponseUnit" tag.

    See Also:
    :   - [`GRAY_RESPONSE_UNIT_TENTHS`](#GRAY_RESPONSE_UNIT_TENTHS)
        - [`GRAY_RESPONSE_UNIT_HUNDREDTHS`](#GRAY_RESPONSE_UNIT_HUNDREDTHS)
        - [`GRAY_RESPONSE_UNIT_THOUSANDTHS`](#GRAY_RESPONSE_UNIT_THOUSANDTHS)
        - [`GRAY_RESPONSE_UNIT_TEN_THOUSANDTHS`](#GRAY_RESPONSE_UNIT_TEN_THOUSANDTHS)
        - [`GRAY_RESPONSE_UNIT_HUNDRED_THOUSANDTHS`](#GRAY_RESPONSE_UNIT_HUNDRED_THOUSANDTHS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_GRAY_RESPONSE_UNIT)
  + ### GRAY\_RESPONSE\_UNIT\_TENTHS

    public static final int GRAY\_RESPONSE\_UNIT\_TENTHS

    A value to be used with the "GrayResponseUnit" tag.

    See Also:
    :   - [`TAG_GRAY_RESPONSE_UNIT`](#TAG_GRAY_RESPONSE_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.GRAY_RESPONSE_UNIT_TENTHS)
  + ### GRAY\_RESPONSE\_UNIT\_HUNDREDTHS

    public static final int GRAY\_RESPONSE\_UNIT\_HUNDREDTHS

    A value to be used with the "GrayResponseUnit" tag.

    See Also:
    :   - [`TAG_GRAY_RESPONSE_UNIT`](#TAG_GRAY_RESPONSE_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.GRAY_RESPONSE_UNIT_HUNDREDTHS)
  + ### GRAY\_RESPONSE\_UNIT\_THOUSANDTHS

    public static final int GRAY\_RESPONSE\_UNIT\_THOUSANDTHS

    A value to be used with the "GrayResponseUnit" tag.

    See Also:
    :   - [`TAG_GRAY_RESPONSE_UNIT`](#TAG_GRAY_RESPONSE_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.GRAY_RESPONSE_UNIT_THOUSANDTHS)
  + ### GRAY\_RESPONSE\_UNIT\_TEN\_THOUSANDTHS

    public static final int GRAY\_RESPONSE\_UNIT\_TEN\_THOUSANDTHS

    A value to be used with the "GrayResponseUnit" tag.

    See Also:
    :   - [`TAG_GRAY_RESPONSE_UNIT`](#TAG_GRAY_RESPONSE_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.GRAY_RESPONSE_UNIT_TEN_THOUSANDTHS)
  + ### GRAY\_RESPONSE\_UNIT\_HUNDRED\_THOUSANDTHS

    public static final int GRAY\_RESPONSE\_UNIT\_HUNDRED\_THOUSANDTHS

    A value to be used with the "GrayResponseUnit" tag.

    See Also:
    :   - [`TAG_GRAY_RESPONSE_UNIT`](#TAG_GRAY_RESPONSE_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.GRAY_RESPONSE_UNIT_HUNDRED_THOUSANDTHS)
  + ### TAG\_GRAY\_RESPONSE\_CURVE

    public static final int TAG\_GRAY\_RESPONSE\_CURVE

    Constant specifying the "GrayResponseCurve" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_GRAY_RESPONSE_CURVE)
  + ### TAG\_T4\_OPTIONS

    public static final int TAG\_T4\_OPTIONS

    Constant specifying the "T4Options" tag.

    See Also:
    :   - [`T4_OPTIONS_2D_CODING`](#T4_OPTIONS_2D_CODING)
        - [`T4_OPTIONS_UNCOMPRESSED`](#T4_OPTIONS_UNCOMPRESSED)
        - [`T4_OPTIONS_EOL_BYTE_ALIGNED`](#T4_OPTIONS_EOL_BYTE_ALIGNED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_T4_OPTIONS)
  + ### T4\_OPTIONS\_2D\_CODING

    public static final int T4\_OPTIONS\_2D\_CODING

    A mask to be used with the "T4Options" tag.

    See Also:
    :   - [`TAG_T4_OPTIONS`](#TAG_T4_OPTIONS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.T4_OPTIONS_2D_CODING)
  + ### T4\_OPTIONS\_UNCOMPRESSED

    public static final int T4\_OPTIONS\_UNCOMPRESSED

    A mask to be used with the "T4Options" tag.

    See Also:
    :   - [`TAG_T4_OPTIONS`](#TAG_T4_OPTIONS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.T4_OPTIONS_UNCOMPRESSED)
  + ### T4\_OPTIONS\_EOL\_BYTE\_ALIGNED

    public static final int T4\_OPTIONS\_EOL\_BYTE\_ALIGNED

    A mask to be used with the "T4Options" tag.

    See Also:
    :   - [`TAG_T4_OPTIONS`](#TAG_T4_OPTIONS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.T4_OPTIONS_EOL_BYTE_ALIGNED)
  + ### TAG\_T6\_OPTIONS

    public static final int TAG\_T6\_OPTIONS

    Constant specifying the "T6Options" tag.

    See Also:
    :   - [`T6_OPTIONS_UNCOMPRESSED`](#T6_OPTIONS_UNCOMPRESSED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_T6_OPTIONS)
  + ### T6\_OPTIONS\_UNCOMPRESSED

    public static final int T6\_OPTIONS\_UNCOMPRESSED

    A mask to be used with the "T6Options" tag.

    See Also:
    :   - [`TAG_T6_OPTIONS`](#TAG_T6_OPTIONS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.T6_OPTIONS_UNCOMPRESSED)
  + ### TAG\_RESOLUTION\_UNIT

    public static final int TAG\_RESOLUTION\_UNIT

    Constant specifying the "ResolutionUnit" tag.

    See Also:
    :   - [`RESOLUTION_UNIT_NONE`](#RESOLUTION_UNIT_NONE)
        - [`RESOLUTION_UNIT_INCH`](#RESOLUTION_UNIT_INCH)
        - [`RESOLUTION_UNIT_CENTIMETER`](#RESOLUTION_UNIT_CENTIMETER)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_RESOLUTION_UNIT)
  + ### RESOLUTION\_UNIT\_NONE

    public static final int RESOLUTION\_UNIT\_NONE

    A value to be used with the "ResolutionUnit" tag.

    See Also:
    :   - [`TAG_RESOLUTION_UNIT`](#TAG_RESOLUTION_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.RESOLUTION_UNIT_NONE)
  + ### RESOLUTION\_UNIT\_INCH

    public static final int RESOLUTION\_UNIT\_INCH

    A value to be used with the "ResolutionUnit" tag.

    See Also:
    :   - [`TAG_RESOLUTION_UNIT`](#TAG_RESOLUTION_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.RESOLUTION_UNIT_INCH)
  + ### RESOLUTION\_UNIT\_CENTIMETER

    public static final int RESOLUTION\_UNIT\_CENTIMETER

    A value to be used with the "ResolutionUnit" tag.

    See Also:
    :   - [`TAG_RESOLUTION_UNIT`](#TAG_RESOLUTION_UNIT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.RESOLUTION_UNIT_CENTIMETER)
  + ### TAG\_PAGE\_NUMBER

    public static final int TAG\_PAGE\_NUMBER

    Constant specifying the "PageNumber" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_PAGE_NUMBER)
  + ### TAG\_TRANSFER\_FUNCTION

    public static final int TAG\_TRANSFER\_FUNCTION

    Constant specifying the "TransferFunction" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_TRANSFER_FUNCTION)
  + ### TAG\_SOFTWARE

    public static final int TAG\_SOFTWARE

    Constant specifying the "Software" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_SOFTWARE)
  + ### TAG\_DATE\_TIME

    public static final int TAG\_DATE\_TIME

    Constant specifying the "DateTime" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_DATE_TIME)
  + ### TAG\_ARTIST

    public static final int TAG\_ARTIST

    Constant specifying the "Artist" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_ARTIST)
  + ### TAG\_HOST\_COMPUTER

    public static final int TAG\_HOST\_COMPUTER

    Constant specifying the "HostComputer" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_HOST_COMPUTER)
  + ### TAG\_PREDICTOR

    public static final int TAG\_PREDICTOR

    Constant specifying the "Predictor" tag.

    See Also:
    :   - [`TAG_WHITE_POINT`](#TAG_WHITE_POINT)
        - [`TAG_PRIMARY_CHROMATICITES`](#TAG_PRIMARY_CHROMATICITES)
        - [`TAG_COLOR_MAP`](#TAG_COLOR_MAP)
        - [`TAG_HALFTONE_HINTS`](#TAG_HALFTONE_HINTS)
        - [`TAG_TILE_WIDTH`](#TAG_TILE_WIDTH)
        - [`TAG_TILE_LENGTH`](#TAG_TILE_LENGTH)
        - [`TAG_TILE_OFFSETS`](#TAG_TILE_OFFSETS)
        - [`TAG_TILE_BYTE_COUNTS`](#TAG_TILE_BYTE_COUNTS)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_PREDICTOR)
  + ### PREDICTOR\_NONE

    public static final int PREDICTOR\_NONE

    A value to be used with the "Predictor" tag.

    See Also:
    :   - [`TAG_PREDICTOR`](#TAG_PREDICTOR)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PREDICTOR_NONE)
  + ### PREDICTOR\_HORIZONTAL\_DIFFERENCING

    public static final int PREDICTOR\_HORIZONTAL\_DIFFERENCING

    A value to be used with the "Predictor" tag.

    See Also:
    :   - [`TAG_PREDICTOR`](#TAG_PREDICTOR)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.PREDICTOR_HORIZONTAL_DIFFERENCING)
  + ### TAG\_WHITE\_POINT

    public static final int TAG\_WHITE\_POINT

    Constant specifying the "WhitePoint" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_WHITE_POINT)
  + ### TAG\_PRIMARY\_CHROMATICITES

    public static final int TAG\_PRIMARY\_CHROMATICITES

    Constant specifying the "PrimaryChromaticites" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_PRIMARY_CHROMATICITES)
  + ### TAG\_COLOR\_MAP

    public static final int TAG\_COLOR\_MAP

    Constant specifying the "ColorMap" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_COLOR_MAP)
  + ### TAG\_HALFTONE\_HINTS

    public static final int TAG\_HALFTONE\_HINTS

    Constant specifying the "HalftoneHints" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_HALFTONE_HINTS)
  + ### TAG\_TILE\_WIDTH

    public static final int TAG\_TILE\_WIDTH

    Constant specifying the "TileWidth" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_TILE_WIDTH)
  + ### TAG\_TILE\_LENGTH

    public static final int TAG\_TILE\_LENGTH

    Constant specifying the "TileLength" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_TILE_LENGTH)
  + ### TAG\_TILE\_OFFSETS

    public static final int TAG\_TILE\_OFFSETS

    Constant specifying the "TileOffsets" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_TILE_OFFSETS)
  + ### TAG\_TILE\_BYTE\_COUNTS

    public static final int TAG\_TILE\_BYTE\_COUNTS

    Constant specifying the "TileByteCounts" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_TILE_BYTE_COUNTS)
  + ### TAG\_INK\_SET

    public static final int TAG\_INK\_SET

    Constant specifying the "InkSet" tag.

    See Also:
    :   - [`INK_SET_CMYK`](#INK_SET_CMYK)
        - [`INK_SET_NOT_CMYK`](#INK_SET_NOT_CMYK)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_INK_SET)
  + ### INK\_SET\_CMYK

    public static final int INK\_SET\_CMYK

    A value to be used with the "InkSet" tag.

    See Also:
    :   - [`TAG_INK_SET`](#TAG_INK_SET)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.INK_SET_CMYK)
  + ### INK\_SET\_NOT\_CMYK

    public static final int INK\_SET\_NOT\_CMYK

    A value to be used with the "InkSet" tag.

    See Also:
    :   - [`TAG_INK_SET`](#TAG_INK_SET)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.INK_SET_NOT_CMYK)
  + ### TAG\_INK\_NAMES

    public static final int TAG\_INK\_NAMES

    Constant specifying the "InkNames" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_INK_NAMES)
  + ### TAG\_NUMBER\_OF\_INKS

    public static final int TAG\_NUMBER\_OF\_INKS

    Constant specifying the "NumberOfInks" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_NUMBER_OF_INKS)
  + ### TAG\_DOT\_RANGE

    public static final int TAG\_DOT\_RANGE

    Constant specifying the "DotRange" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_DOT_RANGE)
  + ### TAG\_TARGET\_PRINTER

    public static final int TAG\_TARGET\_PRINTER

    Constant specifying the "TargetPrinter" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_TARGET_PRINTER)
  + ### TAG\_EXTRA\_SAMPLES

    public static final int TAG\_EXTRA\_SAMPLES

    Constant specifying the "ExtraSamples" tag.

    See Also:
    :   - [`EXTRA_SAMPLES_UNSPECIFIED`](#EXTRA_SAMPLES_UNSPECIFIED)
        - [`EXTRA_SAMPLES_ASSOCIATED_ALPHA`](#EXTRA_SAMPLES_ASSOCIATED_ALPHA)
        - [`EXTRA_SAMPLES_UNASSOCIATED_ALPHA`](#EXTRA_SAMPLES_UNASSOCIATED_ALPHA)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_EXTRA_SAMPLES)
  + ### EXTRA\_SAMPLES\_UNSPECIFIED

    public static final int EXTRA\_SAMPLES\_UNSPECIFIED

    A value to be used with the "ExtraSamples" tag.

    See Also:
    :   - [`TAG_EXTRA_SAMPLES`](#TAG_EXTRA_SAMPLES)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.EXTRA_SAMPLES_UNSPECIFIED)
  + ### EXTRA\_SAMPLES\_ASSOCIATED\_ALPHA

    public static final int EXTRA\_SAMPLES\_ASSOCIATED\_ALPHA

    A value to be used with the "ExtraSamples" tag.

    See Also:
    :   - [`TAG_EXTRA_SAMPLES`](#TAG_EXTRA_SAMPLES)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.EXTRA_SAMPLES_ASSOCIATED_ALPHA)
  + ### EXTRA\_SAMPLES\_UNASSOCIATED\_ALPHA

    public static final int EXTRA\_SAMPLES\_UNASSOCIATED\_ALPHA

    A value to be used with the "ExtraSamples" tag.

    See Also:
    :   - [`TAG_EXTRA_SAMPLES`](#TAG_EXTRA_SAMPLES)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.EXTRA_SAMPLES_UNASSOCIATED_ALPHA)
  + ### TAG\_SAMPLE\_FORMAT

    public static final int TAG\_SAMPLE\_FORMAT

    Constant specifying the "SampleFormat" tag.

    See Also:
    :   - [`SAMPLE_FORMAT_UNSIGNED_INTEGER`](#SAMPLE_FORMAT_UNSIGNED_INTEGER)
        - [`SAMPLE_FORMAT_SIGNED_INTEGER`](#SAMPLE_FORMAT_SIGNED_INTEGER)
        - [`SAMPLE_FORMAT_FLOATING_POINT`](#SAMPLE_FORMAT_FLOATING_POINT)
        - [`SAMPLE_FORMAT_UNDEFINED`](#SAMPLE_FORMAT_UNDEFINED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_SAMPLE_FORMAT)
  + ### SAMPLE\_FORMAT\_UNSIGNED\_INTEGER

    public static final int SAMPLE\_FORMAT\_UNSIGNED\_INTEGER

    A value to be used with the "SampleFormat" tag.

    See Also:
    :   - [`TAG_SAMPLE_FORMAT`](#TAG_SAMPLE_FORMAT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.SAMPLE_FORMAT_UNSIGNED_INTEGER)
  + ### SAMPLE\_FORMAT\_SIGNED\_INTEGER

    public static final int SAMPLE\_FORMAT\_SIGNED\_INTEGER

    A value to be used with the "SampleFormat" tag.

    See Also:
    :   - [`TAG_SAMPLE_FORMAT`](#TAG_SAMPLE_FORMAT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.SAMPLE_FORMAT_SIGNED_INTEGER)
  + ### SAMPLE\_FORMAT\_FLOATING\_POINT

    public static final int SAMPLE\_FORMAT\_FLOATING\_POINT

    A value to be used with the "SampleFormat" tag.

    See Also:
    :   - [`TAG_SAMPLE_FORMAT`](#TAG_SAMPLE_FORMAT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.SAMPLE_FORMAT_FLOATING_POINT)
  + ### SAMPLE\_FORMAT\_UNDEFINED

    public static final int SAMPLE\_FORMAT\_UNDEFINED

    A value to be used with the "SampleFormat" tag.

    See Also:
    :   - [`TAG_SAMPLE_FORMAT`](#TAG_SAMPLE_FORMAT)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.SAMPLE_FORMAT_UNDEFINED)
  + ### TAG\_S\_MIN\_SAMPLE\_VALUE

    public static final int TAG\_S\_MIN\_SAMPLE\_VALUE

    Constant specifying the "SMinSampleValue" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_S_MIN_SAMPLE_VALUE)
  + ### TAG\_S\_MAX\_SAMPLE\_VALUE

    public static final int TAG\_S\_MAX\_SAMPLE\_VALUE

    Constant specifying the "SMaxSampleValue" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_S_MAX_SAMPLE_VALUE)
  + ### TAG\_TRANSFER\_RANGE

    public static final int TAG\_TRANSFER\_RANGE

    Constant specifying the "TransferRange" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_TRANSFER_RANGE)
  + ### TAG\_JPEG\_TABLES

    public static final int TAG\_JPEG\_TABLES

    Constant specifying the "JPEGTables" tag for
    "New style" JPEG-in-TIFF compression.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_TABLES)
  + ### TAG\_JPEG\_PROC

    public static final int TAG\_JPEG\_PROC

    Constant specifying the "JPEGProc" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_PROC)
  + ### JPEG\_PROC\_BASELINE

    public static final int JPEG\_PROC\_BASELINE

    A value to be used with the "JPEGProc" tag.

    See Also:
    :   - [`TAG_JPEG_PROC`](#TAG_JPEG_PROC)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.JPEG_PROC_BASELINE)
  + ### JPEG\_PROC\_LOSSLESS

    public static final int JPEG\_PROC\_LOSSLESS

    A value to be used with the "JPEGProc" tag.

    See Also:
    :   - [`TAG_JPEG_PROC`](#TAG_JPEG_PROC)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.JPEG_PROC_LOSSLESS)
  + ### TAG\_JPEG\_INTERCHANGE\_FORMAT

    public static final int TAG\_JPEG\_INTERCHANGE\_FORMAT

    Constant specifying the "JPEGInterchangeFormat" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_INTERCHANGE_FORMAT)
  + ### TAG\_JPEG\_INTERCHANGE\_FORMAT\_LENGTH

    public static final int TAG\_JPEG\_INTERCHANGE\_FORMAT\_LENGTH

    Constant specifying the "JPEGInterchangeFormatLength" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)
  + ### TAG\_JPEG\_RESTART\_INTERVAL

    public static final int TAG\_JPEG\_RESTART\_INTERVAL

    Constant specifying the "JPEGRestartInterval" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_RESTART_INTERVAL)
  + ### TAG\_JPEG\_LOSSLESS\_PREDICTORS

    public static final int TAG\_JPEG\_LOSSLESS\_PREDICTORS

    Constant specifying the "JPEGLosslessPredictors" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_LOSSLESS_PREDICTORS)
  + ### TAG\_JPEG\_POINT\_TRANSFORMS

    public static final int TAG\_JPEG\_POINT\_TRANSFORMS

    Constant specifying the "JPEGPointTransforms" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_POINT_TRANSFORMS)
  + ### TAG\_JPEG\_Q\_TABLES

    public static final int TAG\_JPEG\_Q\_TABLES

    Constant specifying the "JPEGQTables" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_Q_TABLES)
  + ### TAG\_JPEG\_DC\_TABLES

    public static final int TAG\_JPEG\_DC\_TABLES

    Constant specifying the "JPEGDCTables" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_DC_TABLES)
  + ### TAG\_JPEG\_AC\_TABLES

    public static final int TAG\_JPEG\_AC\_TABLES

    Constant specifying the "JPEGACTables" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_JPEG_AC_TABLES)
  + ### TAG\_Y\_CB\_CR\_COEFFICIENTS

    public static final int TAG\_Y\_CB\_CR\_COEFFICIENTS

    Constant specifying the "YCbCrCoefficients" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_Y_CB_CR_COEFFICIENTS)
  + ### TAG\_Y\_CB\_CR\_SUBSAMPLING

    public static final int TAG\_Y\_CB\_CR\_SUBSAMPLING

    Constant specifying the "YCbCrSubsampling" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_Y_CB_CR_SUBSAMPLING)
  + ### TAG\_Y\_CB\_CR\_POSITIONING

    public static final int TAG\_Y\_CB\_CR\_POSITIONING

    Constant specifying the "YCbCrPositioning" tag.

    See Also:
    :   - [`Y_CB_CR_POSITIONING_CENTERED`](#Y_CB_CR_POSITIONING_CENTERED)
        - [`Y_CB_CR_POSITIONING_COSITED`](#Y_CB_CR_POSITIONING_COSITED)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_Y_CB_CR_POSITIONING)
  + ### Y\_CB\_CR\_POSITIONING\_CENTERED

    public static final int Y\_CB\_CR\_POSITIONING\_CENTERED

    A value to be used with the "YCbCrPositioning" tag.

    See Also:
    :   - [`TAG_Y_CB_CR_POSITIONING`](#TAG_Y_CB_CR_POSITIONING)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.Y_CB_CR_POSITIONING_CENTERED)
  + ### Y\_CB\_CR\_POSITIONING\_COSITED

    public static final int Y\_CB\_CR\_POSITIONING\_COSITED

    A value to be used with the "YCbCrPositioning" tag.

    See Also:
    :   - [`TAG_Y_CB_CR_POSITIONING`](#TAG_Y_CB_CR_POSITIONING)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.Y_CB_CR_POSITIONING_COSITED)
  + ### TAG\_REFERENCE\_BLACK\_WHITE

    public static final int TAG\_REFERENCE\_BLACK\_WHITE

    Constant specifying the "ReferenceBlackWhite" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_REFERENCE_BLACK_WHITE)
  + ### TAG\_COPYRIGHT

    public static final int TAG\_COPYRIGHT

    Constant specifying the "Copyright" tag.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_COPYRIGHT)
  + ### TAG\_ICC\_PROFILE

    public static final int TAG\_ICC\_PROFILE

    Constant specifying the "ICC Profile" tag.

    See Also:
    :   - [ICC Specification, section B.4: Embedding ICC profiles in TIFF files](http://www.color.org/ICC1V42.pdf)
        - [Constant Field Values](../../../../../constant-values.md#javax.imageio.plugins.tiff.BaselineTIFFTagSet.TAG_ICC_PROFILE)
* ## Method Details

  + ### getInstance

    public static [BaselineTIFFTagSet](BaselineTIFFTagSet.md "class in javax.imageio.plugins.tiff") getInstance()

    Returns a shared instance of a `BaselineTIFFTagSet`.

    Returns:
    :   a `BaselineTIFFTagSet` instance.