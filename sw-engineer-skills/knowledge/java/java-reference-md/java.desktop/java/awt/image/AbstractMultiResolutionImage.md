Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class AbstractMultiResolutionImage

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Image](../Image.md "class in java.awt")

java.awt.image.AbstractMultiResolutionImage

All Implemented Interfaces:
:   `MultiResolutionImage`

Direct Known Subclasses:
:   `BaseMultiResolutionImage`

---

public abstract class AbstractMultiResolutionImage
extends [Image](../Image.md "class in java.awt")
implements [MultiResolutionImage](MultiResolutionImage.md "interface in java.awt.image")

This class provides default implementations of several `Image` methods
for classes that want to implement the `MultiResolutionImage`
interface.
For example,

```
 public class CustomMultiResolutionImage extends AbstractMultiResolutionImage {

     final Image[] resolutionVariants;

     public CustomMultiResolutionImage(Image... resolutionVariants) {
          this.resolutionVariants = resolutionVariants;
     }

     public Image getResolutionVariant(
             double destImageWidth, double destImageHeight) {
         // return a resolution variant based on the given destination image size
     }

     public List<Image> getResolutionVariants() {
         return Collections.unmodifiableList(Arrays.asList(resolutionVariants));
     }

     protected Image getBaseImage() {
         return resolutionVariants[0];
     }
 }
```

Since:
:   9

See Also:
:   * [`Image`](../Image.md "class in java.awt")
    * [`MultiResolutionImage`](MultiResolutionImage.md "interface in java.awt.image")

* ## Field Summary

  ### Fields inherited from class java.awt.[Image](../Image.md "class in java.awt")

  `accelerationPriority, SCALE_AREA_AVERAGING, SCALE_DEFAULT, SCALE_FAST, SCALE_REPLICATE, SCALE_SMOOTH, UndefinedProperty`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractMultiResolutionImage()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract Image`

  `getBaseImage()`

  Return the base image representing the best version of the image for
  rendering at the default width and height.

  `Graphics`

  `getGraphics()`

  As per the contract of the base `Image#getGraphics()` method,
  this implementation will always throw `UnsupportedOperationException`
  since only off-screen images can return a `Graphics` object.

  `int`

  `getHeight(ImageObserver observer)`

  This method simply delegates to the same method on the base image and
  it is equivalent to: `getBaseImage().getHeight(observer)`.

  `Object`

  `getProperty(String name,
  ImageObserver observer)`

  This method simply delegates to the same method on the base image and
  it is equivalent to: `getBaseImage().getProperty(name, observer)`.

  `ImageProducer`

  `getSource()`

  This method simply delegates to the same method on the base image and
  it is equivalent to: `getBaseImage().getSource()`.

  `int`

  `getWidth(ImageObserver observer)`

  This method simply delegates to the same method on the base image and
  it is equivalent to: `getBaseImage().getWidth(observer)`.

  ### Methods inherited from class java.awt.[Image](../Image.md "class in java.awt")

  `flush, getAccelerationPriority, getCapabilities, getScaledInstance, setAccelerationPriority`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.awt.image.[MultiResolutionImage](MultiResolutionImage.md "interface in java.awt.image")

  `getResolutionVariant, getResolutionVariants`

* ## Constructor Details

  + ### AbstractMultiResolutionImage

    protected AbstractMultiResolutionImage()

    Constructor for subclasses to call.
* ## Method Details

  + ### getWidth

    public int getWidth([ImageObserver](ImageObserver.md "interface in java.awt.image") observer)

    This method simply delegates to the same method on the base image and
    it is equivalent to: `getBaseImage().getWidth(observer)`.

    Specified by:
    :   `getWidth` in class `Image`

    Parameters:
    :   `observer` - an object waiting for the image to be loaded.

    Returns:
    :   the width of the base image, or -1 if the width is not yet known

    Since:
    :   9

    See Also:
    :   - [`getBaseImage()`](#getBaseImage())
  + ### getHeight

    public int getHeight([ImageObserver](ImageObserver.md "interface in java.awt.image") observer)

    This method simply delegates to the same method on the base image and
    it is equivalent to: `getBaseImage().getHeight(observer)`.

    Specified by:
    :   `getHeight` in class `Image`

    Parameters:
    :   `observer` - an object waiting for the image to be loaded.

    Returns:
    :   the height of the base image, or -1 if the height is not yet known

    Since:
    :   9

    See Also:
    :   - [`getBaseImage()`](#getBaseImage())
  + ### getSource

    public [ImageProducer](ImageProducer.md "interface in java.awt.image") getSource()

    This method simply delegates to the same method on the base image and
    it is equivalent to: `getBaseImage().getSource()`.

    Specified by:
    :   `getSource` in class `Image`

    Returns:
    :   the image producer that produces the pixels for the base image

    Since:
    :   9

    See Also:
    :   - [`getBaseImage()`](#getBaseImage())
  + ### getGraphics

    public [Graphics](../Graphics.md "class in java.awt") getGraphics()

    As per the contract of the base `Image#getGraphics()` method,
    this implementation will always throw `UnsupportedOperationException`
    since only off-screen images can return a `Graphics` object.

    Specified by:
    :   `getGraphics` in class `Image`

    Returns:
    :   throws `UnsupportedOperationException`

    Throws:
    :   `UnsupportedOperationException` - this method is not supported

    See Also:
    :   - [`Graphics`](../Graphics.md "class in java.awt")
        - [`Component.createImage(int, int)`](../Component.md#createImage(int,int))
  + ### getProperty

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [ImageObserver](ImageObserver.md "interface in java.awt.image") observer)

    This method simply delegates to the same method on the base image and
    it is equivalent to: `getBaseImage().getProperty(name, observer)`.

    Specified by:
    :   `getProperty` in class `Image`

    Parameters:
    :   `name` - a property name.
    :   `observer` - an object waiting for this image to be loaded.

    Returns:
    :   the value of the named property in the base image

    Since:
    :   9

    See Also:
    :   - [`getBaseImage()`](#getBaseImage())
  + ### getBaseImage

    protected abstract [Image](../Image.md "class in java.awt") getBaseImage()

    Return the base image representing the best version of the image for
    rendering at the default width and height.

    Returns:
    :   the base image of the set of multi-resolution images

    Since:
    :   9