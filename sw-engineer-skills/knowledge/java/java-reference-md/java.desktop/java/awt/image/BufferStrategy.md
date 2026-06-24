Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class BufferStrategy

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.image.BufferStrategy

Direct Known Subclasses:
:   `Component.BltBufferStrategy`, `Component.FlipBufferStrategy`

---

public abstract class BufferStrategy
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `BufferStrategy` class represents the mechanism with which
to organize complex memory on a particular `Canvas` or
`Window`. Hardware and software limitations determine whether and
how a particular buffer strategy can be implemented. These limitations
are detectable through the capabilities of the
`GraphicsConfiguration` used when creating the
`Canvas` or `Window`.

It is worth noting that the terms *buffer* and *surface* are meant
to be synonymous: an area of contiguous memory, either in video device
memory or in system memory.

There are several types of complex buffer strategies, including
sequential ring buffering and blit buffering.
Sequential ring buffering (i.e., double or triple
buffering) is the most common; an application draws to a single *back
buffer* and then moves the contents to the front (display) in a single
step, either by copying the data or moving the video pointer.
Moving the video pointer exchanges the buffers so that the first buffer
drawn becomes the *front buffer*, or what is currently displayed on the
device; this is called *page flipping*.

Alternatively, the contents of the back buffer can be copied, or
*blitted* forward in a chain instead of moving the video pointer.

```
 Double buffering:

                    ***********         ***********
                    *         * ------> *         *
 [To display] <---- * Front B *   Show  * Back B. * <---- Rendering
                    *         * <------ *         *
                    ***********         ***********

 Triple buffering:

 [To      ***********         ***********        ***********
 display] *         * --------+---------+------> *         *
    <---- * Front B *   Show  * Mid. B. *        * Back B. * <---- Rendering
          *         * <------ *         * <----- *         *
          ***********         ***********        ***********
```

Here is an example of how buffer strategies can be created and used:

```
 // Check the capabilities of the GraphicsConfiguration
 ...

 // Create our component
 Window w = new Window(gc);

 // Show our window
 w.setVisible(true);

 // Create a general double-buffering strategy
 w.createBufferStrategy(2);
 BufferStrategy strategy = w.getBufferStrategy();

 // Main loop
 while (!done) {
     // Prepare for rendering the next frame
     // ...

     // Render single frame
     do {
         // The following loop ensures that the contents of the drawing buffer
         // are consistent in case the underlying surface was recreated
         do {
             // Get a new graphics context every time through the loop
             // to make sure the strategy is validated
             Graphics graphics = strategy.getDrawGraphics();

             // Render to graphics
             // ...

             // Dispose the graphics
             graphics.dispose();

             // Repeat the rendering if the drawing buffer contents
             // were restored
         } while (strategy.contentsRestored());

         // Display the buffer
         strategy.show();

         // Repeat the rendering if the drawing buffer was lost
     } while (strategy.contentsLost());
 }

 // Dispose the window
 w.setVisible(false);
 w.dispose();
```

Since:
:   1.4

See Also:
:   * [`Window`](../Window.md "class in java.awt")
    * [`Canvas`](../Canvas.md "class in java.awt")
    * [`GraphicsConfiguration`](../GraphicsConfiguration.md "class in java.awt")
    * [`VolatileImage`](VolatileImage.md "class in java.awt.image")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `BufferStrategy()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `contentsLost()`

  Returns whether the drawing buffer was lost since the last call to
  `getDrawGraphics`.

  `abstract boolean`

  `contentsRestored()`

  Returns whether the drawing buffer was recently restored from a lost
  state and reinitialized to the default background color (white).

  `void`

  `dispose()`

  Releases system resources currently consumed by this
  `BufferStrategy` and
  removes it from the associated Component.

  `abstract BufferCapabilities`

  `getCapabilities()`

  Returns the `BufferCapabilities` for this
  `BufferStrategy`.

  `abstract Graphics`

  `getDrawGraphics()`

  Creates a graphics context for the drawing buffer.

  `abstract void`

  `show()`

  Makes the next available buffer visible by either copying the memory
  (blitting) or changing the display pointer (flipping).

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BufferStrategy

    protected BufferStrategy()

    Constructor for subclasses to call.
* ## Method Details

  + ### getCapabilities

    public abstract [BufferCapabilities](../BufferCapabilities.md "class in java.awt") getCapabilities()

    Returns the `BufferCapabilities` for this
    `BufferStrategy`.

    Returns:
    :   the buffering capabilities of this strategy
  + ### getDrawGraphics

    public abstract [Graphics](../Graphics.md "class in java.awt") getDrawGraphics()

    Creates a graphics context for the drawing buffer. This method may not
    be synchronized for performance reasons; use of this method by multiple
    threads should be handled at the application level. Disposal of the
    graphics object obtained must be handled by the application.

    Returns:
    :   a graphics context for the drawing buffer
  + ### contentsLost

    public abstract boolean contentsLost()

    Returns whether the drawing buffer was lost since the last call to
    `getDrawGraphics`. Since the buffers in a buffer strategy
    are usually type `VolatileImage`, they may become lost.
    For a discussion on lost buffers, see `VolatileImage`.

    Returns:
    :   Whether or not the drawing buffer was lost since the last call
        to `getDrawGraphics`.

    See Also:
    :   - [`VolatileImage`](VolatileImage.md "class in java.awt.image")
  + ### contentsRestored

    public abstract boolean contentsRestored()

    Returns whether the drawing buffer was recently restored from a lost
    state and reinitialized to the default background color (white).
    Since the buffers in a buffer strategy are usually type
    `VolatileImage`, they may become lost. If a surface has
    been recently restored from a lost state since the last call to
    `getDrawGraphics`, it may require repainting.
    For a discussion on lost buffers, see `VolatileImage`.

    Returns:
    :   Whether or not the drawing buffer was restored since the last
        call to `getDrawGraphics`.

    See Also:
    :   - [`VolatileImage`](VolatileImage.md "class in java.awt.image")
  + ### show

    public abstract void show()

    Makes the next available buffer visible by either copying the memory
    (blitting) or changing the display pointer (flipping).
  + ### dispose

    public void dispose()

    Releases system resources currently consumed by this
    `BufferStrategy` and
    removes it from the associated Component. After invoking this
    method, `getBufferStrategy` will return null. Trying
    to use a `BufferStrategy` after it has been disposed will
    result in undefined behavior.

    Since:
    :   1.6

    See Also:
    :   - [`Window.createBufferStrategy(int)`](../Window.md#createBufferStrategy(int))
        - [`Canvas.createBufferStrategy(int)`](../Canvas.md#createBufferStrategy(int))
        - [`Window.getBufferStrategy()`](../Window.md#getBufferStrategy())
        - [`Canvas.getBufferStrategy()`](../Canvas.md#getBufferStrategy())