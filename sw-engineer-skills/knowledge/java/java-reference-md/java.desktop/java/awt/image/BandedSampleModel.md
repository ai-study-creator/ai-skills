Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class BandedSampleModel

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.SampleModel](SampleModel.md "class in java.awt.image")

[java.awt.image.ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

java.awt.image.BandedSampleModel

---

public final class BandedSampleModel
extends [ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

This class represents image data which is stored in a band interleaved
fashion and for
which each sample of a pixel occupies one data element of the DataBuffer.
It subclasses ComponentSampleModel but provides a more efficient
implementation for accessing band interleaved image data than is provided
by ComponentSampleModel. This class should typically be used when working
with images which store sample data for each band in a different bank of the
DataBuffer. Accessor methods are provided so that image data can be
manipulated directly. Pixel stride is the number of
data array elements between two samples for the same band on the same
scanline. The pixel stride for a BandedSampleModel is one.
Scanline stride is the number of data array elements between
a given sample and the corresponding sample in the same column of the next
scanline. Band offsets denote the number
of data array elements from the first data array element of the bank
of the DataBuffer holding each band to the first sample of the band.
The bands are numbered from 0 to N-1.
Bank indices denote the correspondence between a bank of the data buffer
and a band of image data. This class supports
[`TYPE_BYTE`](DataBuffer.md#TYPE_BYTE),
[`TYPE_USHORT`](DataBuffer.md#TYPE_USHORT),
[`TYPE_SHORT`](DataBuffer.md#TYPE_SHORT),
[`TYPE_INT`](DataBuffer.md#TYPE_INT),
[`TYPE_FLOAT`](DataBuffer.md#TYPE_FLOAT), and
[`TYPE_DOUBLE`](DataBuffer.md#TYPE_DOUBLE) datatypes

* ## Field Summary

  ### Fields inherited from class java.awt.image.[ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

  `bandOffsets, bankIndices, numBands, numBanks, pixelStride, scanlineStride`

  ### Fields inherited from class java.awt.image.[SampleModel](SampleModel.md "class in java.awt.image")

  `dataType, height, width`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BandedSampleModel(int dataType,
  int w,
  int h,
  int numBands)`

  Constructs a BandedSampleModel with the specified parameters.

  `BandedSampleModel(int dataType,
  int w,
  int h,
  int scanlineStride,
  int[] bankIndices,
  int[] bandOffsets)`

  Constructs a BandedSampleModel with the specified parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SampleModel`

  `createCompatibleSampleModel(int w,
  int h)`

  Creates a new BandedSampleModel with the specified
  width and height.

  `DataBuffer`

  `createDataBuffer()`

  Creates a DataBuffer that corresponds to this BandedSampleModel,
  The DataBuffer's data type, number of banks, and size
  will be consistent with this BandedSampleModel.

  `SampleModel`

  `createSubsetSampleModel(int[] bands)`

  Creates a new BandedSampleModel with a subset of the bands of this
  BandedSampleModel.

  `Object`

  `getDataElements(int x,
  int y,
  Object obj,
  DataBuffer data)`

  Returns data for a single pixel in a primitive array of type
  TransferType.

  `int[]`

  `getPixel(int x,
  int y,
  int[] iArray,
  DataBuffer data)`

  Returns all samples for the specified pixel in an int array.

  `int[]`

  `getPixels(int x,
  int y,
  int w,
  int h,
  int[] iArray,
  DataBuffer data)`

  Returns all samples for the specified rectangle of pixels in
  an int array, one sample per data array element.

  `int`

  `getSample(int x,
  int y,
  int b,
  DataBuffer data)`

  Returns as int the sample in a specified band for the pixel
  located at (x,y).

  `double`

  `getSampleDouble(int x,
  int y,
  int b,
  DataBuffer data)`

  Returns the sample in a specified band
  for a pixel located at (x,y) as a double.

  `float`

  `getSampleFloat(int x,
  int y,
  int b,
  DataBuffer data)`

  Returns the sample in a specified band
  for the pixel located at (x,y) as a float.

  `int[]`

  `getSamples(int x,
  int y,
  int w,
  int h,
  int b,
  int[] iArray,
  DataBuffer data)`

  Returns the samples in a specified band for the specified rectangle
  of pixels in an int array, one sample per data array element.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `void`

  `setDataElements(int x,
  int y,
  Object obj,
  DataBuffer data)`

  Sets the data for a single pixel in the specified DataBuffer from a
  primitive array of type TransferType.

  `void`

  `setPixel(int x,
  int y,
  int[] iArray,
  DataBuffer data)`

  Sets a pixel in the DataBuffer using an int array of samples for input.

  `void`

  `setPixels(int x,
  int y,
  int w,
  int h,
  int[] iArray,
  DataBuffer data)`

  Sets all samples for a rectangle of pixels from an int array containing
  one sample per array element.

  `void`

  `setSample(int x,
  int y,
  int b,
  double s,
  DataBuffer data)`

  Sets a sample in the specified band for the pixel located at (x,y)
  in the DataBuffer using a double for input.

  `void`

  `setSample(int x,
  int y,
  int b,
  float s,
  DataBuffer data)`

  Sets a sample in the specified band for the pixel located at (x,y)
  in the DataBuffer using a float for input.

  `void`

  `setSample(int x,
  int y,
  int b,
  int s,
  DataBuffer data)`

  Sets a sample in the specified band for the pixel located at (x,y)
  in the DataBuffer using an int for input.

  `void`

  `setSamples(int x,
  int y,
  int w,
  int h,
  int b,
  int[] iArray,
  DataBuffer data)`

  Sets the samples in the specified band for the specified rectangle
  of pixels from an int array containing one sample per data array element.

  ### Methods inherited from class java.awt.image.[ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

  `equals, getBandOffsets, getBankIndices, getNumDataElements, getOffset, getOffset, getPixelStride, getSampleSize, getSampleSize, getScanlineStride`

  ### Methods inherited from class java.awt.image.[SampleModel](SampleModel.md "class in java.awt.image")

  `getDataElements, getDataType, getHeight, getNumBands, getPixel, getPixel, getPixels, getPixels, getSamples, getSamples, getTransferType, getWidth, setDataElements, setPixel, setPixel, setPixels, setPixels, setSamples, setSamples`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BandedSampleModel

    public BandedSampleModel(int dataType,
    int w,
    int h,
    int numBands)

    Constructs a BandedSampleModel with the specified parameters.
    The pixel stride will be one data element. The scanline stride
    will be the same as the width. Each band will be stored in
    a separate bank and all band offsets will be zero.

    Parameters:
    :   `dataType` - The data type for storing samples.
    :   `w` - The width (in pixels) of the region of
        image data described.
    :   `h` - The height (in pixels) of the region of image
        data described.
    :   `numBands` - The number of bands for the image data.

    Throws:
    :   `IllegalArgumentException` - if `w` and `h`
        are not both greater than 0
    :   `IllegalArgumentException` - if the product of `w`
        and `h` is greater than `Integer.MAX_VALUE`
    :   `IllegalArgumentException` - if `numBands` is not > 0
    :   `IllegalArgumentException` - if `dataType` is not
        one of the supported data types for this sample model.
  + ### BandedSampleModel

    public BandedSampleModel(int dataType,
    int w,
    int h,
    int scanlineStride,
    int[] bankIndices,
    int[] bandOffsets)

    Constructs a BandedSampleModel with the specified parameters.
    The number of bands will be inferred from the lengths of the
    bandOffsets bankIndices arrays, which must be equal. The pixel
    stride will be one data element.

    Parameters:
    :   `dataType` - The data type for storing samples.
    :   `w` - The width (in pixels) of the region of
        image data described.
    :   `h` - The height (in pixels) of the region of
        image data described.
    :   `scanlineStride` - The line stride of the of the image data.
    :   `bankIndices` - The bank index for each band.
    :   `bandOffsets` - The band offset for each band.

    Throws:
    :   `IllegalArgumentException` - if `w` and `h`
        are not both greater than 0
    :   `IllegalArgumentException` - if the product of `w`
        and `h` is greater than `Integer.MAX_VALUE`
    :   `IllegalArgumentException` - if `scanlineStride` is less than 0
    :   `NullPointerException` - if `bankIndices` is `null`
    :   `NullPointerException` - if `bandOffsets` is `null`
    :   `IllegalArgumentException` - if `bandOffsets.length` is 0
    :   `IllegalArgumentException` - if the length of
        `bankIndices` does not equal the length of
        `bandOffsets`
    :   `IllegalArgumentException` - if any of the bank indices
        of `bandIndices` is less than 0
    :   `IllegalArgumentException` - if `dataType` is not
        one of the supported data types for this sample model
* ## Method Details

  + ### createCompatibleSampleModel

    public [SampleModel](SampleModel.md "class in java.awt.image") createCompatibleSampleModel(int w,
    int h)

    Creates a new BandedSampleModel with the specified
    width and height. The new BandedSampleModel will have the same
    number of bands, storage data type, and bank indices
    as this BandedSampleModel. The band offsets will be compressed
    such that the offset between bands will be w\*pixelStride and
    the minimum of all of the band offsets is zero.

    Overrides:
    :   `createCompatibleSampleModel` in class `ComponentSampleModel`

    Parameters:
    :   `w` - the width of the resulting `BandedSampleModel`
    :   `h` - the height of the resulting `BandedSampleModel`

    Returns:
    :   a new `BandedSampleModel` with the specified
        width and height.

    Throws:
    :   `IllegalArgumentException` - if `w` or
        `h` equals either
        `Integer.MAX_VALUE` or
        `Integer.MIN_VALUE`
    :   `IllegalArgumentException` - if `dataType` is not
        one of the supported data types
  + ### createSubsetSampleModel

    public [SampleModel](SampleModel.md "class in java.awt.image") createSubsetSampleModel(int[] bands)

    Creates a new BandedSampleModel with a subset of the bands of this
    BandedSampleModel. The new BandedSampleModel can be
    used with any DataBuffer that the existing BandedSampleModel
    can be used with. The new BandedSampleModel/DataBuffer
    combination will represent an image with a subset of the bands
    of the original BandedSampleModel/DataBuffer combination.

    Overrides:
    :   `createSubsetSampleModel` in class `ComponentSampleModel`

    Parameters:
    :   `bands` - a subset of bands from this
        `ComponentSampleModel`

    Returns:
    :   a `ComponentSampleModel` created with a subset
        of bands from this `ComponentSampleModel`.

    Throws:
    :   `RasterFormatException` - if the number of bands is greater than
        the number of banks in this sample model.
    :   `IllegalArgumentException` - if `dataType` is not
        one of the supported data types
  + ### createDataBuffer

    public [DataBuffer](DataBuffer.md "class in java.awt.image") createDataBuffer()

    Creates a DataBuffer that corresponds to this BandedSampleModel,
    The DataBuffer's data type, number of banks, and size
    will be consistent with this BandedSampleModel.

    Overrides:
    :   `createDataBuffer` in class `ComponentSampleModel`

    Returns:
    :   a `DataBuffer` whose data type, number of banks
        and size are consistent with this
        `ComponentSampleModel`.

    Throws:
    :   `IllegalArgumentException` - if `dataType` is not
        one of the supported types.
  + ### getDataElements

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getDataElements(int x,
    int y,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns data for a single pixel in a primitive array of type
    TransferType. For a BandedSampleModel, this will be the same
    as the data type, and samples will be returned one per array
    element. Generally, obj
    should be passed in as null, so that the Object will be created
    automatically and will be of the right primitive data type.

    The following code illustrates transferring data for one pixel from
    DataBuffer `db1`, whose storage layout is described by
    BandedSampleModel `bsm1`, to DataBuffer `db2`,
    whose storage layout is described by
    BandedSampleModel `bsm2`.
    The transfer will generally be more efficient than using
    getPixel/setPixel.

    ```
           BandedSampleModel bsm1, bsm2;
           DataBufferInt db1, db2;
           bsm2.setDataElements(x, y, bsm1.getDataElements(x, y, null, db1),
                                db2);
    ```

    Using getDataElements/setDataElements to transfer between two
    DataBuffer/SampleModel pairs is legitimate if the SampleModels have
    the same number of bands, corresponding bands have the same number of
    bits per sample, and the TransferTypes are the same.

    If obj is non-null, it should be a primitive array of type TransferType.
    Otherwise, a ClassCastException is thrown. An
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds, or if obj is non-null and is not large enough to hold
    the pixel data.

    Overrides:
    :   `getDataElements` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `obj` - If non-null, a primitive array in which to return
        the pixel data.
    :   `data` - The DataBuffer containing the image data.

    Returns:
    :   the data for the specified pixel.

    See Also:
    :   - [`setDataElements(int, int, Object, DataBuffer)`](#setDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
  + ### getPixel

    public int[] getPixel(int x,
    int y,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns all samples for the specified pixel in an int array.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `getPixel` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `iArray` - If non-null, returns the samples in this array
    :   `data` - The DataBuffer containing the image data

    Returns:
    :   the samples for the specified pixel.

    See Also:
    :   - [`setPixel(int, int, int[], DataBuffer)`](#setPixel(int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### getPixels

    public int[] getPixels(int x,
    int y,
    int w,
    int h,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns all samples for the specified rectangle of pixels in
    an int array, one sample per data array element.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `getPixels` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the upper left pixel location
    :   `y` - The Y coordinate of the upper left pixel location
    :   `w` - The width of the pixel rectangle
    :   `h` - The height of the pixel rectangle
    :   `iArray` - If non-null, returns the samples in this array
    :   `data` - The DataBuffer containing the image data

    Returns:
    :   the samples for the pixels within the specified region.

    See Also:
    :   - [`setPixels(int, int, int, int, int[], DataBuffer)`](#setPixels(int,int,int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### getSample

    public int getSample(int x,
    int y,
    int b,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns as int the sample in a specified band for the pixel
    located at (x,y).
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `getSample` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `b` - The band to return
    :   `data` - The DataBuffer containing the image data

    Returns:
    :   the sample in the specified band for the specified pixel.

    See Also:
    :   - [`setSample(int, int, int, int, DataBuffer)`](#setSample(int,int,int,int,java.awt.image.DataBuffer))
  + ### getSampleFloat

    public float getSampleFloat(int x,
    int y,
    int b,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns the sample in a specified band
    for the pixel located at (x,y) as a float.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `getSampleFloat` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `b` - The band to return
    :   `data` - The DataBuffer containing the image data

    Returns:
    :   a float value that represents the sample in the specified
        band for the specified pixel.
  + ### getSampleDouble

    public double getSampleDouble(int x,
    int y,
    int b,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns the sample in a specified band
    for a pixel located at (x,y) as a double.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `getSampleDouble` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `b` - The band to return
    :   `data` - The DataBuffer containing the image data

    Returns:
    :   a double value that represents the sample in the specified
        band for the specified pixel.
  + ### getSamples

    public int[] getSamples(int x,
    int y,
    int w,
    int h,
    int b,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns the samples in a specified band for the specified rectangle
    of pixels in an int array, one sample per data array element.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `getSamples` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the upper left pixel location
    :   `y` - The Y coordinate of the upper left pixel location
    :   `w` - The width of the pixel rectangle
    :   `h` - The height of the pixel rectangle
    :   `b` - The band to return
    :   `iArray` - If non-null, returns the samples in this array
    :   `data` - The DataBuffer containing the image data

    Returns:
    :   the samples in the specified band for the pixels within
        the specified region.

    See Also:
    :   - [`setSamples(int, int, int, int, int, int[], DataBuffer)`](#setSamples(int,int,int,int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### setDataElements

    public void setDataElements(int x,
    int y,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets the data for a single pixel in the specified DataBuffer from a
    primitive array of type TransferType. For a BandedSampleModel,
    this will be the same as the data type, and samples are transferred
    one per array element.

    The following code illustrates transferring data for one pixel from
    DataBuffer `db1`, whose storage layout is described by
    BandedSampleModel `bsm1`, to DataBuffer `db2`,
    whose storage layout is described by
    BandedSampleModel `bsm2`.
    The transfer will generally be more efficient than using
    getPixel/setPixel.

    ```
           BandedSampleModel bsm1, bsm2;
           DataBufferInt db1, db2;
           bsm2.setDataElements(x, y, bsm1.getDataElements(x, y, null, db1),
                                db2);
    ```

    Using getDataElements/setDataElements to transfer between two
    DataBuffer/SampleModel pairs is legitimate if the SampleModels have
    the same number of bands, corresponding bands have the same number of
    bits per sample, and the TransferTypes are the same.

    obj must be a primitive array of type TransferType. Otherwise,
    a ClassCastException is thrown. An
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds, or if obj is not large enough to hold the pixel data.

    Overrides:
    :   `setDataElements` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `obj` - If non-null, returns the primitive array in this
        object
    :   `data` - The DataBuffer containing the image data

    See Also:
    :   - [`getDataElements(int, int, Object, DataBuffer)`](#getDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
  + ### setPixel

    public void setPixel(int x,
    int y,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets a pixel in the DataBuffer using an int array of samples for input.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `setPixel` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `iArray` - The input samples in an int array
    :   `data` - The DataBuffer containing the image data

    See Also:
    :   - [`getPixel(int, int, int[], DataBuffer)`](#getPixel(int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### setPixels

    public void setPixels(int x,
    int y,
    int w,
    int h,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets all samples for a rectangle of pixels from an int array containing
    one sample per array element.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `setPixels` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the upper left pixel location
    :   `y` - The Y coordinate of the upper left pixel location
    :   `w` - The width of the pixel rectangle
    :   `h` - The height of the pixel rectangle
    :   `iArray` - The input samples in an int array
    :   `data` - The DataBuffer containing the image data

    See Also:
    :   - [`getPixels(int, int, int, int, int[], DataBuffer)`](#getPixels(int,int,int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### setSample

    public void setSample(int x,
    int y,
    int b,
    int s,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets a sample in the specified band for the pixel located at (x,y)
    in the DataBuffer using an int for input.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `setSample` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `b` - The band to set
    :   `s` - The input sample as an int
    :   `data` - The DataBuffer containing the image data

    See Also:
    :   - [`getSample(int, int, int, DataBuffer)`](#getSample(int,int,int,java.awt.image.DataBuffer))
  + ### setSample

    public void setSample(int x,
    int y,
    int b,
    float s,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets a sample in the specified band for the pixel located at (x,y)
    in the DataBuffer using a float for input.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `setSample` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `b` - The band to set
    :   `s` - The input sample as a float
    :   `data` - The DataBuffer containing the image data

    See Also:
    :   - [`getSample(int, int, int, DataBuffer)`](#getSample(int,int,int,java.awt.image.DataBuffer))
  + ### setSample

    public void setSample(int x,
    int y,
    int b,
    double s,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets a sample in the specified band for the pixel located at (x,y)
    in the DataBuffer using a double for input.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `setSample` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the pixel location
    :   `y` - The Y coordinate of the pixel location
    :   `b` - The band to set
    :   `s` - The input sample as a double
    :   `data` - The DataBuffer containing the image data

    See Also:
    :   - [`getSample(int, int, int, DataBuffer)`](#getSample(int,int,int,java.awt.image.DataBuffer))
  + ### setSamples

    public void setSamples(int x,
    int y,
    int w,
    int h,
    int b,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets the samples in the specified band for the specified rectangle
    of pixels from an int array containing one sample per data array element.
    ArrayIndexOutOfBoundsException may be thrown if the coordinates are
    not in bounds.

    Overrides:
    :   `setSamples` in class `ComponentSampleModel`

    Parameters:
    :   `x` - The X coordinate of the upper left pixel location
    :   `y` - The Y coordinate of the upper left pixel location
    :   `w` - The width of the pixel rectangle
    :   `h` - The height of the pixel rectangle
    :   `b` - The band to set
    :   `iArray` - The input sample array
    :   `data` - The DataBuffer containing the image data

    See Also:
    :   - [`getSamples(int, int, int, int, int, int[], DataBuffer)`](#getSamples(int,int,int,int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `ComponentSampleModel`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))