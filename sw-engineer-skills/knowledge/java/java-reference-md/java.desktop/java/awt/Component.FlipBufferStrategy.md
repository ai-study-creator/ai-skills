Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Component.FlipBufferStrategy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.BufferStrategy](image/BufferStrategy.md "class in java.awt.image")

java.awt.Component.FlipBufferStrategy

Enclosing class:
:   `Component`

---

protected class Component.FlipBufferStrategy
extends [BufferStrategy](image/BufferStrategy.md "class in java.awt.image")

Inner class for flipping buffers on a component. That component must
be a `Canvas` or `Window` or `Applet`.

Since:
:   1.4

See Also:
:   * [`Canvas`](Canvas.md "class in java.awt")
    * [`Window`](Window.md "class in java.awt")
    * [`Applet`](../applet/Applet.md "class in java.applet")
    * [`BufferStrategy`](image/BufferStrategy.md "class in java.awt.image")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected BufferCapabilities`

  `caps`

  The buffering capabilities

  `protected Image`

  `drawBuffer`

  The drawing buffer

  `protected VolatileImage`

  `drawVBuffer`

  The drawing buffer as a volatile image

  `protected int`

  `numBuffers`

  The number of buffers

  `protected boolean`

  `validatedContents`

  Whether or not the drawing buffer has been recently restored from
  a lost state.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FlipBufferStrategy(int numBuffers,
  BufferCapabilities caps)`

  Creates a new flipping buffer strategy for this component.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `contentsLost()`

  Returns whether the drawing buffer was lost since the last call to
  `getDrawGraphics`.

  `boolean`

  `contentsRestored()`

  Returns whether the drawing buffer was recently restored from a lost
  state and reinitialized to the default background color (white).

  `protected void`

  `createBuffers(int numBuffers,
  BufferCapabilities caps)`

  Creates one or more complex, flipping buffers with the given
  capabilities.

  `protected void`

  `destroyBuffers()`

  Destroys the buffers created through this object

  `void`

  `dispose()`

  Releases system resources currently consumed by this
  `BufferStrategy` and
  removes it from the associated Component.

  `protected void`

  `flip(BufferCapabilities.FlipContents flipAction)`

  Flipping moves the contents of the back buffer to the front buffer,
  either by copying or by moving the video pointer.

  `protected Image`

  `getBackBuffer()`

  Provides direct access to the back buffer as an image.

  `BufferCapabilities`

  `getCapabilities()`

  Returns the `BufferCapabilities` for this
  `BufferStrategy`.

  `Graphics`

  `getDrawGraphics()`

  Creates a graphics context for the drawing buffer.

  `protected void`

  `revalidate()`

  Restore the drawing buffer if it has been lost

  `void`

  `show()`

  Makes the next available buffer visible by either blitting or
  flipping.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### numBuffers

    protected int numBuffers

    The number of buffers
  + ### caps

    protected [BufferCapabilities](BufferCapabilities.md "class in java.awt") caps

    The buffering capabilities
  + ### drawBuffer

    protected [Image](Image.md "class in java.awt") drawBuffer

    The drawing buffer
  + ### drawVBuffer

    protected [VolatileImage](image/VolatileImage.md "class in java.awt.image") drawVBuffer

    The drawing buffer as a volatile image
  + ### validatedContents

    protected boolean validatedContents

    Whether or not the drawing buffer has been recently restored from
    a lost state.
* ## Constructor Details

  + ### FlipBufferStrategy

    protected FlipBufferStrategy(int numBuffers,
    [BufferCapabilities](BufferCapabilities.md "class in java.awt") caps)
    throws [AWTException](AWTException.md "class in java.awt")

    Creates a new flipping buffer strategy for this component.
    The component must be a `Canvas` or `Window` or
    `Applet`.

    Parameters:
    :   `numBuffers` - the number of buffers
    :   `caps` - the capabilities of the buffers

    Throws:
    :   `AWTException` - if the capabilities supplied could not be
        supported or met
    :   `ClassCastException` - if the component is not a canvas or
        window.
    :   `IllegalStateException` - if the component has no peer
    :   `IllegalArgumentException` - if `numBuffers` is less than two,
        or if `BufferCapabilities.isPageFlipping` is not
        `true`.

    See Also:
    :   - [`Canvas`](Canvas.md "class in java.awt")
        - [`Window`](Window.md "class in java.awt")
        - [`Applet`](../applet/Applet.md "class in java.applet")
        - [`createBuffers(int, BufferCapabilities)`](#createBuffers(int,java.awt.BufferCapabilities))
* ## Method Details

  + ### createBuffers

    protected void createBuffers(int numBuffers,
    [BufferCapabilities](BufferCapabilities.md "class in java.awt") caps)
    throws [AWTException](AWTException.md "class in java.awt")

    Creates one or more complex, flipping buffers with the given
    capabilities.

    Parameters:
    :   `numBuffers` - number of buffers to create; must be greater than
        one
    :   `caps` - the capabilities of the buffers.
        `BufferCapabilities.isPageFlipping` must be
        `true`.

    Throws:
    :   `AWTException` - if the capabilities supplied could not be
        supported or met
    :   `IllegalStateException` - if the component has no peer
    :   `IllegalArgumentException` - if numBuffers is less than two,
        or if `BufferCapabilities.isPageFlipping` is not
        `true`.

    See Also:
    :   - [`BufferCapabilities.isPageFlipping()`](BufferCapabilities.md#isPageFlipping())
  + ### getBackBuffer

    protected [Image](Image.md "class in java.awt") getBackBuffer()

    Provides direct access to the back buffer as an image.

    Returns:
    :   the back buffer as an image

    Throws:
    :   `IllegalStateException` - if the buffers have not yet
        been created
  + ### flip

    protected void flip([BufferCapabilities.FlipContents](BufferCapabilities.FlipContents.md "class in java.awt") flipAction)

    Flipping moves the contents of the back buffer to the front buffer,
    either by copying or by moving the video pointer.

    Parameters:
    :   `flipAction` - an integer value describing the flipping action
        for the contents of the back buffer. This should be one of the
        values of the `BufferCapabilities.FlipContents`
        property.

    Throws:
    :   `IllegalStateException` - if the buffers have not yet
        been created

    See Also:
    :   - [`BufferCapabilities.getFlipContents()`](BufferCapabilities.md#getFlipContents())
  + ### destroyBuffers

    protected void destroyBuffers()

    Destroys the buffers created through this object
  + ### getCapabilities

    public [BufferCapabilities](BufferCapabilities.md "class in java.awt") getCapabilities()

    Description copied from class: `BufferStrategy`

    Returns the `BufferCapabilities` for this
    `BufferStrategy`.

    Specified by:
    :   `getCapabilities` in class `BufferStrategy`

    Returns:
    :   the buffering capabilities of this strategy
  + ### getDrawGraphics

    public [Graphics](Graphics.md "class in java.awt") getDrawGraphics()

    Description copied from class: `BufferStrategy`

    Creates a graphics context for the drawing buffer. This method may not
    be synchronized for performance reasons; use of this method by multiple
    threads should be handled at the application level. Disposal of the
    graphics object obtained must be handled by the application.

    Specified by:
    :   `getDrawGraphics` in class `BufferStrategy`

    Returns:
    :   the graphics on the drawing buffer. This method may not
        be synchronized for performance reasons; use of this method by multiple
        threads should be handled at the application level. Disposal of the
        graphics object must be handled by the application.
  + ### revalidate

    protected void revalidate()

    Restore the drawing buffer if it has been lost
  + ### contentsLost

    public boolean contentsLost()

    Description copied from class: `BufferStrategy`

    Returns whether the drawing buffer was lost since the last call to
    `getDrawGraphics`. Since the buffers in a buffer strategy
    are usually type `VolatileImage`, they may become lost.
    For a discussion on lost buffers, see `VolatileImage`.

    Specified by:
    :   `contentsLost` in class `BufferStrategy`

    Returns:
    :   whether the drawing buffer was lost since the last call to
        `getDrawGraphics`

    See Also:
    :   - [`VolatileImage`](image/VolatileImage.md "class in java.awt.image")
  + ### contentsRestored

    public boolean contentsRestored()

    Description copied from class: `BufferStrategy`

    Returns whether the drawing buffer was recently restored from a lost
    state and reinitialized to the default background color (white).
    Since the buffers in a buffer strategy are usually type
    `VolatileImage`, they may become lost. If a surface has
    been recently restored from a lost state since the last call to
    `getDrawGraphics`, it may require repainting.
    For a discussion on lost buffers, see `VolatileImage`.

    Specified by:
    :   `contentsRestored` in class `BufferStrategy`

    Returns:
    :   whether the drawing buffer was recently restored from a lost
        state and reinitialized to the default background color (white)

    See Also:
    :   - [`VolatileImage`](image/VolatileImage.md "class in java.awt.image")
  + ### show

    public void show()

    Makes the next available buffer visible by either blitting or
    flipping.

    Specified by:
    :   `show` in class `BufferStrategy`
  + ### dispose

    public void dispose()

    Releases system resources currently consumed by this
    `BufferStrategy` and
    removes it from the associated Component. After invoking this
    method, `getBufferStrategy` will return null. Trying
    to use a `BufferStrategy` after it has been disposed will
    result in undefined behavior.

    Overrides:
    :   `dispose` in class `BufferStrategy`

    Since:
    :   1.6

    See Also:
    :   - [`Window.createBufferStrategy(int)`](Window.md#createBufferStrategy(int))
        - [`Canvas.createBufferStrategy(int)`](Canvas.md#createBufferStrategy(int))
        - [`Window.getBufferStrategy()`](Window.md#getBufferStrategy())
        - [`Canvas.getBufferStrategy()`](Canvas.md#getBufferStrategy())