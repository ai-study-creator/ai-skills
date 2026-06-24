Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class GrayFilter

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.ImageFilter](../../java/awt/image/ImageFilter.md "class in java.awt.image")

[java.awt.image.RGBImageFilter](../../java/awt/image/RGBImageFilter.md "class in java.awt.image")

javax.swing.GrayFilter

All Implemented Interfaces:
:   `ImageConsumer`, `Cloneable`

---

public class GrayFilter
extends [RGBImageFilter](../../java/awt/image/RGBImageFilter.md "class in java.awt.image")

An image filter that "disables" an image by turning
it into a grayscale image, and brightening the pixels
in the image. Used by buttons to create an image for
a disabled button.

Since:
:   1.2

* ## Field Summary

  ### Fields inherited from class java.awt.image.[RGBImageFilter](../../java/awt/image/RGBImageFilter.md "class in java.awt.image")

  `canFilterIndexColorModel, newmodel, origmodel`

  ### Fields inherited from class java.awt.image.[ImageFilter](../../java/awt/image/ImageFilter.md "class in java.awt.image")

  `consumer`

  ### Fields inherited from interface java.awt.image.[ImageConsumer](../../java/awt/image/ImageConsumer.md "interface in java.awt.image")

  `COMPLETESCANLINES, IMAGEABORTED, IMAGEERROR, RANDOMPIXELORDER, SINGLEFRAME, SINGLEFRAMEDONE, SINGLEPASS, STATICIMAGEDONE, TOPDOWNLEFTRIGHT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GrayFilter(boolean b,
  int p)`

  Constructs a GrayFilter object that filters a color image to a
  grayscale image.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Image`

  `createDisabledImage(Image i)`

  Creates a disabled image

  `int`

  `filterRGB(int x,
  int y,
  int rgb)`

  Overrides `RGBImageFilter.filterRGB`.

  ### Methods inherited from class java.awt.image.[RGBImageFilter](../../java/awt/image/RGBImageFilter.md "class in java.awt.image")

  `filterIndexColorModel, filterRGBPixels, setColorModel, setPixels, setPixels, substituteColorModel`

  ### Methods inherited from class java.awt.image.[ImageFilter](../../java/awt/image/ImageFilter.md "class in java.awt.image")

  `clone, getFilterInstance, imageComplete, resendTopDownLeftRight, setDimensions, setHints, setProperties`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GrayFilter

    public GrayFilter(boolean b,
    int p)

    Constructs a GrayFilter object that filters a color image to a
    grayscale image. Used by buttons to create disabled ("grayed out")
    button images.

    Parameters:
    :   `b` - a boolean -- true if the pixels should be brightened
    :   `p` - an int in the range 0..100 that determines the percentage
        of gray, where 100 is the darkest gray, and 0 is the lightest
* ## Method Details

  + ### createDisabledImage

    public static [Image](../../java/awt/Image.md "class in java.awt") createDisabledImage([Image](../../java/awt/Image.md "class in java.awt") i)

    Creates a disabled image

    Parameters:
    :   `i` - an `Image` to be created as disabled

    Returns:
    :   the new grayscale image created from `i`
  + ### filterRGB

    public int filterRGB(int x,
    int y,
    int rgb)

    Overrides `RGBImageFilter.filterRGB`.

    Specified by:
    :   `filterRGB` in class `RGBImageFilter`

    Parameters:
    :   `x` - the X coordinate of the pixel
    :   `y` - the Y coordinate of the pixel
    :   `rgb` - the integer pixel representation in the default RGB
        color model

    Returns:
    :   a filtered pixel in the default RGB color model.

    See Also:
    :   - [`ColorModel.getRGBdefault()`](../../java/awt/image/ColorModel.md#getRGBdefault())
        - [`RGBImageFilter.filterRGBPixels(int, int, int, int, int[], int, int)`](../../java/awt/image/RGBImageFilter.md#filterRGBPixels(int,int,int,int,int%5B%5D,int,int))