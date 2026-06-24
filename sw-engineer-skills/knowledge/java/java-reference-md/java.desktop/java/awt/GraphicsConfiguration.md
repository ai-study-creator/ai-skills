Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class GraphicsConfiguration

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.GraphicsConfiguration

---

public abstract class GraphicsConfiguration
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `GraphicsConfiguration` class describes the
characteristics of a graphics destination such as a printer or monitor.
There can be many `GraphicsConfiguration` objects associated
with a single graphics device, representing different drawing modes or
capabilities. The corresponding native structure will vary from platform
to platform. For example, on X11 windowing systems,
each visual is a different `GraphicsConfiguration`.
On Microsoft Windows, `GraphicsConfiguration`s represent
PixelFormats available in the current resolution and color depth.

In a virtual device multi-screen environment in which the desktop
area could span multiple physical screen devices, the bounds of the
`GraphicsConfiguration` objects are relative to the
virtual coordinate system. When setting the location of a
component, use [`getBounds`](#getBounds()) to get the bounds of
the desired `GraphicsConfiguration` and offset the location
with the coordinates of the `GraphicsConfiguration`,
as the following code sample illustrates:

```
      Frame f = new Frame(gc);  // where gc is a GraphicsConfiguration
      Rectangle bounds = gc.getBounds();
      f.setLocation(10 + bounds.x, 10 + bounds.y);
```

To determine if your environment is a virtual device
environment, call `getBounds` on all of the
`GraphicsConfiguration` objects in your system. If
any of the origins of the returned bounds is not (0, 0),
your environment is a virtual device environment.

You can also use `getBounds` to determine the bounds
of the virtual device. To do this, first call `getBounds` on all
of the `GraphicsConfiguration` objects in your
system. Then calculate the union of all of the bounds returned
from the calls to `getBounds`. The union is the
bounds of the virtual device. The following code sample
calculates the bounds of the virtual device.

```
      Rectangle virtualBounds = new Rectangle();
      GraphicsEnvironment ge = GraphicsEnvironment.
              getLocalGraphicsEnvironment();
      GraphicsDevice[] gs =
              ge.getScreenDevices();
      for (int j = 0; j < gs.length; j++) {
          GraphicsDevice gd = gs[j];
          GraphicsConfiguration[] gc =
              gd.getConfigurations();
          for (int i=0; i < gc.length; i++) {
              virtualBounds =
                  virtualBounds.union(gc[i].getBounds());
          }
      }
```

See Also:
:   * [`Window`](Window.md "class in java.awt")
    * [`Frame`](Frame.md "class in java.awt")
    * [`GraphicsEnvironment`](GraphicsEnvironment.md "class in java.awt")
    * [`GraphicsDevice`](GraphicsDevice.md "class in java.awt")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `GraphicsConfiguration()`

  This is an abstract class that cannot be instantiated directly.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BufferedImage`

  `createCompatibleImage(int width,
  int height)`

  Returns a [`BufferedImage`](image/BufferedImage.md "class in java.awt.image") with a data layout and color model
  compatible with this `GraphicsConfiguration`.

  `BufferedImage`

  `createCompatibleImage(int width,
  int height,
  int transparency)`

  Returns a `BufferedImage` that supports the specified
  transparency and has a data layout and color model
  compatible with this `GraphicsConfiguration`.

  `VolatileImage`

  `createCompatibleVolatileImage(int width,
  int height)`

  Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
  compatible with this `GraphicsConfiguration`.

  `VolatileImage`

  `createCompatibleVolatileImage(int width,
  int height,
  int transparency)`

  Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
  compatible with this `GraphicsConfiguration`.

  `VolatileImage`

  `createCompatibleVolatileImage(int width,
  int height,
  ImageCapabilities caps)`

  Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
  compatible with this `GraphicsConfiguration`, using
  the specified image capabilities.

  `VolatileImage`

  `createCompatibleVolatileImage(int width,
  int height,
  ImageCapabilities caps,
  int transparency)`

  Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
  compatible with this `GraphicsConfiguration`, using
  the specified image capabilities and transparency value.

  `abstract Rectangle`

  `getBounds()`

  Returns the bounds of the `GraphicsConfiguration`
  in the device coordinates.

  `BufferCapabilities`

  `getBufferCapabilities()`

  Returns the buffering capabilities of this
  `GraphicsConfiguration`.

  `abstract ColorModel`

  `getColorModel()`

  Returns the [`ColorModel`](image/ColorModel.md "class in java.awt.image") associated with this
  `GraphicsConfiguration`.

  `abstract ColorModel`

  `getColorModel(int transparency)`

  Returns the `ColorModel` associated with this
  `GraphicsConfiguration` that supports the specified
  transparency.

  `abstract AffineTransform`

  `getDefaultTransform()`

  Returns the default [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom") for this
  `GraphicsConfiguration`.

  `abstract GraphicsDevice`

  `getDevice()`

  Returns the [`GraphicsDevice`](GraphicsDevice.md "class in java.awt") associated with this
  `GraphicsConfiguration`.

  `ImageCapabilities`

  `getImageCapabilities()`

  Returns the image capabilities of this
  `GraphicsConfiguration`.

  `abstract AffineTransform`

  `getNormalizingTransform()`

  Returns an `AffineTransform` that can be concatenated
  with the default `AffineTransform`
  of a `GraphicsConfiguration` so that 72 units in user
  space equals 1 inch in device space.

  `boolean`

  `isTranslucencyCapable()`

  Returns whether this `GraphicsConfiguration` supports
  the [`PERPIXEL_TRANSLUCENT`](GraphicsDevice.WindowTranslucency.md#PERPIXEL_TRANSLUCENT) kind of translucency.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GraphicsConfiguration

    protected GraphicsConfiguration()

    This is an abstract class that cannot be instantiated directly.
    Instances must be obtained from a suitable factory or query method.

    See Also:
    :   - [`GraphicsDevice.getConfigurations()`](GraphicsDevice.md#getConfigurations())
        - [`GraphicsDevice.getDefaultConfiguration()`](GraphicsDevice.md#getDefaultConfiguration())
        - [`GraphicsDevice.getBestConfiguration(java.awt.GraphicsConfigTemplate)`](GraphicsDevice.md#getBestConfiguration(java.awt.GraphicsConfigTemplate))
        - [`Graphics2D.getDeviceConfiguration()`](Graphics2D.md#getDeviceConfiguration())
* ## Method Details

  + ### getDevice

    public abstract [GraphicsDevice](GraphicsDevice.md "class in java.awt") getDevice()

    Returns the [`GraphicsDevice`](GraphicsDevice.md "class in java.awt") associated with this
    `GraphicsConfiguration`.

    Returns:
    :   a `GraphicsDevice` object that is
        associated with this `GraphicsConfiguration`.
  + ### createCompatibleImage

    public [BufferedImage](image/BufferedImage.md "class in java.awt.image") createCompatibleImage(int width,
    int height)

    Returns a [`BufferedImage`](image/BufferedImage.md "class in java.awt.image") with a data layout and color model
    compatible with this `GraphicsConfiguration`. This
    method has nothing to do with memory-mapping
    a device. The returned `BufferedImage` has
    a layout and color model that is closest to this native device
    configuration and can therefore be optimally blitted to this
    device.

    Parameters:
    :   `width` - the width of the returned `BufferedImage`
    :   `height` - the height of the returned `BufferedImage`

    Returns:
    :   a `BufferedImage` whose data layout and color
        model is compatible with this `GraphicsConfiguration`.
  + ### createCompatibleImage

    public [BufferedImage](image/BufferedImage.md "class in java.awt.image") createCompatibleImage(int width,
    int height,
    int transparency)

    Returns a `BufferedImage` that supports the specified
    transparency and has a data layout and color model
    compatible with this `GraphicsConfiguration`. This
    method has nothing to do with memory-mapping
    a device. The returned `BufferedImage` has a layout and
    color model that can be optimally blitted to a device
    with this `GraphicsConfiguration`.

    Parameters:
    :   `width` - the width of the returned `BufferedImage`
    :   `height` - the height of the returned `BufferedImage`
    :   `transparency` - the specified transparency mode

    Returns:
    :   a `BufferedImage` whose data layout and color
        model is compatible with this `GraphicsConfiguration`
        and also supports the specified transparency.

    Throws:
    :   `IllegalArgumentException` - if the transparency is not a valid value

    See Also:
    :   - [`Transparency.OPAQUE`](Transparency.md#OPAQUE)
        - [`Transparency.BITMASK`](Transparency.md#BITMASK)
        - [`Transparency.TRANSLUCENT`](Transparency.md#TRANSLUCENT)
  + ### createCompatibleVolatileImage

    public [VolatileImage](image/VolatileImage.md "class in java.awt.image") createCompatibleVolatileImage(int width,
    int height)

    Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
    compatible with this `GraphicsConfiguration`.
    The returned `VolatileImage`
    may have data that is stored optimally for the underlying graphics
    device and may therefore benefit from platform-specific rendering
    acceleration.

    Parameters:
    :   `width` - the width of the returned `VolatileImage`
    :   `height` - the height of the returned `VolatileImage`

    Returns:
    :   a `VolatileImage` whose data layout and color
        model is compatible with this `GraphicsConfiguration`.

    Since:
    :   1.4

    See Also:
    :   - [`Component.createVolatileImage(int, int)`](Component.md#createVolatileImage(int,int))
  + ### createCompatibleVolatileImage

    public [VolatileImage](image/VolatileImage.md "class in java.awt.image") createCompatibleVolatileImage(int width,
    int height,
    int transparency)

    Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
    compatible with this `GraphicsConfiguration`.
    The returned `VolatileImage`
    may have data that is stored optimally for the underlying graphics
    device and may therefore benefit from platform-specific rendering
    acceleration.

    Parameters:
    :   `width` - the width of the returned `VolatileImage`
    :   `height` - the height of the returned `VolatileImage`
    :   `transparency` - the specified transparency mode

    Returns:
    :   a `VolatileImage` whose data layout and color
        model is compatible with this `GraphicsConfiguration`.

    Throws:
    :   `IllegalArgumentException` - if the transparency is not a valid value

    Since:
    :   1.5

    See Also:
    :   - [`Transparency.OPAQUE`](Transparency.md#OPAQUE)
        - [`Transparency.BITMASK`](Transparency.md#BITMASK)
        - [`Transparency.TRANSLUCENT`](Transparency.md#TRANSLUCENT)
        - [`Component.createVolatileImage(int, int)`](Component.md#createVolatileImage(int,int))
  + ### createCompatibleVolatileImage

    public [VolatileImage](image/VolatileImage.md "class in java.awt.image") createCompatibleVolatileImage(int width,
    int height,
    [ImageCapabilities](ImageCapabilities.md "class in java.awt") caps)
    throws [AWTException](AWTException.md "class in java.awt")

    Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
    compatible with this `GraphicsConfiguration`, using
    the specified image capabilities.
    If the `caps` parameter is null, it is effectively ignored
    and this method will create a VolatileImage without regard to
    `ImageCapabilities` constraints.
    The returned `VolatileImage` has
    a layout and color model that is closest to this native device
    configuration and can therefore be optimally blitted to this
    device.

    Parameters:
    :   `width` - the width of the returned `VolatileImage`
    :   `height` - the height of the returned `VolatileImage`
    :   `caps` - the image capabilities

    Returns:
    :   a `VolatileImage` whose data layout and color
        model is compatible with this `GraphicsConfiguration`.

    Throws:
    :   `AWTException` - if the supplied image capabilities could not
        be met by this graphics configuration

    Since:
    :   1.4
  + ### createCompatibleVolatileImage

    public [VolatileImage](image/VolatileImage.md "class in java.awt.image") createCompatibleVolatileImage(int width,
    int height,
    [ImageCapabilities](ImageCapabilities.md "class in java.awt") caps,
    int transparency)
    throws [AWTException](AWTException.md "class in java.awt")

    Returns a [`VolatileImage`](image/VolatileImage.md "class in java.awt.image") with a data layout and color model
    compatible with this `GraphicsConfiguration`, using
    the specified image capabilities and transparency value.
    If the `caps` parameter is null, it is effectively ignored
    and this method will create a VolatileImage without regard to
    `ImageCapabilities` constraints.
    The returned `VolatileImage` has
    a layout and color model that is closest to this native device
    configuration and can therefore be optimally blitted to this
    device.

    Parameters:
    :   `width` - the width of the returned `VolatileImage`
    :   `height` - the height of the returned `VolatileImage`
    :   `caps` - the image capabilities
    :   `transparency` - the specified transparency mode

    Returns:
    :   a `VolatileImage` whose data layout and color
        model is compatible with this `GraphicsConfiguration`.

    Throws:
    :   `IllegalArgumentException` - if the transparency is not a valid value
    :   `AWTException` - if the supplied image capabilities could not
        be met by this graphics configuration

    Since:
    :   1.5

    See Also:
    :   - [`Transparency.OPAQUE`](Transparency.md#OPAQUE)
        - [`Transparency.BITMASK`](Transparency.md#BITMASK)
        - [`Transparency.TRANSLUCENT`](Transparency.md#TRANSLUCENT)
        - [`Component.createVolatileImage(int, int)`](Component.md#createVolatileImage(int,int))
  + ### getColorModel

    public abstract [ColorModel](image/ColorModel.md "class in java.awt.image") getColorModel()

    Returns the [`ColorModel`](image/ColorModel.md "class in java.awt.image") associated with this
    `GraphicsConfiguration`.

    Returns:
    :   a `ColorModel` object that is associated with
        this `GraphicsConfiguration`.
  + ### getColorModel

    public abstract [ColorModel](image/ColorModel.md "class in java.awt.image") getColorModel(int transparency)

    Returns the `ColorModel` associated with this
    `GraphicsConfiguration` that supports the specified
    transparency.

    Parameters:
    :   `transparency` - the specified transparency mode

    Returns:
    :   a `ColorModel` object that is associated with
        this `GraphicsConfiguration` and supports the
        specified transparency or null if the transparency is not a valid
        value.

    See Also:
    :   - [`Transparency.OPAQUE`](Transparency.md#OPAQUE)
        - [`Transparency.BITMASK`](Transparency.md#BITMASK)
        - [`Transparency.TRANSLUCENT`](Transparency.md#TRANSLUCENT)
  + ### getDefaultTransform

    public abstract [AffineTransform](geom/AffineTransform.md "class in java.awt.geom") getDefaultTransform()

    Returns the default [`AffineTransform`](geom/AffineTransform.md "class in java.awt.geom") for this
    `GraphicsConfiguration`. This
    `AffineTransform` is typically the Identity transform
    for most normal screens. The default `AffineTransform`
    maps coordinates onto the device such that 72 user space
    coordinate units measure approximately 1 inch in device
    space. The normalizing transform can be used to make
    this mapping more exact. Coordinates in the coordinate space
    defined by the default `AffineTransform` for screen and
    printer devices have the origin in the upper left-hand corner of
    the target region of the device, with X coordinates
    increasing to the right and Y coordinates increasing downwards.
    For image buffers not associated with a device, such as those not
    created by `createCompatibleImage`,
    this `AffineTransform` is the Identity transform.

    Returns:
    :   the default `AffineTransform` for this
        `GraphicsConfiguration`.
  + ### getNormalizingTransform

    public abstract [AffineTransform](geom/AffineTransform.md "class in java.awt.geom") getNormalizingTransform()

    Returns an `AffineTransform` that can be concatenated
    with the default `AffineTransform`
    of a `GraphicsConfiguration` so that 72 units in user
    space equals 1 inch in device space.

    For a particular [`Graphics2D`](Graphics2D.md "class in java.awt"), g, one
    can reset the transformation to create
    such a mapping by using the following pseudocode:

    ```
          GraphicsConfiguration gc = g.getDeviceConfiguration();

          g.setTransform(gc.getDefaultTransform());
          g.transform(gc.getNormalizingTransform());
    ```

    Note that sometimes this `AffineTransform` is identity,
    such as for printers or metafile output, and that this
    `AffineTransform` is only as accurate as the information
    supplied by the underlying system. For image buffers not
    associated with a device, such as those not created by
    `createCompatibleImage`, this
    `AffineTransform` is the Identity transform
    since there is no valid distance measurement.

    Returns:
    :   an `AffineTransform` to concatenate to the
        default `AffineTransform` so that 72 units in user
        space is mapped to 1 inch in device space.
  + ### getBounds

    public abstract [Rectangle](Rectangle.md "class in java.awt") getBounds()

    Returns the bounds of the `GraphicsConfiguration`
    in the device coordinates. In a multi-screen environment
    with a virtual device, the bounds can have negative X
    or Y origins.

    Returns:
    :   the bounds of the area covered by this
        `GraphicsConfiguration`.

    Since:
    :   1.3
  + ### getBufferCapabilities

    public [BufferCapabilities](BufferCapabilities.md "class in java.awt") getBufferCapabilities()

    Returns the buffering capabilities of this
    `GraphicsConfiguration`.

    Returns:
    :   the buffering capabilities of this graphics
        configuration object

    Since:
    :   1.4
  + ### getImageCapabilities

    public [ImageCapabilities](ImageCapabilities.md "class in java.awt") getImageCapabilities()

    Returns the image capabilities of this
    `GraphicsConfiguration`.

    Returns:
    :   the image capabilities of this graphics
        configuration object

    Since:
    :   1.4
  + ### isTranslucencyCapable

    public boolean isTranslucencyCapable()

    Returns whether this `GraphicsConfiguration` supports
    the [`PERPIXEL_TRANSLUCENT`](GraphicsDevice.WindowTranslucency.md#PERPIXEL_TRANSLUCENT) kind of translucency.

    Returns:
    :   whether the given GraphicsConfiguration supports
        the translucency effects.

    Since:
    :   1.7

    See Also:
    :   - [`Window.setBackground(Color)`](Window.md#setBackground(java.awt.Color))