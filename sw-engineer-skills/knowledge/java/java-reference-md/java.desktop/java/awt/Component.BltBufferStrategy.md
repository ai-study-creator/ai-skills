Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Component.BltBufferStrategy

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.BufferStrategy](image/BufferStrategy.md "class in java.awt.image")

java.awt.Component.BltBufferStrategy

Enclosing class:
:   `Component`

---

protected class Component.BltBufferStrategy
extends [BufferStrategy](image/BufferStrategy.md "class in java.awt.image")

Inner class for blitting offscreen surfaces to a component.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected VolatileImage[]`

  `backBuffers`

  The back buffers

  `protected BufferCapabilities`

  `caps`

  The buffering capabilities

  `protected int`

  `height`

  Height of the back buffers

  `protected boolean`

  `validatedContents`

  Whether or not the drawing buffer has been recently restored from
  a lost state.

  `protected int`

  `width`

  Width of the back buffers
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `BltBufferStrategy(int numBuffers,
  BufferCapabilities caps)`

  Creates a new blt buffer strategy around a component
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

  `createBackBuffers(int numBuffers)`

  Creates the back buffers

  `void`

  `dispose()`

  Releases system resources currently consumed by this
  `BufferStrategy` and
  removes it from the associated Component.

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

  Makes the next available buffer visible.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### caps

    protected [BufferCapabilities](BufferCapabilities.md "class in java.awt") caps

    The buffering capabilities
  + ### backBuffers

    protected [VolatileImage](image/VolatileImage.md "class in java.awt.image")[] backBuffers

    The back buffers
  + ### validatedContents

    protected boolean validatedContents

    Whether or not the drawing buffer has been recently restored from
    a lost state.
  + ### width

    protected int width

    Width of the back buffers
  + ### height

    protected int height

    Height of the back buffers
* ## Constructor Details

  + ### BltBufferStrategy

    protected BltBufferStrategy(int numBuffers,
    [BufferCapabilities](BufferCapabilities.md "class in java.awt") caps)

    Creates a new blt buffer strategy around a component

    Parameters:
    :   `numBuffers` - number of buffers to create, including the
        front buffer
    :   `caps` - the capabilities of the buffers
* ## Method Details

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
  + ### createBackBuffers

    protected void createBackBuffers(int numBuffers)

    Creates the back buffers

    Parameters:
    :   `numBuffers` - the number of buffers to create
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
    :   the draw graphics
  + ### show

    public void show()

    Makes the next available buffer visible.

    Specified by:
    :   `show` in class `BufferStrategy`
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