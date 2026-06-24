Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class PixelInterleavedSampleModel

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.SampleModel](SampleModel.md "class in java.awt.image")

[java.awt.image.ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

java.awt.image.PixelInterleavedSampleModel

---

public class PixelInterleavedSampleModel
extends [ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

This class represents image data which is stored in a pixel interleaved
fashion and for
which each sample of a pixel occupies one data element of the DataBuffer.
It subclasses ComponentSampleModel but provides a more efficient
implementation for accessing pixel interleaved image data than is provided
by ComponentSampleModel. This class
stores sample data for all bands in a single bank of the
DataBuffer. Accessor methods are provided so that image data can be
manipulated directly. Pixel stride is the number of
data array elements between two samples for the same band on the same
scanline. Scanline stride is the number of data array elements between
a given sample and the corresponding sample in the same column of the next
scanline. Band offsets denote the number
of data array elements from the first data array element of the bank
of the DataBuffer holding each band to the first sample of the band.
The bands are numbered from 0 to N-1.
Bank indices denote the correspondence between a bank of the data buffer
and a band of image data.
This class supports
[`TYPE_BYTE`](DataBuffer.md#TYPE_BYTE),
[`TYPE_USHORT`](DataBuffer.md#TYPE_USHORT),
[`TYPE_SHORT`](DataBuffer.md#TYPE_SHORT),
[`TYPE_INT`](DataBuffer.md#TYPE_INT),
[`TYPE_FLOAT`](DataBuffer.md#TYPE_FLOAT) and
[`TYPE_DOUBLE`](DataBuffer.md#TYPE_DOUBLE) datatypes.

* ## Field Summary

  ### Fields inherited from class java.awt.image.[ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

  `bandOffsets, bankIndices, numBands, numBanks, pixelStride, scanlineStride`

  ### Fields inherited from class java.awt.image.[SampleModel](SampleModel.md "class in java.awt.image")

  `dataType, height, width`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PixelInterleavedSampleModel(int dataType,
  int w,
  int h,
  int pixelStride,
  int scanlineStride,
  int[] bandOffsets)`

  Constructs a PixelInterleavedSampleModel with the specified parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SampleModel`

  `createCompatibleSampleModel(int w,
  int h)`

  Creates a new PixelInterleavedSampleModel with the specified
  width and height.

  `SampleModel`

  `createSubsetSampleModel(int[] bands)`

  Creates a new PixelInterleavedSampleModel with a subset of the
  bands of this PixelInterleavedSampleModel.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  ### Methods inherited from class java.awt.image.[ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

  `createDataBuffer, equals, getBandOffsets, getBankIndices, getDataElements, getNumDataElements, getOffset, getOffset, getPixel, getPixels, getPixelStride, getSample, getSampleDouble, getSampleFloat, getSamples, getSampleSize, getSampleSize, getScanlineStride, setDataElements, setPixel, setPixels, setSample, setSample, setSample, setSamples`

  ### Methods inherited from class java.awt.image.[SampleModel](SampleModel.md "class in java.awt.image")

  `getDataElements, getDataType, getHeight, getNumBands, getPixel, getPixel, getPixels, getPixels, getSamples, getSamples, getTransferType, getWidth, setDataElements, setPixel, setPixel, setPixels, setPixels, setSamples, setSamples`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PixelInterleavedSampleModel

    public PixelInterleavedSampleModel(int dataType,
    int w,
    int h,
    int pixelStride,
    int scanlineStride,
    int[] bandOffsets)

    Constructs a PixelInterleavedSampleModel with the specified parameters.
    The number of bands will be given by the length of the bandOffsets
    array.

    Parameters:
    :   `dataType` - The data type for storing samples.
    :   `w` - The width (in pixels) of the region of
        image data described.
    :   `h` - The height (in pixels) of the region of
        image data described.
    :   `pixelStride` - The pixel stride of the image data.
    :   `scanlineStride` - The line stride of the image data.
    :   `bandOffsets` - The offsets of all bands.

    Throws:
    :   `IllegalArgumentException` - if `w` or
        `h` is not greater than 0
    :   `IllegalArgumentException` - if any offset between bands is
        greater than the scanline stride
    :   `IllegalArgumentException` - if the product of
        `pixelStride` and `w` is greater
        than `scanlineStride`
    :   `IllegalArgumentException` - if `pixelStride` is
        less than any offset between bands
    :   `IllegalArgumentException` - if `dataType` is not
        one of the supported data types
* ## Method Details

  + ### createCompatibleSampleModel

    public [SampleModel](SampleModel.md "class in java.awt.image") createCompatibleSampleModel(int w,
    int h)

    Creates a new PixelInterleavedSampleModel with the specified
    width and height. The new PixelInterleavedSampleModel will have the
    same number of bands, storage data type, and pixel stride
    as this PixelInterleavedSampleModel. The band offsets may be
    compressed such that the minimum of all of the band offsets is zero.

    Overrides:
    :   `createCompatibleSampleModel` in class `ComponentSampleModel`

    Parameters:
    :   `w` - the width of the resulting `SampleModel`
    :   `h` - the height of the resulting `SampleModel`

    Returns:
    :   a new `SampleModel` with the specified width
        and height.

    Throws:
    :   `IllegalArgumentException` - if `w` or
        `h` is not greater than 0
  + ### createSubsetSampleModel

    public [SampleModel](SampleModel.md "class in java.awt.image") createSubsetSampleModel(int[] bands)

    Creates a new PixelInterleavedSampleModel with a subset of the
    bands of this PixelInterleavedSampleModel. The new
    PixelInterleavedSampleModel can be used with any DataBuffer that the
    existing PixelInterleavedSampleModel can be used with. The new
    PixelInterleavedSampleModel/DataBuffer combination will represent
    an image with a subset of the bands of the original
    PixelInterleavedSampleModel/DataBuffer combination.

    Overrides:
    :   `createSubsetSampleModel` in class `ComponentSampleModel`

    Parameters:
    :   `bands` - a subset of bands from this
        `ComponentSampleModel`

    Returns:
    :   a `ComponentSampleModel` created with a subset
        of bands from this `ComponentSampleModel`.
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