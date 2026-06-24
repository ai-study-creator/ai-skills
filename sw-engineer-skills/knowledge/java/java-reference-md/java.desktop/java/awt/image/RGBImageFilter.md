Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class RGBImageFilter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.ImageFilter](ImageFilter.md "class in java.awt.image")

java.awt.image.RGBImageFilter

All Implemented Interfaces:
:   `ImageConsumer`, `Cloneable`

Direct Known Subclasses:
:   `GrayFilter`

---

public abstract class RGBImageFilter
extends [ImageFilter](ImageFilter.md "class in java.awt.image")

This class provides an easy way to create an ImageFilter which modifies
the pixels of an image in the default RGB ColorModel. It is meant to
be used in conjunction with a FilteredImageSource object to produce
filtered versions of existing images. It is an abstract class that
provides the calls needed to channel all of the pixel data through a
single method which converts pixels one at a time in the default RGB
ColorModel regardless of the ColorModel being used by the ImageProducer.
The only method which needs to be defined to create a usable image
filter is the filterRGB method. Here is an example of a definition
of a filter which swaps the red and blue components of an image:

```
      class RedBlueSwapFilter extends RGBImageFilter {
          public RedBlueSwapFilter() {
              // The filter's operation does not depend on the
              // pixel's location, so IndexColorModels can be
              // filtered directly.
              canFilterIndexColorModel = true;
          }

          public int filterRGB(int x, int y, int rgb) {
              return ((rgb & 0xff00ff00)
                      | ((rgb & 0xff0000) >> 16)
                      | ((rgb & 0xff) << 16));
          }
      }
```

See Also:
:   * [`FilteredImageSource`](FilteredImageSource.md "class in java.awt.image")
    * [`ImageFilter`](ImageFilter.md "class in java.awt.image")
    * [`ColorModel.getRGBdefault()`](ColorModel.md#getRGBdefault())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `canFilterIndexColorModel`

  This boolean indicates whether or not it is acceptable to apply
  the color filtering of the filterRGB method to the color table
  entries of an IndexColorModel object in lieu of pixel by pixel
  filtering.

  `protected ColorModel`

  `newmodel`

  The `ColorModel` with which to
  replace `origmodel` when the user calls
  `substituteColorModel`.

  `protected ColorModel`

  `origmodel`

  The `ColorModel` to be replaced by
  `newmodel` when the user calls
  [`substituteColorModel`](#substituteColorModel(java.awt.image.ColorModel,java.awt.image.ColorModel)).

  ### Fields inherited from class java.awt.image.[ImageFilter](ImageFilter.md "class in java.awt.image")

  `consumer`

  ### Fields inherited from interface java.awt.image.[ImageConsumer](ImageConsumer.md "interface in java.awt.image")

  `COMPLETESCANLINES, IMAGEABORTED, IMAGEERROR, RANDOMPIXELORDER, SINGLEFRAME, SINGLEFRAMEDONE, SINGLEPASS, STATICIMAGEDONE, TOPDOWNLEFTRIGHT`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RGBImageFilter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `IndexColorModel`

  `filterIndexColorModel(IndexColorModel icm)`

  Filters an IndexColorModel object by running each entry in its
  color tables through the filterRGB function that RGBImageFilter
  subclasses must provide.

  `abstract int`

  `filterRGB(int x,
  int y,
  int rgb)`

  Subclasses must specify a method to convert a single input pixel
  in the default RGB ColorModel to a single output pixel.

  `void`

  `filterRGBPixels(int x,
  int y,
  int w,
  int h,
  int[] pixels,
  int off,
  int scansize)`

  Filters a buffer of pixels in the default RGB ColorModel by passing
  them one by one through the filterRGB method.

  `void`

  `setColorModel(ColorModel model)`

  If the ColorModel is an IndexColorModel and the subclass has
  set the canFilterIndexColorModel flag to true, we substitute
  a filtered version of the color model here and wherever
  that original ColorModel object appears in the setPixels methods.

  `void`

  `setPixels(int x,
  int y,
  int w,
  int h,
  ColorModel model,
  byte[] pixels,
  int off,
  int scansize)`

  If the ColorModel object is the same one that has already
  been converted, then simply passes the pixels through with the
  converted ColorModel.

  `void`

  `setPixels(int x,
  int y,
  int w,
  int h,
  ColorModel model,
  int[] pixels,
  int off,
  int scansize)`

  If the ColorModel object is the same one that has already
  been converted, then simply passes the pixels through with the
  converted ColorModel, otherwise converts the buffer of integer
  pixels to the default RGB ColorModel and passes the converted
  buffer to the filterRGBPixels method to be converted one by one.

  `void`

  `substituteColorModel(ColorModel oldcm,
  ColorModel newcm)`

  Registers two ColorModel objects for substitution.

  ### Methods inherited from class java.awt.image.[ImageFilter](ImageFilter.md "class in java.awt.image")

  `clone, getFilterInstance, imageComplete, resendTopDownLeftRight, setDimensions, setHints, setProperties`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### origmodel

    protected [ColorModel](ColorModel.md "class in java.awt.image") origmodel

    The `ColorModel` to be replaced by
    `newmodel` when the user calls
    [`substituteColorModel`](#substituteColorModel(java.awt.image.ColorModel,java.awt.image.ColorModel)).
  + ### newmodel

    protected [ColorModel](ColorModel.md "class in java.awt.image") newmodel

    The `ColorModel` with which to
    replace `origmodel` when the user calls
    `substituteColorModel`.
  + ### canFilterIndexColorModel

    protected boolean canFilterIndexColorModel

    This boolean indicates whether or not it is acceptable to apply
    the color filtering of the filterRGB method to the color table
    entries of an IndexColorModel object in lieu of pixel by pixel
    filtering. Subclasses should set this variable to true in their
    constructor if their filterRGB method does not depend on the
    coordinate of the pixel being filtered.

    See Also:
    :   - [`substituteColorModel(java.awt.image.ColorModel, java.awt.image.ColorModel)`](#substituteColorModel(java.awt.image.ColorModel,java.awt.image.ColorModel))
        - [`filterRGB(int, int, int)`](#filterRGB(int,int,int))
        - [`IndexColorModel`](IndexColorModel.md "class in java.awt.image")
* ## Constructor Details

  + ### RGBImageFilter

    protected RGBImageFilter()

    Constructor for subclasses to call.
* ## Method Details

  + ### setColorModel

    public void setColorModel([ColorModel](ColorModel.md "class in java.awt.image") model)

    If the ColorModel is an IndexColorModel and the subclass has
    set the canFilterIndexColorModel flag to true, we substitute
    a filtered version of the color model here and wherever
    that original ColorModel object appears in the setPixels methods.
    If the ColorModel is not an IndexColorModel or is null, this method
    overrides the default ColorModel used by the ImageProducer and
    specifies the default RGB ColorModel instead.

    Note: This method is intended to be called by the
    `ImageProducer` of the `Image` whose pixels
    are being filtered. Developers using
    this class to filter pixels from an image should avoid calling
    this method directly since that operation could interfere
    with the filtering operation.

    Specified by:
    :   `setColorModel` in interface `ImageConsumer`

    Overrides:
    :   `setColorModel` in class `ImageFilter`

    Parameters:
    :   `model` - the specified `ColorModel`

    See Also:
    :   - [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image")
        - [`ColorModel.getRGBdefault()`](ColorModel.md#getRGBdefault())
  + ### substituteColorModel

    public void substituteColorModel([ColorModel](ColorModel.md "class in java.awt.image") oldcm,
    [ColorModel](ColorModel.md "class in java.awt.image") newcm)

    Registers two ColorModel objects for substitution. If the oldcm
    is encountered during any of the setPixels methods, the newcm
    is substituted and the pixels passed through
    untouched (but with the new ColorModel object).

    Parameters:
    :   `oldcm` - the ColorModel object to be replaced on the fly
    :   `newcm` - the ColorModel object to replace oldcm on the fly
  + ### filterIndexColorModel

    public [IndexColorModel](IndexColorModel.md "class in java.awt.image") filterIndexColorModel([IndexColorModel](IndexColorModel.md "class in java.awt.image") icm)

    Filters an IndexColorModel object by running each entry in its
    color tables through the filterRGB function that RGBImageFilter
    subclasses must provide. Uses coordinates of -1 to indicate that
    a color table entry is being filtered rather than an actual
    pixel value.

    Parameters:
    :   `icm` - the IndexColorModel object to be filtered

    Returns:
    :   a new IndexColorModel representing the filtered colors

    Throws:
    :   `NullPointerException` - if `icm` is null
  + ### filterRGBPixels

    public void filterRGBPixels(int x,
    int y,
    int w,
    int h,
    int[] pixels,
    int off,
    int scansize)

    Filters a buffer of pixels in the default RGB ColorModel by passing
    them one by one through the filterRGB method.

    Parameters:
    :   `x` - the X coordinate of the upper-left corner of the region
        of pixels
    :   `y` - the Y coordinate of the upper-left corner of the region
        of pixels
    :   `w` - the width of the region of pixels
    :   `h` - the height of the region of pixels
    :   `pixels` - the array of pixels
    :   `off` - the offset into the `pixels` array
    :   `scansize` - the distance from one row of pixels to the next
        in the array

    See Also:
    :   - [`ColorModel.getRGBdefault()`](ColorModel.md#getRGBdefault())
        - [`filterRGB(int, int, int)`](#filterRGB(int,int,int))
  + ### setPixels

    public void setPixels(int x,
    int y,
    int w,
    int h,
    [ColorModel](ColorModel.md "class in java.awt.image") model,
    byte[] pixels,
    int off,
    int scansize)

    If the ColorModel object is the same one that has already
    been converted, then simply passes the pixels through with the
    converted ColorModel. Otherwise converts the buffer of byte
    pixels to the default RGB ColorModel and passes the converted
    buffer to the filterRGBPixels method to be converted one by one.

    Note: This method is intended to be called by the
    `ImageProducer` of the `Image` whose pixels
    are being filtered. Developers using
    this class to filter pixels from an image should avoid calling
    this method directly since that operation could interfere
    with the filtering operation.

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

    See Also:
    :   - [`ColorModel.getRGBdefault()`](ColorModel.md#getRGBdefault())
        - [`filterRGBPixels(int, int, int, int, int[], int, int)`](#filterRGBPixels(int,int,int,int,int%5B%5D,int,int))
  + ### setPixels

    public void setPixels(int x,
    int y,
    int w,
    int h,
    [ColorModel](ColorModel.md "class in java.awt.image") model,
    int[] pixels,
    int off,
    int scansize)

    If the ColorModel object is the same one that has already
    been converted, then simply passes the pixels through with the
    converted ColorModel, otherwise converts the buffer of integer
    pixels to the default RGB ColorModel and passes the converted
    buffer to the filterRGBPixels method to be converted one by one.
    Converts a buffer of integer pixels to the default RGB ColorModel
    and passes the converted buffer to the filterRGBPixels method.

    Note: This method is intended to be called by the
    `ImageProducer` of the `Image` whose pixels
    are being filtered. Developers using
    this class to filter pixels from an image should avoid calling
    this method directly since that operation could interfere
    with the filtering operation.

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

    See Also:
    :   - [`ColorModel.getRGBdefault()`](ColorModel.md#getRGBdefault())
        - [`filterRGBPixels(int, int, int, int, int[], int, int)`](#filterRGBPixels(int,int,int,int,int%5B%5D,int,int))
  + ### filterRGB

    public abstract int filterRGB(int x,
    int y,
    int rgb)

    Subclasses must specify a method to convert a single input pixel
    in the default RGB ColorModel to a single output pixel.

    Parameters:
    :   `x` - the X coordinate of the pixel
    :   `y` - the Y coordinate of the pixel
    :   `rgb` - the integer pixel representation in the default RGB
        color model

    Returns:
    :   a filtered pixel in the default RGB color model.

    See Also:
    :   - [`ColorModel.getRGBdefault()`](ColorModel.md#getRGBdefault())
        - [`filterRGBPixels(int, int, int, int, int[], int, int)`](#filterRGBPixels(int,int,int,int,int%5B%5D,int,int))