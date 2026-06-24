Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class BufferedImageFilter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.ImageFilter](ImageFilter.md "class in java.awt.image")

java.awt.image.BufferedImageFilter

All Implemented Interfaces:
:   `ImageConsumer`, `Cloneable`

---

public class BufferedImageFilter
extends [ImageFilter](ImageFilter.md "class in java.awt.image")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

The `BufferedImageFilter` class subclasses an
`ImageFilter` to provide a simple means of
using a single-source/single-destination image operator
([`BufferedImageOp`](BufferedImageOp.md "interface in java.awt.image")) to filter a `BufferedImage`
in the Image Producer/Consumer/Observer
paradigm. Examples of these image operators are: [`ConvolveOp`](ConvolveOp.md "class in java.awt.image"),
[`AffineTransformOp`](AffineTransformOp.md "class in java.awt.image") and [`LookupOp`](LookupOp.md "class in java.awt.image").

See Also:
:   * [`ImageFilter`](ImageFilter.md "class in java.awt.image")
    * [`BufferedImage`](BufferedImage.md "class in java.awt.image")
    * [`BufferedImageOp`](BufferedImageOp.md "interface in java.awt.image")

* ## Field Summary

  ### Fields inherited from class java.awt.image.[ImageFilter](ImageFilter.md "class in java.awt.image")

  `consumer`

  ### Fields inherited from interface java.awt.image.[ImageConsumer](ImageConsumer.md "interface in java.awt.image")

  `COMPLETESCANLINES, IMAGEABORTED, IMAGEERROR, RANDOMPIXELORDER, SINGLEFRAME, SINGLEFRAMEDONE, SINGLEPASS, STATICIMAGEDONE, TOPDOWNLEFTRIGHT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BufferedImageFilter(BufferedImageOp op)`

  Constructs a `BufferedImageFilter` with the
  specified single-source/single-destination operator.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BufferedImageOp`

  `getBufferedImageOp()`

  Returns the `BufferedImageOp`.

  `void`

  `imageComplete(int status)`

  Filters the information provided in the `imageComplete`
  method of the `ImageConsumer` interface.

  `void`

  `setColorModel(ColorModel model)`

  Filters the information provided in the
  [`setColorModel`](ImageConsumer.md#setColorModel(java.awt.image.ColorModel)) method
  of the `ImageConsumer` interface.

  `void`

  `setDimensions(int width,
  int height)`

  Filters the information provided in the
  [`setDimensions`](ImageConsumer.md#setDimensions(int,int)) method
  of the [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image") interface.

  `void`

  `setPixels(int x,
  int y,
  int w,
  int h,
  ColorModel model,
  byte[] pixels,
  int off,
  int scansize)`

  Filters the information provided in the `setPixels`
  method of the `ImageConsumer` interface which takes
  an array of bytes.

  `void`

  `setPixels(int x,
  int y,
  int w,
  int h,
  ColorModel model,
  int[] pixels,
  int off,
  int scansize)`

  Filters the information provided in the `setPixels`
  method of the `ImageConsumer` interface which takes
  an array of integers.

  ### Methods inherited from class java.awt.image.[ImageFilter](ImageFilter.md "class in java.awt.image")

  `clone, getFilterInstance, resendTopDownLeftRight, setHints, setProperties`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BufferedImageFilter

    public BufferedImageFilter([BufferedImageOp](BufferedImageOp.md "interface in java.awt.image") op)

    Constructs a `BufferedImageFilter` with the
    specified single-source/single-destination operator.

    Parameters:
    :   `op` - the specified `BufferedImageOp` to
        use to filter a `BufferedImage`

    Throws:
    :   `NullPointerException` - if op is null
* ## Method Details

  + ### getBufferedImageOp

    public [BufferedImageOp](BufferedImageOp.md "interface in java.awt.image") getBufferedImageOp()

    Returns the `BufferedImageOp`.

    Returns:
    :   the operator of this `BufferedImageFilter`.
  + ### setDimensions

    public void setDimensions(int width,
    int height)

    Filters the information provided in the
    [`setDimensions`](ImageConsumer.md#setDimensions(int,int))  method
    of the [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image") interface.

    Note: This method is intended to be called by the
    [`ImageProducer`](ImageProducer.md "interface in java.awt.image") of the `Image` whose pixels are
    being filtered. Developers using this class to retrieve pixels from
    an image should avoid calling this method directly since that
    operation could result in problems with retrieving the requested
    pixels.

    Specified by:
    :   `setDimensions` in interface `ImageConsumer`

    Overrides:
    :   `setDimensions` in class `ImageFilter`

    Parameters:
    :   `width` - the width to which to set the width of this
        `BufferedImageFilter`
    :   `height` - the height to which to set the height of this
        `BufferedImageFilter`

    See Also:
    :   - [`ImageConsumer.setDimensions(int, int)`](ImageConsumer.md#setDimensions(int,int))
  + ### setColorModel

    public void setColorModel([ColorModel](ColorModel.md "class in java.awt.image") model)

    Filters the information provided in the
    [`setColorModel`](ImageConsumer.md#setColorModel(java.awt.image.ColorModel)) method
    of the `ImageConsumer` interface.

    If `model` is `null`, this
    method clears the current `ColorModel` of this
    `BufferedImageFilter`.

    Note: This method is intended to be called by the
    `ImageProducer` of the `Image`
    whose pixels are being filtered. Developers using this
    class to retrieve pixels from an image
    should avoid calling this method directly since that
    operation could result in problems with retrieving the
    requested pixels.

    Specified by:
    :   `setColorModel` in interface `ImageConsumer`

    Overrides:
    :   `setColorModel` in class `ImageFilter`

    Parameters:
    :   `model` - the [`ColorModel`](ColorModel.md "class in java.awt.image") to which to set the
        `ColorModel` of this `BufferedImageFilter`

    See Also:
    :   - [`ImageConsumer.setColorModel(java.awt.image.ColorModel)`](ImageConsumer.md#setColorModel(java.awt.image.ColorModel))
  + ### setPixels

    public void setPixels(int x,
    int y,
    int w,
    int h,
    [ColorModel](ColorModel.md "class in java.awt.image") model,
    byte[] pixels,
    int off,
    int scansize)

    Filters the information provided in the `setPixels`
    method of the `ImageConsumer` interface which takes
    an array of bytes.

    Note: This method is intended to be called by the
    `ImageProducer` of the `Image` whose pixels
    are being filtered. Developers using
    this class to retrieve pixels from an image should avoid calling
    this method directly since that operation could result in problems
    with retrieving the requested pixels.

    Specified by:
    :   `setPixels` in interface `ImageConsumer`

    Overrides:
    :   `setPixels` in class `ImageFilter`

    Parameters:
    :   `x` - the X coordinate of the upper-left corner of the
        area of pixels to be set
    :   `y` - the Y coordinate of the upper-left corner of the
        area of pixels to be set
    :   `w` - the width of the area of pixels
    :   `h` - the height of the area of pixels
    :   `model` - the specified `ColorModel`
    :   `pixels` - the array of pixels
    :   `off` - the offset into the `pixels` array
    :   `scansize` - the distance from one row of pixels to the next in
        the `pixels` array

    Throws:
    :   `IllegalArgumentException` - if width or height are less than
        zero.

    See Also:
    :   - [`ImageConsumer.setPixels(int, int, int, int, ColorModel, byte[], int, int)`](ImageConsumer.md#setPixels(int,int,int,int,java.awt.image.ColorModel,byte%5B%5D,int,int))
  + ### setPixels

    public void setPixels(int x,
    int y,
    int w,
    int h,
    [ColorModel](ColorModel.md "class in java.awt.image") model,
    int[] pixels,
    int off,
    int scansize)

    Filters the information provided in the `setPixels`
    method of the `ImageConsumer` interface which takes
    an array of integers.

    Note: This method is intended to be called by the
    `ImageProducer` of the `Image` whose
    pixels are being filtered. Developers using this class to
    retrieve pixels from an image should avoid calling this method
    directly since that operation could result in problems
    with retrieving the requested pixels.

    Specified by:
    :   `setPixels` in interface `ImageConsumer`

    Overrides:
    :   `setPixels` in class `ImageFilter`

    Parameters:
    :   `x` - the X coordinate of the upper-left corner of the
        area of pixels to be set
    :   `y` - the Y coordinate of the upper-left corner of the
        area of pixels to be set
    :   `w` - the width of the area of pixels
    :   `h` - the height of the area of pixels
    :   `model` - the specified `ColorModel`
    :   `pixels` - the array of pixels
    :   `off` - the offset into the `pixels` array
    :   `scansize` - the distance from one row of pixels to the next in
        the `pixels` array

    Throws:
    :   `IllegalArgumentException` - if width or height are less than
        zero.

    See Also:
    :   - [`ImageConsumer.setPixels(int, int, int, int, ColorModel, int[], int, int)`](ImageConsumer.md#setPixels(int,int,int,int,java.awt.image.ColorModel,int%5B%5D,int,int))
  + ### imageComplete

    public void imageComplete(int status)

    Filters the information provided in the `imageComplete`
    method of the `ImageConsumer` interface.

    Note: This method is intended to be called by the
    `ImageProducer` of the `Image` whose pixels
    are being filtered. Developers using
    this class to retrieve pixels from an image should avoid calling
    this method directly since that operation could result in problems
    with retrieving the requested pixels.

    Specified by:
    :   `imageComplete` in interface `ImageConsumer`

    Overrides:
    :   `imageComplete` in class `ImageFilter`

    Parameters:
    :   `status` - the status of image loading

    Throws:
    :   `ImagingOpException` - if there was a problem calling the filter
        method of the `BufferedImageOp` associated with this
        instance.

    See Also:
    :   - [`ImageConsumer.imageComplete(int)`](ImageConsumer.md#imageComplete(int))