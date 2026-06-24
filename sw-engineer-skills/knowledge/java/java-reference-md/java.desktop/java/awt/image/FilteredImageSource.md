Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class FilteredImageSource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.image.FilteredImageSource

All Implemented Interfaces:
:   `ImageProducer`

---

public class FilteredImageSource
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ImageProducer](ImageProducer.md "interface in java.awt.image")

This class is an implementation of the ImageProducer interface which
takes an existing image and a filter object and uses them to produce
image data for a new filtered version of the original image. Furthermore,
`FilteredImageSource` is safe for use by multiple threads.
Here is an example which filters an image by swapping the red and
blue components:

```
      Image src = getImage("doc:///demo/images/duke/T1.gif");
      ImageFilter colorfilter = new RedBlueSwapFilter();
      Image img = createImage(new FilteredImageSource(src.getSource(),
                                                      colorfilter));
```

See Also:
:   * [`ImageProducer`](ImageProducer.md "interface in java.awt.image")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FilteredImageSource(ImageProducer orig,
  ImageFilter imgf)`

  Constructs an ImageProducer object from an existing ImageProducer
  and a filter object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addConsumer(ImageConsumer ic)`

  Adds the specified `ImageConsumer`
  to the list of consumers interested in data for the filtered image.

  `boolean`

  `isConsumer(ImageConsumer ic)`

  Determines whether an ImageConsumer is on the list of consumers
  currently interested in data for this image.

  `void`

  `removeConsumer(ImageConsumer ic)`

  Removes an ImageConsumer from the list of consumers interested in
  data for this image.

  `void`

  `requestTopDownLeftRightResend(ImageConsumer ic)`

  Requests that a given ImageConsumer have the image data delivered
  one more time in top-down, left-right order.

  `void`

  `startProduction(ImageConsumer ic)`

  Starts production of the filtered image.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FilteredImageSource

    public FilteredImageSource([ImageProducer](ImageProducer.md "interface in java.awt.image") orig,
    [ImageFilter](ImageFilter.md "class in java.awt.image") imgf)

    Constructs an ImageProducer object from an existing ImageProducer
    and a filter object.

    Parameters:
    :   `orig` - the specified `ImageProducer`
    :   `imgf` - the specified `ImageFilter`

    See Also:
    :   - [`ImageFilter`](ImageFilter.md "class in java.awt.image")
        - [`Component.createImage(java.awt.image.ImageProducer)`](../Component.md#createImage(java.awt.image.ImageProducer))
* ## Method Details

  + ### addConsumer

    public void addConsumer([ImageConsumer](ImageConsumer.md "interface in java.awt.image") ic)

    Adds the specified `ImageConsumer`
    to the list of consumers interested in data for the filtered image.
    An instance of the original `ImageFilter`
    is created
    (using the filter's `getFilterInstance` method)
    to manipulate the image data
    for the specified `ImageConsumer`.
    The newly created filter instance
    is then passed to the `addConsumer` method
    of the original `ImageProducer`.

    This method is public as a side effect
    of this class implementing
    the `ImageProducer` interface.
    It should not be called from user code,
    and its behavior if called from user code is unspecified.

    Specified by:
    :   `addConsumer` in interface `ImageProducer`

    Parameters:
    :   `ic` - the consumer for the filtered image

    See Also:
    :   - [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image")
  + ### isConsumer

    public boolean isConsumer([ImageConsumer](ImageConsumer.md "interface in java.awt.image") ic)

    Determines whether an ImageConsumer is on the list of consumers
    currently interested in data for this image.

    This method is public as a side effect
    of this class implementing
    the `ImageProducer` interface.
    It should not be called from user code,
    and its behavior if called from user code is unspecified.

    Specified by:
    :   `isConsumer` in interface `ImageProducer`

    Parameters:
    :   `ic` - the specified `ImageConsumer`

    Returns:
    :   true if the ImageConsumer is on the list; false otherwise

    See Also:
    :   - [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image")
  + ### removeConsumer

    public void removeConsumer([ImageConsumer](ImageConsumer.md "interface in java.awt.image") ic)

    Removes an ImageConsumer from the list of consumers interested in
    data for this image.

    This method is public as a side effect
    of this class implementing
    the `ImageProducer` interface.
    It should not be called from user code,
    and its behavior if called from user code is unspecified.

    Specified by:
    :   `removeConsumer` in interface `ImageProducer`

    Parameters:
    :   `ic` - the specified `ImageConsumer`

    See Also:
    :   - [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image")
  + ### startProduction

    public void startProduction([ImageConsumer](ImageConsumer.md "interface in java.awt.image") ic)

    Starts production of the filtered image.
    If the specified `ImageConsumer`
    isn't already a consumer of the filtered image,
    an instance of the original `ImageFilter`
    is created
    (using the filter's `getFilterInstance` method)
    to manipulate the image data
    for the `ImageConsumer`.
    The filter instance for the `ImageConsumer`
    is then passed to the `startProduction` method
    of the original `ImageProducer`.

    This method is public as a side effect
    of this class implementing
    the `ImageProducer` interface.
    It should not be called from user code,
    and its behavior if called from user code is unspecified.

    Specified by:
    :   `startProduction` in interface `ImageProducer`

    Parameters:
    :   `ic` - the consumer for the filtered image

    See Also:
    :   - [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image")
  + ### requestTopDownLeftRightResend

    public void requestTopDownLeftRightResend([ImageConsumer](ImageConsumer.md "interface in java.awt.image") ic)

    Requests that a given ImageConsumer have the image data delivered
    one more time in top-down, left-right order. The request is
    handed to the ImageFilter for further processing, since the
    ability to preserve the pixel ordering depends on the filter.

    This method is public as a side effect
    of this class implementing
    the `ImageProducer` interface.
    It should not be called from user code,
    and its behavior if called from user code is unspecified.

    Specified by:
    :   `requestTopDownLeftRightResend` in interface `ImageProducer`

    Parameters:
    :   `ic` - the specified `ImageConsumer`

    See Also:
    :   - [`ImageConsumer`](ImageConsumer.md "interface in java.awt.image")