Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class BufferCapabilities

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.BufferCapabilities

All Implemented Interfaces:
:   `Cloneable`

---

public class BufferCapabilities
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Capabilities and properties of buffers.

Since:
:   1.4

See Also:
:   * [`BufferStrategy.getCapabilities()`](image/BufferStrategy.md#getCapabilities())
    * [`GraphicsConfiguration.getBufferCapabilities()`](GraphicsConfiguration.md#getBufferCapabilities())

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `BufferCapabilities.FlipContents`

  A type-safe enumeration of the possible back buffer contents after
  page-flipping
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BufferCapabilities(ImageCapabilities frontCaps,
  ImageCapabilities backCaps,
  BufferCapabilities.FlipContents flipContents)`

  Creates a new object for specifying buffering capabilities
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates and returns a copy of this object.

  `ImageCapabilities`

  `getBackBufferCapabilities()`

  Returns the image capabilities of all back buffers (intermediate buffers
  are considered back buffers).

  `BufferCapabilities.FlipContents`

  `getFlipContents()`

  Returns the resulting contents of the back buffer after page-flipping.

  `ImageCapabilities`

  `getFrontBufferCapabilities()`

  Returns the image capabilities of the front (displayed) buffer.

  `boolean`

  `isFullScreenRequired()`

  Returns whether page flipping is only available in full-screen mode.

  `boolean`

  `isMultiBufferAvailable()`

  Returns whether or not
  page flipping can be performed using more than two buffers (one or more
  intermediate buffers as well as the front and back buffer).

  `boolean`

  `isPageFlipping()`

  Returns whether or not the buffer strategy uses page flipping.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BufferCapabilities

    public BufferCapabilities([ImageCapabilities](ImageCapabilities.md "class in java.awt") frontCaps,
    [ImageCapabilities](ImageCapabilities.md "class in java.awt") backCaps,
    [BufferCapabilities.FlipContents](BufferCapabilities.FlipContents.md "class in java.awt") flipContents)

    Creates a new object for specifying buffering capabilities

    Parameters:
    :   `frontCaps` - the capabilities of the front buffer; cannot be
        `null`
    :   `backCaps` - the capabilities of the back and intermediate buffers;
        cannot be `null`
    :   `flipContents` - the contents of the back buffer after page-flipping,
        `null` if page flipping is not used (implies blitting)

    Throws:
    :   `IllegalArgumentException` - if frontCaps or backCaps are
        `null`
* ## Method Details

  + ### getFrontBufferCapabilities

    public [ImageCapabilities](ImageCapabilities.md "class in java.awt") getFrontBufferCapabilities()

    Returns the image capabilities of the front (displayed) buffer.

    Returns:
    :   the image capabilities of the front (displayed) buffer
  + ### getBackBufferCapabilities

    public [ImageCapabilities](ImageCapabilities.md "class in java.awt") getBackBufferCapabilities()

    Returns the image capabilities of all back buffers (intermediate buffers
    are considered back buffers).

    Returns:
    :   the image capabilities of all back buffers (intermediate buffers
        are considered back buffers)
  + ### isPageFlipping

    public boolean isPageFlipping()

    Returns whether or not the buffer strategy uses page flipping.
    A set of buffers that uses page flipping
    can swap the contents internally between the front buffer and one or
    more back buffers by switching the video pointer (or by copying memory
    internally). A non-flipping set of
    buffers uses blitting to copy the contents from one buffer to
    another; when this is the case, `getFlipContents` returns
    `null`.

    Returns:
    :   whether or not the buffer strategy uses page flipping
  + ### getFlipContents

    public [BufferCapabilities.FlipContents](BufferCapabilities.FlipContents.md "class in java.awt") getFlipContents()

    Returns the resulting contents of the back buffer after page-flipping.
    This value is `null` when the `isPageFlipping`
    returns `false`, implying blitting. It can be one of
    `FlipContents.UNDEFINED`
    (the assumed default), `FlipContents.BACKGROUND`,
    `FlipContents.PRIOR`, or
    `FlipContents.COPIED`.

    Returns:
    :   the resulting contents of the back buffer after page-flipping

    See Also:
    :   - [`isPageFlipping()`](#isPageFlipping())
        - [`BufferCapabilities.FlipContents.UNDEFINED`](BufferCapabilities.FlipContents.md#UNDEFINED)
        - [`BufferCapabilities.FlipContents.BACKGROUND`](BufferCapabilities.FlipContents.md#BACKGROUND)
        - [`BufferCapabilities.FlipContents.PRIOR`](BufferCapabilities.FlipContents.md#PRIOR)
        - [`BufferCapabilities.FlipContents.COPIED`](BufferCapabilities.FlipContents.md#COPIED)
  + ### isFullScreenRequired

    public boolean isFullScreenRequired()

    Returns whether page flipping is only available in full-screen mode. If this
    is `true`, full-screen exclusive mode is required for
    page-flipping.

    Returns:
    :   whether page flipping is only available in full-screen mode

    See Also:
    :   - [`isPageFlipping()`](#isPageFlipping())
        - [`GraphicsDevice.setFullScreenWindow(java.awt.Window)`](GraphicsDevice.md#setFullScreenWindow(java.awt.Window))
  + ### isMultiBufferAvailable

    public boolean isMultiBufferAvailable()

    Returns whether or not
    page flipping can be performed using more than two buffers (one or more
    intermediate buffers as well as the front and back buffer).

    Returns:
    :   whether or not
        page flipping can be performed using more than two buffers

    See Also:
    :   - [`isPageFlipping()`](#isPageFlipping())
  + ### clone

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Description copied from class: `Object`

    Creates and returns a copy of this object. The precise meaning
    of "copy" may depend on the class of the object. The general
    intent is that, for any object `x`, the expression:
    > ```
    >  x.clone() != x
    > ```

    will be true, and that the expression:
    > ```
    >  x.clone().getClass() == x.getClass()
    > ```

    will be `true`, but these are not absolute requirements.
    While it is typically the case that:
    > ```
    >  x.clone().equals(x)
    > ```

    will be `true`, this is not an absolute requirement.

    By convention, the returned object should be obtained by calling
    `super.clone`. If a class and all of its superclasses (except
    `Object`) obey this convention, it will be the case that
    `x.clone().getClass() == x.getClass()`.

    By convention, the object returned by this method should be independent
    of this object (which is being cloned). To achieve this independence,
    it may be necessary to modify one or more fields of the object returned
    by `super.clone` before returning it. Typically, this means
    copying any mutable objects that comprise the internal "deep structure"
    of the object being cloned and replacing the references to these
    objects with references to the copies. If a class contains only
    primitive fields or references to immutable objects, then it is usually
    the case that no fields in the object returned by `super.clone`
    need to be modified.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a copy of this BufferCapabilities object.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")