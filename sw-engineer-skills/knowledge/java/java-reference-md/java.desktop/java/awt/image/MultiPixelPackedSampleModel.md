Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class MultiPixelPackedSampleModel

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.SampleModel](SampleModel.md "class in java.awt.image")

java.awt.image.MultiPixelPackedSampleModel

---

public class MultiPixelPackedSampleModel
extends [SampleModel](SampleModel.md "class in java.awt.image")

The `MultiPixelPackedSampleModel` class represents
one-banded images and can pack multiple one-sample
pixels into one data element. Pixels are not allowed to span data elements.
The data type can be DataBuffer.TYPE\_BYTE, DataBuffer.TYPE\_USHORT,
or DataBuffer.TYPE\_INT. Each pixel must be a power of 2 number of bits
and a power of 2 number of pixels must fit exactly in one data element.
Pixel bit stride is equal to the number of bits per pixel. Scanline
stride is in data elements and the last several data elements might be
padded with unused pixels. Data bit offset is the offset in bits from
the beginning of the [`DataBuffer`](DataBuffer.md "class in java.awt.image") to the first pixel and must be
a multiple of pixel bit stride.

The following code illustrates extracting the bits for pixel
`x, y` from `DataBuffer data`
and storing the pixel data in data elements of type
`dataType`:

```
      int dataElementSize = DataBuffer.getDataTypeSize(dataType);
      int bitnum = dataBitOffset + x*pixelBitStride;
      int element = data.getElem(y*scanlineStride + bitnum/dataElementSize);
      int shift = dataElementSize - (bitnum & (dataElementSize-1))
                  - pixelBitStride;
      int pixel = (element >> shift) & ((1 << pixelBitStride) - 1);
```

* ## Field Summary

  ### Fields inherited from class java.awt.image.[SampleModel](SampleModel.md "class in java.awt.image")

  `dataType, height, numBands, width`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MultiPixelPackedSampleModel(int dataType,
  int w,
  int h,
  int numberOfBits)`

  Constructs a `MultiPixelPackedSampleModel` with the
  specified data type, width, height and number of bits per pixel.

  `MultiPixelPackedSampleModel(int dataType,
  int w,
  int h,
  int numberOfBits,
  int scanlineStride,
  int dataBitOffset)`

  Constructs a `MultiPixelPackedSampleModel` with
  specified data type, width, height, number of bits per pixel,
  scanline stride and data bit offset.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SampleModel`

  `createCompatibleSampleModel(int w,
  int h)`

  Creates a new `MultiPixelPackedSampleModel` with the
  specified width and height.

  `DataBuffer`

  `createDataBuffer()`

  Creates a `DataBuffer` that corresponds to this
  `MultiPixelPackedSampleModel`.

  `SampleModel`

  `createSubsetSampleModel(int[] bands)`

  Creates a new `MultiPixelPackedSampleModel` with a
  subset of the bands of this
  `MultiPixelPackedSampleModel`.

  `boolean`

  `equals(Object o)`

  Indicates whether some other object is "equal to" this one.

  `int`

  `getBitOffset(int x)`

  Returns the offset, in bits, into the data element in which it is
  stored for the `x`th pixel of a scanline.

  `int`

  `getDataBitOffset()`

  Returns the data bit offset in bits.

  `Object`

  `getDataElements(int x,
  int y,
  Object obj,
  DataBuffer data)`

  Returns data for a single pixel in a primitive array of type
  TransferType.

  `int`

  `getNumDataElements()`

  Returns the number of data elements needed to transfer one pixel
  via the [`getDataElements(int, int, java.lang.Object, java.awt.image.DataBuffer)`](#getDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer)) and [`setDataElements(int, int, java.lang.Object, java.awt.image.DataBuffer)`](#setDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
  methods.

  `int`

  `getOffset(int x,
  int y)`

  Returns the offset of pixel (x, y) in data array elements.

  `int[]`

  `getPixel(int x,
  int y,
  int[] iArray,
  DataBuffer data)`

  Returns the specified single band pixel in the first element
  of an `int` array.

  `int`

  `getPixelBitStride()`

  Returns the pixel bit stride in bits.

  `int`

  `getSample(int x,
  int y,
  int b,
  DataBuffer data)`

  Returns as `int` the sample in a specified band for the
  pixel located at (x, y).

  `int[]`

  `getSampleSize()`

  Returns the number of bits per sample for all bands.

  `int`

  `getSampleSize(int band)`

  Returns the number of bits per sample for the specified band.

  `int`

  `getScanlineStride()`

  Returns the scanline stride.

  `int`

  `getTransferType()`

  Returns the TransferType used to transfer pixels by way of the
  `getDataElements` and `setDataElements`
  methods.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `void`

  `setDataElements(int x,
  int y,
  Object obj,
  DataBuffer data)`

  Sets the data for a single pixel in the specified
  `DataBuffer` from a primitive array of type
  TransferType.

  `void`

  `setPixel(int x,
  int y,
  int[] iArray,
  DataBuffer data)`

  Sets a pixel in the `DataBuffer` using an
  `int` array for input.

  `void`

  `setSample(int x,
  int y,
  int b,
  int s,
  DataBuffer data)`

  Sets a sample in the specified band for the pixel located at
  (x, y) in the `DataBuffer` using an
  `int` for input.

  ### Methods inherited from class java.awt.image.[SampleModel](SampleModel.md "class in java.awt.image")

  `getDataElements, getDataType, getHeight, getNumBands, getPixel, getPixel, getPixels, getPixels, getPixels, getSampleDouble, getSampleFloat, getSamples, getSamples, getSamples, getWidth, setDataElements, setPixel, setPixel, setPixels, setPixels, setPixels, setSample, setSample, setSamples, setSamples, setSamples`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MultiPixelPackedSampleModel

    public MultiPixelPackedSampleModel(int dataType,
    int w,
    int h,
    int numberOfBits)

    Constructs a `MultiPixelPackedSampleModel` with the
    specified data type, width, height and number of bits per pixel.

    Parameters:
    :   `dataType` - the data type for storing samples
    :   `w` - the width, in pixels, of the region of
        image data described
    :   `h` - the height, in pixels, of the region of
        image data described
    :   `numberOfBits` - the number of bits per pixel

    Throws:
    :   `IllegalArgumentException` - if `dataType` is not
        either `DataBuffer.TYPE_BYTE`,
        `DataBuffer.TYPE_USHORT`, or
        `DataBuffer.TYPE_INT`
  + ### MultiPixelPackedSampleModel

    public MultiPixelPackedSampleModel(int dataType,
    int w,
    int h,
    int numberOfBits,
    int scanlineStride,
    int dataBitOffset)

    Constructs a `MultiPixelPackedSampleModel` with
    specified data type, width, height, number of bits per pixel,
    scanline stride and data bit offset.

    Parameters:
    :   `dataType` - the data type for storing samples
    :   `w` - the width, in pixels, of the region of
        image data described
    :   `h` - the height, in pixels, of the region of
        image data described
    :   `numberOfBits` - the number of bits per pixel
    :   `scanlineStride` - the line stride of the image data
    :   `dataBitOffset` - the data bit offset for the region of image
        data described

    Throws:
    :   `RasterFormatException` - if the number of bits per pixel
        is not a power of 2 or if a power of 2 number of
        pixels do not fit in one data element.
    :   `IllegalArgumentException` - if `w` or
        `h` is not greater than 0
    :   `IllegalArgumentException` - if `dataType` is not
        either `DataBuffer.TYPE_BYTE`,
        `DataBuffer.TYPE_USHORT`, or
        `DataBuffer.TYPE_INT`
* ## Method Details

  + ### createCompatibleSampleModel

    public [SampleModel](SampleModel.md "class in java.awt.image") createCompatibleSampleModel(int w,
    int h)

    Creates a new `MultiPixelPackedSampleModel` with the
    specified width and height. The new
    `MultiPixelPackedSampleModel` has the
    same storage data type and number of bits per pixel as this
    `MultiPixelPackedSampleModel`.

    Specified by:
    :   `createCompatibleSampleModel` in class `SampleModel`

    Parameters:
    :   `w` - the specified width
    :   `h` - the specified height

    Returns:
    :   a [`SampleModel`](SampleModel.md "class in java.awt.image") with the specified width and height
        and with the same storage data type and number of bits per pixel
        as this `MultiPixelPackedSampleModel`.

    Throws:
    :   `IllegalArgumentException` - if `w` or
        `h` is not greater than 0
  + ### createDataBuffer

    public [DataBuffer](DataBuffer.md "class in java.awt.image") createDataBuffer()

    Creates a `DataBuffer` that corresponds to this
    `MultiPixelPackedSampleModel`. The
    `DataBuffer` object's data type and size
    is consistent with this `MultiPixelPackedSampleModel`.
    The `DataBuffer` has a single bank.

    Specified by:
    :   `createDataBuffer` in class `SampleModel`

    Returns:
    :   a `DataBuffer` with the same data type and
        size as this `MultiPixelPackedSampleModel`.
  + ### getNumDataElements

    public int getNumDataElements()

    Returns the number of data elements needed to transfer one pixel
    via the [`getDataElements(int, int, java.lang.Object, java.awt.image.DataBuffer)`](#getDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer)) and [`setDataElements(int, int, java.lang.Object, java.awt.image.DataBuffer)`](#setDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
    methods. For a `MultiPixelPackedSampleModel`, this is
    one.

    Specified by:
    :   `getNumDataElements` in class `SampleModel`

    Returns:
    :   the number of data elements.

    See Also:
    :   - [`SampleModel.getDataElements(int, int, Object, DataBuffer)`](SampleModel.md#getDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.getDataElements(int, int, int, int, Object, DataBuffer)`](SampleModel.md#getDataElements(int,int,int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.setDataElements(int, int, Object, DataBuffer)`](SampleModel.md#setDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.setDataElements(int, int, int, int, Object, DataBuffer)`](SampleModel.md#setDataElements(int,int,int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.getTransferType()`](SampleModel.md#getTransferType())
  + ### getSampleSize

    public int[] getSampleSize()

    Returns the number of bits per sample for all bands.

    Specified by:
    :   `getSampleSize` in class `SampleModel`

    Returns:
    :   the number of bits per sample.
  + ### getSampleSize

    public int getSampleSize(int band)

    Returns the number of bits per sample for the specified band.

    Specified by:
    :   `getSampleSize` in class `SampleModel`

    Parameters:
    :   `band` - the specified band

    Returns:
    :   the number of bits per sample for the specified band.
  + ### getOffset

    public int getOffset(int x,
    int y)

    Returns the offset of pixel (x, y) in data array elements.

    Parameters:
    :   `x` - the X coordinate of the specified pixel
    :   `y` - the Y coordinate of the specified pixel

    Returns:
    :   the offset of the specified pixel.
  + ### getBitOffset

    public int getBitOffset(int x)

    Returns the offset, in bits, into the data element in which it is
    stored for the `x`th pixel of a scanline.
    This offset is the same for all scanlines.

    Parameters:
    :   `x` - the specified pixel

    Returns:
    :   the bit offset of the specified pixel.
  + ### getScanlineStride

    public int getScanlineStride()

    Returns the scanline stride.

    Returns:
    :   the scanline stride of this
        `MultiPixelPackedSampleModel`.
  + ### getPixelBitStride

    public int getPixelBitStride()

    Returns the pixel bit stride in bits. This value is the same as
    the number of bits per pixel.

    Returns:
    :   the `pixelBitStride` of this
        `MultiPixelPackedSampleModel`.
  + ### getDataBitOffset

    public int getDataBitOffset()

    Returns the data bit offset in bits.

    Returns:
    :   the `dataBitOffset` of this
        `MultiPixelPackedSampleModel`.
  + ### getTransferType

    public int getTransferType()

    Returns the TransferType used to transfer pixels by way of the
    `getDataElements` and `setDataElements`
    methods. The TransferType might or might not be the same as the
    storage DataType. The TransferType is one of
    DataBuffer.TYPE\_BYTE, DataBuffer.TYPE\_USHORT,
    or DataBuffer.TYPE\_INT.

    Overrides:
    :   `getTransferType` in class `SampleModel`

    Returns:
    :   the transfertype.

    See Also:
    :   - [`SampleModel.getDataElements(int, int, Object, DataBuffer)`](SampleModel.md#getDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.getDataElements(int, int, int, int, Object, DataBuffer)`](SampleModel.md#getDataElements(int,int,int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.setDataElements(int, int, Object, DataBuffer)`](SampleModel.md#setDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.setDataElements(int, int, int, int, Object, DataBuffer)`](SampleModel.md#setDataElements(int,int,int,int,java.lang.Object,java.awt.image.DataBuffer))
        - [`SampleModel.getNumDataElements()`](SampleModel.md#getNumDataElements())
        - [`DataBuffer`](DataBuffer.md "class in java.awt.image")
  + ### createSubsetSampleModel

    public [SampleModel](SampleModel.md "class in java.awt.image") createSubsetSampleModel(int[] bands)

    Creates a new `MultiPixelPackedSampleModel` with a
    subset of the bands of this
    `MultiPixelPackedSampleModel`. Since a
    `MultiPixelPackedSampleModel` only has one band, the
    bands argument must have a length of one and indicate the zeroth
    band.

    Specified by:
    :   `createSubsetSampleModel` in class `SampleModel`

    Parameters:
    :   `bands` - the specified bands

    Returns:
    :   a new `SampleModel` with a subset of bands of
        this `MultiPixelPackedSampleModel`.

    Throws:
    :   `RasterFormatException` - if the number of bands requested
        is not one.
    :   `IllegalArgumentException` - if `w` or
        `h` is not greater than 0
  + ### getSample

    public int getSample(int x,
    int y,
    int b,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns as `int` the sample in a specified band for the
    pixel located at (x, y). An
    `ArrayIndexOutOfBoundsException` is thrown if the
    coordinates are not in bounds.

    Specified by:
    :   `getSample` in class `SampleModel`

    Parameters:
    :   `x` - the X coordinate of the specified pixel
    :   `y` - the Y coordinate of the specified pixel
    :   `b` - the band to return, which is assumed to be 0
    :   `data` - the `DataBuffer` containing the image
        data

    Returns:
    :   the specified band containing the sample of the specified
        pixel.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the specified
        coordinates are not in bounds.

    See Also:
    :   - [`setSample(int, int, int, int, DataBuffer)`](#setSample(int,int,int,int,java.awt.image.DataBuffer))
  + ### setSample

    public void setSample(int x,
    int y,
    int b,
    int s,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets a sample in the specified band for the pixel located at
    (x, y) in the `DataBuffer` using an
    `int` for input.
    An `ArrayIndexOutOfBoundsException` is thrown if the
    coordinates are not in bounds.

    Specified by:
    :   `setSample` in class `SampleModel`

    Parameters:
    :   `x` - the X coordinate of the specified pixel
    :   `y` - the Y coordinate of the specified pixel
    :   `b` - the band to return, which is assumed to be 0
    :   `s` - the input sample as an `int`
    :   `data` - the `DataBuffer` where image data is stored

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the coordinates are
        not in bounds.

    See Also:
    :   - [`getSample(int, int, int, DataBuffer)`](#getSample(int,int,int,java.awt.image.DataBuffer))
  + ### getDataElements

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getDataElements(int x,
    int y,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns data for a single pixel in a primitive array of type
    TransferType. For a `MultiPixelPackedSampleModel`,
    the array has one element, and the type is the smallest of
    DataBuffer.TYPE\_BYTE, DataBuffer.TYPE\_USHORT, or DataBuffer.TYPE\_INT
    that can hold a single pixel. Generally, `obj`
    should be passed in as `null`, so that the
    `Object` is created automatically and is the
    correct primitive data type.

    The following code illustrates transferring data for one pixel from
    `DataBuffer db1`, whose storage layout is
    described by `MultiPixelPackedSampleModel`
    `mppsm1`, to `DataBuffer db2`,
    whose storage layout is described by
    `MultiPixelPackedSampleModel mppsm2`.
    The transfer is generally more efficient than using
    `getPixel` or `setPixel`.

    ```
           MultiPixelPackedSampleModel mppsm1, mppsm2;
           DataBufferInt db1, db2;
           mppsm2.setDataElements(x, y, mppsm1.getDataElements(x, y, null,
                                  db1), db2);
    ```

    Using `getDataElements` or `setDataElements`
    to transfer between two `DataBuffer/SampleModel` pairs
    is legitimate if the `SampleModels` have the same number
    of bands, corresponding bands have the same number of
    bits per sample, and the TransferTypes are the same.

    If `obj` is not `null`, it should be a
    primitive array of type TransferType. Otherwise, a
    `ClassCastException` is thrown. An
    `ArrayIndexOutOfBoundsException` is thrown if the
    coordinates are not in bounds, or if `obj` is not
    `null` and is not large enough to hold the pixel data.

    Specified by:
    :   `getDataElements` in class `SampleModel`

    Parameters:
    :   `x` - the X coordinate of the specified pixel
    :   `y` - the Y coordinate of the specified pixel
    :   `obj` - a primitive array in which to return the pixel data or
        `null`.
    :   `data` - the `DataBuffer` containing the image data.

    Returns:
    :   an `Object` containing data for the specified
        pixel.

    Throws:
    :   `ClassCastException` - if `obj` is not a
        primitive array of type TransferType or is not `null`
    :   `ArrayIndexOutOfBoundsException` - if the coordinates are
        not in bounds, or if `obj` is not `null` or
        not large enough to hold the pixel data

    See Also:
    :   - [`setDataElements(int, int, Object, DataBuffer)`](#setDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
  + ### getPixel

    public int[] getPixel(int x,
    int y,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Returns the specified single band pixel in the first element
    of an `int` array.
    `ArrayIndexOutOfBoundsException` is thrown if the
    coordinates are not in bounds.

    Overrides:
    :   `getPixel` in class `SampleModel`

    Parameters:
    :   `x` - the X coordinate of the specified pixel
    :   `y` - the Y coordinate of the specified pixel
    :   `iArray` - the array containing the pixel to be returned or
        `null`
    :   `data` - the `DataBuffer` where image data is stored

    Returns:
    :   an array containing the specified pixel.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the coordinates
        are not in bounds

    See Also:
    :   - [`setPixel(int, int, int[], DataBuffer)`](#setPixel(int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### setDataElements

    public void setDataElements(int x,
    int y,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets the data for a single pixel in the specified
    `DataBuffer` from a primitive array of type
    TransferType. For a `MultiPixelPackedSampleModel`,
    only the first element of the array holds valid data,
    and the type must be the smallest of
    DataBuffer.TYPE\_BYTE, DataBuffer.TYPE\_USHORT, or DataBuffer.TYPE\_INT
    that can hold a single pixel.

    The following code illustrates transferring data for one pixel from
    `DataBuffer db1`, whose storage layout is
    described by `MultiPixelPackedSampleModel`
    `mppsm1`, to `DataBuffer db2`,
    whose storage layout is described by
    `MultiPixelPackedSampleModel mppsm2`.
    The transfer is generally more efficient than using
    `getPixel` or `setPixel`.

    ```
           MultiPixelPackedSampleModel mppsm1, mppsm2;
           DataBufferInt db1, db2;
           mppsm2.setDataElements(x, y, mppsm1.getDataElements(x, y, null,
                                  db1), db2);
    ```

    Using `getDataElements` or `setDataElements` to
    transfer between two `DataBuffer/SampleModel` pairs is
    legitimate if the `SampleModel` objects have
    the same number of bands, corresponding bands have the same number of
    bits per sample, and the TransferTypes are the same.

    `obj` must be a primitive array of type TransferType.
    Otherwise, a `ClassCastException` is thrown. An
    `ArrayIndexOutOfBoundsException` is thrown if the
    coordinates are not in bounds, or if `obj` is not large
    enough to hold the pixel data.

    Specified by:
    :   `setDataElements` in class `SampleModel`

    Parameters:
    :   `x` - the X coordinate of the pixel location
    :   `y` - the Y coordinate of the pixel location
    :   `obj` - a primitive array containing pixel data
    :   `data` - the `DataBuffer` containing the image data

    See Also:
    :   - [`getDataElements(int, int, Object, DataBuffer)`](#getDataElements(int,int,java.lang.Object,java.awt.image.DataBuffer))
  + ### setPixel

    public void setPixel(int x,
    int y,
    int[] iArray,
    [DataBuffer](DataBuffer.md "class in java.awt.image") data)

    Sets a pixel in the `DataBuffer` using an
    `int` array for input.
    `ArrayIndexOutOfBoundsException` is thrown if
    the coordinates are not in bounds.

    Overrides:
    :   `setPixel` in class `SampleModel`

    Parameters:
    :   `x` - the X coordinate of the pixel location
    :   `y` - the Y coordinate of the pixel location
    :   `iArray` - the input pixel in an `int` array
    :   `data` - the `DataBuffer` containing the image data

    See Also:
    :   - [`getPixel(int, int, int[], DataBuffer)`](#getPixel(int,int,int%5B%5D,java.awt.image.DataBuffer))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Description copied from class: `Object`

    Indicates whether some other object is "equal to" this one.

    The `equals` method implements an equivalence relation
    on non-null object references:
    - It is *reflexive*: for any non-null reference value
      `x`, `x.equals(x)` should return
      `true`.- It is *symmetric*: for any non-null reference values
        `x` and `y`, `x.equals(y)`
        should return `true` if and only if
        `y.equals(x)` returns `true`.- It is *transitive*: for any non-null reference values
          `x`, `y`, and `z`, if
          `x.equals(y)` returns `true` and
          `y.equals(z)` returns `true`, then
          `x.equals(z)` should return `true`.- It is *consistent*: for any non-null reference values
            `x` and `y`, multiple invocations of
            `x.equals(y)` consistently return `true`
            or consistently return `false`, provided no
            information used in `equals` comparisons on the
            objects is modified.- For any non-null reference value `x`,
              `x.equals(null)` should return `false`.

    An equivalence relation partitions the elements it operates on
    into *equivalence classes*; all the members of an
    equivalence class are equal to each other. Members of an
    equivalence class are substitutable for each other, at least
    for some purposes.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
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
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))