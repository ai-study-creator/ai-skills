Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Interface MultiResolutionImage

All Known Implementing Classes:
:   `AbstractMultiResolutionImage`, `BaseMultiResolutionImage`

---

public interface MultiResolutionImage

This interface is designed to be an optional additional API supported by
some implementations of [`Image`](../Image.md "class in java.awt") to allow them to provide
alternate images for various rendering resolutions. The various
`Graphics.drawImage(...)` variant methods will consult the methods
of this interface if it is implemented on the argument `Image` object
in order to choose the best representation to use for each rendering operation.

The `MultiResolutionImage` interface should be implemented by any
subclass of `java.awt.Image` whose instances are intended to provide
image resolution variants according to the given image width and height.
For convenience, toolkit images obtained from
`Toolkit.getImage(String name)` and `Toolkit.getImage(URL url)`
will implement this interface on platforms that support naming conventions
for resolution variants of stored image media and the
`AbstractMultiResolutionImage` and `BaseMultiResolutionImage`
classes are provided to facilitate easy construction of custom multi-resolution
images from a list of related images.

Since:
:   9

See Also:
:   * [`Image`](../Image.md "class in java.awt")
    * [`AbstractMultiResolutionImage`](AbstractMultiResolutionImage.md "class in java.awt.image")
    * [`BaseMultiResolutionImage`](BaseMultiResolutionImage.md "class in java.awt.image")
    * [`Toolkit.getImage(java.lang.String filename)`](../Toolkit.md#getImage(java.lang.String))
    * [`Toolkit.getImage(java.net.URL url)`](../Toolkit.md#getImage(java.net.URL))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Image`

  `getResolutionVariant(double destImageWidth,
  double destImageHeight)`

  Gets a specific image that is the best variant to represent
  this logical image at the indicated size.

  `List<Image>`

  `getResolutionVariants()`

  Gets a readable list of all resolution variants.

* ## Method Details

  + ### getResolutionVariant

    [Image](../Image.md "class in java.awt") getResolutionVariant(double destImageWidth,
    double destImageHeight)

    Gets a specific image that is the best variant to represent
    this logical image at the indicated size.

    Parameters:
    :   `destImageWidth` - the width of the destination image, in pixels.
    :   `destImageHeight` - the height of the destination image, in pixels.

    Returns:
    :   image resolution variant.

    Throws:
    :   `IllegalArgumentException` - if `destImageWidth` or
        `destImageHeight` is less than or equal to zero, infinity,
        or NaN.

    Since:
    :   9
  + ### getResolutionVariants

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[Image](../Image.md "class in java.awt")> getResolutionVariants()

    Gets a readable list of all resolution variants.
    The list must be nonempty and contain at least one resolution variant.

    Note that many implementations might return an unmodifiable list.

    Returns:
    :   list of resolution variants.

    Since:
    :   9