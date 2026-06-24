Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class BaseMultiResolutionImage

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Image](../Image.md "class in java.awt")

[java.awt.image.AbstractMultiResolutionImage](AbstractMultiResolutionImage.md "class in java.awt.image")

java.awt.image.BaseMultiResolutionImage

All Implemented Interfaces:
:   `MultiResolutionImage`

---

public class BaseMultiResolutionImage
extends [AbstractMultiResolutionImage](AbstractMultiResolutionImage.md "class in java.awt.image")

This class is an array-based implementation of
the `AbstractMultiResolutionImage` class.
This class will implement the
`getResolutionVariant(double destImageWidth, double destImageHeight)`
method using a simple algorithm which will return the first image variant
in the array that is large enough to satisfy the rendering request. The
last image in the array will be returned if no suitable image is found
that is as large as the rendering request.

For best effect the array of images should be sorted with each image being
both wider and taller than the previous image. The base image need not be
the first image in the array. No exception will be thrown if the images
are not sorted as suggested.

Since:
:   9

See Also:
:   * [`Image`](../Image.md "class in java.awt")
    * [`MultiResolutionImage`](MultiResolutionImage.md "interface in java.awt.image")
    * [`AbstractMultiResolutionImage`](AbstractMultiResolutionImage.md "class in java.awt.image")

* ## Field Summary

  ### Fields inherited from class java.awt.[Image](../Image.md "class in java.awt")

  `accelerationPriority, SCALE_AREA_AVERAGING, SCALE_DEFAULT, SCALE_FAST, SCALE_REPLICATE, SCALE_SMOOTH, UndefinedProperty`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BaseMultiResolutionImage(int baseImageIndex,
  Image... resolutionVariants)`

  Creates a multi-resolution image with the given base image index and
  resolution variants.

  `BaseMultiResolutionImage(Image... resolutionVariants)`

  Creates a multi-resolution image with the given resolution variants.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Image`

  `getBaseImage()`

  Return the base image representing the best version of the image for
  rendering at the default width and height.

  `Image`

  `getResolutionVariant(double destImageWidth,
  double destImageHeight)`

  Gets a specific image that is the best variant to represent
  this logical image at the indicated size.

  `List<Image>`

  `getResolutionVariants()`

  Gets a readable list of all resolution variants.

  ### Methods inherited from class java.awt.image.[AbstractMultiResolutionImage](AbstractMultiResolutionImage.md "class in java.awt.image")

  `getGraphics, getHeight, getProperty, getSource, getWidth`

  ### Methods inherited from class java.awt.[Image](../Image.md "class in java.awt")

  `flush, getAccelerationPriority, getCapabilities, getScaledInstance, setAccelerationPriority`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BaseMultiResolutionImage

    public BaseMultiResolutionImage([Image](../Image.md "class in java.awt")... resolutionVariants)

    Creates a multi-resolution image with the given resolution variants.
    The first resolution variant is used as the base image.

    Parameters:
    :   `resolutionVariants` - array of resolution variants sorted by image size

    Throws:
    :   `IllegalArgumentException` - if null or zero-length array is passed
    :   `NullPointerException` - if the specified `resolutionVariants`
        contains one or more null elements

    Since:
    :   9
  + ### BaseMultiResolutionImage

    public BaseMultiResolutionImage(int baseImageIndex,
    [Image](../Image.md "class in java.awt")... resolutionVariants)

    Creates a multi-resolution image with the given base image index and
    resolution variants.

    Parameters:
    :   `baseImageIndex` - the index of base image in the resolution variants
        array
    :   `resolutionVariants` - array of resolution variants sorted by image size

    Throws:
    :   `IllegalArgumentException` - if null or zero-length array is passed
    :   `NullPointerException` - if the specified `resolutionVariants`
        contains one or more null elements
    :   `IndexOutOfBoundsException` - if `baseImageIndex` is
        negative or greater than or equal to `resolutionVariants`
        length.

    Since:
    :   9
* ## Method Details

  + ### getResolutionVariant

    public [Image](../Image.md "class in java.awt") getResolutionVariant(double destImageWidth,
    double destImageHeight)

    Description copied from interface: `MultiResolutionImage`

    Gets a specific image that is the best variant to represent
    this logical image at the indicated size.

    Parameters:
    :   `destImageWidth` - the width of the destination image, in pixels.
    :   `destImageHeight` - the height of the destination image, in pixels.

    Returns:
    :   image resolution variant.
  + ### getResolutionVariants

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[Image](../Image.md "class in java.awt")> getResolutionVariants()

    Description copied from interface: `MultiResolutionImage`

    Gets a readable list of all resolution variants.
    The list must be nonempty and contain at least one resolution variant.

    Note that many implementations might return an unmodifiable list.

    Returns:
    :   list of resolution variants.
  + ### getBaseImage

    protected [Image](../Image.md "class in java.awt") getBaseImage()

    Description copied from class: `AbstractMultiResolutionImage`

    Return the base image representing the best version of the image for
    rendering at the default width and height.

    Specified by:
    :   `getBaseImage` in class `AbstractMultiResolutionImage`

    Returns:
    :   the base image of the set of multi-resolution images